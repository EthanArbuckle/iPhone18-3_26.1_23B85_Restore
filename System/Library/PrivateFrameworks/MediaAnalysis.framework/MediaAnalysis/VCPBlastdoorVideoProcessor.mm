@interface VCPBlastdoorVideoProcessor
- (BOOL)addFrameProcessingRequest:(id)request withConfiguration:(id)configuration error:(id *)error;
- (BOOL)analyzeWithError:(id *)error;
- (BOOL)processConfiguration:(id)configuration withError:(id *)error;
- (VCPBlastdoorVideoProcessor)initWithURL:(id)l;
@end

@implementation VCPBlastdoorVideoProcessor

- (VCPBlastdoorVideoProcessor)initWithURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = VCPBlastdoorVideoProcessor;
  v6 = [(VCPBlastdoorVideoProcessor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
    array = [MEMORY[0x1E695DF70] array];
    frameProcessors = v7->_frameProcessors;
    v7->_frameProcessors = array;

    atomic_store(0, &v7->_canceled);
  }

  return v7;
}

- (BOOL)processConfiguration:(id)configuration withError:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v6 = [configurationCopy count];
  if (v6)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      allKeys = [configurationCopy allKeys];
      *buf = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = allKeys;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Unsupported configuration keys: %@", buf, 0x16u);
    }

    if (error)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported configuration keys", *MEMORY[0x1E696A578]];
      v14 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      *error = [v9 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v11];
    }
  }

  return v6 == 0;
}

- (BOOL)addFrameProcessingRequest:(id)request withConfiguration:(id)configuration error:(id *)error
{
  requestCopy = request;
  v9 = [(VCPBlastdoorVideoProcessor *)self processConfiguration:configuration withError:error];
  if (v9)
  {
    frameProcessors = self->_frameProcessors;
    v11 = _Block_copy(requestCopy);
    [(NSMutableArray *)frameProcessors addObject:v11];
  }

  return v9;
}

- (BOOL)analyzeWithError:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_frameProcessors count])
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x2050000000;
    v4 = getIMMessagesBlastDoorInterfaceClass(void)::softClass;
    v48 = getIMMessagesBlastDoorInterfaceClass(void)::softClass;
    if (!getIMMessagesBlastDoorInterfaceClass(void)::softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v52 = ___ZL36getIMMessagesBlastDoorInterfaceClassv_block_invoke;
      v53 = &unk_1E834C0F0;
      v54 = &v45;
      ___ZL36getIMMessagesBlastDoorInterfaceClassv_block_invoke(&buf);
      v4 = v46[3];
    }

    v5 = v4;
    _Block_object_dispose(&v45, 8);
    v37 = objc_alloc_init(v4);
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v6 = [(NSDictionary *)self->_decoderSettings objectForKeyedSubscript:@"FrameLimit"];
    unsignedIntegerValue = [v6 unsignedIntegerValue];

    if (!unsignedIntegerValue && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      v9 = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] No frame limit, progress may be inaccurate", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__47;
    v54 = __Block_byref_object_dispose__47;
    v55 = 0;
    v10 = dispatch_semaphore_create(0);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__VCPBlastdoorVideoProcessor_analyzeWithError___block_invoke;
    aBlock[3] = &unk_1E8350320;
    p_buf = &buf;
    v11 = v10;
    v40 = v11;
    selfCopy = self;
    v43 = &v45;
    v44 = unsignedIntegerValue;
    v12 = _Block_copy(aBlock);
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](0.0);
    }

    v14 = [(NSDictionary *)self->_decoderSettings objectForKeyedSubscript:*MEMORY[0x1E6966208]];
    unsignedIntegerValue2 = [v14 unsignedIntegerValue];

    v16 = [(NSDictionary *)self->_decoderSettings objectForKeyedSubscript:*MEMORY[0x1E69660B8]];
    unsignedIntegerValue3 = [v16 unsignedIntegerValue];

    if (!unsignedIntegerValue2)
    {
      unsignedIntegerValue2 = 299;
    }

    if (unsignedIntegerValue3)
    {
      v18 = unsignedIntegerValue3;
    }

    else
    {
      v18 = 299;
    }

    v19 = [(NSDictionary *)self->_decoderSettings objectForKeyedSubscript:@"UniformSampling"];
    bOOLValue = [v19 BOOLValue];

    v21 = [(NSDictionary *)self->_decoderSettings objectForKeyedSubscript:*MEMORY[0x1E6987D38]];
    unsignedIntegerValue4 = [v21 unsignedIntegerValue];

    v23 = [(NSDictionary *)self->_decoderSettings objectForKeyedSubscript:@"AppliesPreferredTrackTransform"];
    bOOLValue2 = [v23 BOOLValue];

    LOBYTE(v36) = bOOLValue2;
    [v37 generateMovieFramesForAttachmentWithFileURL:self->_url targetPixelWidth:unsignedIntegerValue2 targetPixelHeight:v18 frameLimit:unsignedIntegerValue uniformSampling:bOOLValue framesPerSync:unsignedIntegerValue4 appliesPreferredTrackTransform:v36 resultHandler:v12];
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    if (error)
    {
      v25 = atomic_load(&self->_canceled);
      v26 = *(&buf + 1);
      if ((v25 & 1) != 0 && !*(*(&buf + 1) + 40))
      {
        v27 = MEMORY[0x1E696ABC0];
        v49 = *MEMORY[0x1E696A578];
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ cancelled", objc_opt_class()];
        v50 = v28;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v30 = [v27 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v29];
        v31 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = v30;

        v26 = *(&buf + 1);
      }

      *error = [*(v26 + 40) copy];
    }

    v32 = *(*(&buf + 1) + 40) == 0;

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v45, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = objc_opt_class();
      v33 = *(&buf + 4);
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] No frame processing request, analysis complete", &buf, 0xCu);
    }

    v34 = self->_progressHandler;
    if (v34)
    {
      v34[2](0.0);
      (*(self->_progressHandler + 2))(1.0);
    }

    return 1;
  }

  return v32;
}

