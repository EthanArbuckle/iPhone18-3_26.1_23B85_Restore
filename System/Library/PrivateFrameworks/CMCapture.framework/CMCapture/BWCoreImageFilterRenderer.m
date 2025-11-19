@interface BWCoreImageFilterRenderer
+ (id)context:(BOOL)a3 deferredPhotoProcessorEnabled:(BOOL)a4 allocatorBackend:(id)a5 err:(int *)a6;
+ (void)_prewarmCoreImagePortraitFilterV1;
+ (void)initialize;
+ (void)prewarmCoreImageSDOFRenderingFilter;
+ (void)prewarmPortraitFilterVersion:(unsigned int)a3 semanticStyleFilters:(BOOL)a4;
- (id)initForRenderingWithDepth:(BOOL)a3 context:(id)a4 portraitRenderQuality:(int)a5 hairnetEnabled:(BOOL)a6 metalCommandQueue:(id)a7 figThreadPriority:(unsigned int)a8;
- (int)prepareForRenderingWithParameters:(id)a3 inputVideoFormat:(id)a4 inputMediaPropertiesByAttachedMediaKey:(id)a5;
- (void)_renderUsingParameters:(const void *)a3 inputPixelBuffer:(const void *)a4 inputSampleBuffer:(const void *)a5 originalPixelBuffer:(const void *)a6 processedPixelBuffer:(char)a7 prewarming:(uint64_t)a8 completionHandler:;
- (void)_visionKitFaceObservationToCoreImageDictionary:(uint64_t)a3 orientation:;
- (void)coreImageArrayRepresentationForRegion:(uint64_t)a1;
- (void)dealloc;
@end

@implementation BWCoreImageFilterRenderer

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (void)prewarmCoreImageSDOFRenderingFilter
{
  v2 = MEMORY[0x1E695F620];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{*MEMORY[0x1E695F920], *MEMORY[0x1E695F870]}];
  v4 = *MEMORY[0x1E695F7F0];
  v10[0] = v3;
  v10[1] = MEMORY[0x1E695E110];
  v5 = *MEMORY[0x1E695F858];
  v9[1] = v4;
  v9[2] = v5;
  v10[2] = MEMORY[0x1E695E118];
  v6 = [v2 contextWithOptions:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v10, v9, 3)}];
  [v6 loadArchiveWithName:@"ccportrait_archive" fromURL:{objc_msgSend(BWLoadProcessorBundle(@"CCPortrait", 0xFFFFFFFFLL), "bundleURL")}];
  v7 = [MEMORY[0x1E695F648] filterWithName:@"CIDepthBlurEffect"];
  if (v7)
  {
    [v7 performSelector:NSSelectorFromString(&cfstr_Prewarm.isa) withObject:v6];
    v8 = NSClassFromString(&cfstr_Espressowrappe.isa);
    [(objc_class *)v8 performSelector:NSSelectorFromString(&cfstr_Clearcache.isa)];
  }
}

