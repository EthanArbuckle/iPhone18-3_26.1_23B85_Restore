@interface BWSWFRProcessorController
+ (uint64_t)_nrfVersionForSWFRVersion:(uint64_t)version;
- (BWSWFRProcessorController)initWithConfiguration:(id)configuration;
- (CMAttachmentBearerRef)_newOutputSampleBufferFromSampleBuffer:(__CVBuffer *)buffer pixelBuffer:(void *)pixelBuffer metadata:(unsigned int)metadata processingFlags:(CFTypeRef *)flags formatDescriptionInOut:;
- (id)processorNewInferences:(id)inferences;
- (id)requestForInput:(id)input delegate:(id)delegate errOut:(int *)out;
- (int)prepare;
- (int)process;
- (uint64_t)_addFrame:(uint64_t)frame type:;
- (uint64_t)_loadSetupAndPrepareProcessor;
- (void)dealloc;
- (void)input:(id)input addAmbientFrame:(opaqueCMSampleBuffer *)frame;
- (void)input:(id)input addFlashFrame:(opaqueCMSampleBuffer *)frame;
- (void)reset;
@end

@implementation BWSWFRProcessorController

- (BWSWFRProcessorController)initWithConfiguration:(id)configuration
{
  v8.receiver = self;
  v8.super_class = BWSWFRProcessorController;
  v4 = [(BWStillImageProcessorController *)&v8 initWithName:@"SoftwareFlashRendering" type:15 configuration:configuration];
  if (v4)
  {
    v4->_version = [configuration version];
    v4->_outputPixelFormat = FigCaptureCompressedPixelFormatForPixelFormat(1751527984, 4, [configuration lossyCompressionLevel]);
    v6 = objc_autoreleasePoolPush();
    SetupAndPrepare = [(BWSWFRProcessorController *)v4 _loadSetupAndPrepareProcessor];
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
  [(BWSWFRProcessorController *)self reset];

  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  demosaicedRawFormatDescription = self->_demosaicedRawFormatDescription;
  if (demosaicedRawFormatDescription)
  {
    CFRelease(demosaicedRawFormatDescription);
  }

  v5.receiver = self;
  v5.super_class = BWSWFRProcessorController;
  [(BWStillImageProcessorController *)&v5 dealloc];
}

- (void)input:(id)input addFlashFrame:(opaqueCMSampleBuffer *)frame
{
  [(BWSWFRProcessorController *)self _addFrame:frame type:1];

  [(BWStillImageProcessorController *)self currentRequestChanged];
}

- (void)reset
{
  if ([(CMISoftwareFlashRenderingProcessor *)self->_processor resetState])
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v4 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v4, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWSWFRProcessorController.m", 297, @"LastShownDate:BWSWFRProcessorController.m:297", @"LastShownBuild:BWSWFRProcessorController.m:297", 0);
    free(v4);
  }
}

- (id)requestForInput:(id)input delegate:(id)delegate errOut:(int *)out
{
  v6 = [(BWStillImageProcessorControllerRequest *)[BWSWFRProcessorControllerRequest alloc] initWithInput:input delegate:delegate];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -12786;
  }

  if (out)
  {
    *out = v7;
  }

  return v6;
}

- (int)process
{
  currentRequest = [(BWStillImageProcessorController *)self currentRequest];
  process = [(CMISoftwareFlashRenderingProcessor *)self->_processor process];
  if (dword_1EB58E320)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (process || (v6 = [(BWSWFRProcessorController *)self _newOutputSampleBufferFromSampleBuffer:[(CMISoftwareFlashRenderingProcessor *)self->_processor outputImagePixelBuffer] pixelBuffer:[(CMISoftwareFlashRenderingProcessor *)self->_processor outputImageMetadata] metadata:0 processingFlags:&self->_outputFormatDescription formatDescriptionInOut:?]) == 0)
  {
    [(BWColorConstancyProcessorController *)currentRequest process];
  }

  else
  {
    v7 = v6;
    [(BWStillImageProcessorControllerDelegate *)[(BWStillImageProcessorControllerRequest *)currentRequest delegate] processorController:self didFinishProcessingSampleBuffer:v6 type:1 processorInput:[(BWStillImageProcessorControllerRequest *)currentRequest input] err:0];
    CFRelease(v7);
  }

  return 0;
}

- (id)processorNewInferences:(id)inferences
{
  v4 = objc_alloc_init(NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMISoftwareFlashRenderingInferencesV%d", self->_version]));
  [v4 setStatus:0];
  v5 = [(BWStillImageProcessorControllerDelegate *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] delegate] processorController:self newInferencesForProcessorInput:[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input]];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 inferenceBufferForAttachedMediaKey:0x1F219E750];
    if (v7)
    {
      [v4 setPersonMask:v7];
    }

    v8 = [v6 inferenceBufferForAttachedMediaKey:@"PersonSemanticsSkin"];
    if (v8)
    {
      [v4 setSkinMatte:v8];
    }

    v9 = [v6 inferenceBufferForAttachedMediaKey:0x1F21AAD30];
    if (v9)
    {
      [v4 setSkyMatte:v9];
    }
  }

  else
  {
    [v4 setStatus:4294954516];
  }

  return v4;
}

+ (uint64_t)_nrfVersionForSWFRVersion:(uint64_t)version
{
  objc_opt_self();
  if ((a2 - 1) > 1)
  {
    return 0xFFFFFFFFLL;
  }

  LODWORD(result) = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters nrfVersion];
  if ((result - 5) < 0xFFFFFFFE)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return result;
  }
}

