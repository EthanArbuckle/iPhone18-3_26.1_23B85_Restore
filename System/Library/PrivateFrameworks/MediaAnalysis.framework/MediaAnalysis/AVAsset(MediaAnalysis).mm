@interface AVAsset(MediaAnalysis)
- (CFTypeRef)vcp_frameAtTimeStamp:()MediaAnalysis withMaxDimension:;
- (CFTypeRef)vcp_keyFrameWithMaxDimension:()MediaAnalysis;
- (id)vcp_enabledTracksWithMediaType:()MediaAnalysis;
- (id)vcp_firstEnabledTrackWithMediaType:()MediaAnalysis;
- (uint64_t)vcp_isMontage;
- (void)vcp_livePhotoStillDisplayTime;
@end

@implementation AVAsset(MediaAnalysis)

- (id)vcp_firstEnabledTrackWithMediaType:()MediaAnalysis
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [self tracksWithMediaType:0];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v7 + 1) + 8 * i);
        if ([v5 isEnabled])
        {
          v2 = v5;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

- (id)vcp_enabledTracksWithMediaType:()MediaAnalysis
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [self tracksWithMediaType:{v4, 0}];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isEnabled])
        {
          [array addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (uint64_t)vcp_isMontage
{
  availableMetadataFormats = [self availableMetadataFormats];
  v3 = *MEMORY[0x1E6987700];
  v4 = [availableMetadataFormats containsObject:*MEMORY[0x1E6987700]];

  if (!v4)
  {
    return 0;
  }

  v5 = *MEMORY[0x1E69877D0];
  v6 = [self metadataForFormat:v3];
  v7 = *MEMORY[0x1E6987850];
  v8 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:v6 withKey:v5 keySpace:*MEMORY[0x1E6987850]];
  if (![v8 count])
  {
    v9 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:v6 withKey:*MEMORY[0x1E69878C0] keySpace:v7];

    v8 = v9;
  }

  if (![v8 count])
  {
LABEL_12:

    return 0;
  }

  firstObject = [v8 firstObject];
  stringValue = [firstObject stringValue];

  if (([stringValue isEqualToString:@"Memories"] & 1) == 0 && !objc_msgSend(stringValue, "isEqualToString:", @"iMovie"))
  {

    goto LABEL_12;
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *v13 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "AVAsset: Montage asset detected", v13, 2u);
  }

  return 1;
}

- (void)vcp_livePhotoStillDisplayTime
{
  v46 = *MEMORY[0x1E69E9840];
  value = *MEMORY[0x1E6960C70];
  flags = *(MEMORY[0x1E6960C70] + 12);
  timescale = *(MEMORY[0x1E6960C70] + 8);
  epoch = *(MEMORY[0x1E6960C70] + 16);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [self tracksWithMediaType:*MEMORY[0x1E69875D0]];
  v2 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (!v2)
  {

LABEL_30:
    v25 = MEMORY[0x1E6960C70];
    *a2 = *MEMORY[0x1E6960C70];
    *(a2 + 16) = *(v25 + 16);
    return;
  }

  v32 = 0;
  v3 = *v39;
  v4 = *MEMORY[0x1E69629E0];
  do
  {
    for (i = 0; i != v2; ++i)
    {
      if (*v39 != v3)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v38 + 1) + 8 * i);
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      formatDescriptions = [v6 formatDescriptions];
      v8 = [formatDescriptions countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v8)
      {
        v9 = *v35;
        while (2)
        {
          for (j = 0; j != v8; ++j)
          {
            if (*v35 != v9)
            {
              objc_enumerationMutation(formatDescriptions);
            }

            v11 = CMMetadataFormatDescriptionGetIdentifiers(*(*(&v34 + 1) + 8 * j));
            if ([v11 containsObject:v4])
            {
              v12 = v6;

              v32 = v12;
              goto LABEL_16;
            }
          }

          v8 = [formatDescriptions countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }

    v2 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  }

  while (v2);

  if (!v32)
  {
    goto LABEL_30;
  }

  v13 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v32 outputSettings:0];
  v14 = [MEMORY[0x1E6987E78] assetReaderWithAsset:self error:0];
  v15 = v14;
  if (v14)
  {
    [v14 addOutput:v13];
    if (![v15 startReading])
    {
      v26 = MEMORY[0x1E6960C70];
      v23 = a2;
      *a2 = *MEMORY[0x1E6960C70];
      v24 = *(v26 + 16);
      goto LABEL_32;
    }

    do
    {
      copyNextSampleBuffer = [v13 copyNextSampleBuffer];
      v17 = copyNextSampleBuffer;
      if (!copyNextSampleBuffer)
      {
        break;
      }

      if (CMSampleBufferGetNumSamples(copyNextSampleBuffer))
      {
        v18 = [objc_alloc(MEMORY[0x1E6988160]) initWithSampleBuffer:v17];
        v19 = MEMORY[0x1E6987FE0];
        items = [v18 items];
        v21 = [v19 metadataItemsFromArray:items filteredByIdentifier:v4];
        firstObject = [v21 firstObject];

        if (firstObject)
        {
          CMSampleBufferGetOutputPresentationTimeStamp(&v33, v17);
          value = v33.value;
          flags = v33.flags;
          timescale = v33.timescale;
          epoch = v33.epoch;
        }
      }

      CFRelease(v17);
    }

    while ((flags & 1) == 0);
    [v15 cancelReading];
  }

  v23 = a2;
  *a2 = value;
  *(a2 + 8) = timescale;
  *(a2 + 12) = flags;
  v24 = epoch;
LABEL_32:
  *(v23 + 16) = v24;
}