+ (void)_prewarmCoreImagePortraitFilterV1
{
  objc_opt_self();
  v0 = objc_autoreleasePoolPush();
  v1 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v44 = 0;
  sampleBufferOut = 0;
  v42 = 0;
  pixelBufferOut = 0;
  v40 = 0;
  v41 = 0;
  formatDescriptionOut = 0;
  v2 = *MEMORY[0x1E69660D8];
  v37[0] = *MEMORY[0x1E6966038];
  v37[1] = v2;
  v38[0] = &unk_1F2246138;
  v38[1] = MEMORY[0x1E695E0F8];
  v37[2] = *MEMORY[0x1E6966208];
  v38[2] = [MEMORY[0x1E696AD98] numberWithInt:1024];
  v37[3] = *MEMORY[0x1E69660B8];
  v38[3] = [MEMORY[0x1E696AD98] numberWithInt:768];
  v37[4] = *MEMORY[0x1E6966130];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:875704422];
  v37[5] = *MEMORY[0x1E6965D00];
  v4 = *MEMORY[0x1E6965D20];
  v38[4] = v3;
  v38[5] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:6];
  v6 = *MEMORY[0x1E695E480];
  if (CVPixelBufferCreate(*MEMORY[0x1E695E480], 0x400uLL, 0x300uLL, 0x34323066u, v5, &pixelBufferOut))
  {
    +[BWCoreImageFilterRenderer _prewarmCoreImagePortraitFilterV1];
  }

  else
  {
    v7 = [BWVideoFormat pixelBufferAttachmentsForColorSpaceProperties:3];
    CVBufferSetAttachments(pixelBufferOut, v7, kCVAttachmentMode_ShouldPropagate);
    if (CMVideoFormatDescriptionCreateForImageBuffer(v6, pixelBufferOut, &formatDescriptionOut))
    {
      +[BWCoreImageFilterRenderer _prewarmCoreImagePortraitFilterV1];
    }

    else if (CVPixelBufferCreate(v6, 0x280uLL, 0x1E0uLL, 0x68646973u, 0, &v41))
    {
      +[BWCoreImageFilterRenderer _prewarmCoreImagePortraitFilterV1];
    }

    else if (CVPixelBufferCreate(v6, 0x280uLL, 0x1E0uLL, 0x4C303038u, 0, &v42))
    {
      +[BWCoreImageFilterRenderer _prewarmCoreImagePortraitFilterV1];
    }

    else
    {
      *&sampleTiming.duration.value = *MEMORY[0x1E6960C70];
      sampleTiming.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
      CMTimeMake(&sampleTiming.presentationTimeStamp, 0x858A8CD5B3FDLL, 1000000000);
      sampleTiming.decodeTimeStamp = sampleTiming.duration;
      if (CMSampleBufferCreateForImageBuffer(v6, pixelBufferOut, 1u, 0, 0, formatDescriptionOut, &sampleTiming, &sampleBufferOut))
      {
        +[BWCoreImageFilterRenderer _prewarmCoreImagePortraitFilterV1];
      }

      else
      {
        CMSetAttachment(sampleBufferOut, @"PortraitStillImageFaceAdjustedBlurMap", v42, 1u);
        v8 = *off_1E798D2B8;
        v9 = *off_1E798CFC0;
        v34 = *off_1E798CFC0;
        v35 = &unk_1F2246150;
        CMSetAttachment(sampleBufferOut, v8, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1], 1u);
        if (formatDescriptionOut)
        {
          CFRelease(formatDescriptionOut);
          formatDescriptionOut = 0;
        }

        if (CMVideoFormatDescriptionCreateForImageBuffer(v6, v41, &formatDescriptionOut))
        {
          +[BWCoreImageFilterRenderer _prewarmCoreImagePortraitFilterV1];
        }

        else if (CMSampleBufferCreateForImageBuffer(v6, v41, 1u, 0, 0, formatDescriptionOut, &sampleTiming, &v40))
        {
          +[BWCoreImageFilterRenderer _prewarmCoreImagePortraitFilterV1];
        }

        else
        {
          BWSampleBufferSetAttachedMedia(sampleBufferOut, @"Depth", v40);
          if (formatDescriptionOut)
          {
            CFRelease(formatDescriptionOut);
            formatDescriptionOut = 0;
          }

          v33 = &unk_1F224C138;
          CMSetAttachment(sampleBufferOut, @"PortraitFacesLandmarksArrayForPrewarm", [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1], 1u);
          if (BWCMSampleBufferCreateCopyIncludingMetadata(sampleBufferOut, &v44))
          {
            +[BWCoreImageFilterRenderer _prewarmCoreImagePortraitFilterV1];
          }

          else
          {
            context = v0;
            v31 = v9;
            v32 = &unk_1F2246180;
            CMSetAttachment(v44, v8, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1], 1u);
            v10 = dispatch_group_create();
            v11 = [[BWCoreImageFilterRenderer alloc] initForRenderingWithDepth:1 context:0 portraitRenderQuality:0 hairnetEnabled:0 metalCommandQueue:0 figThreadPriority:14];
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v12 = [&unk_1F2249510 countByEnumeratingWithState:&v27 objects:v26 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v28;
              do
              {
                v15 = 0;
                do
                {
                  if (*v28 != v14)
                  {
                    objc_enumerationMutation(&unk_1F2249510);
                  }

                  v16 = *(*(&v27 + 1) + 8 * v15);
                  v17 = objc_autoreleasePoolPush();
                  dispatch_group_enter(v10);
                  v18 = [MEMORY[0x1E695F648] filterWithName:v16];
                  if (v18)
                  {
                    v19 = v18;
                    v20 = [BWCoreImageFilterRendererParameters alloc];
                    v25 = v19;
                    v21 = -[BWCoreImageFilterRendererParameters initWithFilters:originalOutputFilter:](v20, "initWithFilters:originalOutputFilter:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1], 0);
                    [v11 prepareForRenderingWithParameters:v21 inputVideoFormat:0 inputMediaPropertiesByAttachedMediaKey:0];
                    v24[0] = MEMORY[0x1E69E9820];
                    v24[1] = 3221225472;
                    v24[2] = __62__BWCoreImageFilterRenderer__prewarmCoreImagePortraitFilterV1__block_invoke;
                    v24[3] = &unk_1E799A630;
                    v24[4] = v10;
                    [(BWCoreImageFilterRenderer *)v11 _renderUsingParameters:v21 inputPixelBuffer:pixelBufferOut inputSampleBuffer:sampleBufferOut originalPixelBuffer:0 processedPixelBuffer:pixelBufferOut prewarming:1 completionHandler:v24];
                    dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
                    dispatch_group_enter(v10);
                    v23[0] = MEMORY[0x1E69E9820];
                    v23[1] = 3221225472;
                    v23[2] = __62__BWCoreImageFilterRenderer__prewarmCoreImagePortraitFilterV1__block_invoke_2;
                    v23[3] = &unk_1E799A630;
                    v23[4] = v10;
                    [(BWCoreImageFilterRenderer *)v11 _renderUsingParameters:v21 inputPixelBuffer:pixelBufferOut inputSampleBuffer:v44 originalPixelBuffer:0 processedPixelBuffer:pixelBufferOut prewarming:1 completionHandler:v23];
                    dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
                  }

                  objc_autoreleasePoolPop(v17);
                  ++v15;
                }

                while (v13 != v15);
                v13 = [&unk_1F2249510 countByEnumeratingWithState:&v27 objects:v26 count:16];
              }

              while (v13);
            }

            if (v40)
            {
              CFRelease(v40);
            }

            v1 = MEMORY[0x1E695FF58];
            if (v41)
            {
              CFRelease(v41);
            }

            if (v42)
            {
              CFRelease(v42);
            }

            v0 = context;
            if (pixelBufferOut)
            {
              CFRelease(pixelBufferOut);
            }

            if (sampleBufferOut)
            {
              CFRelease(sampleBufferOut);
            }

            if (v44)
            {
              CFRelease(v44);
            }
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v0);
  if (*v1 == 1)
  {
    kdebug_trace();
  }
}

+ (id)context:(BOOL)a3 deferredPhotoProcessorEnabled:(BOOL)a4 allocatorBackend:(id)a5 err:(int *)a6
{
  v8 = a4;
  v9 = a3;
  if (a4)
  {
    v10 = [objc_msgSend(MEMORY[0x1E6991778] "metalDevice")];
    v11 = v10;
    v12 = [v10 device];
  }

  else
  {
    v12 = 0;
  }

  v13 = [+[BWMemoryPool sharedMemoryPool](BWMemoryPool poolIdentifier];
  v14 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v15 = 0;
  if (a5 && v8)
  {
    if ([a5 memSize])
    {
      v15 = [[BWCoreImageIntermediateAllocator alloc] initWithBackend:v12 allocatorBackend:a5 memoryPool:v13];
    }

    else
    {
      v15 = 0;
    }
  }

  if (v8)
  {
    v16 = 350;
  }

  else
  {
    v16 = 64;
  }

  v17 = MEMORY[0x1E695F910];
  if (v9)
  {
    v17 = MEMORY[0x1E695F920];
  }

  v18 = *v17;
  v30[0] = *MEMORY[0x1E695F870];
  v19 = [MEMORY[0x1E696AD98] numberWithInt:v18];
  v20 = *MEMORY[0x1E695F7F0];
  v31[0] = v19;
  v31[1] = MEMORY[0x1E695E110];
  v21 = *MEMORY[0x1E695F818];
  v30[1] = v20;
  v30[2] = v21;
  v31[2] = [MEMORY[0x1E696AD98] numberWithInt:v16];
  v30[3] = *MEMORY[0x1E695F808];
  v31[3] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v13];
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:4];
  v23 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v22];
  if (v15)
  {
    v28 = *MEMORY[0x1E695F810];
    v29 = v15;
    [v23 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v29, &v28, 1)}];
  }

  if (v12)
  {
    v24 = [MEMORY[0x1E695F620] contextWithMTLDevice:v12 options:v23];
  }

  else
  {
    v24 = [MEMORY[0x1E695F620] contextWithOptions:v23];
  }

  v25 = v24;
  if (v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = -12786;
  }

  if (a6)
  {
    *a6 = v26;
  }

  if (*v14 == 1)
  {
    kdebug_trace();
  }

  return v25;
}

