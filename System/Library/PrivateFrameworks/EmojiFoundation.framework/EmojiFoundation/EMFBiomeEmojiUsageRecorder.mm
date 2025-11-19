@interface EMFBiomeEmojiUsageRecorder
- (BOOL)report;
- (EMFBiomeEmojiUsageRecorder)initWithEmoji:(id)a3 usageSource:(unint64_t)a4 replacementContext:(id)a5 searchQuery:(id)a6 resultPosition:(id)a7 numberSearchQueriesRun:(id)a8 wasPositiveEngagement:(BOOL)a9;
- (id)_createEngagementEvent;
- (id)delegate;
- (void)_createEngagementEvent;
- (void)report;
@end

@implementation EMFBiomeEmojiUsageRecorder

- (EMFBiomeEmojiUsageRecorder)initWithEmoji:(id)a3 usageSource:(unint64_t)a4 replacementContext:(id)a5 searchQuery:(id)a6 resultPosition:(id)a7 numberSearchQueriesRun:(id)a8 wasPositiveEngagement:(BOOL)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v41.receiver = self;
  v41.super_class = EMFBiomeEmojiUsageRecorder;
  v20 = [(EMFDPRecorder *)&v41 initWithEmoji:v15];
  if (v20)
  {
    v21 = [v15 localeData];
    v22 = [v21 localeIdentifier];
    v23 = [v22 copy];
    localeIdentifier = v20->_localeIdentifier;
    v20->_localeIdentifier = v23;

    v25 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v20->_localeIdentifier];
    locale = v20->_locale;
    v20->_locale = v25;

    v20->_usageSource = a4;
    v27 = [v16 copy];
    replacementContext = v20->_replacementContext;
    v20->_replacementContext = v27;

    v29 = [v17 copy];
    searchQuery = v20->_searchQuery;
    v20->_searchQuery = v29;

    v31 = [v18 copy];
    resultPosition = v20->_resultPosition;
    v20->_resultPosition = v31;

    v33 = [v19 copy];
    numberSearchQueriesRun = v20->_numberSearchQueriesRun;
    v20->_numberSearchQueriesRun = v33;

    v20->_wasPositiveEngagement = a9;
    v35 = BiomeLibrary();
    v36 = [v35 Emoji];
    v37 = [v36 Engagement];
    v38 = [v37 source];
    biomeStream = v20->_biomeStream;
    v20->_biomeStream = v38;
  }

  return v20;
}

- (id)delegate
{
  v4.receiver = self;
  v4.super_class = EMFBiomeEmojiUsageRecorder;
  v2 = [(EMFDPRecorder *)&v4 delegate];

  return v2;
}

- (BOOL)report
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(EMFBiomeEmojiUsageRecorder *)self localeIdentifier];

  if (v3)
  {
    v4 = [(EMFBiomeEmojiUsageRecorder *)self biomeStream];

    if (!v4)
    {
      v5 = emf_logging_get_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [(EMFBiomeEmojiUsageRecorder *)v5 report];
      }

      v6 = 0;
      goto LABEL_16;
    }

    v5 = [(EMFBiomeEmojiUsageRecorder *)self _createEngagementEvent];
    v6 = v5 != 0;
    v7 = emf_logging_get_default_log();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(EMFBiomeEmojiUsageRecorder *)v5 report];
      }

      v9 = [(EMFBiomeEmojiUsageRecorder *)self biomeStream];
      [v9 sendEvent:v5];

      v10 = [(EMFBiomeEmojiUsageRecorder *)self delegate];

      if (!v10)
      {
        v6 = 1;
        goto LABEL_16;
      }

      v8 = [(EMFBiomeEmojiUsageRecorder *)self delegate];
      v11 = [v5 emoji];
      v14[0] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [v8 record:v12];
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(EMFBiomeEmojiUsageRecorder *)self report];
    }

LABEL_16:
    return v6;
  }

  return 0;
}

- (id)_createEngagementEvent
{
  v3 = [(EMFDPRecorder *)self emoji];
  v4 = [v3 string];

  if (!v4)
  {
    v7 = emf_logging_get_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(EMFBiomeEmojiUsageRecorder *)self _createEngagementEvent];
    }

    goto LABEL_10;
  }

  v5 = [(EMFBiomeEmojiUsageRecorder *)self usageSource];
  if (v5 <= 4)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v6 = 2;
      }

      else if (v5 == 3)
      {
        v6 = 3;
      }

      else
      {
        v6 = 4;
      }

      goto LABEL_28;
    }

    if (v5)
    {
      if (v5 == 1)
      {
        v6 = 1;
        goto LABEL_28;
      }

LABEL_32:
      [EMFBiomeEmojiUsageRecorder _createEngagementEvent];
    }

LABEL_10:
    v8 = 0;
    goto LABEL_29;
  }

  if (v5 <= 7)
  {
    if (v5 == 5)
    {
      v6 = 5;
    }

    else if (v5 == 6)
    {
      v6 = 6;
    }

    else
    {
      v6 = 7;
    }

    goto LABEL_28;
  }

  if (v5 == 8)
  {
    v6 = 8;
    goto LABEL_28;
  }

  if (v5 == 9)
  {
    v6 = 9;
    goto LABEL_28;
  }

  if (v5 != 10)
  {
    goto LABEL_32;
  }

  v6 = 10;
LABEL_28:
  v9 = objc_alloc(MEMORY[0x1E698EBC8]);
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[EMFBiomeEmojiUsageRecorder wasPositiveEngagement](self, "wasPositiveEngagement")}];
  v11 = [(EMFBiomeEmojiUsageRecorder *)self localeIdentifier];
  v12 = [(EMFBiomeEmojiUsageRecorder *)self replacementContext];
  v13 = [(EMFBiomeEmojiUsageRecorder *)self resultPosition];
  v14 = [(EMFBiomeEmojiUsageRecorder *)self numberSearchQueriesRun];
  v15 = [(EMFBiomeEmojiUsageRecorder *)self searchQuery];
  v8 = [v9 initWithEmoji:v4 wasPositiveEngagement:v10 localeIdentifier:v11 inputMode:v6 replacementContext:v12 resultPosition:v13 numberSearchQueriesRun:v14 finalSearchQuery:v15];

LABEL_29:

  return v8;
}

- (void)report
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 debugDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_1AF04E000, a2, OS_LOG_TYPE_DEBUG, "Donating emoji engagement to Biome: '%{public}@'", &v4, 0xCu);
}

- (void)_createEngagementEvent
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 emoji];
  v4[0] = 67109120;
  v4[1] = [v3 _emojiIndex];
  _os_log_error_impl(&dword_1AF04E000, a2, OS_LOG_TYPE_ERROR, "Failed to donate emoji to Biome: EMFEmojiToken index '%hu'", v4, 8u);
}

@end