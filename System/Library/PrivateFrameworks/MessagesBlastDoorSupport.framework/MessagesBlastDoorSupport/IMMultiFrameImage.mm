@interface IMMultiFrameImage
- (BOOL)finalizeASTCWithError:(id *)error;
- (BOOL)writeASTCImage:(CGImage *)image duration:(double)duration error:(id *)error;
- (id)initForWritingWithFileURL:(id)l scale:(float)scale;
- (void)deleteStream;
@end

@implementation IMMultiFrameImage

- (id)initForWritingWithFileURL:(id)l scale:(float)scale
{
  v18 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v17.receiver = self;
  v17.super_class = IMMultiFrameImage;
  v8 = [(IMMultiFrameImage *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_outputURL, l);
    scaleCopy = 1.0;
    if (scale > 0.0)
    {
      scaleCopy = scale;
    }

    v9->_scale = scaleCopy;
    v11 = [MEMORY[0x277CBEB78] outputStreamWithURL:lCopy append:0];
    outputStream = v9->_outputStream;
    v9->_outputStream = v11;

    [(NSOutputStream *)v9->_outputStream open];
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    durations = v9->_durations;
    v9->_durations = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)deleteStream
{
  v10[1] = *MEMORY[0x277D85DE8];
  outputStream = [(IMMultiFrameImage *)self outputStream];
  [outputStream close];

  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  outputURL = [(IMMultiFrameImage *)self outputURL];
  v10[0] = 0;
  v6 = [v4 removeItemAtURL:outputURL error:v10];
  v7 = v10[0];

  if ((v6 & 1) == 0)
  {
    v8 = IMMultiFrameImageLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [IMMultiFrameImage(OptimizedBitmap_Persistence) deleteStream];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)writeASTCImage:(CGImage *)image duration:(double)duration error:(id *)error
{
  v44[3] = *MEMORY[0x277D85DE8];
  outputStream = [(IMMultiFrameImage *)self outputStream];
  if (!image || duration == 0.0)
  {
    v13 = IMMultiFrameImageLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [IMMultiFrameImage(ASTC_Persistence) writeASTCImage:image duration:v13 error:duration];
    }

    v18 = 0;
  }

  else
  {
    durations = [(IMMultiFrameImage *)self durations];
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
    [durations addObject:v11];

    v12 = *MEMORY[0x277CD2DD0];
    v43[0] = *MEMORY[0x277CD2F40];
    v43[1] = v12;
    v44[0] = *MEMORY[0x277CD2DD8];
    v44[1] = &unk_286A12090;
    v43[2] = *MEMORY[0x277CD2DE0];
    v44[2] = MEMORY[0x277CBEC38];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:3];
    v14 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v15 = CGImageDestinationCreateWithData(v14, @"org.khronos.ktx", 1uLL, 0);
    CGImageDestinationAddImage(v15, image, v13);
    v16 = CGImageDestinationFinalize(v15);
    CFRelease(v15);
    if (v16)
    {
      v41 = 0;
      v42 = [(__CFData *)v14 length];
      v39 = 0;
      v40[0] = &v39;
      v40[1] = 0x3032000000;
      v40[2] = __Block_byref_object_copy_;
      v40[3] = __Block_byref_object_dispose_;
      if ([outputStream write:&v42 maxLength:8] == 8)
      {
        v35 = 0;
        v36 = &v35;
        v37 = 0x2020000000;
        v38 = 0;
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __69__IMMultiFrameImage_ASTC_Persistence__writeASTCImage_duration_error___block_invoke;
        v31[3] = &unk_2798C3D60;
        v32 = outputStream;
        v33 = &v39;
        v34 = &v35;
        [(__CFData *)v14 enumerateByteRangesUsingBlock:v31];
        v17 = *(v36 + 24);
        if (error && (v36[3] & 1) != 0)
        {
          *error = *(v40[0] + 40);
        }

        v18 = v17 ^ 1;
        _Block_object_dispose(&v35, 8);
      }

      else
      {
        streamError = [outputStream streamError];
        v21 = *(v40[0] + 40);
        *(v40[0] + 40) = streamError;

        v22 = IMMultiFrameImageLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [(IMMultiFrameImage(ASTC_Persistence) *)v40 writeASTCImage:v22 duration:v23 error:v24, v25, v26, v27, v28];
        }

        v18 = 0;
        if (error)
        {
          *error = *(v40[0] + 40);
        }
      }

      _Block_object_dispose(&v39, 8);
    }

    else
    {
      v19 = IMMultiFrameImageLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [IMMultiFrameImage(ASTC_Persistence) writeASTCImage:v19 duration:? error:?];
      }

      v18 = 0;
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

void __69__IMMultiFrameImage_ASTC_Persistence__writeASTCImage_duration_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if ([*(a1 + 32) write:a2 maxLength:?] != a4)
  {
    v7 = [*(a1 + 32) streamError];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = IMMultiFrameImageLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __69__IMMultiFrameImage_ASTC_Persistence__writeASTCImage_duration_error___block_invoke_cold_1(a1 + 40, v10, v11, v12, v13, v14, v15, v16);
    }

    *a5 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (BOOL)finalizeASTCWithError:(id *)error
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = MEMORY[0x277CCABB0];
  [(IMMultiFrameImage *)self scale];
  v7 = [v6 numberWithFloat:?];
  [v5 setObject:v7 forKeyedSubscript:@"CKAnimatedImageScale"];

  durations = [(IMMultiFrameImage *)self durations];

  if (durations)
  {
    durations2 = [(IMMultiFrameImage *)self durations];
    [v5 setObject:durations2 forKeyedSubscript:@"CKAnimatedImageDurations"];
  }

  v10 = [v5 copy];
  outputStream = [(IMMultiFrameImage *)self outputStream];
  v27[0] = 0;
  v12 = [MEMORY[0x277CCAC58] writePropertyList:v10 toStream:outputStream format:200 options:0 error:v27];
  v13 = v27[0];
  if (v12 <= 0)
  {
    v18 = IMMultiFrameImageLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [IMMultiFrameImage(ASTC_Persistence) finalizeASTCWithError:];
    }

    streamError = v13;
    goto LABEL_17;
  }

  v26 = v12;
  if ([outputStream write:&v26 maxLength:8] != 8)
  {
    streamError = [outputStream streamError];
    v19 = IMMultiFrameImageLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [IMMultiFrameImage(ASTC_Persistence) finalizeASTCWithError:];
    }

    goto LABEL_16;
  }

  durations3 = [(IMMultiFrameImage *)self durations];
  v15 = [durations3 count];

  v26 = v15;
  if ([outputStream write:&v26 maxLength:8] != 8)
  {
    streamError = [outputStream streamError];
    v19 = IMMultiFrameImageLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [IMMultiFrameImage(ASTC_Persistence) finalizeASTCWithError:];
    }

LABEL_16:

LABEL_17:
    v17 = 0;
    goto LABEL_18;
  }

  LODWORD(v26) = 1129005385;
  v16 = [outputStream write:&v26 maxLength:4];
  v17 = v16 == 4;
  if (v16 == 4)
  {
    streamError = 0;
  }

  else
  {
    streamError = [outputStream streamError];
    v24 = IMMultiFrameImageLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [IMMultiFrameImage(ASTC_Persistence) finalizeASTCWithError:];
    }
  }

LABEL_18:
  [outputStream close];
  if (error)
  {
    v20 = streamError;
    *error = streamError;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

void __69__IMMultiFrameImage_ASTC_Persistence__writeASTCImage_duration_error___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(*(*a1 + 8) + 40));
  OUTLINED_FUNCTION_0(&dword_258CD3000, a2, a3, "Failed to write image data to stream with error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end