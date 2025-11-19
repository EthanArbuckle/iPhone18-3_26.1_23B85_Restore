@interface CKDetailsSearchViewController
- (BOOL)wantsSpaceKeyCommandActive;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKDetailsSearchControllerDelegate)detailsDelegate;
- (CKDetailsSearchResultsFooterCell)footerSizingCell;
- (CKDetailsSearchResultsTitleHeaderCell)titleSizingCell;
- (CKDetailsSearchViewController)initWithSearchControllerClasses:(id)a3;
- (CKQLPreviewController)previewController;
- (CKSearchIndexingFooterCell)sizingIndexingFooterCell;
- (UIEdgeInsets)parentMarginInsetsForSearchController:(id)a3;
- (id)_newSnapshotForCurrentControllerState;
- (id)_searchControllerForIndexPath:(id)a3;
- (id)_selectedIndexPaths;
- (id)globalLayoutConfiguration;
- (id)headerBoundryItemsForController:(id)a3 withEnvironment:(id)a4;
- (id)layoutSectionForController:(id)a3 withEnvironment:(id)a4;
- (id)previewController:(id)a3 transitionViewForPreviewItem:(id)a4;
- (id)searchController:(id)a3 conversationsForExistingChatsWithGUIDs:(id)a4;
- (id)searchControllerChatGUIDsForDetailsSearch:(id)a3;
- (id)sizeAttributeForController:(id)a3 sizingAttribute:(id)a4;
- (void)_configureIndexingCell:(id)a3;
- (void)_deleteAttachmentsAtIndexPaths:(id)a3;
- (void)_deleteSelectedAttachments:(id)a3;
- (void)_presentResult:(id)a3 withFullScreenViewController:(id)a4;
- (void)_registerCells;
- (void)_saveSelectedAttachments:(id)a3;
- (void)_updateToolbar;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
- (void)deleteChatItemWithTransferGUID:(id)a3 fromMessageItem:(id)a4;
- (void)deleteMessageItem:(id)a3;
- (void)deleteTransferGUID:(id)a3;
- (void)handleSpacePressed;
- (void)loadView;
- (void)presentQuickLookView:(id)a3;
- (void)rekickZKWSearchForAttachmentBatchUpdate;
- (void)reloadData;
- (void)searchController:(id)a3 requestsItemDeletionAtIndexPath:(id)a4;
- (void)searchControllerContentsDidChange:(id)a3;
- (void)searchDetailsFooterCellShowAllTapped:(id)a3;
- (void)searchDetailsShowAllButtonTapped:(id)a3;
- (void)searchEnded;
- (void)searchResultsTitleCellShowAllButtonTapped:(id)a3;
- (void)searchViewController:(id)a3 requestsPushOfSearchController:(id)a4;
- (void)searchWithText:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)setupDetailsSearchController:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CKDetailsSearchViewController

- (CKDetailsSearchViewController)initWithSearchControllerClasses:(id)a3
{
  v6.receiver = self;
  v6.super_class = CKDetailsSearchViewController;
  v3 = [(CKSearchViewController *)&v6 initWithSearchControllerClasses:a3];
  v4 = v3;
  if (v3)
  {
    [(CKSearchViewController *)v3 setDelegate:v3];
  }

  return v4;
}

- (void)loadView
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [(CKDetailsSearchViewController *)self conversation];
  v4 = [v3 isGroupConversation];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [(CKSearchViewController *)self searchControllers];
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v30 + 1) + 8 * i) setSuppressAvatars:v4 ^ 1u];
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  v29.receiver = self;
  v29.super_class = CKDetailsSearchViewController;
  [(CKSearchViewController *)&v29 loadView];
  if (CKIsRunningInMacCatalyst())
  {
    v10 = [(CKSearchViewController *)self collectionView];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(CKSearchViewController *)self collectionView];
      [v12 _setShouldDeriveVisibleBoundsFromContainingScrollView:1];
    }
  }

  v13 = [(CKSearchViewController *)self mode];
  v14 = v13 != 4;
  v15 = v13 == 4;
  v16 = [(CKSearchViewController *)self collectionView];
  [v16 setScrollEnabled:v15];

  v17 = [(CKSearchViewController *)self collectionView];
  [v17 setShowsVerticalScrollIndicator:CKIsRunningInMacCatalyst() == 0];

  v18 = [(CKSearchViewController *)self collectionView];
  [v18 setLockContentOffset:v14];

  v19 = [(CKSearchViewController *)self mode];
  v20 = [(CKSearchViewController *)self collectionView];
  v21 = +[CKUIBehavior sharedBehaviors];
  v22 = [v21 theme];
  v23 = v22;
  if (v19 == 4)
  {
    [v22 spotlightSearchBackgroundColor];
  }

  else
  {
    [v22 detailsCollectionViewBackgroundColor];
  }
  v24 = ;
  [v20 setBackgroundColor:v24];

  v25 = [(CKSearchViewController *)self collectionView];
  [v25 setContentInsetAdjustmentBehavior:2];

  v26 = [(CKSearchViewController *)self collectionView];
  [v26 setAllowsMultipleSelection:1];

  v27 = [(CKSearchViewController *)self collectionView];
  v28 = [v27 collectionViewLayout];
  [v28 registerClass:objc_opt_class() forDecorationViewOfKind:@"backgroundDecorationView"];
}

