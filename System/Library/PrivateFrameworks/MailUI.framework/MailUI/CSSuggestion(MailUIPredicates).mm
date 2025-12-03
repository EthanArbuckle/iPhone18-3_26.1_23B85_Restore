@interface CSSuggestion(MailUIPredicates)
- (id)mui_messageListSearchPredicate;
@end

@implementation CSSuggestion(MailUIPredicates)

- (id)mui_messageListSearchPredicate
{
  suggestionTokens = [self suggestionTokens];
  v2 = [suggestionTokens ef_compactMap:&__block_literal_global_0];

  if ([v2 count])
  {
    v3 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end