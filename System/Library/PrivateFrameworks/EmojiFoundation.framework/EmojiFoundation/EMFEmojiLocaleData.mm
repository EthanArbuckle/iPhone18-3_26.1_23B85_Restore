@interface EMFEmojiLocaleData
+ (EMFEmojiLocaleData)emojiLocaleDataWithCEMEmojiLocaleData:(__EmojiLocaleDataWrapper *)a3;
+ (EMFEmojiLocaleData)emojiLocaleDataWithLocaleIdentifier:(id)a3;
- (EMFAnchoredSearchManager)anchoredSearchManager;
- (EMFEmojiLocaleData)initWithCEMEmojiLocaleData:(__EmojiLocaleDataWrapper *)a3;
- (EMFEmojiLocaleData)initWithLocaleIdentifier:(id)a3;
- (EMFEmojiSearchEngine)searchEngine;
- (NSArray)emojiTokens;
- (id)description;
- (id)emojiTokensForOptions:(unint64_t)a3 presentationStyle:(int)a4;
- (id)emojiTokensForText:(id)a3 phoneticReading:(id)a4 options:(unint64_t)a5 searchType:(int)a6 includePrefixMatches:(BOOL)a7;
- (void)dealloc;
- (void)enumerateAnchoredReplacementCandidatesForContext:(id)a3 withOptions:(unsigned int)a4 usingBlock:(id)a5;
- (void)enumerateSearchResultsInText:(id)a3 range:(_NSRange)a4 options:(unint64_t)a5 searchType:(int)a6 usingBlock:(id)a7;
- (void)preheatSearchEngine;
- (void)searchEngine;
@end

@implementation EMFEmojiLocaleData

- (void)dealloc
{
  localeDataRef = self->_localeDataRef;
  if (localeDataRef)
  {
    CFRelease(localeDataRef);
  }

  localeIdentifier = self->_localeIdentifier;
  self->_localeIdentifier = 0;
  self->_localeDataRef = 0;

  v5.receiver = self;
  v5.super_class = EMFEmojiLocaleData;
  [(EMFEmojiLocaleData *)&v5 dealloc];
}

+ (EMFEmojiLocaleData)emojiLocaleDataWithCEMEmojiLocaleData:(__EmojiLocaleDataWrapper *)a3
{
  v3 = [[a1 alloc] initWithCEMEmojiLocaleData:a3];

  return v3;
}

- (EMFEmojiLocaleData)initWithCEMEmojiLocaleData:(__EmojiLocaleDataWrapper *)a3
{
  if (a3)
  {
    v8.receiver = self;
    v8.super_class = EMFEmojiLocaleData;
    v4 = [(EMFEmojiLocaleData *)&v8 init];
    if (v4)
    {
      v5 = [CEMEmojiLocaleDataGetLocaleIdentifier() copy];
      localeIdentifier = v4->_localeIdentifier;
      v4->_localeIdentifier = v5;

      v4->_localeDataRef = CFRetain(a3);
      v4->_didTryLoadingSearchEngine = 0;
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

+ (EMFEmojiLocaleData)emojiLocaleDataWithLocaleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithLocaleIdentifier:v4];

  return v5;
}

- (EMFEmojiLocaleData)initWithLocaleIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EMFEmojiLocaleData;
  v5 = [(EMFEmojiLocaleData *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    localeIdentifier = v5->_localeIdentifier;
    v5->_localeIdentifier = v6;

    v5->_localeDataRef = CEMCreateEmojiLocaleData();
  }

  return v5;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  [v3 appendFormat:@"; locale = %@", self->_localeIdentifier];

  return v3;
}

- (NSArray)emojiTokens
{
  v2 = CEMEmojiLocaleDataCopyCommonEmojiTokens();
  v3 = [EMFEmojiToken emojiTokensForCEMEmojiTokens:v2];
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

- (void)enumerateSearchResultsInText:(id)a3 range:(_NSRange)a4 options:(unint64_t)a5 searchType:(int)a6 usingBlock:(id)a7
{
  v10 = a7;
  if (v10)
  {
    v11 = a3;
    [(EMFEmojiLocaleData *)self cfCompareFlagsFromNSOptions:a5];
    v12 = v10;
    CEMEmojiLocaleDataEnumerateSearchResultsInStringWithBlock();
  }
}

void __87__EMFEmojiLocaleData_enumerateSearchResultsInText_range_options_searchType_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [EMFEmojiToken emojiTokensForCEMEmojiTokens:a2];
  (*(*(a1 + 32) + 16))();
}

- (id)emojiTokensForText:(id)a3 phoneticReading:(id)a4 options:(unint64_t)a5 searchType:(int)a6 includePrefixMatches:(BOOL)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = [(EMFEmojiLocaleData *)self searchEngine];

  if (v12)
  {
    v13 = [(EMFEmojiLocaleData *)self searchEngine];
    v14 = [v13 performStringQuery:v10];

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v25 = v11;
      v19 = 0;
      v20 = *v27;
      do
      {
        v21 = 0;
        v22 = v19;
        do
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v19 = [EMFEmojiToken emojiTokenWithString:*(*(&v26 + 1) + 8 * v21) localeData:self];

          [v15 addObject:v19];
          ++v21;
          v22 = v19;
        }

        while (v18 != v21);
        v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v18);

      v11 = v25;
    }
  }

  else
  {
    [(EMFEmojiLocaleData *)self cfCompareFlagsFromNSOptions:a5];
    EmojiTokensForString = CEMEmojiLocaleDataCreateEmojiTokensForString();
    v15 = [EMFEmojiToken emojiTokensForCEMEmojiTokens:EmojiTokensForString];
    if (EmojiTokensForString)
    {
      CFRelease(EmojiTokensForString);
    }
  }

  return v15;
}

