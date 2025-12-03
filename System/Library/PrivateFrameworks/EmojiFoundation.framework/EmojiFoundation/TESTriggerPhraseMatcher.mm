@interface TESTriggerPhraseMatcher
- (TESTriggerPhraseMatcher)initWithLocale:(id)locale;
- (id)createMatchResultForMatchRange:(_NSRange)range sourceString:(id)string effectType:(int64_t)type;
- (id)matchesForString:(id)string searchRange:(_NSRange)range;
@end

@implementation TESTriggerPhraseMatcher

- (TESTriggerPhraseMatcher)initWithLocale:(id)locale
{
  localeCopy = locale;
  v13.receiver = self;
  v13.super_class = TESTriggerPhraseMatcher;
  v5 = [(TESTriggerPhraseMatcher *)&v13 init];
  if (v5)
  {
    v6 = [localeCopy copy];
    locale = v5->_locale;
    v5->_locale = v6;

    v8 = [TESTriggerPhraseCollection alloc];
    locale = [(TESTriggerPhraseMatcher *)v5 locale];
    v10 = [(TESTriggerPhraseCollection *)v8 initWithLocale:locale];
    phrases = v5->_phrases;
    v5->_phrases = v10;
  }

  return v5;
}

- (id)createMatchResultForMatchRange:(_NSRange)range sourceString:(id)string effectType:(int64_t)type
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v9 = objc_alloc_init(TESMatchResult);
  [(TESMatchResult *)v9 setMatchType:0];
  [(TESMatchResult *)v9 setEffectType:type];
  [(TESMatchResult *)v9 setMatchRange:location, length];
  [(TESMatchResult *)v9 setSourceString:stringCopy];

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [(TESMatchResult *)v9 setMatcherClass:v11];

  return v9;
}

- (id)matchesForString:(id)string searchRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  phrases = self->_phrases;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__TESTriggerPhraseMatcher_matchesForString_searchRange___block_invoke;
  v15[3] = &unk_1E7A5F7A0;
  v15[4] = self;
  v16 = stringCopy;
  v10 = v8;
  v17 = v10;
  v11 = stringCopy;
  [(TESTriggerPhraseCollection *)phrases enumerateMatchStringsInString:v11 searchRange:location usingBlock:length, v15];
  v12 = v17;
  v13 = v10;

  return v10;
}

void __56__TESTriggerPhraseMatcher_matchesForString_searchRange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [*(a1 + 32) createMatchResultForMatchRange:a2 sourceString:a3 effectType:{*(a1 + 40), a4}];
  if ([v5 effectType] == 1)
  {
    v6 = [v5 matchingSubString];
    v7 = [v6 uppercaseString];
    v8 = [v5 matchingSubString];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    [v5 setSuggestionBehavior:v10];
  }

  v11 = emf_logging_get_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __56__TESTriggerPhraseMatcher_matchesForString_searchRange___block_invoke_cold_1(v5, v11);
  }

  [*(a1 + 48) addObject:v5];
}

void __56__TESTriggerPhraseMatcher_matchesForString_searchRange___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a1 matchingSubString];
  v5 = [a1 matcherClass];
  v6 = 138478083;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&dword_1AF04E000, a2, OS_LOG_TYPE_DEBUG, "[TESPhraseMatcher]: found result '%{private}@' (matcher class: %{public}@)", &v6, 0x16u);
}

@end