- (id)initForRenderingWithDepth:(BOOL)a3 context:(id)a4 portraitRenderQuality:(int)a5 hairnetEnabled:(BOOL)a6 metalCommandQueue:(id)a7 figThreadPriority:(unsigned int)a8
{
  v17.receiver = self;
  v17.super_class = BWCoreImageFilterRenderer;
  v13 = [(BWCoreImageFilterRenderer *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_metalCommandQueue = a7;
    v13->_usingDepth = a3;
    v13->_renderingQueueContext = a4;
    v14->_portraitRenderQuality = a5;
    v15 = 1.0;
    if (!a5)
    {
      v15 = 0.0;
    }

    v14->_inputRenderQuality = v15;
    v14->_renderingQueue = FigDispatchQueueCreateWithPriority();
    v14->_callbackQueue = dispatch_queue_create("com.apple.bwgraph.callback.core-image", 0);
    v14->_hairnetEnabled = a6;
  }

  return v14;
}

- (void)dealloc
{
  renderingQueue = self->_renderingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__BWCoreImageFilterRenderer_dealloc__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(renderingQueue, block);

  self->_renderingQueue = 0;
  self->_callbackQueue = 0;
  v4.receiver = self;
  v4.super_class = BWCoreImageFilterRenderer;
  [(BWCoreImageFilterRenderer *)&v4 dealloc];
}

- (int)prepareForRenderingWithParameters:(id)a3 inputVideoFormat:(id)a4 inputMediaPropertiesByAttachedMediaKey:(id)a5
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  renderingQueue = self->_renderingQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __119__BWCoreImageFilterRenderer_prepareForRenderingWithParameters_inputVideoFormat_inputMediaPropertiesByAttachedMediaKey___block_invoke;
  v9[3] = &unk_1E79904A0;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(renderingQueue, v9);
  LODWORD(a4) = [a3 prepareForRenderingWithInputVideoFormat:a4];
  *(v11 + 6) = a4;
  _Block_object_dispose(&v10, 8);
  return a4;
}

uint64_t __119__BWCoreImageFilterRenderer_prepareForRenderingWithParameters_inputVideoFormat_inputMediaPropertiesByAttachedMediaKey___block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if (!*(v2 + 40))
  {
    v3 = result;
    v4 = [BWCoreImageFilterRenderer context:*(v2 + 8) deferredPhotoProcessorEnabled:0 allocatorBackend:0 err:*(*(result + 40) + 8) + 24];
    v5 = *(v3 + 32);

    return [v5 setRenderingQueueContext:v4];
  }

  return result;
}

