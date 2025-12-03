@interface CKMessageTypeSearchController
- (BOOL)wantsFooterSection;
- (NSDirectionalEdgeInsets)additionalGroupInsets;
- (id)itemProviderForSearchResult:(id)result;
- (id)menuElementsForResult:(id)result atIndexPath:(id)path sourceRect:(CGRect)rect;
- (void)deleteAttachmentForResult:(id)result;
- (void)fractionalWidth:(double *)width count:(unint64_t *)count forLayoutWidth:(unint64_t)layoutWidth;
- (void)removeFromCache:(id)cache;
- (void)sendSyndicationActionForResult:(id)result actionType:(unsigned __int8)type;
@end

@implementation CKMessageTypeSearchController

- (void)fractionalWidth:(double *)width count:(unint64_t *)count forLayoutWidth:(unint64_t)layoutWidth
{
  if (!layoutWidth)
  {
    v6 = 1.0;
    v5 = 1;
    if (!width)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (layoutWidth == 2)
  {
    v5 = 3;
    v6 = 0.33;
    if (!width)
    {
      goto LABEL_7;
    }

LABEL_6:
    *width = v6;
    goto LABEL_7;
  }

  v6 = 0.5;
  v5 = 2;
  if (width)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (count)
  {
    *count = v5;
  }
}

- (BOOL)wantsFooterSection
{
  if ([(CKSearchController *)self mode]!= 3)
  {
    return 0;
  }

  return [(CKSearchController *)self hasMoreResults];
}

- (NSDirectionalEdgeInsets)additionalGroupInsets
{
  delegate = [(CKSearchController *)self delegate];
  [delegate parentMarginInsetsForSearchController:self];
  v5 = v4;
  v7 = v6;

  if ([(CKSearchController *)self mode]== 3 || [(CKSearchController *)self mode]== 4 || [(CKSearchController *)self mode]== 2)
  {
    v7 = v5;
  }

  else
  {
    v5 = 0.0;
  }

  v8 = 0.0;
  v9 = 0.0;
  v10 = v5;
  v11 = v7;
  result.trailing = v9;
  result.bottom = v11;
  result.leading = v8;
  result.top = v10;
  return result;
}

- (id)menuElementsForResult:(id)result atIndexPath:(id)path sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  resultCopy = result;
  pathCopy = path;
  v24.receiver = self;
  v24.super_class = CKMessageTypeSearchController;
  height = [(CKSearchController *)&v24 menuElementsForResult:resultCopy atIndexPath:pathCopy sourceRect:x, y, width, height];
  if ([(CKMessageTypeSearchController *)self wantsDeleteAction])
  {
    v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
    v15 = MEMORY[0x1E69DC628];
    v16 = CKFrameworkBundle();
    v17 = [v16 localizedStringForKey:@"SEARCH_DELETE" value:&stru_1F04268F8 table:@"ChatKit"];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __78__CKMessageTypeSearchController_menuElementsForResult_atIndexPath_sourceRect___block_invoke;
    v21[3] = &unk_1E72EEC78;
    v21[4] = self;
    v22 = resultCopy;
    v23 = pathCopy;
    v18 = [v15 actionWithTitle:v17 image:v14 identifier:0 handler:v21];

    [v18 setAttributes:2];
    v19 = [height arrayByAddingObject:v18];

    height = v19;
  }

  return height;
}

void __78__CKMessageTypeSearchController_menuElementsForResult_atIndexPath_sourceRect___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = [*(a1 + 32) results];
  v5 = [v4 indexOfObject:*(a1 + 40)];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = objc_loadWeakRetained(&location);
    v7 = [v6 delegate];
    v8 = objc_loadWeakRetained(&location);
    [v7 searchController:v8 requestsItemDeletionAtIndexPath:*(a1 + 48)];
  }

  objc_destroyWeak(&location);
}