- (void)viewDidLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = CKDetailsSearchViewController;
  [(CKSearchViewController *)&v16 viewDidLayoutSubviews];
  v3 = [(CKSearchViewController *)self mode]== 4;
  v4 = [(CKSearchViewController *)self collectionView];
  [v4 setScrollEnabled:v3];

  v5 = [(CKSearchViewController *)self collectionView];
  [v5 adjustedContentInset];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKDetailsSearchViewController *)self navigationController];
  v13 = [v12 navigationBar];
  [v13 bounds];
  MaxY = CGRectGetMaxY(v17);

  v15 = [(CKSearchViewController *)self collectionView];
  [v15 setContentInset:{MaxY, v7, v9, v11}];
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CKDetailsSearchViewController;
  [(CKSearchViewController *)&v10 viewWillAppear:a3];
  if ([(CKSearchViewController *)self mode]== 4)
  {
    v4 = [(CKDetailsSearchViewController *)self selectButton];

    if (!v4)
    {
      v5 = objc_alloc(MEMORY[0x1E69DC708]);
      v6 = CKFrameworkBundle();
      v7 = [v6 localizedStringForKey:@"SELECT" value:&stru_1F04268F8 table:@"ChatKit"];
      v8 = [v5 initWithTitle:v7 style:0 target:self action:sel__selectButtonTapped_];

      v9 = [(CKDetailsSearchViewController *)self navigationItem];
      [v9 setRightBarButtonItem:v8];

      [(CKDetailsSearchViewController *)self setSelectButton:v8];
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKDetailsSearchViewController;
  [(CKViewController *)&v4 viewWillDisappear:a3];
  if ([(CKSearchViewController *)self mode]== 4)
  {
    [(CKDetailsSearchViewController *)self setEditing:0];
  }
}

- (void)rekickZKWSearchForAttachmentBatchUpdate
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = +[CKSpotlightQueryUtilities detailsSearchControllers];
  v4 = [(CKSearchViewController *)self searchControllers];
  v5 = [v4 count];
  v6 = [v3 count];

  if (v5 != v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = objc_alloc_init(*(*(&v15 + 1) + 8 * v12));
          v14 = v13;
          if (v13)
          {
            [v13 setDelegate:{self, v15}];
            [v7 addObject:v14];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [(CKSearchViewController *)self setSearchControllers:v7];
  }

  [(CKSearchViewController *)self _searchImmediately];
}

- (void)reloadData
{
  v4.receiver = self;
  v4.super_class = CKDetailsSearchViewController;
  [(CKSearchViewController *)&v4 reloadData];
  v3 = [(CKDetailsSearchViewController *)self detailsDelegate];
  [v3 detailsSearchControllerContentDidChange:self];
}

- (void)handleSpacePressed
{
  v3 = [(CKSearchViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];
  v5 = [v4 firstObject];

  [(CKDetailsSearchViewController *)self presentQuickLookView:v5];
}

- (void)presentQuickLookView:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v21 = v4;
    v5 = [v4 section];
    v6 = [(CKSearchViewController *)self searchControllers];
    v7 = [v6 objectAtIndex:v5];

    v8 = [v7 results];
    v9 = [v8 objectAtIndex:{objc_msgSend(v21, "row")}];

    if ([objc_opt_class() supportsQuicklookForResult:v9])
    {
      v10 = objc_alloc_init(CKQLPreviewControllerDataSource);
      [(CKDetailsSearchViewController *)self setQlPreviewDataSource:v10];

      v11 = [(CKDetailsSearchViewController *)self previewController];
      v12 = [(CKDetailsSearchViewController *)self qlPreviewDataSource];
      [v11 setDataSource:v12];

      v13 = [(CKDetailsSearchViewController *)self previewController];
      [v13 setDelegate:self];

      v14 = [(CKDetailsSearchViewController *)self qlPreviewDataSource];
      v15 = [v7 results];
      [v14 setPreviewItems:v15];

      v16 = [(CKDetailsSearchViewController *)self previewController];
      [v16 reloadData];

      v17 = [(CKDetailsSearchViewController *)self previewController];
      [v17 setCurrentPreviewItemIndex:{objc_msgSend(v21, "row")}];

      v18 = [(CKDetailsSearchViewController *)self previewController];
      [v18 refreshCurrentPreviewItem];

      if (CKIsRunningInMacCatalyst())
      {
        v19 = [(CKDetailsSearchViewController *)self previewController];
        [v19 presentPreview];
      }

      else
      {
        v19 = [(CKDetailsSearchViewController *)self navigationController];
        v20 = [(CKDetailsSearchViewController *)self previewController];
        [v19 pushViewController:v20 animated:1];
      }
    }

    v4 = v21;
  }
}

- (BOOL)wantsSpaceKeyCommandActive
{
  v3 = [(CKSearchViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [v5 section];
    v7 = [(CKSearchViewController *)self searchControllers];
    v8 = [v7 objectAtIndex:v6];

    v9 = [v8 results];
    v10 = [v9 objectAtIndex:{objc_msgSend(v5, "row")}];

    v11 = [objc_opt_class() supportsQuicklookForResult:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)previewController:(id)a3 transitionViewForPreviewItem:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "QuickLook did request preview view for transition to item of class %@", &buf, 0xCu);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v7;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__73;
    v35 = __Block_byref_object_dispose__73;
    v36 = 0;
    v12 = [(CKSearchViewController *)self searchControllers];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __80__CKDetailsSearchViewController_previewController_transitionViewForPreviewItem___block_invoke;
    v25 = &unk_1E72F77C8;
    v13 = v11;
    v26 = v13;
    p_buf = &buf;
    [v12 enumerateObjectsUsingBlock:&v22];

    if (*(*(&buf + 1) + 40))
    {
      v14 = [(CKSearchViewController *)self collectionView:v22];
      v15 = [v14 cellForItemAtIndexPath:*(*(&buf + 1) + 40)];
    }

    else
    {
      v15 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(*(&buf + 1) + 40);
        *v28 = 138412546;
        v29 = v19;
        v30 = 2112;
        v31 = v15;
        _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "> For an item at indexPath {%@}, we are returning preview view {%@}.", v28, 0x16u);
      }
    }

    v20 = v26;
    v17 = v15;

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "> Item is not of type CKSpotlightQueryResult. Returning nil.", &buf, 2u);
      }
    }

    v17 = 0;
  }

  return v17;
}