void __157__BWCoreImageFilterRenderer__renderUsingParameters_inputPixelBuffer_inputSampleBuffer_originalPixelBuffer_processedPixelBuffer_prewarming_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) renderingQueueContext];
  v3 = *(*(a1 + 32) + 48);
  if (v3)
  {
    v4 = [v3 commandBuffer];
    [v4 commit];
    [v4 waitUntilCompleted];
  }

  obj = [*(a1 + 40) filters];
  if ([obj count])
  {
    v118 = *MEMORY[0x1E695F990];
    v176 = *MEMORY[0x1E695F990];
    v177 = MEMORY[0x1E695E118];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v177 forKeys:&v176 count:1];
    v6 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:*(a1 + 56) options:v5];
    v7 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    if ([*(a1 + 40) requiresDepthMap])
    {
      v8 = CMGetAttachment(*(a1 + 64), *off_1E798D2B8, 0);
      v9 = CMGetAttachment(*(a1 + 64), @"PortraitStillImageAuxDepthMetadata", 0);
      if (!v9 || (AuxiliaryImagePropertiesFromDepthMetadata = CFRetain(v9)) == 0)
      {
        AuxiliaryImagePropertiesFromDepthMetadata = FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata(v8);
      }

      v116 = AuxiliaryImagePropertiesFromDepthMetadata;
      v101 = CMGetAttachment(*(a1 + 64), @"PortraitStillImageFaceAdjustedBlurMap", 0);
      AttachedMedia = BWSampleBufferGetAttachedMedia(*(a1 + 64), 0x1F217BF50);
      if (AttachedMedia)
      {
        v12 = AttachedMedia;
        ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
        v13 = CMGetAttachment(v12, *off_1E798A3C8, 0);
        [objc_msgSend(CMGetAttachment(*(a1 + 64) @"StillSettings"];
        cf = FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromGainMapSampleBuffer(v13);
      }

      else
      {
        ImageBuffer = 0;
        cf = 0;
      }

      HasDetectedFaces = BWSampleBufferHasDetectedFaces(*(a1 + 64), 0, 0, 1, 1, 1);
      v18 = HasDetectedFaces | BWSampleBufferHasDetectedHumanBodies(*(a1 + 64));
      v19 = BWSampleBufferGetAttachedMedia(*(a1 + 64), @"Depth");
      if (v19)
      {
        v96 = CMSampleBufferGetImageBuffer(v19);
      }

      else
      {
        v96 = 0;
      }

      v20 = *(a1 + 64);
      if (v18)
      {
        v21 = BWSampleBufferGetAttachedMedia(v20, 0x1F21AABB0);
        if (v21)
        {
          v123 = CMSampleBufferGetImageBuffer(v21);
        }

        else
        {
          v123 = 0;
        }

        v16 = v8;
        v23 = BWSampleBufferGetAttachedMedia(*(a1 + 64), @"PersonSemanticsHair");
        if (v23)
        {
          v122 = CMSampleBufferGetImageBuffer(v23);
        }

        else
        {
          v122 = 0;
        }

        v24 = BWSampleBufferGetAttachedMedia(*(a1 + 64), @"PersonSemanticsSkin");
        if (v24)
        {
          v121 = CMSampleBufferGetImageBuffer(v24);
        }

        else
        {
          v121 = 0;
        }

        v25 = BWSampleBufferGetAttachedMedia(*(a1 + 64), @"PersonSemanticsTeeth");
        if (v25)
        {
          v120 = CMSampleBufferGetImageBuffer(v25);
        }

        else
        {
          v120 = 0;
        }

        v26 = BWSampleBufferGetAttachedMedia(*(a1 + 64), @"PersonSemanticsGlasses");
        if (v26)
        {
          v119 = CMSampleBufferGetImageBuffer(v26);
        }

        else
        {
          v119 = 0;
        }
      }

      else if (BWInferenceGetAttachedInference(v20, 801, 0x1F219E5F0) && !dword_1ED844650)
      {
        v119 = 0;
        v120 = 0;
        v121 = 0;
        v122 = 0;
        v123 = 0;
        v16 = v8;
      }

      else
      {
        v175 = 0;
        v174 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        v16 = v8;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v119 = 0;
        v120 = 0;
        v121 = 0;
        v122 = 0;
        v123 = 0;
      }

      v125 = [v16 objectForKeyedSubscript:{*off_1E798D220, v93, v94}];
    }

    else
    {
      cf = 0;
      v125 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v122 = 0;
      v123 = 0;
      v96 = 0;
      ImageBuffer = 0;
      v101 = 0;
      v116 = 0;
      v16 = 0;
    }

    v95 = v2;
    if (*v7 == 1)
    {
      kdebug_trace();
      if (*v7 == 1)
      {
        kdebug_trace();
      }
    }

    v102 = v16;
    if ([*(a1 + 40) requiresFaceLandmarks])
    {
      AttachedInference = BWInferenceGetAttachedInference(*(a1 + 64), 801, 0x1F219E5F0);
      if ([AttachedInference count])
      {
        v117 = [MEMORY[0x1E695DF70] array];
        v28 = CMGetAttachment(*(a1 + 64), *off_1E798A3C8, 0);
        v168 = 0u;
        v169 = 0u;
        v170 = 0u;
        v171 = 0u;
        v29 = [AttachedInference countByEnumeratingWithState:&v168 objects:v167 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v169;
          v32 = *off_1E798A5B0;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v169 != v31)
              {
                objc_enumerationMutation(AttachedInference);
              }

              [v117 addObject:{-[BWCoreImageFilterRenderer _visionKitFaceObservationToCoreImageDictionary:orientation:](*(a1 + 32), *(*(&v168 + 1) + 8 * i), objc_msgSend(v28, "objectForKeyedSubscript:", v32))}];
            }

            v30 = [AttachedInference countByEnumeratingWithState:&v168 objects:v167 count:16];
          }

          while (v30);
          v7 = MEMORY[0x1E695FF58];
        }
      }

      else if (*(a1 + 88) == 1)
      {
        v117 = CMGetAttachment(*(a1 + 64), @"PortraitFacesLandmarksArrayForPrewarm", 0);
      }

      else
      {
        v117 = 0;
      }

      v16 = v102;
    }

    else
    {
      v117 = 0;
    }

    if (*v7 == 1)
    {
      kdebug_trace();
      if (*v7 == 1)
      {
        kdebug_trace();
      }
    }

    v34 = [MEMORY[0x1E695DF70] array];
    v173[0] = 0;
    v35 = [*(a1 + 40) originalOutputFilter];
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v36 = [obj countByEnumeratingWithState:&v163 objects:v162 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = 0;
      v106 = 0;
      v107 = 0;
      v104 = 0;
      v105 = 0;
      v108 = 0;
      v109 = 0;
      v103 = 0;
      v115 = 0;
      v126 = *MEMORY[0x1E695FAB0];
      v127 = *v164;
      v99 = *MEMORY[0x1E695F9A8];
      v97 = *MEMORY[0x1E696D228];
      v98 = *MEMORY[0x1E695F9E0];
      v114 = *off_1E798D348;
      v112 = *off_1E798D018;
      v113 = *off_1E798CFC0;
      v110 = *off_1E798CEF8;
      v111 = *MEMORY[0x1E695FB20];
      while (1)
      {
        v39 = 0;
        do
        {
          if (*v164 != v127)
          {
            objc_enumerationMutation(obj);
          }

          v40 = *(*(&v163 + 1) + 8 * v39);
          [v40 setValue:v6 forKey:v126];
          [v34 addObject:v126];
          v41 = [v40 inputKeys];
          v129 = v39;
          if ([*(a1 + 40) requiresDepthMap])
          {
            v42 = [*(a1 + 40) depthTypeForFilter:v40];
            if (v42 == 1)
            {
              if (!v108)
              {
                v156 = v118;
                v157 = MEMORY[0x1E695E118];
                v44 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v101 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v157, &v156, 1)}];
                v45 = v44;
                v43 = @"inputDepthMap";
                goto LABEL_81;
              }

              v43 = @"inputDepthMap";
            }

            else
            {
              if (v42 != 2)
              {
                if (v42 == 3)
                {
                  if (v108)
                  {
                    v43 = @"inputBlurMap";
                    goto LABEL_82;
                  }

                  v160 = v118;
                  v161 = MEMORY[0x1E695E118];
                  v44 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v101 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v161, &v160, 1)}];
                  v45 = v44;
                  v43 = @"inputBlurMap";
LABEL_81:
                  v108 = v44;
                  if (v45)
                  {
                    goto LABEL_82;
                  }
                }

