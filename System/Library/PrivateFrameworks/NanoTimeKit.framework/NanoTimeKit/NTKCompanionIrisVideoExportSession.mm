@interface NTKCompanionIrisVideoExportSession
- (CGRect)crop;
- (CGSize)outputSize;
- (NTKCompanionIrisVideoExportSession)initWithVideo:(id)video crop:(CGRect)crop outputSize:(CGSize)size bitrate:(unint64_t)bitrate outputURL:(id)l;
- (id)_makeReader;
- (id)_makeWriter;
- (void)_makeReader;
- (void)_makeWriter;
- (void)exportAsynchronouslyWithCompletion:(id)completion;
@end

@implementation NTKCompanionIrisVideoExportSession

- (NTKCompanionIrisVideoExportSession)initWithVideo:(id)video crop:(CGRect)crop outputSize:(CGSize)size bitrate:(unint64_t)bitrate outputURL:(id)l
{
  height = size.height;
  width = size.width;
  v11 = crop.size.height;
  v12 = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  videoCopy = video;
  lCopy = l;
  v39.receiver = self;
  v39.super_class = NTKCompanionIrisVideoExportSession;
  v19 = [(NTKCompanionIrisVideoExportSession *)&v39 init];
  if (v19)
  {
    v20 = dispatch_queue_create("com.apple.NanoTimeKitCompanion.exportQ", 0);
    exportQueue = v19->_exportQueue;
    v19->_exportQueue = v20;

    v22 = dispatch_queue_create("com.apple.NanoTimeKitCompanion.encodeQ", 0);
    encodeQueue = v19->_encodeQueue;
    v19->_encodeQueue = v22;

    objc_storeStrong(&v19->_video, video);
    v19->_crop.origin.x = x;
    v19->_crop.origin.y = y;
    v19->_crop.size.width = v12;
    v19->_crop.size.height = v11;
    v19->_outputSize.width = width;
    v19->_outputSize.height = height;
    v19->_bitrate = bitrate;
    v24 = [lCopy copy];
    outputURL = v19->_outputURL;
    v19->_outputURL = v24;

    if (CGRectEqualToRect(v19->_crop, *MEMORY[0x277CBF398]))
    {
      v26 = v19->_outputSize.width;
      v27 = v19->_outputSize.height;
      v28 = NTKPhotosVideoDimensions(v19->_video);
      v30 = v27 * v28 / v26;
      v31 = v26 * v29 / v27;
      if (v28 / v29 > v26 / v27)
      {
        v30 = v29;
      }

      else
      {
        v31 = v28;
      }

      v32 = (v28 - v31) * 0.5;
      v33 = (v29 - v30) * 0.5;
      v19->_crop.origin.x = v32;
      v19->_crop.origin.y = v33;
      v19->_crop.size.width = v31;
      v19->_crop.size.height = v30;
    }

    else
    {
      v32 = v19->_crop.origin.x;
      v33 = v19->_crop.origin.y;
      v31 = v19->_crop.size.width;
      v30 = v19->_crop.size.height;
    }

    v19->_crop.origin.x = denormalizeIfNecessary(videoCopy, v32, v33, v31, v30);
    v19->_crop.origin.y = v34;
    v19->_crop.size.width = v35;
    v19->_crop.size.height = v36;
    error = v19->_error;
    v19->_error = 0;

    v19->_status = 1;
  }

  return v19;
}

- (void)exportAsynchronouslyWithCompletion:(id)completion
{
  completionCopy = completion;
  exportQueue = self->_exportQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__NTKCompanionIrisVideoExportSession_exportAsynchronouslyWithCompletion___block_invoke;
  v7[3] = &unk_27877FF60;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(exportQueue, v7);
}