void __80__CKDetailsSearchViewController_previewController_transitionViewForPreviewItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = [a2 results];
  v7 = [v11 indexOfObject:*(a1 + 32)];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x1E696AC88] indexPathForItem:v7 inSection:a3];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v42 = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Did select item at index path %@", buf, 0xCu);
    }
  }

  v9 = [v7 section];
  v10 = [(CKSearchViewController *)self searchControllers];
  v11 = v9 < [v10 count];

  if (v11)
  {
    v12 = [v6 cellForItemAtIndexPath:v7];
    v13 = [(CKSearchViewController *)self collectionView];
    v14 = [v13 _ck_isEditing];

    if (v14)
    {
      [(CKDetailsSearchViewController *)self _updateToolbar];
LABEL_35:

      goto LABEL_36;
    }

    v15 = [(CKSearchViewController *)self searchControllers];
    v16 = [v15 objectAtIndex:v9];

    v17 = [v16 results];
    v18 = [v17 objectAtIndex:{objc_msgSend(v7, "row")}];

    if (!CKIsRunningInMacCatalyst() || ![objc_opt_class() supportsMacSelection])
    {
      v31 = [v7 row];
      v32 = [v16 results];
      LODWORD(v31) = v31 < [v32 count];

      if (v31)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = [v12 linkMetadata];
          [v18 setLinkMetadata:v33];
        }

        if (([v16 handleSelectionForResult:v18] & 1) == 0 && objc_msgSend(objc_opt_class(), "supportsMenuInteraction"))
        {
          v34 = [v16 previewViewControllerForResult:v18];
          if (v34)
          {
            if ([objc_opt_class() previewControllerPresentsModally])
            {
              [(CKDetailsSearchViewController *)self presentViewController:v34 animated:1 completion:0];
            }

            else
            {
              [(CKDetailsSearchViewController *)self _presentResult:v18 withFullScreenViewController:v34];
            }
          }
        }
      }

      goto LABEL_34;
    }

    v19 = [(CKDetailsSearchViewController *)self lastUserSelectedCellTime];
    if (!v19 || (-[CKDetailsSearchViewController lastUserSelectedCell](self, "lastUserSelectedCell"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v12 isEqual:v20], v20, v19, !v21) || (-[CKDetailsSearchViewController lastUserSelectedCellTime](self, "lastUserSelectedCellTime"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "timeIntervalSinceNow"), v24 = v23, v22, fabs(v24) >= cellDoubleClickInterval()))
    {
LABEL_33:
      v38 = [MEMORY[0x1E695DF00] date];
      [(CKDetailsSearchViewController *)self setLastUserSelectedCellTime:v38];

      [(CKDetailsSearchViewController *)self setLastUserSelectedCell:v12];
LABEL_34:

      goto LABEL_35;
    }

    v25 = [v18 item];
    v26 = [v25 attributeSet];

    v40 = [v26 messageType];
    if ([v40 isEqualToString:@"lnk"])
    {
      v27 = [v18 item];
      v28 = [v27 attributeSet];
      v29 = [v28 URL];

      if (v29)
      {
        v30 = [MEMORY[0x1E69DC668] sharedApplication];
        [v30 openURL:v29 withCompletionHandler:0];
LABEL_31:
      }
    }

    else
    {
      v29 = [v26 contentURL];
      if (v29)
      {
        v35 = [(CKSearchViewController *)self searchControllers];
        v30 = [v35 objectAtIndex:{objc_msgSend(v7, "section")}];

        v36 = [v30 results];
        v39 = [v36 objectAtIndex:{objc_msgSend(v7, "row")}];

        if ([objc_opt_class() supportsQuicklookForResult:v39])
        {
          [(CKDetailsSearchViewController *)self presentQuickLookView:v7];
        }

        else
        {
          v37 = [MEMORY[0x1E6963608] defaultWorkspace];
          [v37 openURL:v29 configuration:0 completionHandler:0];
        }

        goto LABEL_31;
      }
    }

    goto LABEL_33;
  }

LABEL_36:
}

- (void)_presentResult:(id)a3 withFullScreenViewController:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setDelegate:self];
    [v5 setModalPresentationStyle:0];
    [(CKDetailsSearchViewController *)self presentViewController:v5 animated:1 completion:0];
  }
}

- (id)layoutSectionForController:(id)a3 withEnvironment:(id)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = CKDetailsSearchViewController;
  v5 = [(CKSearchViewController *)&v29 layoutSectionForController:a3 withEnvironment:a4];
  v6 = [MEMORY[0x1E6995550] backgroundDecorationItemWithElementKind:@"backgroundDecorationView"];
  if ([(CKSearchViewController *)self mode]!= 4)
  {
    v30[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    [v5 setDecorationItems:v7];
  }

  if (-[CKSearchViewController mode](self, "mode") == 4 && (-[CKSearchViewController searchControllers](self, "searchControllers"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v9))
  {
    v10 = [(CKSearchViewController *)self searchControllers];
    v11 = [v10 firstObject];

    [v11 additionalGroupInsets];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    if ([v11 applyLayoutMarginsToLayoutGroup])
    {
      v20 = [(CKSearchViewController *)self collectionView];
      [v20 marginInsets];
      v15 = v15 + v21;

      v22 = [(CKSearchViewController *)self collectionView];
      [v22 marginInsets];
      v19 = v19 + v23;
    }
  }

  else
  {
    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 searchDetailsResultsInsets];
    v13 = v24;
    v15 = v25;
    v17 = v26;
    v19 = v27;
  }

  [v5 setContentInsets:{v13, v15, v17, v19}];

  return v5;
}

- (UIEdgeInsets)parentMarginInsetsForSearchController:(id)a3
{
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 searchDetailsSectionMarginInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v5 = [(CKSearchViewController *)self collectionView:a3];
  v6 = [v5 _ck_isEditing];

  if (v6)
  {

    [(CKDetailsSearchViewController *)self _updateToolbar];
  }
}

- (void)searchWithText:(id)a3
{
  v4 = a3;
  [(CKDetailsSearchViewController *)self setSearchComplete:0];
  v5.receiver = self;
  v5.super_class = CKDetailsSearchViewController;
  [(CKSearchViewController *)&v5 searchWithText:v4];
}