LABEL_83:
                if ([v41 containsObject:@"inputGainMap"])
                {
                  Mutable = cf;
                  if (!cf)
                  {
                    Mutable = CGImageMetadataCreateMutable();
                  }

                  cf = Mutable;
                  v47 = v115;
                  if (!v115)
                  {
                    v48 = MEMORY[0x1E695F658];
                    v155[0] = MEMORY[0x1E695E118];
                    v154[0] = v118;
                    v154[1] = v99;
                    v155[1] = [MEMORY[0x1E695DFB0] null];
                    v154[2] = v98;
                    v152 = v97;
                    v153 = cf;
                    v155[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
                    v16 = v102;
                    v47 = [v48 imageWithCVPixelBuffer:ImageBuffer options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v155, v154, 3)}];
                  }

                  v115 = v47;
                  [v40 setValue:v47 forKey:@"inputGainMap"];
                  [v34 addObject:@"inputGainMap"];
                }

                if (v123 && (([v41 containsObject:@"inputMatte"] & 1) != 0 || objc_msgSend(v41, "containsObject:", @"inputMatteImage")))
                {
                  v49 = v109;
                  if (!v109)
                  {
                    v150 = v118;
                    v151 = MEMORY[0x1E695E118];
                    v49 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v123 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v151, &v150, 1)}];
                  }

                  v50 = @"inputMatte";
                  if (![v41 containsObject:@"inputMatte"])
                  {
                    v50 = @"inputMatteImage";
                  }

                  v109 = v49;
                  [v40 setValue:v49 forKey:v50];
                  [v34 addObject:v50];
                }

                if (v122 && [v41 containsObject:@"inputHairMask"])
                {
                  v51 = v104;
                  if (!v104)
                  {
                    v148 = v118;
                    v149 = MEMORY[0x1E695E118];
                    v51 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v122 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v149, &v148, 1)}];
                  }

                  v104 = v51;
                  [v40 setValue:v51 forKey:@"inputHairMask"];
                  [v34 addObject:@"inputHairMask"];
                }

                v52 = [objc_msgSend(CMGetAttachment(*(a1 + 64) @"StillSettings"];
                if (BWCIFilterArrayContainsPortraitEffectStageFilters(v52, 0) && [v41 containsObject:@"inputBestHairQuality"])
                {
                  [v40 setValue:MEMORY[0x1E695E110] forKey:@"inputBestHairQuality"];
                  [v34 addObject:@"inputBestHairQuality"];
                }

                if (v121 && [v41 containsObject:@"inputFaceMask"])
                {
                  v53 = v105;
                  if (!v105)
                  {
                    v146 = v118;
                    v147 = MEMORY[0x1E695E118];
                    v53 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v121 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v147, &v146, 1)}];
                  }

                  v105 = v53;
                  [v40 setValue:v53 forKey:@"inputFaceMask"];
                  [v34 addObject:@"inputFaceMask"];
                }

                if (v120 && [v41 containsObject:@"inputTeethMask"])
                {
                  v54 = v106;
                  if (!v106)
                  {
                    v144 = v118;
                    v145 = MEMORY[0x1E695E118];
                    v54 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v120 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v145, &v144, 1)}];
                  }

                  v106 = v54;
                  [v40 setValue:v54 forKey:@"inputTeethMask"];
                  [v34 addObject:@"inputTeethMask"];
                }

                if (v119 && [v41 containsObject:@"inputGlassesMask"])
                {
                  v55 = v107;
                  if (!v107)
                  {
                    v142 = v118;
                    v143 = MEMORY[0x1E695E118];
                    v55 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v119 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v143, &v142, 1)}];
                  }

                  v107 = v55;
                  [v40 setValue:v55 forKey:@"inputTeethMask"];
                  [v34 addObject:@"inputTeethMask"];
                }

                if (v125 && [v41 containsObject:@"inputStrength"])
                {
                  [v40 setValue:v125 forKey:@"inputStrength"];
                  [v34 addObject:@"inputStrength"];
                }

                v56 = CMGetAttachment(*(a1 + 64), v114, 0);
                if ([v41 containsObject:@"inputLumaNoiseScale"])
                {
                  if (v56)
                  {
                    v57 = v56;
                  }

                  else
                  {
                    v57 = &unk_1F224A8E0;
                  }

                  [v40 setValue:v57 forKey:@"inputLumaNoiseScale"];
                  [v34 addObject:@"inputLumaNoiseScale"];
                }

                goto LABEL_128;
              }

              if (v103)
              {
                v43 = @"inputDisparity";
                goto LABEL_82;
              }

              v158 = v118;
              v159 = MEMORY[0x1E695E118];
              v43 = @"inputDisparity";
              v103 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v96 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v159, &v158, 1)}];
              if (!v103)
              {
                goto LABEL_83;
              }
            }

