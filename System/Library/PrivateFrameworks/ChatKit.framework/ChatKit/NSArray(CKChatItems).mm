@interface NSArray(CKChatItems)
- (id)__ck_IMChatItemsAtIndexes:()CKChatItems;
- (id)__ck_chatItemWithGUID:()CKChatItems;
- (id)__ck_failedMessagesForChatItemsWithConversationID:()CKChatItems;
- (id)__ck_indexesOfPartsOfMessageWithGUID:()CKChatItems;
- (id)__ck_indexesOfPartsOfMessages:()CKChatItems;
- (id)__ck_indexesOfPartsOfNonAttachmentMessages:()CKChatItems;
- (id)__ck_indexesOfUnplayedAudioMessages;
- (id)__ck_messageForChatItemAtIndex:()CKChatItems;
- (id)__ck_parentChatItemWithMesssageGUID:()CKChatItems associatedMessageRange:;
- (uint64_t)__ck_catchUpScrollTargetForMessageGUID:()CKChatItems;
- (uint64_t)__ck_indexOfChatItemWithGUID:()CKChatItems;
- (uint64_t)__ck_indexOfMediaObject:()CKChatItems;
- (uint64_t)__ck_indexOfParentChatItemWithMesssageGUID:()CKChatItems associatedMessageRange:;
- (uint64_t)__ck_indexOfPartOfMessage:()CKChatItems withMessagePartIndex:;
- (uint64_t)__ck_indexOfPartOfMessageGUID:()CKChatItems withMessagePartIndex:;
- (uint64_t)__ck_indexOfTransfer:()CKChatItems;
- (void)__ck_unloadSizesAtIndexes:()CKChatItems;
- (void)__ck_unloadTranscriptTextAtIndexes:()CKChatItems;
@end

@implementation NSArray(CKChatItems)

- (uint64_t)__ck_indexOfMediaObject:()CKChatItems
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__NSArray_CKChatItems____ck_indexOfMediaObject___block_invoke;
  v8[3] = &unk_1E72ED100;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [self enumerateObjectsUsingBlock:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (uint64_t)__ck_indexOfTransfer:()CKChatItems
{
  v4 = a3;
  guid = [v4 guid];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if ([guid length])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__NSArray_CKChatItems____ck_indexOfTransfer___block_invoke;
    v8[3] = &unk_1E72ED100;
    v9 = guid;
    v10 = &v11;
    [self enumerateObjectsUsingBlock:v8];
    v6 = v12[3];

    _Block_object_dispose(&v11, 8);
  }

  return v6;
}

- (void)__ck_unloadSizesAtIndexes:()CKChatItems
{
  v1 = [self objectsAtIndexes:?];
  [CKChatItem unloadSizesOfChatItems:v1];
}

- (void)__ck_unloadTranscriptTextAtIndexes:()CKChatItems
{
  v4 = a3;
  if ([v4 count])
  {
    [self enumerateObjectsAtIndexes:v4 options:0 usingBlock:&__block_literal_global_81];
  }
}

- (id)__ck_indexesOfUnplayedAudioMessages
{
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__NSArray_CKChatItems____ck_indexesOfUnplayedAudioMessages__block_invoke;
  v5[3] = &unk_1E72F0918;
  v3 = indexSet;
  v6 = v3;
  [self enumerateObjectsUsingBlock:v5];

  return v3;
}

- (id)__ck_IMChatItemsAtIndexes:()CKChatItems
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__NSArray_CKChatItems____ck_IMChatItemsAtIndexes___block_invoke;
    v8[3] = &unk_1E72F0918;
    v6 = v5;
    v9 = v6;
    [self enumerateObjectsAtIndexes:v4 options:0 usingBlock:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)__ck_messageForChatItemAtIndex:()CKChatItems
{
  v1 = [self objectAtIndex:?];
  iMChatItem = [v1 IMChatItem];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    message = [iMChatItem message];
  }

  else
  {
    message = 0;
  }

  return message;
}

- (id)__ck_failedMessagesForChatItemsWithConversationID:()CKChatItems
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__25;
  v14[4] = __Block_byref_object_dispose__25;
  v15 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__NSArray_CKChatItems____ck_failedMessagesForChatItemsWithConversationID___block_invoke;
  v10[3] = &unk_1E72F0E00;
  v12 = v14;
  v13 = a3;
  v6 = v5;
  v11 = v6;
  [self enumerateObjectsWithOptions:2 usingBlock:v10];
  v7 = v11;
  v8 = v6;

  _Block_object_dispose(v14, 8);

  return v8;
}

- (uint64_t)__ck_catchUpScrollTargetForMessageGUID:()CKChatItems
{
  v4 = a3;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3010000000;
  v15 = &unk_190F92BB2;
  v16 = xmmword_190DD07D0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__NSArray_CKChatItems____ck_catchUpScrollTargetForMessageGUID___block_invoke;
  v8[3] = &unk_1E72F0E28;
  v5 = v4;
  v9 = v5;
  v10 = v17;
  v11 = &v12;
  [self enumerateObjectsUsingBlock:v8];
  v6 = v13[4];
  if (v13[5] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13[5] = v6;
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v17, 8);

  return v6;
}

