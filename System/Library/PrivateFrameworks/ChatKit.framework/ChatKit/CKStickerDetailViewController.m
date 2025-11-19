@interface CKStickerDetailViewController
+ (BOOL)isGenmojiBundleIDFromFileTransfer:(id)a3;
+ (id)localizedAppNameForStickerDetailsFromFileTransfer:(id)a3;
+ (id)stickerBundleIDFromFileTransfer:(id)a3;
- (BOOL)canSaveStickerForItem:(id)a3;
- (BOOL)canViewStickerPackForItem:(id)a3;
- (BOOL)shouldHideViewButtonInStickerDetailsForIdentifier:(id)a3;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (CKStickerDetailViewController)initWithEmojiImageMediaObjects:(id)a3;
- (CKStickerDetailViewController)initWithStickerChatItems:(id)a3;
- (CKStickerDetailViewControllerDelegate)delegate;
- (id)_adamIDForStickersDetailItem:(id)a3;
- (id)_deleteSwipeActionForIndexPath:(id)a3;
- (id)_indexPathForTransferGUID:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (void)_adaptiveImageGlyphWasGeneratedNotification:(id)a3;
- (void)_previewDidChangeNotification:(id)a3;
- (void)_reloadCellWithTransferGUID:(id)a3;
- (void)deleteStickerSelectedAtIndexPath:(id)a3;
- (void)loadView;
- (void)saveStickerButtonSelectedAtIndexPath:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLayoutSubviews;
- (void)viewStickerAppButtonSelectedAtIndexPath:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CKStickerDetailViewController

- (CKStickerDetailViewController)initWithEmojiImageMediaObjects:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKStickerDetailViewController;
  v5 = [(CKStickerDetailViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
    stickerDetailsItems = v5->_stickerDetailsItems;
    v5->_stickerDetailsItems = v6;

    v5->_stickerDetailsItemType = 1;
  }

  return v5;
}

- (CKStickerDetailViewController)initWithStickerChatItems:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKStickerDetailViewController;
  v5 = [(CKStickerDetailViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
    stickerDetailsItems = v5->_stickerDetailsItems;
    v5->_stickerDetailsItems = v6;

    v5->_stickerDetailsItemType = 0;
  }

  return v5;
}

- (void)loadView
{
  v19.receiver = self;
  v19.super_class = CKStickerDetailViewController;
  [(CKStickerDetailViewController *)&v19 loadView];
  v3 = [(CKStickerDetailViewController *)self view];
  [v3 setLayoutMarginsFollowReadableWidth:1];

  v4 = [(CKStickerDetailViewController *)self view];
  [v4 setBackgroundColor:0];

  v5 = objc_alloc(MEMORY[0x1E69DD020]);
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [v5 initWithFrame:0 style:{*MEMORY[0x1E695F058], v7, v8, v9}];
  [v10 setDataSource:self];
  [v10 setDelegate:self];
  [v10 setAutoresizingMask:18];
  [v10 setRowHeight:*MEMORY[0x1E69DE3D0]];
  [(CKStickerDetailViewController *)self setTableView:v10];
  v11 = [(CKStickerDetailViewController *)self view];
  [v11 addSubview:v10];

  if (CKIsRunningInMacCatalyst())
  {
    v12 = [MEMORY[0x1E69DC888] clearColor];
    [v10 setBackgroundColor:v12];
  }

  v13 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
  [v10 setTableFooterView:v13];
  v14 = objc_opt_class();
  v15 = +[CKStickerDetailCell identifier];
  [v10 registerClass:v14 forCellReuseIdentifier:v15];

  [v10 __ck_scrollToTop:0];
  v16 = [MEMORY[0x1E696AD88] defaultCenter];
  [v16 addObserver:self selector:sel__previewDidChangeNotification_ name:@"CKPreviewDidChangeNotification" object:0];
  [v16 addObserver:self selector:sel__adaptiveImageGlyphWasGeneratedNotification_ name:@"CKAdaptiveImageGlyphGeneratedNotification" object:0];
  if (!CKIsRunningInMacCatalyst())
  {
    v17 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_stickerDetailViewControllerCloseButtonPressed_];
    v18 = [(CKStickerDetailViewController *)self navigationItem];
    [v18 setRightBarButtonItem:v17];
  }
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = CKStickerDetailViewController;
  [(CKStickerDetailViewController *)&v10 viewDidLayoutSubviews];
  v3 = [(CKStickerDetailViewController *)self tableView];
  v4 = [(CKStickerDetailViewController *)self view];
  [v4 bounds];
  [v3 setFrame:?];

  stickerDetailsItemType = self->_stickerDetailsItemType;
  if (stickerDetailsItemType == 1)
  {
    v6 = @"EMOJI_DETAILS_NAVIGATION_BAR_TITLE";
  }

  else
  {
    if (stickerDetailsItemType)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v6 = @"STICKER_TITLE";
  }

  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:v6 value:&stru_1F04268F8 table:@"ChatKit"];

