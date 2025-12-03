@interface PencilInputCompletionProvider
- (void)setQueryToComplete:(id)complete;
@end

@implementation PencilInputCompletionProvider

- (void)setQueryToComplete:(id)complete
{
  v10[1] = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  queryString = [completeCopy queryString];
  if ([queryString length])
  {
    v6 = WBSUnifiedFieldInputTypeForString();
    if ((v6 - 1) < 2)
    {
      safari_bestURLForUserTypedString = [queryString safari_bestURLForUserTypedString];
LABEL_7:
      v8 = [[PencilInputCompletionItem alloc] initWithUserQuery:completeCopy navigationURL:safari_bestURLForUserTypedString searchQuery:queryString];
      v10[0] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
      [(CompletionProvider *)self setCompletions:v9 forString:queryString];

      goto LABEL_8;
    }

    if (v6 != 4)
    {
      safari_bestURLForUserTypedString = 0;
      goto LABEL_7;
    }
  }

  [(CompletionProvider *)self setCompletions:MEMORY[0x277CBEBF8] forString:queryString];
LABEL_8:
}

@end