LABEL_82:
            [v40 setValue:? forKey:?];
            [v34 addObject:v43];
            goto LABEL_83;
          }

LABEL_128:
          if ([v41 containsObject:@"inputFaceLandmarkArray"])
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"face landmarks (%lu faces)", objc_msgSend(v117, "count")];
            [v40 setValue:v117 forKey:@"inputFaceLandmarkArray"];
            [v34 addObject:@"inputFaceLandmarkArray"];
          }

          if ([v41 containsObject:@"inputUseAbsoluteDisparity"])
          {
            v58 = [objc_msgSend(v16 objectForKeyedSubscript:{v113), "intValue"}] == 1;
            v59 = v58;
            v60 = "relative";
            if (v58)
            {
              v60 = "absolute";
            }

            [MEMORY[0x1E696AEC0] stringWithFormat:@"%s disparity", v60];
            [v40 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", v59), @"inputUseAbsoluteDisparity"}];
            [v34 addObject:@"inputUseAbsoluteDisparity"];
          }

          if ([v41 containsObject:@"inputDepthDataScore"])
          {
            v61 = [v16 objectForKeyedSubscript:v112];
            if (v61)
            {
              v62 = v61;
              [MEMORY[0x1E696AEC0] stringWithFormat:@"portrait score %@", v61];
              [v40 setValue:v62 forKey:@"inputDepthDataScore"];
              [v34 addObject:@"inputDepthDataScore"];
            }
          }

          if ([v41 containsObject:@"inputFocalLengthNormalized"])
          {
            v172[0] = 0.0;
            FigDepthComputeNormalizedFocalLength(v16, v172);
            [MEMORY[0x1E696AEC0] stringWithFormat:@"normalized focal length %.2f", v172[0]];
            *&v63 = v172[0];
            [v40 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v63), @"inputFocalLengthNormalized"}];
            [v34 addObject:@"inputFocalLengthNormalized"];
          }

          if (*(*(a1 + 32) + 12) == 2)
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"input scale %.2f", 0x3FE0000000000000];
            LODWORD(v64) = 0.5;
            [v40 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v64), v111}];
            [v34 addObject:v111];
          }

          if ([v41 containsObject:@"inputAperture"])
          {
            [objc_msgSend(v16 objectForKeyedSubscript:{v110), "floatValue"}];
            v66 = v65;
            [MEMORY[0x1E696AEC0] stringWithFormat:@"input aperture %.2f", v65];
            *&v67 = v66;
            [v40 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v67), @"inputAperture"}];
            [v34 addObject:@"inputAperture"];
          }

          if ([v41 containsObject:@"inputRenderProxy"])
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"input render quality %.2f", *(*(a1 + 32) + 16)];
            LODWORD(v68) = *(*(a1 + 32) + 16);
            [v40 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v68), @"inputRenderProxy"}];
            [v34 addObject:@"inputRenderProxy"];
          }

          if ([v41 containsObject:@"inputAuxDataMetadata"])
          {
            [v40 setValue:v116 forKey:@"inputAuxDataMetadata"];
            [v34 addObject:@"inputAuxDataMetadata"];
          }

          v69 = *(a1 + 32);
          if (*(v69 + 56))
          {
            v70 = *(v69 + 12);
            if ([v41 containsObject:@"inputGenerateSpillMatte"] && !v70)
            {
              [v40 setValue:MEMORY[0x1E695E118] forKey:@"inputGenerateSpillMatte"];
              [v34 addObject:@"inputGenerateSpillMatte"];
            }
          }

          else
          {
            [v41 containsObject:@"inputGenerateSpillMatte"];
          }

          v71 = [v40 outputImage];
          v6 = v71;
          if (v35 == v40)
          {
            v38 = v71;
          }

          v39 = v129 + 1;
        }

        while (v37 != v129 + 1);
        v37 = [obj countByEnumeratingWithState:&v163 objects:v162 count:16];
        if (!v37)
        {
          goto LABEL_158;
        }
      }
    }

    v6 = 0;
    v38 = 0;