void __73__NTKCompanionIrisVideoExportSession_exportAsynchronouslyWithCompletion___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _makeReader];
  v4 = [*v2 _makeWriter];
  [v3 startReading];
  [v4 startWriting];
  v34 = *MEMORY[0x277CC08F0];
  v35 = *(MEMORY[0x277CC08F0] + 16);
  [v4 startSessionAtSourceTime:&v34];
  v5 = [v3 outputs];
  v6 = [v5 firstObject];

  v7 = [v4 inputs];
  v8 = [v7 firstObject];

  v9 = dispatch_semaphore_create(0);
  v10 = [*v2 error];

  v11 = *v2;
  if (v10)
  {
    [v11 setStatus:4];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [v11 setStatus:2];
    v12 = *(*v2 + 2);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __73__NTKCompanionIrisVideoExportSession_exportAsynchronouslyWithCompletion___block_invoke_2;
    v27[3] = &unk_2787841C8;
    v22 = v8;
    v28 = v8;
    v23 = v6;
    v29 = v6;
    v13 = v4;
    v14 = *v2;
    v30 = v13;
    v31 = v14;
    v15 = v3;
    v32 = v15;
    v16 = v9;
    v33 = v16;
    [v28 requestMediaDataWhenReadyOnQueue:v12 usingBlock:v27];
    dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
    v17 = [*v2 error];

    if (v17)
    {
      v18 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __73__NTKCompanionIrisVideoExportSession_exportAsynchronouslyWithCompletion___block_invoke_cold_1(v2);
      }

      [v15 cancelReading];
      [v13 cancelWriting];
    }

    else
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __73__NTKCompanionIrisVideoExportSession_exportAsynchronouslyWithCompletion___block_invoke_3;
      v24[3] = &unk_27877E238;
      v24[4] = *v2;
      v25 = v13;
      v19 = v16;
      v26 = v19;
      [v25 finishWritingWithCompletionHandler:v24];
      dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
    }

    v8 = v22;
    v20 = [*(a1 + 32) error];
    if (v20)
    {
      v21 = 4;
    }

    else
    {
      v21 = 3;
    }

    [*(a1 + 32) setStatus:v21];

    (*(*(a1 + 40) + 16))();
    v6 = v23;
  }
}

intptr_t __73__NTKCompanionIrisVideoExportSession_exportAsynchronouslyWithCompletion___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isReadyForMoreMediaData];
  if (result)
  {
    v3 = 0;
    do
    {
      while (1)
      {
        v4 = [*(a1 + 40) copyNextSampleBuffer];
        if (v4)
        {
          break;
        }

        if ([*(a1 + 64) status] == 2)
        {
          [*(a1 + 32) markAsFinished];
        }

        v6 = [*(a1 + 64) error];
        [*(a1 + 56) setError:v6];

        v3 = 1;
        if (([*(a1 + 32) isReadyForMoreMediaData] & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v5 = v4;
      [*(a1 + 32) appendSampleBuffer:v4];
      CFRelease(v5);
      if ([*(a1 + 48) status] != 1)
      {
        v7 = [*(a1 + 48) error];
        [*(a1 + 56) setError:v7];

        goto LABEL_13;
      }

      result = [*(a1 + 32) isReadyForMoreMediaData];
    }

    while ((result & 1) != 0);
    if ((v3 & 1) == 0)
    {
      return result;
    }

LABEL_13:
    v8 = *(a1 + 72);

    return dispatch_semaphore_signal(v8);
  }

  return result;
}

intptr_t __73__NTKCompanionIrisVideoExportSession_exportAsynchronouslyWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 40) error];
  [*(a1 + 32) setError:v2];

  v3 = *(a1 + 48);

  return dispatch_semaphore_signal(v3);
}

- (id)_makeReader
{
  v40[1] = *MEMORY[0x277D85DE8];
  video = [(NTKCompanionIrisVideoExportSession *)self video];
  v4 = compositionAssetForVideo(video);

  if (v4)
  {
    v5 = [v4 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
    if ([v5 count])
    {
      v6 = *MEMORY[0x277CC4DE8];
      v35[0] = *MEMORY[0x277CC4E30];
      v35[1] = v6;
      v36[0] = &unk_284185C50;
      v36[1] = MEMORY[0x277CBEC10];
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
      v8 = [MEMORY[0x277CE6438] assetReaderVideoCompositionOutputWithVideoTracks:v5 videoSettings:v7];
      [(NTKCompanionIrisVideoExportSession *)self crop];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      [(NTKCompanionIrisVideoExportSession *)self outputSize];
      v18 = v17;
      v20 = v19;
      video2 = [(NTKCompanionIrisVideoExportSession *)self video];
      v22 = cropCompositionFor(v4, video2, v10, v12, v14, v16, v18, v20);
      [v8 setVideoComposition:v22];

      v34 = 0;
      v23 = [MEMORY[0x277CE6410] assetReaderWithAsset:v4 error:&v34];
      v24 = v34;
      if (v24)
      {
        [(NTKCompanionIrisVideoExportSession *)self setError:v24];
        v25 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [(NTKCompanionIrisVideoExportSession *)v4 _makeReader];
        }

        v26 = 0;
      }

      else
      {
        [v23 addOutput:v8];
        v26 = v23;
      }
    }

    else
    {
      v30 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA450];
      v38 = @"No video tracks.";
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v32 = [v30 errorWithDomain:@"NTKCompananionIrisVideoExportSession" code:1 userInfo:v31];
      [(NTKCompanionIrisVideoExportSession *)self setError:v32];

      v7 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [NTKCompanionIrisVideoExportSession _makeReader];
      }

      v26 = 0;
    }
  }

  else
  {
    v27 = MEMORY[0x277CCA9B8];
    v39 = *MEMORY[0x277CCA450];
    v40[0] = @"Cannot create composition asset";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v29 = [v27 errorWithDomain:@"NTKCompananionIrisVideoExportSession" code:1 userInfo:v28];
    [(NTKCompanionIrisVideoExportSession *)self setError:v29];

    v5 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(NTKCompanionIrisVideoExportSession *)self _makeReader];
    }

    v26 = 0;
  }

  return v26;
}