- (void)searchEnded
{
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Search ended", buf, 2u);
    }
  }

  [(CKSearchViewController *)self setSearchInProgress:0];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(CKSearchViewController *)self searchControllers];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 cancelCurrentSearch];
        [v8 searchEnded];
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)searchControllerContentsDidChange:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_reloadData object:0];
  v5 = [(CKSearchViewController *)self searchCompleteControllerSet];
  [v5 addObject:objc_opt_class()];

  v6 = [(CKSearchViewController *)self searchCompleteControllerSet];
  v7 = [v6 count];

  v8 = [(CKSearchViewController *)self searchControllers];
  v9 = [v8 count];

  if (v7 >= v9)
  {
    [(CKDetailsSearchViewController *)self setSearchComplete:1];
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [(CKSearchViewController *)self searchCompleteControllerSet];
        v17 = [v16 count];
        v18 = objc_opt_class();
        v19 = [(CKSearchViewController *)self searchControllers];
        v23 = 134218498;
        v24 = v17;
        v25 = 2112;
        v26 = v18;
        v27 = 2048;
        v28 = [v19 count];
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "%lu (%@) of %lu controllers checked in, updating now", &v23, 0x20u);
      }
    }

    v20 = [(CKSearchViewController *)self collectionViewLayout];
    v21 = [(CKDetailsSearchViewController *)self globalLayoutConfiguration];
    v22 = [v21 copy];
    [v20 setConfiguration:v22];

    [(CKDetailsSearchViewController *)self reloadData];
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(CKSearchViewController *)self searchCompleteControllerSet];
      v12 = [v11 count];
      v13 = objc_opt_class();
      v14 = [(CKSearchViewController *)self searchControllers];
      v23 = 134218498;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      v27 = 2048;
      v28 = [v14 count];
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "%lu (%@) of %lu controllers checked in, not updating", &v23, 0x20u);
    }
  }
}

- (void)_registerCells
{
  v11.receiver = self;
  v11.super_class = CKDetailsSearchViewController;
  [(CKSearchViewController *)&v11 _registerCells];
  v3 = [(CKSearchViewController *)self collectionView];
  v4 = objc_opt_class();
  v5 = +[CKDetailsSearchResultsTitleHeaderCell supplementaryViewType];
  v6 = +[CKDetailsSearchResultsTitleHeaderCell reuseIdentifier];
  [v3 registerClass:v4 forSupplementaryViewOfKind:v5 withReuseIdentifier:v6];

  v7 = [(CKSearchViewController *)self collectionView];
  v8 = objc_opt_class();
  v9 = +[CKDetailsSearchResultsFooterCell supplementaryViewType];
  v10 = +[CKDetailsSearchResultsFooterCell reuseIdentifier];
  [v7 registerClass:v8 forSupplementaryViewOfKind:v9 withReuseIdentifier:v10];
}

- (id)_newSnapshotForCurrentControllerState
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(CKSearchViewController *)self mode]== 4)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = [(CKSearchViewController *)self searchControllers];
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [objc_opt_class() sectionIdentifier];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v26 = v3;
    v11 = [(CKSearchViewController *)self searchControllers];
    v5 = [v11 mutableCopy];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = [(CKSearchViewController *)self searchControllers];
    v13 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v33 + 1) + 8 * j);
          if (([v17 hasMoreResults] & 1) != 0 || (objc_msgSend(v17, "queryController"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "queryRunning"), v18, v19))
          {
            v20 = [objc_opt_class() sectionIdentifier];
            [v4 addObject:v20];
          }

          else
          {
            [v5 removeObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v14);
    }

    [(CKSearchViewController *)self setSearchControllers:v5];
    v21 = [v5 copy];
    [(CKSearchViewController *)self setSearchControllersWithResults:v21];

    v3 = v26;
  }

  [v3 appendSectionsWithIdentifiers:v4];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __70__CKDetailsSearchViewController__newSnapshotForCurrentControllerState__block_invoke;
  v27[3] = &unk_1E72F3B28;
  v27[4] = self;
  v22 = v3;
  v28 = v22;
  [v4 enumerateObjectsUsingBlock:v27];
  v23 = v28;
  v24 = v22;

  return v24;
}

void __70__CKDetailsSearchViewController__newSnapshotForCurrentControllerState__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) searchControllers];
  v7 = [v6 count];

  if (v7 >= a3)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [*(a1 + 32) searchControllers];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v10)
    {
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [objc_opt_class() sectionIdentifier];
          v15 = [v14 isEqualToString:v5];

          if (v15)
          {
            v10 = v13;
            goto LABEL_16;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    v16 = [v10 results];
    if ([v16 count])
    {
      v17 = [*(a1 + 32) _identifiersToAppendForResults:v16];
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v24 = v5;
          v25 = 2112;
          v26 = v17;
          _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Section %@ appending %@", buf, 0x16u);
        }
      }

      [*(a1 + 40) appendItemsWithIdentifiers:v17 intoSectionWithIdentifier:v5];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "CKSearchController - Allocated search controllers and section counts do not match!!", buf, 2u);
    }
  }
}

- (id)sizeAttributeForController:(id)a3 sizingAttribute:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 headerOverrideClass])
  {
    v8 = objc_alloc_init(CKPhotosSearchResultsModeHeaderReusableView);
  }

  else
  {
    v8 = [(CKDetailsSearchViewController *)self titleSizingCell];
  }

  v9 = v8;
  v10 = [(CKPhotosSearchResultsModeHeaderReusableView *)v8 preferredLayoutAttributesFittingAttributes:v7];

  if (CKIsRunningInMacCatalyst())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [CKPhotosSearchResultsTitleHeaderCell alloc];
      v12 = [(CKPhotosSearchResultsTitleHeaderCell *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v13 = [objc_opt_class() sectionTitle];
      [(CKPhotosSearchResultsTitleHeaderCell *)v12 setTitle:v13];

      v14 = [(CKPhotosSearchResultsTitleHeaderCell *)v12 preferredLayoutAttributesFittingAttributes:v7];

      v10 = v14;
    }
  }

  return v10;
}

- (id)headerBoundryItemsForController:(id)a3 withEnvironment:(id)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v5 wantsHeaderSection])
  {
    v7 = [(CKDetailsSearchViewController *)self view];
    [v7 bounds];
    Width = CGRectGetWidth(v21);

    v9 = objc_opt_new();
    [v9 setFrame:{0.0, 0.0, Width, 1.79769313e308}];
    v10 = [(CKDetailsSearchViewController *)self sizeAttributeForController:v5 sizingAttribute:v9];
    [v10 frame];
    Height = CGRectGetHeight(v22);
    v12 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v13 = [MEMORY[0x1E6995558] absoluteDimension:Height];
    v14 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v12 heightDimension:v13];
    if ([v5 headerOverrideClass])
    {
      v15 = [v5 headerOverrideClass];
    }

    else
    {
      v15 = [(CKDetailsSearchViewController *)self _searchResultsHeaderClass];
    }

    v16 = MEMORY[0x1E6995548];
    v17 = [(objc_class *)v15 supplementaryViewType];
    v18 = [v16 boundarySupplementaryItemWithLayoutSize:v14 elementKind:v17 alignment:1];

    [v6 addObject:v18];
  }

  return v6;
}