void __47__VCPBlastdoorVideoProcessor_analyzeWithError___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (!v7)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.duration.value) = 138412290;
      *(&buf.duration.value + 4) = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to obtain decoded frame from Blastdoor: %@", &buf, 0xCu);
    }

    v12 = [v8 copy];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    if (a4)
    {
      goto LABEL_11;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.duration.value) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to obtain decoded frame from Blastdoor but decoding not finished yet", &buf, 2u);
    }

    goto LABEL_12;
  }

  v9 = atomic_load((*(a1 + 40) + 40));
  if ((v9 & 1) == 0)
  {
    v10 = atomic_load((*(a1 + 40) + 41));
    if ((v10 & 1) == 0)
    {
      v15 = v7;
      v16 = [v15 image];
      v17 = [v16 pixelBuffer];

      if (!v17)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.duration.value) = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "No CVPixelBuffer from BlastDoorVideoPreview", &buf, 2u);
        }

        goto LABEL_12;
      }

      sampleBufferOut = 0;
      v37 = v8;
      [v15 timestamp];
      CMTimeMakeWithSeconds(&v42, v18, 1000);
      formatDescriptionOut = 0;
      if (CMVideoFormatDescriptionCreateForImageBuffer(0, v17, &formatDescriptionOut))
      {
        if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        LOWORD(buf.duration.value) = 0;
        v19 = MEMORY[0x1E69E9C10];
        v20 = "[CVPixelBuffer->CMSampleBuffer] Failed to create format description";
        p_buf = &buf;
      }

      else
      {
        *&buf.duration.value = *MEMORY[0x1E6960C70];
        v22 = *(MEMORY[0x1E6960C70] + 16);
        buf.presentationTimeStamp = v42;
        buf.duration.epoch = v22;
        *&buf.decodeTimeStamp.value = *&buf.duration.value;
        buf.decodeTimeStamp.epoch = v22;
        if (!CMSampleBufferCreateReadyWithImageBuffer(*MEMORY[0x1E695E480], v17, formatDescriptionOut, &buf, &sampleBufferOut))
        {
          CF<__CVBuffer *>::~CF(&formatDescriptionOut);
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v25 = *(*(a1 + 40) + 16);
          v36 = v15;
          v26 = [v25 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v26)
          {
            v27 = *v39;
            v28 = 1;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v39 != v27)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v38 + 1) + 8 * i);
                v31 = objc_autoreleasePoolPush();
                LOBYTE(buf.duration.value) = 0;
                (*(v30 + 16))(v30, sampleBufferOut, &buf);
                LOBYTE(v30) = buf.duration.value;
                objc_autoreleasePoolPop(v31);
                v28 &= v30;
              }

              v26 = [v25 countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v26);
          }

          else
          {
            v28 = 1;
          }

          atomic_store(v28 & 1, (*(a1 + 40) + 41));
          v32 = ++*(*(*(a1 + 56) + 8) + 24);
          if (*(a1 + 64))
          {
            v33 = *(a1 + 64);
          }

          else
          {
            v33 = v32 + 1;
          }

          v15 = v36;
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            v34 = [v36 frame];
            LODWORD(buf.duration.value) = 67109376;
            HIDWORD(buf.duration.value) = v34;
            LOWORD(buf.duration.timescale) = 2048;
            *(&buf.duration.timescale + 2) = v32 / v33 * 100.0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Processed frame %d, progress %.2f%%", &buf, 0x12u);
          }

          v35 = *(*(a1 + 40) + 32);
          if (v35)
          {
            (*(v35 + 16))(v32 / v33);
          }

          v23 = 1;
LABEL_34:
          CF<__CVBuffer *>::~CF(&sampleBufferOut);

          v24 = v23 & a4;
          v8 = v37;
          if ((v24 & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_5;
        }

        if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
LABEL_30:
          CF<__CVBuffer *>::~CF(&formatDescriptionOut);
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf.duration.value) = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to convert CVPixelBuffer to CMSampleBuffer", &buf, 2u);
          }

          v23 = 0;
          goto LABEL_34;
        }

        *v44 = 0;
        v19 = MEMORY[0x1E69E9C10];
        v20 = "[CVPixelBuffer->CMSampleBuffer] Failed to create CMSampleBuffer";
        p_buf = v44;
      }

      _os_log_impl(&dword_1C9B70000, v19, OS_LOG_TYPE_ERROR, v20, p_buf, 2u);
      goto LABEL_30;
    }
  }

  if (a4)
  {
LABEL_5:
    v11 = *(*(a1 + 40) + 32);
    if (v11)
    {
      (*(v11 + 16))(1.0);
    }

LABEL_11:
    dispatch_semaphore_signal(*(a1 + 32));
  }

LABEL_12:
}

@end