@interface BWSWFRProcessorController
+ (uint64_t)_nrfVersionForSWFRVersion:(uint64_t)a1;
- (BWSWFRProcessorController)initWithConfiguration:(id)a3;
- (CMAttachmentBearerRef)_newOutputSampleBufferFromSampleBuffer:(__CVBuffer *)a3 pixelBuffer:(void *)a4 metadata:(unsigned int)a5 processingFlags:(CFTypeRef *)a6 formatDescriptionInOut:;
- (id)processorNewInferences:(id)a3;
- (id)requestForInput:(id)a3 delegate:(id)a4 errOut:(int *)a5;
- (int)prepare;
- (int)process;
- (uint64_t)_addFrame:(uint64_t)a3 type:;
- (uint64_t)_loadSetupAndPrepareProcessor;
- (void)dealloc;
- (void)input:(id)a3 addAmbientFrame:(opaqueCMSampleBuffer *)a4;
- (void)input:(id)a3 addFlashFrame:(opaqueCMSampleBuffer *)a4;
- (void)reset;
@end

@implementation BWSWFRProcessorController

- (BWSWFRProcessorController)initWithConfiguration:(id)a3
{
  v8.receiver = self;
  v8.super_class = BWSWFRProcessorController;
  v4 = [(BWStillImageProcessorController *)&v8 initWithName:@"SoftwareFlashRendering" type:15 configuration:a3];
  if (v4)
  {
    v4->_version = [a3 version];
    v4->_outputPixelFormat = FigCaptureCompressedPixelFormatForPixelFormat(1751527984, 4, [a3 lossyCompressionLevel]);
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

- (void)input:(id)a3 addFlashFrame:(opaqueCMSampleBuffer *)a4
{
  [(BWSWFRProcessorController *)self _addFrame:a4 type:1];

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

- (id)requestForInput:(id)a3 delegate:(id)a4 errOut:(int *)a5
{
  v6 = [(BWStillImageProcessorControllerRequest *)[BWSWFRProcessorControllerRequest alloc] initWithInput:a3 delegate:a4];
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
  v4 = [(CMISoftwareFlashRenderingProcessor *)self->_processor process];
  if (dword_1EB58E320)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v4 || (v6 = [(BWSWFRProcessorController *)self _newOutputSampleBufferFromSampleBuffer:[(CMISoftwareFlashRenderingProcessor *)self->_processor outputImagePixelBuffer] pixelBuffer:[(CMISoftwareFlashRenderingProcessor *)self->_processor outputImageMetadata] metadata:0 processingFlags:&self->_outputFormatDescription formatDescriptionInOut:?]) == 0)
  {
    [(BWColorConstancyProcessorController *)v3 process];
  }

  else
  {
    v7 = v6;
    [(BWStillImageProcessorControllerDelegate *)[(BWStillImageProcessorControllerRequest *)v3 delegate] processorController:self didFinishProcessingSampleBuffer:v6 type:1 processorInput:[(BWStillImageProcessorControllerRequest *)v3 input] err:0];
    CFRelease(v7);
  }

  return 0;
}

- (id)processorNewInferences:(id)a3
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

+ (uint64_t)_nrfVersionForSWFRVersion:(uint64_t)a1
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
        v8 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters nrfVersion];
        v18[0] = 67109632;
        v18[1] = v7;
        v19 = 1024;
        v20 = v2;
        v21 = 1024;
        v22 = v8;
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
    v11 = BWSampleBufferGetAttachedMedia(sbuf, 0x1F21AAE90);
    if (AttachedMedia)
    {
      v12 = v11;
      v13 = CMSampleBufferGetImageBuffer(AttachedMedia);
      v14 = CMGetAttachment(AttachedMedia, *off_1E798A3B0, 0);
      v15 = objc_alloc_init(NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMISoftwareFlashRenderingFrameParamsV%d", *(a1 + 64)]));
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

    v16 = [*(a1 + 72) addFrame:v7 metadata:v9 frameType:a3 frameParams:v15];
  }

  else
  {
    v15 = 0;
    v16 = 4294954516;
  }

  return v16;
}

- (void)input:(id)a3 addAmbientFrame:(opaqueCMSampleBuffer *)a4
{
  [(BWSWFRProcessorController *)self _addFrame:a4 type:0];

  [(BWStillImageProcessorController *)self currentRequestChanged];
}

- (int)prepare
{
  v3 = [(BWStillImageProcessorController *)self currentRequest];
  [(BWStillImageProcessorControllerRequest *)v3 delegate];
  [(BWStillImageProcessorControllerRequest *)v3 input];
  v4 = [OUTLINED_FUNCTION_64_0() processorController:? newOutputPixelBufferForProcessorInput:? type:?];
  if (v4)
  {
    [(CMISoftwareFlashRenderingProcessor *)self->_processor setOutputImagePixelBuffer:v4];
    -[CMISoftwareFlashRenderingProcessor setOutputImageMetadata:](self->_processor, "setOutputImageMetadata:", [MEMORY[0x1E695DF90] dictionary]);
    if ([(BWStillImageProcessingSettings *)[(BWStillImageSettings *)[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v3 input] stillImageSettings] processingSettings] provideDemosaicedRaw])
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

- (CMAttachmentBearerRef)_newOutputSampleBufferFromSampleBuffer:(__CVBuffer *)a3 pixelBuffer:(void *)a4 metadata:(unsigned int)a5 processingFlags:(CFTypeRef *)a6 formatDescriptionInOut:
{
  if (result)
  {
    v6 = 0;
    target = 0;
    v7 = 1;
    if (a2 && a3)
    {
      if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(a2, a3, a6, &target))
      {
        v6 = 0;
      }

      else
      {
        v10 = *off_1E798A3C8;
        v6 = [CMGetAttachment(target *off_1E798A3C8];
        if ([a4 count])
        {
          [v6 addEntriesFromDictionary:a4];
        }

        CMSetAttachment(target, v10, v6, 1u);
        if (a5)
        {
          v11 = [CMGetAttachment(target @"StillImageProcessingFlags"];
          CMSetAttachment(target, @"StillImageProcessingFlags", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11 | a5], 1u);
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