- (id)__ck_indexesOfPartsOfMessageWithGUID:()CKChatItems
{
  v4 = a3;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__NSArray_CKChatItems____ck_indexesOfPartsOfMessageWithGUID___block_invoke;
  v11[3] = &unk_1E72EE4E8;
  v12 = v4;
  v6 = indexSet;
  v13 = v6;
  v7 = v4;
  [self enumerateObjectsWithOptions:2 usingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (uint64_t)__ck_indexOfPartOfMessageGUID:()CKChatItems withMessagePartIndex:
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__NSArray_CKChatItems____ck_indexOfPartOfMessageGUID_withMessagePartIndex___block_invoke;
  v10[3] = &unk_1E72F0E50;
  v7 = v6;
  v12 = &v14;
  v13 = a4;
  v11 = v7;
  [self enumerateObjectsWithOptions:2 usingBlock:v10];
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

- (uint64_t)__ck_indexOfPartOfMessage:()CKChatItems withMessagePartIndex:
{
  guid = [a3 guid];
  v7 = [self __ck_indexOfPartOfMessageGUID:guid withMessagePartIndex:a4];

  return v7;
}

- (id)__ck_indexesOfPartsOfNonAttachmentMessages:()CKChatItems
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        guid = [*(*(&v21 + 1) + 8 * v11) guid];
        [v6 addObject:guid];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__NSArray_CKChatItems____ck_indexesOfPartsOfNonAttachmentMessages___block_invoke;
  v18[3] = &unk_1E72EE4E8;
  v19 = v6;
  v13 = indexSet;
  v20 = v13;
  v14 = v6;
  [self enumerateObjectsWithOptions:2 usingBlock:v18];
  v15 = v20;
  v16 = v13;

  return v13;
}

- (id)__ck_indexesOfPartsOfMessages:()CKChatItems
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v7);
        }

        guid = [*(*(&v24 + 1) + 8 * i) guid];
        [v6 addObject:guid];
      }

      v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __54__NSArray_CKChatItems____ck_indexesOfPartsOfMessages___block_invoke;
  v21[3] = &unk_1E72F0E78;
  v21[4] = v22;
  [v7 enumerateObjectsUsingBlock:v21];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__NSArray_CKChatItems____ck_indexesOfPartsOfMessages___block_invoke_2;
  v17[3] = &unk_1E72F0EA0;
  v12 = v6;
  v18 = v12;
  v13 = indexSet;
  v19 = v13;
  v20 = v22;
  [self enumerateObjectsWithOptions:2 usingBlock:v17];
  v14 = v19;
  v15 = v13;

  _Block_object_dispose(v22, 8);

  return v15;
}

- (uint64_t)__ck_indexOfChatItemWithGUID:()CKChatItems
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
LABEL_3:
    v10 = 0;
    v11 = v8;
    v8 += v7;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(selfCopy);
      }

      iMChatItem = [*(*(&v16 + 1) + 8 * v10) IMChatItem];
      guid = [iMChatItem guid];
      v14 = [guid isEqualToString:v4];

      if (v14)
      {
        break;
      }

      ++v11;
      if (v7 == ++v10)
      {
        v7 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (id)__ck_chatItemWithGUID:()CKChatItems
{
  v2 = [self __ck_indexOfChatItemWithGUID:?];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [self objectAtIndexedSubscript:v2];
  }

  return v3;
}

- (uint64_t)__ck_indexOfParentChatItemWithMesssageGUID:()CKChatItems associatedMessageRange:
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = a3;
  if (v21)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    selfCopy = self;
    v6 = [selfCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v23;
      do
      {
        v10 = 0;
        v19 = v8 + v7;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(selfCopy);
          }

          v11 = *(*(&v22 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            iMChatItem = [v11 IMChatItem];
            guid = [iMChatItem guid];
            if ([guid containsString:v21] && !objc_msgSend(v11, "itemIsReplyContextPreview"))
            {
              isEditedMessageHistory = [v11 isEditedMessageHistory];

              if ((isEditedMessageHistory & 1) == 0)
              {
                originalMessagePartRange = [v11 originalMessagePartRange];
                if (a4 >= originalMessagePartRange && a4 - originalMessagePartRange < v16)
                {
                  goto LABEL_19;
                }
              }
            }

            else
            {
            }
          }

          ++v8;
          ++v10;
        }

        while (v7 != v10);
        v17 = [selfCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
        v7 = v17;
        v8 = v19;
      }

      while (v17);
    }

    v8 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_19:
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (id)__ck_parentChatItemWithMesssageGUID:()CKChatItems associatedMessageRange:
{
  v2 = [self __ck_indexOfParentChatItemWithMesssageGUID:? associatedMessageRange:?];
  if (v2 >= [self count])
  {
    v3 = 0;
  }

  else
  {
    v3 = [self objectAtIndex:v2];
  }

  return v3;
}

@end