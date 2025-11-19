@interface BWApplySmartStyleRenderer
- (BWApplySmartStyleRenderer)initWithMetalCommandQueue:(id)a3 smartStyleRenderingVersion:(int)a4;
- (int)prepareForRenderingWithParameters:(id)a3 inputVideoFormat:(id)a4 inputMediaPropertiesByAttachedMediaKey:(id)a5;
- (void)dealloc;
- (void)renderUsingParameters:(id)a3 inputPixelBuffer:(__CVBuffer *)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 originalPixelBuffer:(__CVBuffer *)a6 processedPixelBuffer:(__CVBuffer *)a7 completionHandler:(id)a8;
@end

@implementation BWApplySmartStyleRenderer

- (BWApplySmartStyleRenderer)initWithMetalCommandQueue:(id)a3 smartStyleRenderingVersion:(int)a4
{
  v8.receiver = self;
  v8.super_class = BWApplySmartStyleRenderer;
  v6 = [(BWApplySmartStyleRenderer *)&v8 init];
  if (v6)
  {
    v6->_mtlCommandQueue = a3;
    v6->_smartStyleRenderingVersion = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWApplySmartStyleRenderer;
  [(BWApplySmartStyleRenderer *)&v3 dealloc];
}

- (void)renderUsingParameters:(id)a3 inputPixelBuffer:(__CVBuffer *)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 originalPixelBuffer:(__CVBuffer *)a6 processedPixelBuffer:(__CVBuffer *)a7 completionHandler:(id)a8
{
  v13 = CMGetAttachment(a5, *off_1E798A3C8, 0);
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = v13;
  [(CMISmartStyleProcessor *)self->_smartStyleProcessor resetState];
  if ((BWStillImageProcessingFlagsForSampleBuffer(a5) & 0x800000) != 0)
  {
    v37 = 0;
    v38 = 0;
LABEL_15:

    v39 = 0;
    if (!a8)
    {
      return;
    }

    goto LABEL_16;
  }

  AttachedMedia = BWSampleBufferGetAttachedMedia(a5, 0x1F21AAFD0);
  if (AttachedMedia && ((ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia), (v17 = BWSampleBufferGetAttachedMedia(a5, 0x1F217BF50)) == 0) ? (v18 = 0) : (v18 = CMSampleBufferGetImageBuffer(v17)), (FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect(), v21 = v20, v23 = v22, v25 = v24, v26 = *off_1E798A940, v27 = [v14 objectForKeyedSubscript:*off_1E798A940], v28 = *off_1E798AA00, objc_msgSend(v27, "objectForKeyedSubscript:", *off_1E798AA00)) && (objc_msgSend(objc_msgSend(objc_msgSend(v14, "objectForKeyedSubscript:", v26), "objectForKeyedSubscript:", v28), "doubleValue"), v30 = v29, Width = CVPixelBufferGetWidth(a4), Height = CVPixelBufferGetHeight(a4), FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(Width, Height, FinalCropRect, v21, v23, v25, v30), x = v45.origin.x, y = v45.origin.y, v35 = v45.size.width, v36 = v45.size.height, !CGRectIsNull(v45))))
  {
    v37 = objc_alloc_init(self->_smartStyleProcessorInputOutputClass);
    if (!v37)
    {
      [BWApplySmartStyleRenderer renderUsingParameters:inputPixelBuffer:inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:];
    }

    [v37 setInputUnstyledPixelBuffer:a4];
    [v37 setInputMetadataDict:v14];
    [v37 setInputUnstyledCropRect:{x, y, v35, v36}];
    [v37 setInputStyleCoefficientsPixelBuffer:ImageBuffer];
    [v37 setOutputStyledPixelBuffer:a7];
    [v37 setOutputStyledCropRect:{x, y, v35, v36}];
    [v37 setOutputGainMapPixelBuffer:v18];
    [v37 setResidualsCalculationDisabled:1];
    [(CMISmartStyleProcessor *)self->_smartStyleProcessor setInputOutput:v37];
    if ([(CMISmartStyleProcessor *)self->_smartStyleProcessor prepareToProcess:6]|| [(CMISmartStyleProcessor *)self->_smartStyleProcessor process])
    {
      v44 = 0;
      v43 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    }

    else
    {
      if (![(CMISmartStyleProcessor *)self->_smartStyleProcessor finishProcessing])
      {
        v38 = 2;
        goto LABEL_15;
      }

      v44 = 0;
      v43 = 0;
      v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
LABEL_18:
    v37 = 0;
  }

  [BWApplySmartStyleRenderer renderUsingParameters:v37 inputPixelBuffer:v42 inputSampleBuffer:? originalPixelBuffer:? processedPixelBuffer:? completionHandler:?];
  v38 = 0;
  v39 = v42[0];
  if (!a8)
  {
    return;
  }

LABEL_16:
  (*(a8 + 2))(a8, v38, v39);
}

- (int)prepareForRenderingWithParameters:(id)a3 inputVideoFormat:(id)a4 inputMediaPropertiesByAttachedMediaKey:(id)a5
{
  p_smartStyleProcessor = &self->_smartStyleProcessor;
  if (!self->_smartStyleProcessor)
  {
    result = BWLoadCreateAndSetupMetalImageBufferProcessor(@"SmartStyle", self->_smartStyleRenderingVersion, @"CMI", @"SmartStyle", self->_smartStyleRenderingVersion, &unk_1F22C45C8, 0, 0, self->_mtlCommandQueue, 0, &self->_smartStyleProcessor);
    if (result)
    {
      return result;
    }

    [(CMISmartStyleProcessor *)self->_smartStyleProcessor setInstanceLabel:@"PortraitApply"];
    [(CMISmartStyleProcessor *)self->_smartStyleProcessor setUseLiveMetalAllocations:1];
    self->_smartStyleProcessorInputOutputClass = NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMISmartStyleProcessorInputOutputV%d", self->_smartStyleRenderingVersion]);
  }

  v9 = [a4 height];
  v10 = [a4 width];
  v11 = objc_opt_class();
  if (v9 <= v10)
  {
    v12 = [v11 getDefaultProcessorConfigurationForStills];
  }

  else
  {
    v12 = [v11 getDefaultProcessorConfigurationForStills3x4];
  }

  [(CMISmartStyleProcessor *)*p_smartStyleProcessor setConfiguration:v12];
  return 0;
}

- (uint64_t)renderUsingParameters:(void *)a1 inputPixelBuffer:(uint64_t *)a2 inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:.cold.2(void *a1, uint64_t *a2)
{
  result = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-2 userInfo:0];
  *a2 = result;
  return result;
}

@end