@interface CKAggregateMessagePartChatItem
- (CKAggregateMessagePartChatItem)initWithIMChatItem:(id)item maxWidth:(double)width;
- (NSString)title;
- (id)compositionWithContext:(id)context;
- (id)loadTranscriptText;
- (id)pasteboardItemProviders;
- (id)rtfDocumentItemsWithFormatString:(id)string selectedTextRange:(_NSRange)range;
@end

@implementation CKAggregateMessagePartChatItem

- (CKAggregateMessagePartChatItem)initWithIMChatItem:(id)item maxWidth:(double)width
{
  v23 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v21.receiver = self;
  v21.super_class = CKAggregateMessagePartChatItem;
  v7 = [(CKMessagePartChatItem *)&v21 initWithIMChatItem:itemCopy maxWidth:width];
  if (v7)
  {
    subparts = [itemCopy subparts];
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(subparts, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = subparts;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          __ck_chatItemClass = [objc_alloc(objc_msgSend(*(*(&v17 + 1) + 8 * v14) __ck_chatItemClass];
          [v9 addObject:__ck_chatItemClass];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v12);
    }

    [(CKAggregateMessagePartChatItem *)v7 setSubparts:v9];
  }

  return v7;
}

- (id)loadTranscriptText
{
  v5.receiver = self;
  v5.super_class = CKAggregateMessagePartChatItem;
  loadTranscriptText = [(CKTextMessagePartChatItem *)&v5 loadTranscriptText];
  if ([loadTranscriptText length] >= 0x1F5)
  {
    v3 = [loadTranscriptText attributedSubstringFromRange:{0, 499}];

    loadTranscriptText = v3;
  }

  return loadTranscriptText;
}

- (id)pasteboardItemProviders
{
  subparts = [(CKAggregateMessagePartChatItem *)self subparts];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(subparts, "count")}];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__CKAggregateMessagePartChatItem_pasteboardItemProviders__block_invoke;
  v6[3] = &unk_1E72F64F8;
  v4 = v3;
  v7 = v4;
  [subparts enumerateObjectsUsingBlock:v6];

  return v4;
}

void __57__CKAggregateMessagePartChatItem_pasteboardItemProviders__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 pasteboardItemProviders];
  [v2 addObjectsFromArray:v3];
}

- (id)rtfDocumentItemsWithFormatString:(id)string selectedTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  array = [MEMORY[0x1E695DF70] array];
  subparts = [(CKAggregateMessagePartChatItem *)self subparts];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__CKAggregateMessagePartChatItem_rtfDocumentItemsWithFormatString_selectedTextRange___block_invoke;
  v15[3] = &unk_1E72F6520;
  v10 = array;
  v16 = v10;
  v17 = stringCopy;
  v18 = location;
  v19 = length;
  v11 = stringCopy;
  [subparts enumerateObjectsUsingBlock:v15];
  v12 = v17;
  v13 = v10;

  return v10;
}

void __85__CKAggregateMessagePartChatItem_rtfDocumentItemsWithFormatString_selectedTextRange___block_invoke(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = [a2 rtfDocumentItemsWithFormatString:a1[5] selectedTextRange:{a1[6], a1[7]}];
  [v2 addObjectsFromArray:v3];
}

- (NSString)title
{
  subject = [(CKTextMessagePartChatItem *)self subject];
  string = [subject string];
  v5 = string;
  if (string)
  {
    string2 = string;
  }

  else
  {
    text = [(CKTextMessagePartChatItem *)self text];
    string2 = [text string];
  }

  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v9 = [string2 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v10 = [v9 rangeOfString:@"\n"];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v9 substringToIndex:v10];

    v9 = v11;
  }

  return v9;
}

- (id)compositionWithContext:(id)context
{
  subparts = [(CKAggregateMessagePartChatItem *)self subparts];
  v4 = [CKComposition compositionForMessageParts:subparts preserveSubject:1 contextIdentifier:0];

  return v4;
}

@end