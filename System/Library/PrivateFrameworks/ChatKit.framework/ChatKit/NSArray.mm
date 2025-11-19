@interface NSArray
@end

@implementation NSArray

void __63__NSArray_CKUtilities____ck_indexSetForIndexPathRowsInSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 section] == *(a1 + 40))
  {
    [*(a1 + 32) addIndex:{objc_msgSend(v3, "row")}];
  }
}

void __64__NSArray_CKUtilities____ck_indexSetForIndexPathItemsInSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 section] == *(a1 + 40))
  {
    [*(a1 + 32) addIndex:{objc_msgSend(v3, "item")}];
  }
}

void __48__NSArray_CKChatItems____ck_indexOfMediaObject___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v11 mediaObject];
    v8 = [v7 isEqual:*(a1 + 32)];

    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v11 mediaObjects];
    v10 = [v9 containsObject:*(a1 + 32)];

    if (v10)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
}

void __45__NSArray_CKChatItems____ck_indexOfTransfer___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = [v7 mediaObject];
    v9 = [v8 transfer];
    v10 = [v9 guid];

    if (v10 && [*(a1 + 32) isEqualToString:v10])
    {
      *(*(*(a1 + 40) + 8) + 24) = a3;
      *a4 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 containsTransferGUID:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = a4;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [v7 mediaObjects];
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v19 + 1) + 8 * i) transferGUID];
          v17 = [v16 isEqualToString:v10];

          if (v17)
          {
            *(*(*(a1 + 40) + 8) + 24) = a3;
            *v18 = 1;
            goto LABEL_21;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:
  }
}

void __59__NSArray_CKChatItems____ck_indexesOfUnplayedAudioMessages__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 isFromMe] & 1) == 0 && (objc_msgSend(v5, "isPlayed") & 1) == 0)
  {
    [*(a1 + 32) addIndex:a3];
  }
}

void __50__NSArray_CKChatItems____ck_IMChatItemsAtIndexes___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 IMChatItem];
  [v2 addObject:v3];
}

void __74__NSArray_CKChatItems____ck_failedMessagesForChatItemsWithConversationID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = [a2 IMChatItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v14;
  if (isKindOfClass)
  {
    v8 = [v14 message];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if ([v14 stewieConversationID] != *(a1 + 48))
    {
      *a4 = 1;
      goto LABEL_7;
    }

    v11 = *(*(*(a1 + 40) + 8) + 40);
    v7 = v14;
    if (v11)
    {
      v12 = [v11 error];
      v13 = [v12 code];

      v7 = v14;
      if (v13 == 4)
      {
        [*(a1 + 32) insertObject:*(*(*(a1 + 40) + 8) + 40) atIndex:0];
LABEL_7:
        v7 = v14;
      }
    }
  }
}

void __63__NSArray_CKChatItems____ck_catchUpScrollTargetForMessageGUID___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = [a2 IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v14 message];
    v8 = [v7 guid];

    if ([v8 isEqualToString:a1[4]])
    {
      v9 = *(a1[5] + 8);
      if ((*(v9 + 24) & 1) == 0)
      {
        *(v9 + 24) = 1;
        *(*(a1[6] + 8) + 32) = a3;
      }
    }
  }

  else
  {
    v10 = [v14 guid];
    v11 = [v10 containsString:a1[4]];

    if (v11)
    {
      *(*(a1[6] + 8) + 40) = a3;
    }

    else if (*(*(a1[5] + 8) + 24) == 1)
    {
      v12 = [v14 guid];
      v13 = [v12 containsString:a1[4]];

      if ((v13 & 1) == 0)
      {
        *a4 = 1;
      }
    }
  }
}

void __61__NSArray_CKChatItems____ck_indexesOfPartsOfMessageWithGUID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = [a2 IMChatItem];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = [v10 message];
    v8 = [v7 guid];
    v9 = [v8 isEqualToString:*(a1 + 32)];

    if (v9)
    {
      [*(a1 + 40) addIndex:a3];
    }
  }

  else if ([*(a1 + 40) count])
  {
    *a4 = 1;
  }
}

void __75__NSArray_CKChatItems____ck_indexOfPartOfMessageGUID_withMessagePartIndex___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = [a2 IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = v10;
      v8 = [v7 message];
      v9 = [v8 guid];

      if ([v9 isEqualToString:a1[4]] && objc_msgSend(v7, "index") == a1[6])
      {
        *(*(a1[5] + 8) + 24) = a3;
        *a4 = 1;
      }
    }
  }
}

void __67__NSArray_CKChatItems____ck_indexesOfPartsOfNonAttachmentMessages___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = [a2 IMChatItem];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = [v9 message];
    v8 = [v7 guid];

    if ([*(a1 + 32) containsObject:v8])
    {
      [*(a1 + 40) addIndex:a3];
    }
  }

  else if ([*(a1 + 40) count])
  {
    *a4 = 1;
  }
}

void __54__NSArray_CKChatItems____ck_indexesOfPartsOfMessages___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 balloonBundleID];
  v7 = IMBalloonExtensionIDWithSuffix();
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __54__NSArray_CKChatItems____ck_indexesOfPartsOfMessages___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = [a2 IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v9 message];
    v8 = [v7 guid];

    if ([*(a1 + 32) containsObject:v8])
    {
      [*(a1 + 40) addIndex:a3];
    }
  }

  else if ([*(a1 + 40) count] && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

void __62__NSArray__CKAppInstallation____ck_proxyWithBundleIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v12;
  if (isKindOfClass)
  {
    v9 = v12;
    v10 = [v9 bundleIdentifier];
    v11 = [v10 isEqualToString:*(a1 + 32)];

    if (v11)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }

    v8 = v12;
  }
}

@end