- (id)emojiTokensForOptions:(unint64_t)a3 presentationStyle:(int)a4
{
  v4 = a3;
  v6 = CEMCopyEmojiTokens();
  v7 = [EMFEmojiToken emojiTokensForCEMEmojiTokens:v6];
  if (v6)
  {
    CFRelease(v6);
  }

  if ((v4 & 4) != 0)
  {
    v8 = [v7 mutableCopy];
    v9 = [EMFEmojiCategory categoryWithIdentifier:@"EMFEmojiCategoryFlags"];
    v10 = [v9 emojiTokensForLocaleData:self];
    [v8 removeObjectsInArray:v10];

    v7 = v8;
  }

  return v7;
}

- (EMFEmojiSearchEngine)searchEngine
{
  v24 = *MEMORY[0x1E69E9840];
  searchEngine = self->_searchEngine;
  if (!searchEngine)
  {
    if (self->_didTryLoadingSearchEngine)
    {
      searchEngine = 0;
    }

    else
    {
      v4 = emf_signpost_get_log();
      v5 = os_signpost_id_generate(v4);

      v6 = emf_signpost_get_log();
      v7 = v6;
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
      {
        LOWORD(v22) = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF04E000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "LoadSearchEngine", &unk_1AF0BC4C3, &v22, 2u);
      }

      p_localeIdentifier = &self->_localeIdentifier;
      localeIdentifier = self->_localeIdentifier;
      self->_didTryLoadingSearchEngine = 1;
      v10 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:localeIdentifier];
      if ([EMFEmojiSearchEngine isLocaleSupported:v10])
      {
        v11 = [[EMFEmojiSearchEngine alloc] initWithLocale:v10];
      }

      else
      {
        v12 = emf_logging_get_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = *p_localeIdentifier;
          v22 = 138412290;
          v23 = v13;
          _os_log_impl(&dword_1AF04E000, v12, OS_LOG_TYPE_INFO, "CoreEmoji disabled search engine for locale '%@'; not loading search engine resources", &v22, 0xCu);
        }

        v11 = 0;
      }

      v14 = self->_searchEngine;
      self->_searchEngine = v11;

      v15 = self->_searchEngine;
      v16 = emf_logging_get_default_log();
      v17 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [(EMFEmojiLocaleData *)&self->_localeIdentifier searchEngine];
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v18 = *p_localeIdentifier;
        v22 = 138412290;
        v23 = v18;
        _os_log_impl(&dword_1AF04E000, v17, OS_LOG_TYPE_INFO, "Emoji search engine could not be loaded for locale '%@'", &v22, 0xCu);
      }

      v19 = emf_signpost_get_log();
      v20 = v19;
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        LOWORD(v22) = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF04E000, v20, OS_SIGNPOST_INTERVAL_END, v5, "LoadSearchEngine", &unk_1AF0BC4C3, &v22, 2u);
      }

      searchEngine = self->_searchEngine;
    }
  }

  return searchEngine;
}

- (void)preheatSearchEngine
{
  v3 = [(EMFEmojiLocaleData *)self searchEngine];
  v4 = [(EMFEmojiLocaleData *)self searchEngine];
  [v4 preheat];
}

- (EMFAnchoredSearchManager)anchoredSearchManager
{
  anchoredSearchManager = self->_anchoredSearchManager;
  if (!anchoredSearchManager)
  {
    v4 = [[EMFAnchoredSearchManager alloc] initWithLocaleData:self];
    v5 = self->_anchoredSearchManager;
    self->_anchoredSearchManager = v4;

    anchoredSearchManager = self->_anchoredSearchManager;
  }

  return anchoredSearchManager;
}

- (void)enumerateAnchoredReplacementCandidatesForContext:(id)a3 withOptions:(unsigned int)a4 usingBlock:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(EMFEmojiLocaleData *)self anchoredSearchManager];
  [v10 enumerateAnchoredReplacementCandidatesForContext:v9 withOptions:a4 usingBlock:v8];
}

- (void)searchEngine
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1AF04E000, a2, OS_LOG_TYPE_DEBUG, "Loaded emoji search engine for locale '%@'", &v3, 0xCu);
}

@end