- (id)globalLayoutConfiguration
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC810] defaultConfiguration];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [(CKSearchViewController *)self searchControllers];
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v28 + 1) + 8 * i) hasMoreResults])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  if ([(CKSearchViewController *)self _needsIndexing])
  {
    v10 = [(CKDetailsSearchViewController *)self searchComplete];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(CKSearchViewController *)self mode];
  if (v11 == 4)
  {
    v12 = 1;
  }

  else
  {
    v12 = v9;
  }

  if (v10 && v12)
  {
    if (v11 == 4)
    {
      v13 = 5;
    }

    else
    {
      v13 = 1;
    }

    v14 = [(CKDetailsSearchViewController *)self view];
    [v14 bounds];
    Width = CGRectGetWidth(v36);

    v16 = objc_opt_new();
    [v16 setFrame:{0.0, 0.0, Width, 1.79769313e308}];
    v17 = [(CKDetailsSearchViewController *)self sizingIndexingFooterCell];
    v18 = [v17 preferredLayoutAttributesFittingAttributes:v16];

    [v18 frame];
    Height = CGRectGetHeight(v37);
    v20 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v21 = [MEMORY[0x1E6995558] absoluteDimension:Height];
    v22 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v20 heightDimension:v21];
    v23 = MEMORY[0x1E6995548];
    v24 = +[CKSearchIndexingFooterCell supplementaryViewType];
    v25 = [v23 boundarySupplementaryItemWithLayoutSize:v22 elementKind:v24 alignment:v13];

    v32 = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    [v3 setBoundarySupplementaryItems:v26];
  }

  [v3 setInterSectionSpacing:16.0];

  return v3;
}

- (void)_configureIndexingCell:(id)a3
{
  v10 = a3;
  [v10 setTitleLabelHidden:1];
  if ([(CKSearchViewController *)self _needsIndexing])
  {
    if ([(CKSearchViewController *)self mode]== 3)
    {
      v4 = CKFrameworkBundle();
      [v4 localizedStringForKey:@"DETAILS_INDEXING_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    else
    {
      v6 = [(CKSearchViewController *)self searchControllers];
      v4 = [v6 firstObject];

      [objc_opt_class() indexingString];
    }
    v5 = ;
  }

  else
  {
    v5 = 0;
  }

  [v10 setSubtitleString:v5];
  if ([(CKSearchViewController *)self mode]!= 4)
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 theme];
    v9 = [v8 spotlightSearchBackgroundColor];
    [v10 setBackgroundColor:v9];
  }
}

- (CKDetailsSearchResultsTitleHeaderCell)titleSizingCell
{
  titleSizingCell = self->_titleSizingCell;
  if (!titleSizingCell)
  {
    v4 = [CKDetailsSearchResultsTitleHeaderCell alloc];
    v5 = [(CKDetailsSearchResultsTitleHeaderCell *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_titleSizingCell;
    self->_titleSizingCell = v5;

    titleSizingCell = self->_titleSizingCell;
  }

  return titleSizingCell;
}

- (CKDetailsSearchResultsFooterCell)footerSizingCell
{
  footerSizingCell = self->_footerSizingCell;
  if (!footerSizingCell)
  {
    v4 = [CKDetailsSearchResultsFooterCell alloc];
    v5 = [(CKDetailsSearchResultsFooterCell *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_footerSizingCell;
    self->_footerSizingCell = v5;

    [(CKDetailsSearchResultsFooterCell *)self->_footerSizingCell setTitle:@"Test"];
    footerSizingCell = self->_footerSizingCell;
  }

  return footerSizingCell;
}

- (CKSearchIndexingFooterCell)sizingIndexingFooterCell
{
  sizingIndexingFooterCell = self->_sizingIndexingFooterCell;
  if (!sizingIndexingFooterCell)
  {
    v4 = [CKSearchIndexingFooterCell alloc];
    v5 = [(CKSearchIndexingFooterCell *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_sizingIndexingFooterCell;
    self->_sizingIndexingFooterCell = v5;

    [(CKDetailsSearchViewController *)self _configureIndexingCell:self->_sizingIndexingFooterCell];
    sizingIndexingFooterCell = self->_sizingIndexingFooterCell;
  }

  return sizingIndexingFooterCell;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v47 = *MEMORY[0x1E69E9840];
  if ([(CKDetailsSearchViewController *)self searchComplete])
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v6 = [(CKSearchViewController *)self searchControllers];
    v7 = [v6 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v42;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v42 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v41 + 1) + 8 * i) hasMoreResults])
          {

            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = [(CKDetailsSearchViewController *)self globalLayoutConfiguration];
    v12 = v11;
    v13 = 0.0;
    if (v11)
    {
      v14 = [v11 boundarySupplementaryItems];
      v15 = [v14 count];

      if (v15)
      {
        v16 = [(CKDetailsSearchViewController *)self view];
        [v16 bounds];
        v17 = CGRectGetWidth(v49);

        v18 = objc_opt_new();
        [v18 setFrame:{0.0, 0.0, v17, 1.79769313e308}];
        v19 = [(CKDetailsSearchViewController *)self sizingIndexingFooterCell];
        v20 = [v19 preferredLayoutAttributesFittingAttributes:v18];

        [v20 frame];
        v13 = CGRectGetHeight(v50);
      }
    }
  }

  else
  {
LABEL_14:
    v21 = [(CKSearchViewController *)self collectionView];
    [v21 setNeedsLayout];

    v22 = [(CKSearchViewController *)self collectionView];
    [v22 layoutIfNeeded];

    v23 = [(CKSearchViewController *)self collectionView];
    [v23 contentSize];
    v13 = v24;

    if (v13 == 0.0)
    {
      v25 = [(CKSearchViewController *)self collectionView];
      [v25 sizeThatFits:{width, height}];
      v13 = v26;
    }

    v27 = [(CKSearchViewController *)self collectionView];
    v28 = +[CKDetailsSearchResultsFooterCell supplementaryViewType];
    v12 = [v27 visibleSupplementaryViewsOfKind:v28];

    if ([v12 count])
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v12 = v12;
      v29 = [v12 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v38;
        v32 = 0.0;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v38 != v31)
            {
              objc_enumerationMutation(v12);
            }

            [*(*(&v37 + 1) + 8 * j) frame];
            MaxY = CGRectGetMaxY(v51);
            if (MaxY >= v32)
            {
              v32 = MaxY;
            }
          }

          v30 = [v12 countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v30);
      }

      else
      {
        v32 = 0.0;
      }

      if (v32 < v13)
      {
        v13 = v32;
      }
    }
  }

  v35 = width;
  v36 = v13;
  result.height = v36;
  result.width = v35;
  return result;
}

- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6
{
  v10 = a4;
  v11.receiver = self;
  v11.super_class = CKDetailsSearchViewController;
  [(CKSearchViewController *)&v11 collectionView:a3 willDisplaySupplementaryView:v10 forElementKind:a5 atIndexPath:a6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setDelegate:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 setDetailsViewDelegate:self];
    }
  }
}

- (void)searchResultsTitleCellShowAllButtonTapped:(id)a3
{
  v4 = a3;
  if (CKIsRunningInMacCatalyst())
  {
    [(CKDetailsSearchViewController *)self _searchResultHeaderButtonTapped:v4];
  }
}

- (void)searchDetailsFooterCellShowAllTapped:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v3 = [v14 sectionIdentifier];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(CKSearchViewController *)self searchControllers];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v5)
  {
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v21 = v8;
            _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Controller check %@", buf, 0xCu);
          }
        }

        v10 = [objc_opt_class() sectionIdentifier];
        v11 = [v10 isEqualToString:v3];

        if (v11)
        {
          v12 = v8;
          goto LABEL_15;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_15:

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v21 = v3;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Section id %@ controller %@", buf, 0x16u);
    }
  }

  if (v12)
  {
    [(CKDetailsSearchViewController *)self setupDetailsSearchController:v12];
  }
}

- (void)searchDetailsShowAllButtonTapped:(id)a3
{
  v4 = [a3 sectionIndex];
  v5 = [(CKSearchViewController *)self searchControllers];
  v6 = [v5 count];

  if (v4 < v6)
  {
    v7 = [(CKSearchViewController *)self searchControllers];
    v8 = [v7 objectAtIndex:v4];

    [(CKDetailsSearchViewController *)self setupDetailsSearchController:v8];
  }
}

- (void)setupDetailsSearchController:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11[0] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v6 = [[CKDetailsSearchViewController alloc] initWithSearchControllerClasses:v5];
  v7 = [(CKDetailsSearchViewController *)self conversation];
  [(CKDetailsSearchViewController *)v6 setConversation:v7];

  [(CKSearchViewController *)v6 setMode:4];
  v8 = [(CKSearchViewController *)self delegate];
  [(CKSearchViewController *)v6 setDelegate:v8];

  v9 = [(CKDetailsSearchViewController *)self detailsDelegate];
  [(CKDetailsSearchViewController *)v6 setDetailsDelegate:v9];

  [(CKDetailsSearchViewController *)v6 setAssociatedDetailsSubsectionSearchController:v4];
  v10 = [(CKDetailsSearchViewController *)self detailsDelegate];
  [v10 detailsSearchController:self requestsPushOfSearchController:v6];

  [(CKDetailsSearchViewController *)v6 searchWithText:&stru_1F04268F8];
}

- (void)deleteTransferGUID:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CKDetailsSearchViewController;
  [(CKSearchViewController *)&v12 deleteTransferGUID:v4];
  v5 = [v4 length] == 0;
  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v15 = v4;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Unable to find transfer guid to delete: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v15 = v4;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Found transfer guid to delete: %@", buf, 0xCu);
      }
    }

    v8 = [(CKDetailsSearchViewController *)self conversation];
    v9 = [v8 chat];
    v13 = v4;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    [v9 deleteTransfers:v10];
  }
}

- (void)deleteChatItemWithTransferGUID:(id)a3 fromMessageItem:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![v6 length])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_12;
    }

    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "CKDetailsSearchViewController: Transfer guid is nil. Transfer deletion will not continue.", buf, 2u);
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!v7)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_12;
    }

    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "CKDetailsSearchViewController: messageItem not provided. Transfer deletion will not continue for guid: %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v8 = [(CKDetailsSearchViewController *)self conversation];
  v9 = [v8 chat];
  v12 = v6;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [v9 deleteChatItemsWithTransferGUIDs:v10 fromMessageItem:v7];

LABEL_12:
}

- (void)deleteMessageItem:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CKDetailsSearchViewController;
  [(CKSearchViewController *)&v11 deleteMessageItem:v4];
  v5 = IMOSLoggingEnabled();
  if (v4)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v14 = v4;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Found message to delete: %@", buf, 0xCu);
      }
    }

    v7 = [(CKDetailsSearchViewController *)self conversation];
    v8 = [v7 chat];
    v12 = v4;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    [v8 deleteIMMessageItems:v9];
  }

  else if (v5)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Unable to find message to delete.", buf, 2u);
    }
  }
}

- (id)searchController:(id)a3 conversationsForExistingChatsWithGUIDs:(id)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = [(CKDetailsSearchViewController *)self conversation:a3];
  v5 = v4;
  if (v4)
  {
    v8[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (void)searchViewController:(id)a3 requestsPushOfSearchController:(id)a4
{
  v5 = a4;
  v6 = [(CKDetailsSearchViewController *)self navigationController];
  [v6 pushViewController:v5 animated:1];
}

- (void)searchController:(id)a3 requestsItemDeletionAtIndexPath:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v8 = a4;
    v5 = MEMORY[0x1E695DEC8];
    v6 = a4;
    v7 = [v5 arrayWithObjects:&v8 count:1];

    [(CKDetailsSearchViewController *)self _deleteAttachmentsAtIndexPaths:v7, v8, v9];
  }
}

