@interface PHAsset(Stickers)
- (id)vcp_animatedStickerScore;
@end

@implementation PHAsset(Stickers)

- (id)vcp_animatedStickerScore
{
  v16 = *MEMORY[0x1E69E9840];
  if (![a1 vcp_isLivePhoto])
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v3 = [a1 localIdentifier];
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Asset is not Live Photo; omitting sticker score", &v10, 0xCu);
    }

    goto LABEL_9;
  }

  if ([a1 vcp_needsFullAnalysisProcessing:0])
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v2 = [a1 localIdentifier];
      v10 = 138412290;
      v11 = v2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Analysis unavailable or outdated; omitting sticker score", &v10, 0xCu);
    }

LABEL_9:
    v4 = 0;
    goto LABEL_14;
  }

  v5 = [a1 mediaAnalysisProperties];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = [a1 localIdentifier];
    [v5 videoStickerSuggestionScore];
    v10 = 138412802;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    v14 = 1024;
    v15 = [v5 mediaAnalysisVersion];
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Animated Sticker Score: %0.3f (v%d)", &v10, 0x1Cu);
  }

  v8 = MEMORY[0x1E696AD98];
  [v5 videoStickerSuggestionScore];
  v4 = [v8 numberWithFloat:?];

LABEL_14:

  return v4;
}

@end