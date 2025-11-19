@interface BWColorConstancyProcessorController
- (BWColorConstancyProcessorController)initWithConfiguration:(id)a3;
- (CMAttachmentBearerRef)_newOutputSampleBufferFromSampleBuffer:(__CVBuffer *)a3 pixelBuffer:(__CVBuffer *)a4 confidenceMap:(void *)a5 metadata:(unsigned int)a6 processingFlags:(CFTypeRef *)a7 formatDescriptionInOut:;
- (id)requestForInput:(id)a3 delegate:(id)a4 errOut:(int *)a5;
- (int)prepare;
- (int)process;
- (uint64_t)_addFrame:(uint64_t)a3 type:;
- (uint64_t)_loadSetupAndPrepareProcessor;
- (uint64_t)process;
- (void)dealloc;
- (void)input:(id)a3 addAmbientFrame:(opaqueCMSampleBuffer *)a4;
- (void)input:(id)a3 addFlashFrame:(opaqueCMSampleBuffer *)a4;
- (void)reset;
@end

@implementation BWColorConstancyProcessorController

- (BWColorConstancyProcessorController)initWithConfiguration:(id)a3
{
  v8.receiver = self;
  v8.super_class = BWColorConstancyProcessorController;
  v4 = [(BWStillImageProcessorController *)&v8 initWithName:@"ColourConstancy" type:17 configuration:a3];
  if (v4)
  {
    v4->_version = [a3 version];
    v4->_outputPixelFormat = FigCaptureCompressedPixelFormatForPixelFormat(1751527984, 4, [a3 lossyCompressionLevel]);
    v6 = objc_autoreleasePoolPush();
    SetupAndPrepare = [(BWColorConstancyProcessorController *)v4 _loadSetupAndPrepareProcessor];
    objc_autoreleasePoolPop(v6);
    if (SetupAndPrepare)
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  [(BWColorConstancyProcessorController *)self reset];

  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  confidenceMapFormatDescription = self->_confidenceMapFormatDescription;
  if (confidenceMapFormatDescription)
  {
    CFRelease(confidenceMapFormatDescription);
  }

  v5.receiver = self;
  v5.super_class = BWColorConstancyProcessorController;
  [(BWStillImageProcessorController *)&v5 dealloc];
}

- (void)input:(id)a3 addFlashFrame:(opaqueCMSampleBuffer *)a4
{
  [(BWColorConstancyProcessorController *)self _addFrame:a4 type:1];

  [(BWStillImageProcessorController *)self currentRequestChanged];
}

- (void)reset
{
  if ([(CMIColourConstancyProcessorProtocol *)self->_processor resetState])
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v4 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v4, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWColorConstancyProcessorController.m", 297, @"LastShownDate:BWColorConstancyProcessorController.m:297", @"LastShownBuild:BWColorConstancyProcessorController.m:297", 0);
    free(v4);
  }
}

- (id)requestForInput:(id)a3 delegate:(id)a4 errOut:(int *)a5
{
  v6 = [(BWStillImageProcessorControllerRequest *)[BWColorConstancyProcessorControllerRequest alloc] initWithInput:a3 delegate:a4];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -12786;
  }

  if (a5)
  {
    *a5 = v7;
  }

  return v6;
}

- (int)process
{
  v3 = [(BWStillImageProcessorController *)self currentRequest];
  v4 = [(CMIColourConstancyProcessorProtocol *)self->_processor process];
  if (dword_1EB58E320)
  {
    v14 = 0;
    v13 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v4 || (v6 = [(BWColorConstancyProcessorController *)self _newOutputSampleBufferFromSampleBuffer:[(CMIColourConstancyProcessorProtocol *)self->_processor outputImagePixelBuffer] pixelBuffer:[(CMIColourConstancyProcessorProtocol *)self->_processor outputColourAccuracyConfidenceImagePixelBuffer] confidenceMap:[(CMIColourConstancyProcessorProtocol *)self->_processor outputImageMetadata] metadata:0 processingFlags:&self->_outputFormatDescription formatDescriptionInOut:?]) == 0)
  {
    [(BWColorConstancyProcessorController *)v3 process];
  }

  else
  {
    v7 = v6;
    v11 = *off_1E798CEE8;
    v8 = MEMORY[0x1E696AD98];
    [(CMIColourConstancyProcessorProtocol *)self->_processor outputCenterWeightedMeanColourAccuracyConfidenceLevel];
    v12 = [v8 numberWithFloat:?];
    CMSetAttachment(v7, *off_1E798D2A0, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1], 1u);
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(CMGetAttachment(v7, @"StillImageProcessingFlags", 0), "unsignedIntValue") | 0x80000}];
    CMSetAttachment(v7, @"StillImageProcessingFlags", v9, 1u);
    [(BWStillImageProcessorControllerDelegate *)[(BWStillImageProcessorControllerRequest *)v3 delegate] processorController:self didFinishProcessingSampleBuffer:v7 type:1 processorInput:[(BWStillImageProcessorControllerRequest *)v3 input] err:0];
    CFRelease(v7);
  }

  return 0;
}

