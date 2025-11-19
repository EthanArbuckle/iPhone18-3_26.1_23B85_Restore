@interface PencilInputCompletionProvider
- (void)setQueryToComplete:(id)a3;
@end

@implementation PencilInputCompletionProvider

- (void)setQueryToComplete:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 queryString];
  if ([v5 length])
  {
    v6 = WBSUnifiedFieldInputTypeForString();
    if ((v6 - 1) < 2)
    {
      v7 = [v5 safari_bestURLForUserTypedString];
LABEL_7:
      v8 = [[PencilInputCompletionItem alloc] initWithUserQuery:v4 navigationURL:v7 searchQuery:v5];
      v10[0] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
      [(CompletionProvider *)self setCompletions:v9 forString:v5];

      goto LABEL_8;
    }

    if (v6 != 4)
    {
      v7 = 0;
      goto LABEL_7;
    }
  }

  [(CompletionProvider *)self setCompletions:MEMORY[0x277CBEBF8] forString:v5];
LABEL_8:
}

@end