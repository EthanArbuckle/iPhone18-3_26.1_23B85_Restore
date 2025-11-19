@interface TESPatternMatcherBase
- (TESPatternMatcherBase)init;
- (id)createMatchResultForMatchRange:(_NSRange)a3 sourceString:(id)a4;
- (id)matchesForString:(id)a3 searchRange:(_NSRange)a4;
- (void)configurePrecompiledRegularExpression;
@end

@implementation TESPatternMatcherBase

- (TESPatternMatcherBase)init
{
  v5.receiver = self;
  v5.super_class = TESPatternMatcherBase;
  v2 = [(TESPatternMatcherBase *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TESPatternMatcherBase *)v2 setMatchType:1];
    [(TESPatternMatcherBase *)v3 setMatchMustBeWordOrSentenceTerminal:1];
  }

  return v3;
}

- (void)configurePrecompiledRegularExpression
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = [a1 pattern];
  v6 = [a2 localizedDescription];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_1AF04E000, a3, OS_LOG_TYPE_ERROR, "configurePrecompiledRegularExpression: regular expression pattern %{public}@ could not be compiled. Error: '%{public}@'", v7, 0x16u);
}

- (id)createMatchResultForMatchRange:(_NSRange)a3 sourceString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = objc_alloc_init(TESMatchResult);
  [(TESMatchResult *)v8 setMatchType:[(TESPatternMatcherBase *)self matchType]];
  [(TESMatchResult *)v8 setEffectType:[(TESPatternMatcherBase *)self effectType]];
  [(TESMatchResult *)v8 setMatchRange:location, length];
  [(TESMatchResult *)v8 setSourceString:v7];

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [(TESMatchResult *)v8 setMatcherClass:v10];

  return v8;
}

- (id)matchesForString:(id)a3 searchRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [(TESPatternMatcherBase *)self regularExpression];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__TESPatternMatcherBase_matchesForString_searchRange___block_invoke;
  v14[3] = &unk_1E7A5F6C8;
  v14[4] = self;
  v15 = v7;
  v16 = v8;
  v10 = v8;
  v11 = v7;
  [v9 enumerateMatchesInString:v11 options:0 range:location usingBlock:{length, v14}];

  v12 = [v10 copy];

  return v12;
}

void __54__TESPatternMatcherBase_matchesForString_searchRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 range];
  v7 = [v4 createMatchResultForMatchRange:v5 sourceString:{v6, *(a1 + 40)}];
  v8 = [v3 range];
  [v3 range];
  if (v9 + v8 != [*(a1 + 40) length])
  {
    v10 = *(a1 + 40);
    v11 = [v3 range];
    [v3 range];
    v13 = [v10 characterAtIndex:v12 + v11];
    v14 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    if ([v14 characterIsMember:v13])
    {
    }

    else
    {
      v15 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
      v16 = [v15 characterIsMember:v13];

      if (!v16)
      {
        goto LABEL_8;
      }
    }
  }

  v17 = emf_logging_get_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    __54__TESPatternMatcherBase_matchesForString_searchRange___block_invoke_cold_1(v7, v17);
  }

  [*(a1 + 48) addObject:v7];
LABEL_8:
}

void __54__TESPatternMatcherBase_matchesForString_searchRange___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [a1 matchingSubString];
  v5 = [a1 matcherClass];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(&dword_1AF04E000, a2, OS_LOG_TYPE_DEBUG, "[TESPatternMatcherBase]: found result '%{private}@' (matcher class: %{public}@)", v6, 0x16u);
}

@end