- (id)searchControllerChatGUIDsForDetailsSearch:(id)a3
{
  v4 = [(CKDetailsSearchViewController *)self chatGUIDs];

  if (!v4)
  {
    v5 = [(CKDetailsSearchViewController *)self conversation];
    v6 = [v5 chat];

    v7 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v8 = [v7 allGUIDsForChat:v6];

    [(CKDetailsSearchViewController *)self setChatGUIDs:v8];
  }

  return [(CKDetailsSearchViewController *)self chatGUIDs];
}

- (void)setEditing:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKSearchViewController *)self collectionView];
  v6 = [v5 _ck_isEditing];

  if (v6 == v3)
  {
    return;
  }

  v7 = [(CKSearchViewController *)self collectionView];
  [v7 _ck_setEditing:v3];

  v8 = [(CKSearchViewController *)self collectionView];
  [v8 reloadData];

  if ([(CKSearchViewController *)self mode]!= 4)
  {
    v11 = [(CKDetailsSearchViewController *)self parentViewController];
    v29 = [v11 navigationItem];

    if (!v3)
    {
      goto LABEL_4;
    }

LABEL_7:
    if (!self->_saveButton)
    {
      v12 = objc_alloc(MEMORY[0x1E69DC708]);
      v13 = CKFrameworkBundle();
      v14 = [v13 localizedStringForKey:@"SEARCH_SAVE" value:&stru_1F04268F8 table:@"ChatKit"];
      v15 = [v12 initWithTitle:v14 style:0 target:self action:sel__saveSelectedAttachments_];
      saveButton = self->_saveButton;
      self->_saveButton = v15;
    }

    if (!self->_deleteButton)
    {
      v17 = objc_alloc(MEMORY[0x1E69DC708]);
      v18 = CKFrameworkBundle();
      v19 = [v18 localizedStringForKey:@"DELETE" value:&stru_1F04268F8 table:@"ChatKit"];
      v20 = [v17 initWithTitle:v19 style:0 target:self action:sel__deleteSelectedAttachments_];
      deleteButton = self->_deleteButton;
      self->_deleteButton = v20;
    }

    v22 = [(CKDetailsSearchViewController *)self navigationController];
    [v22 setToolbarHidden:0 animated:1];

    v23 = [(CKDetailsSearchViewController *)self cancelButton];

    if (!v23)
    {
      v24 = objc_alloc(MEMORY[0x1E69DC708]);
      v25 = CKFrameworkBundle();
      v26 = [v25 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
      v27 = [v24 initWithTitle:v26 style:0 target:self action:sel__cancelEditing_];

      [(CKDetailsSearchViewController *)self setCancelButton:v27];
    }

    v10 = [(CKDetailsSearchViewController *)self cancelButton];
    goto LABEL_14;
  }

  v29 = [(CKDetailsSearchViewController *)self navigationItem];
  if (v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v9 = [(CKDetailsSearchViewController *)self navigationController];
  [v9 setToolbarHidden:1 animated:1];

  v10 = [(CKDetailsSearchViewController *)self selectButton];
LABEL_14:
  v28 = v10;
  [v29 setRightBarButtonItem:v10 animated:1];

  [(CKDetailsSearchViewController *)self _updateToolbar];
}

- (id)_selectedIndexPaths
{
  v2 = [(CKSearchViewController *)self collectionView];
  v3 = [v2 indexPathsForSelectedItems];

  return v3;
}

- (void)_updateToolbar
{
  v20[3] = *MEMORY[0x1E69E9840];
  v3 = [(CKDetailsSearchViewController *)self _selectedIndexPaths];
  v4 = [v3 count];
  v5 = [(CKDetailsSearchViewController *)self saveButton];
  v6 = v4 != 0;
  [v5 setEnabled:v6];

  v7 = [(CKDetailsSearchViewController *)self deleteButton];
  [v7 setEnabled:v6];

  v8 = [(CKDetailsSearchViewController *)self flexibleItem];

  if (!v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    [(CKDetailsSearchViewController *)self setFlexibleItem:v9];
  }

  v10 = [(CKSearchViewController *)self searchControllers];
  v11 = [v10 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v13 = [(CKDetailsSearchViewController *)self navigationController];
  v14 = [v13 toolbar];
  if (isKindOfClass)
  {
    v15 = [(CKDetailsSearchViewController *)self saveButton];
    v20[0] = v15;
    v16 = [(CKDetailsSearchViewController *)self flexibleItem];
    v20[1] = v16;
    v17 = [(CKDetailsSearchViewController *)self deleteButton];
    v20[2] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
    [v14 setItems:v18];
  }

  else
  {
    v15 = [(CKDetailsSearchViewController *)self flexibleItem];
    v16 = [(CKDetailsSearchViewController *)self deleteButton];
    v19[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    [v14 setItems:v17];
  }
}

- (void)_saveSelectedAttachments:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(CKDetailsSearchViewController *)self _selectedIndexPaths:a3];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(CKDetailsSearchViewController *)self _searchControllerForIndexPath:v9];
        if (v10)
        {
          v11 = [v9 row];
          v12 = [v10 results];
          v13 = [v12 count];

          if (v11 < v13)
          {
            v14 = [v10 results];
            v15 = [v14 objectAtIndex:{objc_msgSend(v9, "row")}];

            [v10 saveAttachmentForResult:v15];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  [(CKDetailsSearchViewController *)self setEditing:0];
}

- (void)_deleteSelectedAttachments:(id)a3
{
  v4 = [(CKDetailsSearchViewController *)self _selectedIndexPaths];
  [(CKDetailsSearchViewController *)self _deleteAttachmentsAtIndexPaths:v4];
}

- (void)_deleteAttachmentsAtIndexPaths:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    goto LABEL_34;
  }

  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];

  v44 = [v4 firstObject];
  v7 = [(CKDetailsSearchViewController *)self _searchControllerForIndexPath:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 count] >= 2)
    {
      isKindOfClass = 1;
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ([v4 count] <= 1)
  {
    if ((isKindOfClass & 1) == 0)
    {
      v31 = CKFrameworkBundle();
      v19 = [v31 localizedStringForKey:@"DELETE_ATTACHMENT" value:&stru_1F04268F8 table:@"ChatKit"];

      if (CKIsRunningInMacCatalyst())
      {
        v22 = CKFrameworkBundle();
        v10 = v22;
        v23 = @"DELETE_SINGLE_ATTACHMENT";
        goto LABEL_24;
      }

LABEL_35:
      v30 = 0;
      goto LABEL_26;
    }

LABEL_13:
    v21 = CKFrameworkBundle();
    v19 = [v21 localizedStringForKey:@"DELETE_LINK" value:&stru_1F04268F8 table:@"ChatKit"];

    if (CKIsRunningInMacCatalyst())
    {
      v22 = CKFrameworkBundle();
      v10 = v22;
      v23 = @"DELETE_SINGLE_LINK";
LABEL_24:
      v30 = [v22 localizedStringForKey:v23 value:&stru_1F04268F8 table:@"ChatKit"];
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_6:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
  v10 = CKLocalizedStringForNumber(v9);

  v11 = MEMORY[0x1E696AEC0];
  v12 = CKFrameworkBundle();
  v13 = v12;
  if ((isKindOfClass & 1) == 0)
  {
    v24 = [v12 localizedStringForKey:@"DELETE_ATTACHMENTS" value:&stru_1F04268F8 table:@"ChatKit"];
    v25 = [v11 stringWithFormat:v24, v10];

    v26 = [MEMORY[0x1E69DC668] sharedApplication];
    v27 = [v26 userInterfaceLayoutDirection];

    if (v27 == 1)
    {
      v28 = @"\u200F";
    }

    else
    {
      v28 = @"\u200E";
    }

    v19 = [(__CFString *)v28 stringByAppendingString:v25];

    if (CKIsRunningInMacCatalyst())
    {
      v20 = @"DELETE_MULTIPLE_ATTACHMENTS";
      goto LABEL_20;
    }

LABEL_21:
    v30 = 0;
    goto LABEL_25;
  }

  v14 = [v12 localizedStringForKey:@"DELETE_LINKS" value:&stru_1F04268F8 table:@"ChatKit"];
  v15 = [v11 stringWithFormat:v14, v10];

  v16 = [MEMORY[0x1E69DC668] sharedApplication];
  v17 = [v16 userInterfaceLayoutDirection];

  if (v17 == 1)
  {
    v18 = @"\u200F";
  }

  else
  {
    v18 = @"\u200E";
  }

  v19 = [(__CFString *)v18 stringByAppendingString:v15];

  if (!CKIsRunningInMacCatalyst())
  {
    goto LABEL_21;
  }

  v20 = @"DELETE_MULTIPLE_LINKS";
LABEL_20:
  v29 = CKFrameworkBundle();
  v30 = [v29 localizedStringForKey:v20 value:&stru_1F04268F8 table:@"ChatKit"];

LABEL_25:
LABEL_26:
  v43 = v7;
  if (CKIsRunningInMacCatalyst())
  {
    v32 = CKFrameworkBundle();
    v33 = [v32 localizedStringForKey:@"DELETE_WARNING" value:&stru_1F04268F8 table:@"ChatKit"];

    v34 = 1;
  }

  else
  {
    v34 = 0;
    v33 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__CKDetailsSearchViewController__deleteAttachmentsAtIndexPaths___block_invoke;
  aBlock[3] = &unk_1E72EB8D0;
  v50 = v4;
  v51 = self;
  v35 = self;
  v36 = _Block_copy(aBlock);
  v37 = [CKAlertController alertControllerWithTitle:v30 message:v33 preferredStyle:v34];
  if (!CKIsRunningInMacCatalyst())
  {
    v38 = v6;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __64__CKDetailsSearchViewController__deleteAttachmentsAtIndexPaths___block_invoke_2;
    v47[3] = &unk_1E72EC218;
    v48 = v36;
    v39 = [CKAlertAction actionWithTitle:v19 style:2 handler:v47];
    [v37 addAction:v39];

    v6 = v38;
  }

  v40 = v6;
  v41 = [CKAlertAction actionWithTitle:v6 style:1 handler:&__block_literal_global_252];
  [v37 addAction:v41];

  if (CKIsRunningInMacCatalyst())
  {
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __64__CKDetailsSearchViewController__deleteAttachmentsAtIndexPaths___block_invoke_4;
    v45[3] = &unk_1E72EC218;
    v46 = v36;
    v42 = [CKAlertAction actionWithTitle:v19 style:2 handler:v45];
    [v37 addAction:v42];
  }

  [(CKDetailsSearchViewController *)v35 presentViewController:v37 animated:1 completion:0];

LABEL_34:
}

uint64_t __64__CKDetailsSearchViewController__deleteAttachmentsAtIndexPaths___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [*(a1 + 40) _searchControllerForIndexPath:{v7, v16}];
        if (v8)
        {
          v9 = [v7 row];
          v10 = [v8 results];
          v11 = [v10 count];

          if (v9 < v11)
          {
            v12 = [v8 results];
            v13 = [v12 objectAtIndex:{objc_msgSend(v7, "row")}];

            [v8 deleteAttachmentForResult:v13];
            v14 = [*(a1 + 40) associatedDetailsSubsectionSearchController];
            [v14 deleteAttachmentForResult:v13];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) setEditing:0];
}

- (id)_searchControllerForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKSearchViewController *)self searchControllers];
  v6 = [v4 section];

  v7 = [v5 objectAtIndexedSubscript:v6];

  return v7;
}

- (CKQLPreviewController)previewController
{
  previewController = self->_previewController;
  if (!previewController)
  {
    if (!CKIsRunningInMacCatalyst())
    {
      v4 = objc_alloc_init(CKQLPreviewController);
      v5 = self->_previewController;
      self->_previewController = v4;
    }

    [(QLPreviewController *)self->_previewController setDelegate:self];
    previewController = self->_previewController;
  }

  return previewController;
}

- (CKDetailsSearchControllerDelegate)detailsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);

  return WeakRetained;
}

@end