- (CFTypeRef)vcp_keyFrameWithMaxDimension:()MediaAnalysis
{
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E6987E68] assetImageGeneratorWithAsset:self];
  [v6 setAppliesPreferredTrackTransform:1];
  if (a3)
  {
    [v6 setMaximumSize:{a3, a3}];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3812000000;
  v20 = __Block_byref_object_copy__40;
  v21 = __Block_byref_object_dispose__40;
  v22 = &unk_1CA01F5A2;
  v23 = 0;
  v7 = dispatch_semaphore_create(0);
  v15 = *MEMORY[0x1E6960CC0];
  v16 = *(MEMORY[0x1E6960CC0] + 16);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__AVAsset_MediaAnalysis__vcp_keyFrameWithMaxDimension___block_invoke;
  v12[3] = &unk_1E834FF08;
  v14 = &v17;
  v8 = v7;
  v13 = v8;
  [v6 generateCGImageAsynchronouslyForTime:&v15 completionHandler:v12];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v18[6];
  if (v9)
  {
    v10 = CFRetain(v9);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v17, 8);
  CF<__CVBuffer *>::~CF(&v23);

  objc_autoreleasePoolPop(v5);
  return v10;
}

- (CFTypeRef)vcp_frameAtTimeStamp:()MediaAnalysis withMaxDimension:
{
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x1E6987E68] assetImageGeneratorWithAsset:self];
  [v8 setAppliesPreferredTrackTransform:0];
  [v8 setApertureMode:*MEMORY[0x1E6987358]];
  v9 = MEMORY[0x1E6960CC0];
  v20 = *MEMORY[0x1E6960CC0];
  v21 = *(MEMORY[0x1E6960CC0] + 16);
  [v8 setRequestedTimeToleranceBefore:&v20];
  v20 = *v9;
  v21 = *(v9 + 2);
  [v8 setRequestedTimeToleranceAfter:&v20];
  if (a4)
  {
    [v8 setMaximumSize:{a4, a4}];
  }

  *&v20 = 0;
  *(&v20 + 1) = &v20;
  v21 = 0x3812000000;
  v22 = __Block_byref_object_copy__40;
  v23 = __Block_byref_object_dispose__40;
  v24 = &unk_1CA01F5A2;
  v25 = 0;
  v10 = dispatch_semaphore_create(0);
  v18 = *a3;
  v19 = *(a3 + 2);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__AVAsset_MediaAnalysis__vcp_frameAtTimeStamp_withMaxDimension___block_invoke;
  v15[3] = &unk_1E834FF08;
  v17 = &v20;
  v11 = v10;
  v16 = v11;
  [v8 generateCGImageAsynchronouslyForTime:&v18 completionHandler:v15];
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v12 = *(*(&v20 + 1) + 48);
  if (v12)
  {
    v13 = CFRetain(v12);
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v20, 8);
  CF<__CVBuffer *>::~CF(&v25);

  objc_autoreleasePoolPop(v7);
  return v13;
}

@end