@interface FASuggestionsHelper
+ (id)filterAndTrimMessagesHandleSuggestions:(id)suggestions maxSuggestions:(unint64_t)maxSuggestions;
@end

@implementation FASuggestionsHelper

+ (id)filterAndTrimMessagesHandleSuggestions:(id)suggestions maxSuggestions:(unint64_t)maxSuggestions
{
  v5 = MEMORY[0x277CCAC30];
  suggestionsCopy = suggestions;
  v7 = [v5 predicateWithFormat:@"iMessageHandle != nil"];
  v8 = [suggestionsCopy filteredArrayUsingPredicate:v7];

  if ([v8 count] > maxSuggestions)
  {
    v9 = [v8 subarrayWithRange:{0, maxSuggestions}];

    v8 = v9;
  }

  return v8;
}

@end