- (uint64_t)_loadSetupAndPrepareProcessor
{
  if (result)
  {
    v1 = result;
    if (!*(result + 72))
    {
      v2 = *(result + 64);
      v3 = [objc_msgSend(result "configuration")];
      v4 = [objc_msgSend(v1 "configuration")];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __68__BWColorConstancyProcessorController__loadSetupAndPrepareProcessor__block_invoke;
      v5[3] = &unk_1E7991C78;
      v5[4] = v1;
      result = BWLoadCreateAndSetupMetalImageBufferProcessor(@"ColourConstancy", v2, @"CMI", @"ColourConstancy", v2, &unk_1F22C4568, 1, v3, v4, v5, v1 + 9);
      if (result)
      {
        return result;
      }

      [v1[9] setClippingRecoveryEnabled:{objc_msgSend(objc_msgSend(v1, "configuration"), "clippingRecoveryEnabled")}];
      [v1[9] setSaturationBoostEnabled:{objc_msgSend(objc_msgSend(v1, "configuration"), "saturationBoostEnabled")}];
    }

    return 0;
  }

  return result;
}

- (uint64_t)_addFrame:(uint64_t)a3 type:
{
  if (!a1)
  {
    return 0;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  if (ImageBuffer && (v7 = ImageBuffer, (v8 = CMGetAttachment(sbuf, *off_1E798A3C8, 0)) != 0))
  {
    v9 = v8;
    AttachedMedia = BWSampleBufferGetAttachedMedia(sbuf, 0x1F21AAE70);
    v11 = AttachedMedia;
    if (AttachedMedia)
    {
      v12 = CMSampleBufferGetImageBuffer(AttachedMedia);
      v13 = CMGetAttachment(v11, *off_1E798A3B0, 0);
      v11 = objc_alloc_init(NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMIColourConstancyFrameParamsV%d", *(a1 + 64)]));
      [(opaqueCMSampleBuffer *)v11 setLscGains:v12];
      [(opaqueCMSampleBuffer *)v11 setLscParams:v13];
    }

    v14 = [*(a1 + 72) addFrame:v7 metadata:v9 frameType:a3 frameParams:v11];
  }

  else
  {
    v11 = 0;
    v14 = 4294954516;
  }

  return v14;
}

- (void)input:(id)a3 addAmbientFrame:(opaqueCMSampleBuffer *)a4
{
  [(BWColorConstancyProcessorController *)self _addFrame:a4 type:0];

  [(BWStillImageProcessorController *)self currentRequestChanged];
}

- (int)prepare
{
  v3 = [(BWStillImageProcessorController *)self currentRequest];
  v4 = [(BWStillImageProcessorControllerDelegate *)[(BWStillImageProcessorControllerRequest *)v3 delegate] processorController:self newOutputPixelBufferForProcessorInput:[(BWStillImageProcessorControllerRequest *)v3 input] type:1];
  if (!v4)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = [(BWStillImageProcessorControllerDelegate *)[(BWStillImageProcessorControllerRequest *)v3 delegate] processorController:self newOutputPixelBufferForProcessorInput:[(BWStillImageProcessorControllerRequest *)v3 input] type:2002];
  if (!v5)
  {
LABEL_6:
    v6 = -12786;
    goto LABEL_4;
  }

  [(CMIColourConstancyProcessorProtocol *)self->_processor setOutputImagePixelBuffer:v4];
  -[CMIColourConstancyProcessorProtocol setOutputImageMetadata:](self->_processor, "setOutputImageMetadata:", [MEMORY[0x1E695DF90] dictionary]);
  [(CMIColourConstancyProcessorProtocol *)self->_processor setOutputColourAccuracyConfidenceImagePixelBuffer:v5];
  -[CMIColourConstancyProcessorProtocol setConfidenceMapMetadata:](self->_processor, "setConfidenceMapMetadata:", [MEMORY[0x1E695DF90] dictionary]);
  v6 = [(CMIColourConstancyProcessorProtocol *)self->_processor prepareToProcess:0];
LABEL_4:
  CVPixelBufferRelease(v4);
  CVPixelBufferRelease(v5);
  return v6;
}

- (CMAttachmentBearerRef)_newOutputSampleBufferFromSampleBuffer:(__CVBuffer *)a3 pixelBuffer:(__CVBuffer *)a4 confidenceMap:(void *)a5 metadata:(unsigned int)a6 processingFlags:(CFTypeRef *)a7 formatDescriptionInOut:
{
  if (result)
  {
    v7 = 0;
    target = 0;
    v8 = 1;
    if (a2 && a3)
    {
      v12 = result;
      if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(a2, a3, a7, &target))
      {
        v7 = 0;
      }

      else
      {
        v13 = *off_1E798A3C8;
        v7 = [CMGetAttachment(target *off_1E798A3C8];
        if ([a5 count])
        {
          [v7 addEntriesFromDictionary:a5];
        }

        CMSetAttachment(target, v13, v7, 1u);
        if (a6)
        {
          v14 = [CMGetAttachment(target @"StillImageProcessingFlags"];
          CMSetAttachment(target, @"StillImageProcessingFlags", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v14 | a6], 1u);
        }

        BWSampleBufferSetAttachedMediaFromPixelBuffer(target, 0x1F21AB170, a4, v12 + 11, [*(v12 + 9) confidenceMapMetadata], 0, 0);
        v8 = 0;
      }
    }

    result = target;
    if (v8)
    {
      if (target)
      {
        CFRelease(target);
        return 0;
      }
    }
  }

  return result;
}

- (uint64_t)process
{
  v4 = [objc_msgSend(a1 "input")];
  v5 = *off_1E798A3C8;
  v6 = [CMGetAttachment(v4 *off_1E798A3C8];
  CMSetAttachment([objc_msgSend(a1 "input")], v5, v6, 1u);

  return [objc_msgSend(a1 "delegate")];
}

@end