LABEL_158:
    v72 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
      if (*v72 == 1)
      {
        kdebug_trace();
      }
    }

    v73 = 0;
    if (*(a1 + 72) && v38)
    {
      [v95 render:v38 toCVPixelBuffer:?];
      v73 = 1;
    }

    if (*(a1 + 80) && v6)
    {
      v74 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:*(a1 + 80)];
      if (*(a1 + 88))
      {
        [v6 extent];
        [v95 prepareRender:v6 fromRect:v74 toDestination:v173 atPoint:? error:?];
      }

      else
      {
        Width = CVPixelBufferGetWidth(*(a1 + 80));
        v76 = [v95 startTaskToRender:v6 fromRect:v74 toDestination:v173 atPoint:0.0 error:{0.0, Width, CVPixelBufferGetHeight(*(a1 + 80)), 0.0, 0.0}];
        if (!v173[0])
        {
          [v76 waitUntilCompletedAndReturnError:v173];
        }
      }

      v73 |= 2uLL;
    }

    v130 = v73;
    if (*v72 == 1)
    {
      kdebug_trace();
      if (*v72 == 1)
      {
        kdebug_trace();
      }
    }

    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v77 = [obj countByEnumeratingWithState:&v138 objects:v137 count:16];
    if (v77)
    {
      v78 = v77;
      v79 = *v139;
      do
      {
        for (j = 0; j != v78; ++j)
        {
          if (*v139 != v79)
          {
            objc_enumerationMutation(obj);
          }

          v81 = *(*(&v138 + 1) + 8 * j);
          v133 = 0u;
          v134 = 0u;
          v135 = 0u;
          v136 = 0u;
          v82 = [v34 countByEnumeratingWithState:&v133 objects:v132 count:16];
          if (v82)
          {
            v83 = v82;
            v84 = *v134;
            do
            {
              for (k = 0; k != v83; ++k)
              {
                if (*v134 != v84)
                {
                  objc_enumerationMutation(v34);
                }

                v86 = *(*(&v133 + 1) + 8 * k);
                if ([objc_msgSend(v81 "inputKeys")])
                {
                  [v81 setValue:0 forKey:v86];
                }
              }

              v83 = [v34 countByEnumeratingWithState:&v133 objects:v132 count:16];
            }

            while (v83);
          }
        }

        v78 = [obj countByEnumeratingWithState:&v138 objects:v137 count:16];
      }

      while (v78);
    }

    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    v87 = *(a1 + 48);
    if (v87)
    {
      v88 = *(*(a1 + 32) + 32);
      v131[0] = MEMORY[0x1E69E9820];
      v131[1] = 3221225472;
      v131[2] = __157__BWCoreImageFilterRenderer__renderUsingParameters_inputPixelBuffer_inputSampleBuffer_originalPixelBuffer_processedPixelBuffer_prewarming_completionHandler___block_invoke_1230;
      v131[3] = &unk_1E799A658;
      v131[5] = v87;
      v131[6] = v130;
      v131[4] = v173[0];
      dispatch_async(v88, v131);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v116)
    {
      CFRelease(v116);
    }

    v89 = *(a1 + 56);
    if (v89)
    {
      CFRelease(v89);
    }

    v90 = *(a1 + 64);
    if (v90)
    {
      CFRelease(v90);
    }

    v91 = *(a1 + 72);
    if (v91)
    {
      CFRelease(v91);
    }

    v92 = *(a1 + 80);
    if (v92)
    {
      CFRelease(v92);
    }
  }

  else
  {
    v14 = *(a1 + 48);
    if (v14)
    {
      v15 = *(*(a1 + 32) + 32);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __157__BWCoreImageFilterRenderer__renderUsingParameters_inputPixelBuffer_inputSampleBuffer_originalPixelBuffer_processedPixelBuffer_prewarming_completionHandler___block_invoke_2;
      block[3] = &unk_1E79903B8;
      block[4] = v14;
      block[5] = 0;
      dispatch_async(v15, block);
    }
  }
}

+ (void)prewarmPortraitFilterVersion:(unsigned int)a3 semanticStyleFilters:(BOOL)a4
{
  if (a4)
  {
    [MEMORY[0x1E695F620] loadArchive:*MEMORY[0x1E695FB58]];
  }

  if (MGGetBoolAnswer())
  {
    if (a3 == 2)
    {
      v5 = NSSelectorFromString(&cfstr_Prewarm.isa);
      v6 = [MEMORY[0x1E695F648] filterWithName:@"CIPortraitEffectLightV2"];
      if (objc_opt_respondsToSelector())
      {

        [v6 performSelector:v5 withObject:0];
      }
    }

    else if (a3 == 1)
    {

      +[BWCoreImageFilterRenderer _prewarmCoreImagePortraitFilterV1];
    }
  }
}

