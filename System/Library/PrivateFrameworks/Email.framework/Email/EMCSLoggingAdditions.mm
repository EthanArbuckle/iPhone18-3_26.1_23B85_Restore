@interface EMCSLoggingAdditions
+ (id)publicDescriptionForSnippetHints:(id)hints;
+ (id)publicDescriptionForSnippetHintsArray:(id)array;
+ (id)publicDescriptionForSuggestion:(id)suggestion;
+ (id)publicDescriptionForSuggestionArray:(id)array;
@end

@implementation EMCSLoggingAdditions

+ (id)publicDescriptionForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  suggestionKind = [suggestionCopy suggestionKind];
  v7 = MEMORY[0x1E699B858];
  userQueryString = [suggestionCopy userQueryString];
  v9 = [v7 partiallyRedactedStringForString:userQueryString];
  v10 = [v4 stringWithFormat:@"%@: kind: %ld, %@", v5, suggestionKind, v9];

  return v10;
}

+ (id)publicDescriptionForSuggestionArray:(id)array
{
  v3 = [array ef_map:&__block_literal_global_9];

  return v3;
}

id __60__EMCSLoggingAdditions_publicDescriptionForSuggestionArray___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [EMCSLoggingAdditions publicDescriptionForSuggestion:a2];

  return v2;
}

+ (id)publicDescriptionForSnippetHints:(id)hints
{
  hintsCopy = hints;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  attribute = [hintsCopy attribute];
  v7 = MEMORY[0x1E699B858];
  tokens = [hintsCopy tokens];
  v9 = [v7 partiallyRedactedStringFromArray:tokens];
  v10 = [v4 stringWithFormat:@"%@: attribtue: %@, tokens: %@", v5, attribute, v9];

  return v10;
}

+ (id)publicDescriptionForSnippetHintsArray:(id)array
{
  v3 = [array ef_map:&__block_literal_global_9];

  return v3;
}

id __62__EMCSLoggingAdditions_publicDescriptionForSnippetHintsArray___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [EMCSLoggingAdditions publicDescriptionForSnippetHints:a2];

  return v2;
}

@end