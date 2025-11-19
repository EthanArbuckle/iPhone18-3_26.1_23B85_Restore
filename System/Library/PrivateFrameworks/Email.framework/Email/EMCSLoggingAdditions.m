@interface EMCSLoggingAdditions
+ (id)publicDescriptionForSnippetHints:(id)a3;
+ (id)publicDescriptionForSnippetHintsArray:(id)a3;
+ (id)publicDescriptionForSuggestion:(id)a3;
+ (id)publicDescriptionForSuggestionArray:(id)a3;
@end

@implementation EMCSLoggingAdditions

+ (id)publicDescriptionForSuggestion:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [v3 suggestionKind];
  v7 = MEMORY[0x1E699B858];
  v8 = [v3 userQueryString];
  v9 = [v7 partiallyRedactedStringForString:v8];
  v10 = [v4 stringWithFormat:@"%@: kind: %ld, %@", v5, v6, v9];

  return v10;
}

+ (id)publicDescriptionForSuggestionArray:(id)a3
{
  v3 = [a3 ef_map:&__block_literal_global_9];

  return v3;
}

id __60__EMCSLoggingAdditions_publicDescriptionForSuggestionArray___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [EMCSLoggingAdditions publicDescriptionForSuggestion:a2];

  return v2;
}

+ (id)publicDescriptionForSnippetHints:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [v3 attribute];
  v7 = MEMORY[0x1E699B858];
  v8 = [v3 tokens];
  v9 = [v7 partiallyRedactedStringFromArray:v8];
  v10 = [v4 stringWithFormat:@"%@: attribtue: %@, tokens: %@", v5, v6, v9];

  return v10;
}

+ (id)publicDescriptionForSnippetHintsArray:(id)a3
{
  v3 = [a3 ef_map:&__block_literal_global_9];

  return v3;
}

id __62__EMCSLoggingAdditions_publicDescriptionForSnippetHintsArray___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [EMCSLoggingAdditions publicDescriptionForSnippetHints:a2];

  return v2;
}

@end