- (void)_renderUsingParameters:(const void *)a3 inputPixelBuffer:(const void *)a4 inputSampleBuffer:(const void *)a5 originalPixelBuffer:(const void *)a6 processedPixelBuffer:(char)a7 prewarming:(uint64_t)a8 completionHandler:
{
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a3)
      {
        CFRetain(a3);
      }

      if (a4)
      {
        CFRetain(a4);
      }

      if (a5)
      {
        CFRetain(a5);
      }

      if (a6)
      {
        CFRetain(a6);
      }

      v16 = *(a1 + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __157__BWCoreImageFilterRenderer__renderUsingParameters_inputPixelBuffer_inputSampleBuffer_originalPixelBuffer_processedPixelBuffer_prewarming_completionHandler___block_invoke;
      block[3] = &unk_1E799A680;
      block[4] = a1;
      block[5] = a2;
      block[6] = a8;
      block[7] = a3;
      v18 = a7;
      block[8] = a4;
      block[9] = a5;
      block[10] = a6;
      dispatch_async(v16, block);
    }

    else
    {
      OUTLINED_FUNCTION_1_8();
      FigDebugAssert3();
    }
  }
}

- (void)_visionKitFaceObservationToCoreImageDictionary:(uint64_t)a3 orientation:
{
  if (!a1)
  {
    return 0;
  }

  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:20];
  [a2 boundingBox];
  valuePtr = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v22 = OUTLINED_FUNCTION_3_86(Mutable, v15, v16, v17, v18, v19, v20, v21, v54, valuePtr);
  OUTLINED_FUNCTION_4_76(v22, @"x");
  CFRelease(v22);
  v31 = OUTLINED_FUNCTION_3_86(v23, v24, v25, v26, v27, v28, v29, v30, v55, v9);
  OUTLINED_FUNCTION_4_76(v31, @"y");
  CFRelease(v31);
  v40 = OUTLINED_FUNCTION_3_86(v32, v33, v34, v35, v36, v37, v38, v39, v56, v11);
  OUTLINED_FUNCTION_4_76(v40, @"w");
  CFRelease(v40);
  v49 = OUTLINED_FUNCTION_3_86(v41, v42, v43, v44, v45, v46, v47, v48, v57, v13);
  OUTLINED_FUNCTION_4_76(v49, @"h");
  CFRelease(v49);
  [v5 setObject:Mutable forKeyedSubscript:@"faceBoundingBox"];

  [v5 setObject:a3 forKeyedSubscript:@"orientation"];
  v50 = MEMORY[0x1E696AD98];
  [a2 faceJunkinessIndex];
  [v5 setObject:objc_msgSend(v50 forKeyedSubscript:{"numberWithFloat:"), @"faceJunkinessIndex"}];
  v51 = MEMORY[0x1E696AD98];
  [a2 faceOrientationIndex];
  [v5 setObject:objc_msgSend(v51 forKeyedSubscript:{"numberWithFloat:"), @"faceOrientationIndex"}];
  [v5 setObject:objc_msgSend(a2 forKeyedSubscript:{"yaw"), @"yaw"}];
  [v5 setObject:objc_msgSend(a2 forKeyedSubscript:{"roll"), @"roll"}];
  v52 = [a2 landmarks];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(v52 forKeyedSubscript:{"allPoints")), @"allPoints"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(v52 forKeyedSubscript:{"faceContour")), @"faceContour"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(v52 forKeyedSubscript:{"leftEye")), @"leftEye"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(v52 forKeyedSubscript:{"rightEye")), @"rightEye"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(v52 forKeyedSubscript:{"leftEyebrow")), @"leftEyebrow"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(v52 forKeyedSubscript:{"rightEyebrow")), @"rightEyebrow"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(v52 forKeyedSubscript:{"nose")), @"nose"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(v52 forKeyedSubscript:{"noseCrest")), @"noseCrest"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(v52 forKeyedSubscript:{"medianLine")), @"medianLips"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(v52 forKeyedSubscript:{"outerLips")), @"outerLips"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(v52 forKeyedSubscript:{"innerLips")), @"innerLips"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(v52 forKeyedSubscript:{"leftPupil")), @"leftPupil"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(v52 forKeyedSubscript:{"rightPupil")), @"rightPupil"}];
  return v5;
}

- (void)coreImageArrayRepresentationForRegion:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  if (!a2 || (v3 = [a2 pointCount], v4 = objc_msgSend(a2, "normalizedPoints"), !v3) || (v5 = v4) == 0)
  {
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3();
    return 0;
  }

  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
  v7 = (v5 + 8);
  v8 = MEMORY[0x1E695E9D8];
  v9 = MEMORY[0x1E695E9E8];
  do
  {
    v10 = *(v7 - 1);
    v11 = *v7;
    Mutable = CFDictionaryCreateMutable(0, 0, v8, v9);
    valuePtr = v10;
    v13 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    CFDictionarySetValue(Mutable, @"x", v13);
    CFRelease(v13);
    valuePtr = v11;
    v14 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    CFDictionarySetValue(Mutable, @"y", v14);
    CFRelease(v14);
    [v6 addObject:Mutable];

    v7 += 2;
    --v3;
  }

  while (v3);
  return v6;
}

@end