LABEL_7:
  v9 = [(CKStickerDetailViewController *)self navigationItem];
  [v9 setTitle:v8];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CKStickerDetailViewController;
  [(CKStickerDetailViewController *)&v5 viewWillAppear:a3];
  v4 = [(CKStickerDetailViewController *)self tableView];
  [v4 __ck_scrollToTop:0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CKStickerDetailCell identifier];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v6];

  [v9 setDelegate:self];
  v10 = [v6 item];

  v11 = [(NSArray *)self->_stickerDetailsItems objectAtIndex:v10];
  v12 = [v11 stickerDetailsPreview];
  [v9 setStickerPreview:v12];
  v13 = [v11 stickerDetailsTitleText];
  [v9 setTitleText:v13];
  v14 = [v11 stickerDetailsSubtitleText];
  [v9 setSubtitleText:v14];

  if ([(CKStickerDetailViewController *)self canSaveStickerForItem:v11])
  {
    v15 = 2;
  }

  else
  {
    v15 = [(CKStickerDetailViewController *)self canViewStickerPackForItem:v11];
  }

  [v9 setAdditionalActionType:v15];
  v16 = [v11 stickerDetailsDateAdded];
  [v9 setTimestampDate:v16];

  return v9;
}

- (BOOL)shouldHideViewButtonInStickerDetailsForIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E69A68F8]])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:*MEMORY[0x1E69A6980]];
  }

  return v4;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = -[NSArray objectAtIndex:](self->_stickerDetailsItems, "objectAtIndex:", [a4 item]);
  v5 = [v4 canDeleteFromStickerDetails];

  return v5;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    [(CKStickerDetailViewController *)self deleteStickerSelectedAtIndexPath:a5];
  }
}

- (void)deleteStickerSelectedAtIndexPath:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = -[NSArray objectAtIndex:](self->_stickerDetailsItems, "objectAtIndex:", [v4 item]);
  v6 = [v5 stickerDetailsTransferGUID];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained stickerDetailViewController:self deletedStickerWithTransferGUID:v6];

  v8 = [(CKStickerDetailViewController *)self stickerDetailsItems];
  v9 = [v8 mutableCopy];

  [v9 removeObject:v5];
  v10 = [v9 copy];
  [(CKStickerDetailViewController *)self setStickerDetailsItems:v10];

  v11 = [(CKStickerDetailViewController *)self tableView];
  v15[0] = v4;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v11 deleteRowsAtIndexPaths:v12 withRowAnimation:100];

  if (![(NSArray *)self->_stickerDetailsItems count])
  {
    v13 = dispatch_time(0, 400000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__CKStickerDetailViewController_deleteStickerSelectedAtIndexPath___block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_after(v13, MEMORY[0x1E69E96A0], block);
  }
}

- (void)saveStickerButtonSelectedAtIndexPath:(id)a3
{
  v8 = -[NSArray objectAtIndex:](self->_stickerDetailsItems, "objectAtIndex:", [a3 item]);
  [(CKStickerDetailViewController *)self dismissModalViewControllerAnimated:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v8;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }

    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 saveStickerFromDetailViewController:self chatItemContainingSticker:v4];
  }

  else
  {
    v4 = [v8 saveableSticker];
    if (!v4)
    {
      goto LABEL_7;
    }

    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 stickerDetailViewController:self didRequestSaveSticker:v4];
  }

LABEL_7:
}

- (void)viewStickerAppButtonSelectedAtIndexPath:(id)a3
{
  v6 = -[NSArray objectAtIndex:](self->_stickerDetailsItems, "objectAtIndex:", [a3 item]);
  v4 = [(CKStickerDetailViewController *)self _adamIDForStickersDetailItem:?];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained stickerDetailViewController:self selectedStickerPackWithAdamID:v4];
  }
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = -[NSArray objectAtIndex:](self->_stickerDetailsItems, "objectAtIndex:", [v5 item]);
  if ([v6 canDeleteFromStickerDetails])
  {
    v7 = [(CKStickerDetailViewController *)self _deleteSwipeActionForIndexPath:v5];
    v8 = MEMORY[0x1E69DCFC0];
    v12[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v10 = [v8 configurationWithActions:v9];

    [v10 setPerformsFirstActionWithFullSwipe:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_deleteSwipeActionForIndexPath:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69DC8E8];
  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"DELETE" value:&stru_1F04268F8 table:@"ChatKit"];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __64__CKStickerDetailViewController__deleteSwipeActionForIndexPath___block_invoke;
  v15 = &unk_1E72F3A70;
  v16 = self;
  v17 = v4;
  v8 = v4;
  v9 = [v5 contextualActionWithStyle:1 title:v7 handler:&v12];

  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"trash.fill", v12, v13, v14, v15, v16}];
  [v9 setImage:v10];

  return v9;
}

