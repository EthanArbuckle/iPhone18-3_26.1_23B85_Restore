@interface MessageContentRepresentationRequestDelegate
- (void)contentObjectID:(id)d generateHTMLSnippetsForRelatedContentItems:(id)items completionHandler:(id)handler;
- (void)contentObjectID:(id)d placeholderHTMLForEmptyContentWithCompletionHandler:(id)handler;
@end

@implementation MessageContentRepresentationRequestDelegate

- (void)contentObjectID:(id)d generateHTMLSnippetsForRelatedContentItems:(id)items completionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  handlerCopy = handler;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = itemsCopy;
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
        contentID = [v13 contentID];
        [dictionary setObject:v14 forKeyedSubscript:contentID];
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  handlerCopy[2](handlerCopy, dictionary, 0);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)contentObjectID:(id)d placeholderHTMLForEmptyContentWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [mainBundle localizedStringForKey:@"NO_BODY" value:&stru_2826D1AD8 table:@"Main"];

  v6 = MEMORY[0x277CCACA8];
  mf_stringByEscapingHTMLCodes = [v5 mf_stringByEscapingHTMLCodes];
  v8 = [v6 localizedStringWithFormat:@"<html dir=auto><body><i><font color=#888>%@</font></i></body></html>", mf_stringByEscapingHTMLCodes];

  handlerCopy[2](handlerCopy, v8, 0);
}

@end