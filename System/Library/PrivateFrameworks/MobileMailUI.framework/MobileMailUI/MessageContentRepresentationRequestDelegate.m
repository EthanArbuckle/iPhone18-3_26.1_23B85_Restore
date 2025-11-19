@interface MessageContentRepresentationRequestDelegate
- (void)contentObjectID:(id)a3 generateHTMLSnippetsForRelatedContentItems:(id)a4 completionHandler:(id)a5;
- (void)contentObjectID:(id)a3 placeholderHTMLForEmptyContentWithCompletionHandler:(id)a4;
@end

@implementation MessageContentRepresentationRequestDelegate

- (void)contentObjectID:(id)a3 generateHTMLSnippetsForRelatedContentItems:(id)a4 completionHandler:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a5;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [ContentItemMarkupGenerator markupStringForDisplayForContentItem:v13, v17];
        v15 = [v13 contentID];
        [v8 setObject:v14 forKeyedSubscript:v15];
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v7[2](v7, v8, 0);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)contentObjectID:(id)a3 placeholderHTMLForEmptyContentWithCompletionHandler:(id)a4
{
  v9 = a4;
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 localizedStringForKey:@"NO_BODY" value:&stru_2826D1AD8 table:@"Main"];

  v6 = MEMORY[0x277CCACA8];
  v7 = [v5 mf_stringByEscapingHTMLCodes];
  v8 = [v6 localizedStringWithFormat:@"<html dir=auto><body><i><font color=#888>%@</font></i></body></html>", v7];

  v9[2](v9, v8, 0);
}

@end