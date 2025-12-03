@interface PHAsset(Stickers)
- (id)vcp_animatedStickerScore;
@end

@implementation PHAsset(Stickers)

- (id)vcp_animatedStickerScore
{
  v16 = *MEMORY[0x1E69E9840];
  if (![self vcp_isLivePhoto])
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      localIdentifier = [self localIdentifier];
      v10 = 138412290;
      v11 = localIdentifier;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Asset is not Live Photo; omitting sticker score", &v10, 0xCu);
    }

    goto LABEL_9;
  }

  if ([self vcp_needsFullAnalysisProcessing:0])
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      localIdentifier2 = [self localIdentifier];
      v10 = 138412290;
      v11 = localIdentifier2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Analysis unavailable or outdated; omitting sticker score", &v10, 0xCu);
    }

LABEL_9:
    v4 = 0;
    goto LABEL_14;
  }

  mediaAnalysisProperties = [self mediaAnalysisProperties];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    localIdentifier3 = [self localIdentifier];
    [mediaAnalysisProperties videoStickerSuggestionScore];
    v10 = 138412802;
    v11 = localIdentifier3;
    v12 = 2048;
    v13 = v7;
    v14 = 1024;
    mediaAnalysisVersion = [mediaAnalysisProperties mediaAnalysisVersion];
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Animated Sticker Score: %0.3f (v%d)", &v10, 0x1Cu);
  }

  v8 = MEMORY[0x1E696AD98];
  [mediaAnalysisProperties videoStickerSuggestionScore];
  v4 = [v8 numberWithFloat:?];

LABEL_14:

  return v4;
}

@end