- (id)_adamIDForStickersDetailItem:(id)a3
{
  v3 = [a3 stickerDetailsTransferGUID];
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E69A5B80] sharedInstance];
    v5 = [v4 transferForGUID:v3];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 attributionInfo];
      v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69A6FA0]];
      v9 = v8;
      if (v8 && [v8 integerValue])
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)canViewStickerPackForItem:(id)a3
{
  v3 = [(CKStickerDetailViewController *)self _adamIDForStickersDetailItem:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)canSaveStickerForItem:(id)a3
{
  v3 = [a3 saveableSticker];
  v4 = v3 != 0;

  return v4;
}

- (id)_indexPathForTransferGUID:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  stickerDetailsItems = self->_stickerDetailsItems;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __59__CKStickerDetailViewController__indexPathForTransferGUID___block_invoke;
  v13 = &unk_1E72F3A98;
  v6 = v4;
  v14 = v6;
  v15 = &v16;
  [(NSArray *)stickerDetailsItems enumerateObjectsUsingBlock:&v10];
  v7 = v17[3];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E696AC88] indexPathForRow:v7 inSection:{0, v10, v11, v12, v13}];
  }

  _Block_object_dispose(&v16, 8);

  return v8;
}

void __59__CKStickerDetailViewController__indexPathForTransferGUID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 stickerDetailsTransferGUID];
  if ([*(a1 + 32) isEqualToString:?])
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (void)_reloadCellWithTransferGUID:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = [(CKStickerDetailViewController *)self _indexPathForTransferGUID:a3];
  v5 = v4;
  if (v4)
  {
    v7[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [(UITableView *)self->_tableView reloadRowsAtIndexPaths:v6 withRowAnimation:5];
  }
}

- (void)_adaptiveImageGlyphWasGeneratedNotification:(id)a3
{
  v5 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v5 transferGUID];
    [(CKStickerDetailViewController *)self _reloadCellWithTransferGUID:v4];
  }
}

- (void)_previewDidChangeNotification:(id)a3
{
  v5 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v5 transferGUID];
    [(CKStickerDetailViewController *)self _reloadCellWithTransferGUID:v4];
  }
}

+ (id)stickerBundleIDFromFileTransfer:(id)a3
{
  v3 = a3;
  v4 = [v3 attributionInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A6FB0]];
  v6 = [v5 componentsSeparatedByString:@":"];
  v7 = [v6 lastObject];

  if (![v7 length])
  {
    v8 = [v3 stickerUserInfo];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69A7CB0]];
    v10 = [v9 componentsSeparatedByString:@":"];
    v11 = [v10 lastObject];

    v7 = v11;
  }

  return v7;
}

+ (BOOL)isGenmojiBundleIDFromFileTransfer:(id)a3
{
  v3 = [a1 stickerBundleIDFromFileTransfer:a3];
  v4 = [v3 isEqualToString:*MEMORY[0x1E69A69D8]];

  return v4;
}

+ (id)localizedAppNameForStickerDetailsFromFileTransfer:(id)a3
{
  v4 = a3;
  v5 = [v4 attributionInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69A6FA8]];
  v7 = [a1 stickerBundleIDFromFileTransfer:v4];

  if ([v7 length])
  {
    v8 = [MEMORY[0x1E69635E0] bundleProxyForIdentifier:v7];
    v9 = [v8 localizedName];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 isEqualToString:*MEMORY[0x1E69A6A20]];
  v11 = [v7 isEqualToString:*MEMORY[0x1E69A69D8]];
  v12 = [v7 isEqualToString:*MEMORY[0x1E69A69B0]];
  if (!v10)
  {
    if (v11)
    {
      v14 = CKFrameworkBundle();
      v15 = v14;
      v16 = @"GENMOJI";
    }

    else
    {
      if (!v12)
      {
        if (![v9 length])
        {
          if ([v6 length])
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }

LABEL_15:
        v13 = v9;
        goto LABEL_16;
      }

      v14 = CKFrameworkBundle();
      v15 = v14;
      v16 = @"EMOJI";
    }

LABEL_13:
    v17 = [v14 localizedStringForKey:v16 value:&stru_1F04268F8 table:@"ChatKit"];

    goto LABEL_17;
  }

  if (![v6 length])
  {
    if (![v9 length])
    {
LABEL_12:
      v14 = CKFrameworkBundle();
      v15 = v14;
      v16 = @"GENERIC_STICKERS_APP_SHORT_TITLE";
      goto LABEL_13;
    }

    goto LABEL_15;
  }

LABEL_6:
  v13 = v6;
LABEL_16:
  v17 = v13;
LABEL_17:

  return v17;
}

- (CKStickerDetailViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end