- (void)deleteAttachmentForResult:(id)result
{
  resultCopy = result;
  item = [resultCopy item];
  uniqueIdentifier = [item uniqueIdentifier];

  v7 = IMMessageGuidFromIMFileTransferGuid();
  mEMORY[0x1E69A5AE8] = [MEMORY[0x1E69A5AE8] sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__CKMessageTypeSearchController_deleteAttachmentForResult___block_invoke;
  v11[3] = &unk_1E72EECA0;
  v11[4] = self;
  v12 = uniqueIdentifier;
  v13 = resultCopy;
  v9 = resultCopy;
  v10 = uniqueIdentifier;
  [mEMORY[0x1E69A5AE8] loadMessageItemWithGUID:v7 completionBlock:v11];
}

void __59__CKMessageTypeSearchController_deleteAttachmentForResult___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 deleteChatItemWithTransferGUID:*(a1 + 40) fromMessageItem:v9];
  }

  [*(a1 + 32) removeResult:*(a1 + 48)];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 48) identifier];
  [v6 removeFromCache:v7];

  v8 = [*(a1 + 32) delegate];
  [v8 searchControllerContentsDidChange:*(a1 + 32)];
}

- (id)itemProviderForSearchResult:(id)result
{
  resultCopy = result;
  v4 = resultCopy;
  if (resultCopy)
  {
    item = [resultCopy item];
    attributeSet = [item attributeSet];
    contentURL = [attributeSet contentURL];

    if (contentURL)
    {
      lastPathComponent = [contentURL lastPathComponent];
      v9 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithContentsOfURL:contentURL];
      [v9 setSuggestedName:lastPathComponent];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v13 = 0;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Spotlight query result missing expected content URL", v13, 2u);
        }
      }

      v9 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Unexpected nil search result when trying to create NSItemProvider", buf, 2u);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (void)removeFromCache:(id)cache
{
  cacheCopy = cache;
  queryController = [(CKSearchController *)self queryController];
  itemsVerifiedOnDiskCache = [queryController itemsVerifiedOnDiskCache];

  [itemsVerifiedOnDiskCache removeObject:cacheCopy];
}

- (void)sendSyndicationActionForResult:(id)result actionType:(unsigned __int8)type
{
  resultCopy = result;
  queryController = [(CKSearchController *)self queryController];
  item = [resultCopy item];
  v9 = [queryController chatGUIDForSearchableItem:item];

  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v11 = [mEMORY[0x1E69A5AF8] existingChatWithGUID:v9];

  item2 = [resultCopy item];
  uniqueIdentifier = [item2 uniqueIdentifier];

  mEMORY[0x1E69A5AE8] = [MEMORY[0x1E69A5AE8] sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__CKMessageTypeSearchController_sendSyndicationActionForResult_actionType___block_invoke;
  v18[3] = &unk_1E72EECC8;
  v19 = uniqueIdentifier;
  v20 = v11;
  typeCopy = type;
  selfCopy = self;
  v22 = resultCopy;
  v15 = resultCopy;
  v16 = v11;
  v17 = uniqueIdentifier;
  [mEMORY[0x1E69A5AE8] loadMessageItemWithGUID:v17 completionBlock:v18];
}

void __75__CKMessageTypeSearchController_sendSyndicationActionForResult_actionType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 40) chatItems];
    v8 = *(a1 + 40);
    v33 = v5;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    v10 = [v8 chatItemsForItems:v9];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = *v29;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = *(a1 + 40);
            v17 = *(a1 + 64);
            v18 = v15;
            v19 = [v18 guid];
            v20 = [v18 messagePartRange];
            [v16 sendSyndicationAction:v17 forMessagePartGUID:v19 syndicatedMessagePartRange:{v20, v21}];

            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __75__CKMessageTypeSearchController_sendSyndicationActionForResult_actionType___block_invoke_212;
            v26[3] = &unk_1E72EB8D0;
            v22 = *(a1 + 56);
            v26[4] = *(a1 + 48);
            v27 = v22;
            dispatch_async(MEMORY[0x1E69E96A0], v26);

            goto LABEL_12;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      *buf = 138412546;
      v35 = v24;
      v36 = 2112;
      v37 = v25;
      _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "Could not find message for messageGUID: %@, chat: %@", buf, 0x16u);
    }
  }
}

void __75__CKMessageTypeSearchController_sendSyndicationActionForResult_actionType___block_invoke_212(uint64_t a1)
{
  [*(a1 + 32) removeResult:*(a1 + 40)];
  v2 = [*(a1 + 32) delegate];
  [v2 searchControllerContentsDidChange:*(a1 + 32)];
}

@end