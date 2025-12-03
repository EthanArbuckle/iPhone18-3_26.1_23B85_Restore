@interface JFXFaceTrackingPlaybackUtilities
+ (void)arDataForPlaybackElement:(id)element atPlaybackTime:(id *)time completion:(id)completion;
@end

@implementation JFXFaceTrackingPlaybackUtilities

+ (void)arDataForPlaybackElement:(id)element atPlaybackTime:(id *)time completion:(id)completion
{
  elementCopy = element;
  completionCopy = completion;
  v9 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__JFXFaceTrackingPlaybackUtilities_arDataForPlaybackElement_atPlaybackTime_completion___block_invoke;
  block[3] = &unk_278D7A0C8;
  v13 = elementCopy;
  v14 = completionCopy;
  v15 = *time;
  v10 = completionCopy;
  v11 = elementCopy;
  dispatch_async(v9, block);
}

void __87__JFXFaceTrackingPlaybackUtilities_arDataForPlaybackElement_atPlaybackTime_completion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) uuid];
  v4 = [v2 stringWithFormat:@"%@_%@", @"arDataForPlaybackElement", v3];

  v5 = +[JFXMediaDataReaderFactory sharedInstance];
  v6 = [v5 createARMetadataReaderWithCreationAttributesProvider:*(a1 + 32) name:v4];

  if (v6 && (v7 = +[JFXMediaSettings timeScale](JFXMediaSettings, "timeScale"), memset(&v15, 0, sizeof(v15)), CMTimeFromFrameTime([*(a1 + 32) presentationTime], v7, &rhs.start), *&lhs.start.value = *(a1 + 48), lhs.start.epoch = *(a1 + 64), CMTimeSubtract(&v15, &lhs.start, &rhs.start), memset(&v14, 0, sizeof(v14)), CMTimeFromFrameTime(objc_msgSend(*(a1 + 32), "mediaStartOffset"), v7, &rhs.start), lhs.start = v15, CMTimeAdd(&v14, &lhs.start, &rhs.start), memset(&v13, 0, sizeof(v13)), CMTimeMake(&v13, 1, v7), objc_msgSend(v6, "setIsScrubbing:", 1), memset(&rhs, 0, sizeof(rhs)), lhs.start = v14, duration = v13, CMTimeRangeMake(&rhs, &lhs.start, &duration), lhs = rhs, (objc_msgSend(v6, "beginReadingAtTimeRange:", &lhs) & 1) != 0))
  {
    lhs.start = v14;
    v8 = [v6 arMetadataItemForTime:&lhs];
    v9 = [v8 arMetadata];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

@end