- (id)_makeWriter
{
  v35[1] = *MEMORY[0x277D85DE8];
  [(NTKCompanionIrisVideoExportSession *)self outputSize];
  if (v3 == 0.0 || ([(NTKCompanionIrisVideoExportSession *)self outputSize], v4 == 0.0))
  {
    v5 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v35[0] = @"Invalid output size.";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v7 = [v5 errorWithDomain:@"NTKCompananionIrisVideoExportSession" code:2 userInfo:v6];
    [(NTKCompanionIrisVideoExportSession *)self setError:v7];

    v8 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(NTKCompanionIrisVideoExportSession *)self _makeWriter];
    }

    v9 = 0;
  }

  else
  {
    v11 = *MEMORY[0x277CE62C8];
    v33[0] = *MEMORY[0x277CE62F8];
    v12 = *MEMORY[0x277CE63C0];
    v32[0] = v11;
    v32[1] = v12;
    v13 = MEMORY[0x277CCABB0];
    [(NTKCompanionIrisVideoExportSession *)self outputSize];
    v14 = [v13 numberWithDouble:?];
    v33[1] = v14;
    v32[2] = *MEMORY[0x277CE6360];
    v15 = MEMORY[0x277CCABB0];
    [(NTKCompanionIrisVideoExportSession *)self outputSize];
    v17 = [v15 numberWithDouble:v16];
    v33[2] = v17;
    v32[3] = *MEMORY[0x277CE6330];
    v30[0] = *MEMORY[0x277CE62B0];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NTKCompanionIrisVideoExportSession bitrate](self, "bitrate")}];
    v31[0] = v18;
    v31[1] = &unk_284185C68;
    v19 = *MEMORY[0x277CE6390];
    v30[1] = *MEMORY[0x277CE6368];
    v30[2] = v19;
    v30[3] = *MEMORY[0x277CE6358];
    v20 = *MEMORY[0x277CE6348];
    v31[2] = *MEMORY[0x277CE6380];
    v31[3] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];
    v33[3] = v21;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];

    v22 = [MEMORY[0x277CE6468] assetWriterInputWithMediaType:*MEMORY[0x277CE5EA8] outputSettings:v8];
    v23 = MEMORY[0x277CE6460];
    outputURL = [(NTKCompanionIrisVideoExportSession *)self outputURL];
    v25 = *MEMORY[0x277CE5DA8];
    v29 = 0;
    v26 = [v23 assetWriterWithURL:outputURL fileType:v25 error:&v29];
    v27 = v29;

    if (v27)
    {
      [(NTKCompanionIrisVideoExportSession *)self setError:v27];
      v28 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [(NTKCompanionIrisVideoExportSession *)self _makeWriter];
      }

      v9 = 0;
    }

    else
    {
      [v26 addInput:v22];
      [v26 setShouldOptimizeForNetworkUse:1];
      v9 = v26;
    }
  }

  return v9;
}

- (CGRect)crop
{
  x = self->_crop.origin.x;
  y = self->_crop.origin.y;
  width = self->_crop.size.width;
  height = self->_crop.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)outputSize
{
  width = self->_outputSize.width;
  height = self->_outputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

void __73__NTKCompanionIrisVideoExportSession_exportAsynchronouslyWithCompletion___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 error];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_makeReader
{
  video = [self video];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_makeWriter
{
  [self outputSize];
  [self outputSize];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end