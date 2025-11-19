@interface FASuggestionsHelper
+ (id)filterAndTrimMessagesHandleSuggestions:(id)a3 maxSuggestions:(unint64_t)a4;
@end

@implementation FASuggestionsHelper

+ (id)filterAndTrimMessagesHandleSuggestions:(id)a3 maxSuggestions:(unint64_t)a4
{
  v5 = MEMORY[0x277CCAC30];
  v6 = a3;
  v7 = [v5 predicateWithFormat:@"iMessageHandle != nil"];
  v8 = [v6 filteredArrayUsingPredicate:v7];

  if ([v8 count] > a4)
  {
    v9 = [v8 subarrayWithRange:{0, a4}];

    v8 = v9;
  }

  return v8;
}

@end