- (uint64_t)_loadSetupAndPrepareProcessor
{
  if (result)
  {
    v1 = result;
    if (*(result + 72))
    {
      return 0;
    }

    else
    {
      v2 = [BWSWFRProcessorController _nrfVersionForSWFRVersion:?];
      if (v2 == [+[FigCaptureCameraParameters nrfVersion] sharedInstance]
      {
        v3 = *(v1 + 64);
        v4 = [objc_msgSend(v1 "configuration")];
        v5 = [objc_msgSend(v1 "configuration")];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __58__BWSWFRProcessorController__loadSetupAndPrepareProcessor__block_invoke;
        v17[3] = &unk_1E7991C78;
        v17[4] = v1;
        return BWLoadCreateAndSetupMetalImageBufferProcessor(@"NRF", v2, @"CMI", @"SoftwareFlashRendering", v3, &unk_1F22C4628, 1, v4, v5, v17, (v1 + 72));
      }

      else
      {
        FigCaptureGetFrameworkRadarComponent();
        v24 = 0;
        v23 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v7 = *(v1 + 64);
        nrfVersion = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters nrfVersion];
        v18[0] = 67109632;
        v18[1] = v7;
        v19 = 1024;
        v20 = v2;
        v21 = 1024;
        v22 = nrfVersion;
        v9 = OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_10();
        FigCapturePleaseFileRadar(v10, v11, v12, v13, v14, 508, v15, v16, v18);
        free(v9);
        return 4294954516;
      }
    }
  }

  return result;
}

- (uint64_t)_addFrame:(uint64_t)frame type:
{
  if (!self)
  {
    return 0;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  if (ImageBuffer && (v7 = ImageBuffer, (v8 = CMGetAttachment(sbuf, *off_1E798A3C8, 0)) != 0))
  {
    v9 = v8;
    AttachedMedia = BWSampleBufferGetAttachedMedia(sbuf, 0x1F21AAE70);
    v11 = BWSampleBufferGetAttachedMedia(sbuf, 0x1F21AAE90);
    if (AttachedMedia)
    {
      v12 = v11;
      v13 = CMSampleBufferGetImageBuffer(AttachedMedia);
      v14 = CMGetAttachment(AttachedMedia, *off_1E798A3B0, 0);
      v15 = objc_alloc_init(NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMISoftwareFlashRenderingFrameParamsV%d", *(self + 64)]));
      [v15 setLscGains:v13];
      [v15 setLscParams:v14];
      if (v12)
      {
        [v15 setFlashLSCGains:CMSampleBufferGetImageBuffer(v12)];
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = [*(self + 72) addFrame:v7 metadata:v9 frameType:frame frameParams:v15];
  }

  else
  {
    v15 = 0;
    v16 = 4294954516;
  }

  return v16;
}

- (void)input:(id)input addAmbientFrame:(opaqueCMSampleBuffer *)frame
{
  [(BWSWFRProcessorController *)self _addFrame:frame type:0];

  [(BWStillImageProcessorController *)self currentRequestChanged];
}

- (int)prepare
{
  currentRequest = [(BWStillImageProcessorController *)self currentRequest];
  [(BWStillImageProcessorControllerRequest *)currentRequest delegate];
  [(BWStillImageProcessorControllerRequest *)currentRequest input];
  v4 = [OUTLINED_FUNCTION_64_0() processorController:? newOutputPixelBufferForProcessorInput:? type:?];
  if (v4)
  {
    [(CMISoftwareFlashRenderingProcessor *)self->_processor setOutputImagePixelBuffer:v4];
    -[CMISoftwareFlashRenderingProcessor setOutputImageMetadata:](self->_processor, "setOutputImageMetadata:", [MEMORY[0x1E695DF90] dictionary]);
    if ([(BWStillImageProcessingSettings *)[(BWStillImageSettings *)[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)currentRequest input] stillImageSettings] processingSettings] provideDemosaicedRaw])
    {
      -[CMISoftwareFlashRenderingProcessor setLinearOutputImageMetadata:](self->_processor, "setLinearOutputImageMetadata:", [MEMORY[0x1E695DF90] dictionary]);
    }

    v5 = [(CMISoftwareFlashRenderingProcessor *)self->_processor prepareToProcess:0];
  }

  else
  {
    v5 = -12786;
  }

  CVPixelBufferRelease(v4);
  CVPixelBufferRelease(0);
  return v5;
}

- (CMAttachmentBearerRef)_newOutputSampleBufferFromSampleBuffer:(__CVBuffer *)buffer pixelBuffer:(void *)pixelBuffer metadata:(unsigned int)metadata processingFlags:(CFTypeRef *)flags formatDescriptionInOut:
{
  if (result)
  {
    v6 = 0;
    target = 0;
    v7 = 1;
    if (a2 && buffer)
    {
      if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(a2, buffer, flags, &target))
      {
        v6 = 0;
      }

      else
      {
        v10 = *off_1E798A3C8;
        v6 = [CMGetAttachment(target *off_1E798A3C8];
        if ([pixelBuffer count])
        {
          [v6 addEntriesFromDictionary:pixelBuffer];
        }

        CMSetAttachment(target, v10, v6, 1u);
        if (metadata)
        {
          v11 = [CMGetAttachment(target @"StillImageProcessingFlags"];
          CMSetAttachment(target, @"StillImageProcessingFlags", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11 | metadata], 1u);
        }

        v7 = 0;
      }
    }

    result = target;
    if (v7)
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

@end