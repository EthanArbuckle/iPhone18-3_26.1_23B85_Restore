@interface CKSharedContentsViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)isDisplayingAttachmentContent;
- (BOOL)isJ99LandscapeModeFullScreen;
- (CGRect)previewController:(id)a3 frameForPreviewItem:(id)a4 inSourceView:(id *)a5;
- (CGSize)contentSizeThatFits:(CGSize)a3;
- (CKQLPreviewController)qlPreviewController;
- (CKSharedAssetsControllerDelegate)delegate;
- (CKSharedContentsViewController)initWithAttachmentItems:(id)a3;
- (id)_collectionView:(id)a3 dragItemsForItemAtIndexPath:(id)a4;
- (id)avatarView:(id)a3 orderedPropertiesForProperties:(id)a4 category:(id)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)presentingViewControllerForAvatarView:(id)a3;
- (id)previewController:(id)a3 transitionViewForPreviewItem:(id)a4 uncroppedSourceFrame:(CGRect *)a5 realSize:(CGSize *)a6;
- (id)previewingContext:(id)a3 viewControllerForLocation:(CGPoint)a4;
- (id)selectedAttachmentIndexes;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfItemsInRow;
- (void)dealloc;
- (void)deleteContents:(id)a3;
- (void)deleteSelectedContents:(id)a3;
- (void)didDismissPreviewViewController:(id)a3 committing:(BOOL)a4;
- (void)didMoveToParentViewController:(id)a3;
- (void)loadView;
- (void)performAction:(SEL)a3 forSharedContentsCollectionViewCell:(id)a4;
- (void)previewingContext:(id)a3 commitViewController:(id)a4;
- (void)setAttachmentItems:(id)a3;
- (void)setSelectingAttachments:(BOOL)a3;
- (void)setupToolbar;
- (void)sharedContentsCollectionViewCellDidTap:(id)a3;
- (void)teardownToolbar;
- (void)updateToolbar;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willPresentPreviewViewController:(id)a3 forLocation:(CGPoint)a4 inSourceView:(id)a5;
@end

@implementation CKSharedContentsViewController

- (CKSharedContentsViewController)initWithAttachmentItems:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CKSharedContentsViewController;
  v5 = [(CKSharedContentsViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CKSharedContentsViewController *)v5 setAttachmentItems:v4];
  }

  return v6;
}

- (void)didMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = CKSharedContentsViewController;
  [(CKSharedContentsViewController *)&v6 didMoveToParentViewController:a3];
  v4 = [(CKSharedContentsViewController *)self collectionviewLayout];
  [v4 prepareLayout];

  v5 = [(CKSharedContentsViewController *)self delegate];
  [v5 sharedAssetsControllerContentSizeDidChange:self];
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 _supportsForceTouch];

  if (v4)
  {
    [(CKSharedContentsViewController *)self unregisterPreviewSourceView:self->_collectionView];
  }

  [(QLPreviewController *)self->_qlPreviewController setDelegate:0];
  [(UICollectionView *)self->_collectionView setDelegate:0];
  [(UICollectionView *)self->_collectionView setDataSource:0];
  v5.receiver = self;
  v5.super_class = CKSharedContentsViewController;
  [(CKSharedContentsViewController *)&v5 dealloc];
}

- (void)loadView
{
  v20 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [(CKSharedContentsViewController *)self setCollectionviewLayout:v20];
  v3 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 bounds];
  v5 = [v3 initWithFrame:v20 collectionViewLayout:?];

  [v5 setAutoresizingMask:18];
  [v5 setDelegate:self];
  [v5 setDataSource:self];
  [v5 setDragSourceDelegate:self];
  v6 = [MEMORY[0x1E69DC888] clearColor];
  [v5 setBackgroundColor:v6];

  v7 = objc_opt_class();
  v8 = +[CKSharedContentsCollectionViewCell reuseIdentifier];
  [v5 registerClass:v7 forCellWithReuseIdentifier:v8];

  v9 = objc_opt_class();
  v10 = +[CKSharedContactsCollectionViewCell reuseIdentifier];
  [v5 registerClass:v9 forCellWithReuseIdentifier:v10];

  v11 = objc_opt_class();
  v12 = +[CKSharedOtherTypesCollectionViewCell reuseIdentifier];
  [v5 registerClass:v11 forCellWithReuseIdentifier:v12];

  v13 = objc_opt_class();
  v14 = +[CKSharedAudioCollectionViewCell reuseIdentifier];
  [v5 registerClass:v13 forCellWithReuseIdentifier:v14];

  v15 = objc_opt_class();
  v16 = +[CKSharedLocationCollectionViewCell reuseIdentifier];
  [v5 registerClass:v15 forCellWithReuseIdentifier:v16];

  v17 = objc_opt_class();
  v18 = +[CKSharedQuickLookThumbnailCollectionViewCell reuseIdentifier];
  [v5 registerClass:v17 forCellWithReuseIdentifier:v18];

  [v5 setScrollEnabled:0];
  [v5 setAllowsMultipleSelection:1];
  v19 = [MEMORY[0x1E69DC938] currentDevice];
  LODWORD(v18) = [v19 _supportsForceTouch];

  if (v18)
  {
    [(CKSharedContentsViewController *)self registerPreviewSourceView:v5 previewingDelegate:self];
  }

  [(CKSharedContentsViewController *)self setCollectionView:v5];
  [(CKSharedContentsViewController *)self setView:v5];
}

- (void)viewWillLayoutSubviews
{
  v30.receiver = self;
  v30.super_class = CKSharedContentsViewController;
  [(CKSharedContentsViewController *)&v30 viewWillLayoutSubviews];
  v3 = [(CKSharedContentsViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKSharedContentsViewController *)self collectionviewLayout];
  v13 = [(CKSharedContentsViewController *)self numberOfItemsInRow];
  [(CKSharedContentsViewController *)self paddingLeftRightForCell];
  v15 = v14;
  v31.origin.x = v5;
  v31.origin.y = v7;
  v31.size.width = v9;
  v31.size.height = v11;
  Width = CGRectGetWidth(v31);
  if (CKMainScreenScale_once_3 != -1)
  {
    [CKSharedContentsViewController viewWillLayoutSubviews];
  }

  v17 = *&CKMainScreenScale_sMainScreenScale_3;
  if (*&CKMainScreenScale_sMainScreenScale_3 == 0.0)
  {
    v17 = 1.0;
  }

  v18 = fmin(round((Width - (2 * v13) * v15) / v13 * v17) / v17, 160.0);
  [(CKSharedContentsViewController *)self cellAspectRatio];
  [v12 setItemSize:{v18, v19 * v18}];
  [(CKSharedContentsViewController *)self paddingLeftRightForCell];
  [v12 setMinimumInteritemSpacing:?];
  [(CKSharedContentsViewController *)self paddingTopBottomForCell];
  [v12 setMinimumLineSpacing:v20 + v20];
  [(CKSharedContentsViewController *)self paddingTopBottomForCell];
  v22 = v21;
  [(CKSharedContentsViewController *)self paddingLeftRightForCell];
  v24 = v23;
  [(CKSharedContentsViewController *)self paddingTopBottomForCell];
  v26 = v25;
  [(CKSharedContentsViewController *)self paddingLeftRightForCell];
  [v12 setSectionInset:{v22, v24, v26, v27}];
  v28 = [(CKSharedContentsViewController *)self view];
  v29 = [MEMORY[0x1E69DC888] _ckSystemGroupedBackgroundColor];
  [v28 setBackgroundColor:v29];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKSharedContentsViewController;
  [(CKSharedContentsViewController *)&v4 viewDidDisappear:a3];
  [(CKSharedContentsViewController *)self setSelectingAttachments:0];
}

- (BOOL)isJ99LandscapeModeFullScreen
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  Width = CGRectGetWidth(v18);
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  v12 = CGRectGetWidth(v19);
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  v13 = v12 > CGRectGetHeight(v20);
  v14 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v14 _applicationFrame];
  v15 = CGRectGetWidth(v21);

  v16 = Width >= 1366.0 && v13;
  return v15 == 1366.0 && v16;
}

- (void)setAttachmentItems:(id)a3
{
  v5 = a3;
  if (self->_attachmentItems != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_attachmentItems, a3);
    v6 = [(CKSharedContentsViewController *)self collectionviewLayout];
    [v6 invalidateLayout];

    v7 = [(CKSharedContentsViewController *)self collectionView];
    [v7 reloadData];

    v8 = [(CKSharedContentsViewController *)self delegate];
    [v8 sharedAssetsControllerContentSizeDidChange:self];

    v5 = v9;
  }
}

- (void)setSelectingAttachments:(BOOL)a3
{
  if (self->_selectingAttachments != a3)
  {
    self->_selectingAttachments = a3;
    if (a3)
    {
      [(CKSharedContentsViewController *)self setupToolbar];
    }

    else
    {
      [(CKSharedContentsViewController *)self teardownToolbar];
    }

    [(CKSharedContentsViewController *)self updateToolbar];
    v5 = [(CKSharedContentsViewController *)self collectionView];
    [v5 reloadData];
  }
}

- (void)setupToolbar
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:16 target:self action:sel_deleteSelectedContents_];
  [(CKSharedContentsViewController *)self setDeleteButton:v3];
  v4 = [(CKSharedContentsViewController *)self navigationController];
  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  [v4 setToolbarHidden:0 animated:1];
  v6 = [v4 toolbar];
  v16[0] = v5;
  v16[1] = v3;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  [v6 setItems:v7];

  v8 = objc_alloc(MEMORY[0x1E69DC708]);
  v9 = CKFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v11 = [v8 initWithTitle:v10 style:0 target:self action:sel_cancelSelectingContents_];

  v12 = [(CKSharedContentsViewController *)self parentViewController];
  v13 = [v12 navigationItem];

  v14 = [v13 rightBarButtonItems];
  [(CKSharedContentsViewController *)self setParentRightBarButtonItemsToRestore:v14];

  [v13 setRightBarButtonItem:v11 animated:1];
  v15 = [v13 backBarButtonItem];

  if (v15)
  {
    [v13 setHidesBackButton:1];
  }
}

- (void)teardownToolbar
{
  v8 = [(CKSharedContentsViewController *)self navigationController];
  [v8 setToolbarHidden:1 animated:1];
  v3 = [(CKSharedContentsViewController *)self parentViewController];
  v4 = [v3 navigationItem];

  v5 = [(CKSharedContentsViewController *)self parentRightBarButtonItemsToRestore];
  [v4 setRightBarButtonItems:v5 animated:1];

  v6 = [v4 backBarButtonItem];

  if (v6)
  {
    [v4 setHidesBackButton:0];
  }

  v7 = [v8 toolbar];
  [v7 setItems:0];

  [(CKSharedContentsViewController *)self setSaveButton:0];
  [(CKSharedContentsViewController *)self setDeleteButton:0];
}

- (void)updateToolbar
{
  v3 = [(CKSharedContentsViewController *)self selectedAttachmentIndexes];
  v4 = [v3 count];

  v16 = [(CKSharedContentsViewController *)self saveButton];
  v5 = [(CKSharedContentsViewController *)self deleteButton];
  [v16 setEnabled:v4 != 0];
  [v5 setEnabled:v4 != 0];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
  v7 = CKLocalizedStringForNumber(v6);

  if (v4 >= 2)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"SAVE_ATTACHMENTS" value:&stru_1F04268F8 table:@"ChatKit"];
    v11 = [v8 stringWithFormat:v10, v7];

    v12 = [MEMORY[0x1E69DC668] sharedApplication];
    v13 = [v12 userInterfaceLayoutDirection];

    if (v13 == 1)
    {
      v14 = @"\u200F";
    }

    else
    {
      v14 = @"\u200E";
    }

    v15 = [(__CFString *)v14 stringByAppendingString:v11];

    [v16 setTitle:v15];
  }
}

- (int64_t)numberOfItemsInRow
{
  if ([(CKSharedContentsViewController *)self isJ99LandscapeModeFullScreen])
  {
    return 5;
  }

  else
  {
    return 3;
  }
}

- (CGSize)contentSizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(CKSharedContentsViewController *)self numberOfItemsInRow:a3.width];
  [(CKSharedContentsViewController *)self paddingLeftRightForCell];
  v7 = v6;
  if (CKMainScreenScale_once_3 != -1)
  {
    [CKSharedContentsViewController contentSizeThatFits:];
  }

  v8 = *&CKMainScreenScale_sMainScreenScale_3;
  [(CKSharedContentsViewController *)self cellAspectRatio];
  v10 = v9;
  v11 = [(CKSharedContentsViewController *)self attachmentItems];
  v12 = [v11 count];

  [(CKSharedContentsViewController *)self paddingTopBottomForCell];
  v14 = v13;
  [(CKSharedContentsViewController *)self paddingTopBottomForCell];
  v16 = v15;
  if (CKMainScreenScale_once_3 != -1)
  {
    [CKSharedContentsViewController contentSizeThatFits:];
  }

  v17 = ceilf(v12 / v5);
  if (v8 == 0.0)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = v8;
  }

  v19 = v16 + v16 + v17 * (v10 * fmin(round((width - (2 * v5) * v7) / v5 * v18) / v18, 160.0)) + (v17 + -1.0) * (v14 + v14);
  v20 = *&CKMainScreenScale_sMainScreenScale_3;
  if (*&CKMainScreenScale_sMainScreenScale_3 == 0.0)
  {
    v20 = 1.0;
  }

  v21 = round(v19 * v20) / v20;
  v22 = width;
  result.height = v21;
  result.width = v22;
  return result;
}

- (BOOL)isDisplayingAttachmentContent
{
  v2 = [(CKSharedContentsViewController *)self attachmentItems];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)selectedAttachmentIndexes
{
  v2 = [(CKSharedContentsViewController *)self collectionView];
  v3 = [v2 indexPathsForSelectedItems];
  v4 = [v3 __ck_indexSetForIndexPathItemsInSection:0];

  return v4;
}

- (id)presentingViewControllerForAvatarView:(id)a3
{
  v4 = [(CKSharedContentsViewController *)self parentViewController];
  if (v4)
  {
    v5 = [(CKSharedContentsViewController *)self parentViewController];
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

  return v6;
}

- (id)avatarView:(id)a3 orderedPropertiesForProperties:(id)a4 category:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([a5 isEqualToString:*MEMORY[0x1E695D070]])
  {
    v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      v11 = *MEMORY[0x1E695C208];
      v12 = *MEMORY[0x1E695C330];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = [v14 key];
          v16 = [v15 isEqualToString:v11];

          if (v16)
          {
            v17 = [v14 value];
          }

          else
          {
            v18 = [v14 key];
            v19 = [v18 isEqualToString:v12];

            if (v19)
            {
              v20 = [v14 value];
              v17 = [v20 stringValue];
            }

            else
            {
              v17 = 0;
            }
          }

          v21 = IMStripFormattingFromAddress();
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }

    v22 = v24;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (CKQLPreviewController)qlPreviewController
{
  qlPreviewController = self->_qlPreviewController;
  if (!qlPreviewController)
  {
    v4 = objc_alloc_init(CKQLPreviewController);
    [(QLPreviewController *)v4 setDelegate:self];
    v5 = self->_qlPreviewController;
    self->_qlPreviewController = v4;

    qlPreviewController = self->_qlPreviewController;
  }

  return qlPreviewController;
}

- (CGRect)previewController:(id)a3 frameForPreviewItem:(id)a4 inSourceView:(id *)a5
{
  v7 = a4;
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = 0;
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = v7;
  v13 = [(CKSharedContentsViewController *)self collectionView];
  v14 = [(CKSharedContentsViewController *)self attachmentItems];
  v15 = [v14 indexOfObject:v12];

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = 0;
  }

  else
  {
    v17 = [MEMORY[0x1E696AC88] indexPathForRow:v15 inSection:0];
    v18 = [v13 cellForItemAtIndexPath:v17];
    v16 = [v18 contentView];
    [v16 frame];
    v8 = v19;
    v9 = v20;
    v10 = v21;
    v11 = v22;
  }

  if (a5)
  {
LABEL_8:
    v23 = v16;
    *a5 = v16;
  }

LABEL_9:

  v24 = v8;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (id)previewController:(id)a3 transitionViewForPreviewItem:(id)a4 uncroppedSourceFrame:(CGRect *)a5 realSize:(CGSize *)a6
{
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = [(CKSharedContentsViewController *)self collectionView];
    v12 = [(CKSharedContentsViewController *)self attachmentItems];
    v13 = [v12 indexOfObject:v10];

    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
    }

    else
    {
      v15 = [MEMORY[0x1E696AC88] indexPathForRow:v13 inSection:0];
      v16 = [v11 cellForItemAtIndexPath:v15];
      v17 = [v16 contentView];
      [v17 bounds];
      a5->origin.x = v18;
      a5->origin.y = v19;
      a5->size.width = v20;
      a5->size.height = v21;

      *a6 = *MEMORY[0x1E695F060];
      v14 = [v16 contentView];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)previewingContext:(id)a3 viewControllerForLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(CKSharedContentsViewController *)self collectionView];
  v8 = [v7 indexPathForItemAtPoint:{x, y}];

  if ([(CKSharedContentsViewController *)self isSelectingAttachments])
  {
    v9 = 0;
  }

  else
  {
    v10 = [(CKSharedContentsViewController *)self qlPreviewController];
    v11 = [v10 dataSource];
    v12 = [(CKSharedContentsViewController *)self attachmentItems];
    [v11 setPreviewItems:v12];

    v13 = [(CKSharedContentsViewController *)self qlPreviewController];
    [v13 reloadData];

    v14 = [(CKSharedContentsViewController *)self qlPreviewController];
    [v14 setCurrentPreviewItemIndex:{objc_msgSend(v8, "item")}];

    v15 = [(CKSharedContentsViewController *)self qlPreviewController];
    [v15 refreshCurrentPreviewItem];

    v9 = [(CKSharedContentsViewController *)self qlPreviewController];
  }

  return v9;
}

- (void)willPresentPreviewViewController:(id)a3 forLocation:(CGPoint)a4 inSourceView:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a3;
  v13 = [(CKSharedContentsViewController *)self collectionView];
  v9 = [v13 indexPathForItemAtPoint:{x, y}];
  v10 = [v13 cellForItemAtIndexPath:v9];
  v11 = [v8 presentationController];

  [v11 setSourceView:v10];
  [v10 bounds];
  [v11 setSourceRect:?];
  v12 = [(CKSharedContentsViewController *)self qlPreviewController];
  [v12 setCurrentOrbMode:1];
}

- (void)didDismissPreviewViewController:(id)a3 committing:(BOOL)a4
{
  if (!a4)
  {
    v5 = [(CKSharedContentsViewController *)self qlPreviewController];
    [v5 setCurrentOrbMode:0];
  }
}

- (void)previewingContext:(id)a3 commitViewController:(id)a4
{
  v5 = MEMORY[0x1E69A8168];
  v6 = a4;
  v7 = [v5 sharedInstance];
  [v7 trackEvent:*MEMORY[0x1E69A7588]];

  v8 = [(CKSharedContentsViewController *)self qlPreviewController];
  [v8 setCurrentOrbMode:2];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__CKSharedContentsViewController_previewingContext_commitViewController___block_invoke;
  v9[3] = &unk_1E72EBA18;
  v9[4] = self;
  [(CKSharedContentsViewController *)self presentViewController:v6 animated:0 completion:v9];
}

void __73__CKSharedContentsViewController_previewingContext_commitViewController___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) qlPreviewController];
  [v1 setCurrentOrbMode:0];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = [a4 view];
  v6 = [v5 superview];

  v7 = [(CKSharedContentsViewController *)self isSelectingAttachments];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return !v7 & isKindOfClass;
}

- (void)sharedContentsCollectionViewCellDidTap:(id)a3
{
  v11 = a3;
  if (![(CKSharedContentsViewController *)self isSelectingAttachments])
  {
    v4 = [(CKSharedContentsViewController *)self collectionView];
    v5 = [(CKSharedContentsViewController *)self qlPreviewController];
    v6 = [v4 indexPathForCell:v11];
    v7 = [v6 item];

    v8 = objc_alloc_init(CKQLPreviewControllerDataSource);
    [v5 setDataSource:v8];
    v9 = [(CKSharedContentsViewController *)self attachmentItems];
    [(CKQLPreviewControllerDataSource *)v8 setPreviewItems:v9];

    [v5 reloadData];
    [v5 setCurrentPreviewItemIndex:v7];
    [v5 refreshCurrentPreviewItem];
    [v5 setModalPresentationStyle:0];
    v10 = [MEMORY[0x1E69A8168] sharedInstance];
    [v10 trackEvent:*MEMORY[0x1E69A7588]];

    [(CKSharedContentsViewController *)self presentViewController:v5 animated:1 completion:0];
  }
}

- (void)performAction:(SEL)a3 forSharedContentsCollectionViewCell:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(CKSharedContentsViewController *)self collectionView];
  v8 = [v7 indexPathForCell:v6];
  v9 = [v8 item];

  v10 = [(CKSharedContentsViewController *)self attachmentItems];
  v11 = [v10 objectAtIndex:v9];

  if (sel_delete_ == a3)
  {
    v13[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [(CKSharedContentsViewController *)self deleteContents:v12];
    goto LABEL_5;
  }

  if (sel_more_ == a3)
  {
    v12 = [v7 indexPathForCell:v6];
    [(CKSharedContentsViewController *)self setSelectingAttachments:1];
    [v7 selectItemAtIndexPath:v12 animated:1 scrollPosition:0];
    [(CKSharedContentsViewController *)self updateToolbar];
LABEL_5:
  }
}

- (void)deleteContents:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  if (v5)
  {
    v6 = v5;
    v7 = [(CKSharedContentsViewController *)self attachmentItems];
    v8 = CKFrameworkBundle();
    v33 = [v8 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];

    if (v6 == 1)
    {
      v9 = CKFrameworkBundle();
      v10 = [v9 localizedStringForKey:@"DELETE_ATTACHMENT" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    else
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
      v9 = CKLocalizedStringForNumber(v11);

      v12 = MEMORY[0x1E696AEC0];
      v13 = CKFrameworkBundle();
      v14 = [v13 localizedStringForKey:@"DELETE_ATTACHMENTS" value:&stru_1F04268F8 table:@"ChatKit"];
      v15 = [v12 stringWithFormat:v14, v9];

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

      v10 = [(__CFString *)v18 stringByAppendingString:v15];
    }

    v19 = [(CKSharedContentsViewController *)self collectionView];
    v20 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __49__CKSharedContentsViewController_deleteContents___block_invoke;
    v34[3] = &unk_1E72EC1A0;
    v34[4] = self;
    v21 = v4;
    v35 = v21;
    v22 = v19;
    v36 = v22;
    v23 = [CKAlertAction actionWithTitle:v10 style:2 handler:v34];
    [v20 addAction:v23];

    v24 = [CKAlertAction actionWithTitle:v33 style:1 handler:0];
    [v20 addAction:v24];

    v25 = [(CKSharedContentsViewController *)self deleteButton];
    v26 = [v20 popoverPresentationController];
    if ([v25 isEnabled])
    {
      [v26 setBarButtonItem:v25];
    }

    else
    {
      v27 = [v21 lastObject];
      v28 = [v7 indexOfObject:v27];

      if (v28 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v29 = [MEMORY[0x1E696AC88] indexPathForRow:v28 inSection:0];
        v30 = [v22 cellForItemAtIndexPath:v29];
        [v30 contentView];
        v31 = v32 = v7;
        [v26 setSourceView:v31];
        [v31 bounds];
        [v26 setSourceRect:?];

        v7 = v32;
      }
    }

    [v20 setPreferredStyle:0];
    [(CKSharedContentsViewController *)self presentViewController:v20 animated:1 completion:0];
  }
}

uint64_t __49__CKSharedContentsViewController_deleteContents___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 sharedAssetsController:*(a1 + 32) didDeleteAttachmentItems:*(a1 + 40)];

  v3 = [*(a1 + 32) collectionviewLayout];
  [v3 invalidateLayout];

  [*(a1 + 48) reloadData];
  v4 = [*(a1 + 32) delegate];
  [v4 sharedAssetsControllerContentSizeDidChange:*(a1 + 32)];

  v5 = *(a1 + 32);

  return [v5 setSelectingAttachments:0];
}

- (void)deleteSelectedContents:(id)a3
{
  v4 = [(CKSharedContentsViewController *)self attachmentItems];
  v5 = [(CKSharedContentsViewController *)self selectedAttachmentIndexes];
  v6 = [v4 objectsAtIndexes:v5];

  [(CKSharedContentsViewController *)self deleteContents:v6];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(CKSharedContentsViewController *)self attachmentItems:a3];
  v5 = [v4 count];

  return v5;
}

- (id)_collectionView:(id)a3 dragItemsForItemAtIndexPath:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(CKSharedContentsViewController *)self attachmentItems];
  v7 = [v5 item];

  v8 = [v6 objectAtIndex:v7];

  v9 = [v8 dragItem];
  v12[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

  return v10;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKSharedContentsViewController *)self attachmentItems];
  v9 = [v8 objectAtIndex:{objc_msgSend(v7, "item")}];

  v10 = [v9 UTIType];
  v11 = +[CKLocationAttachmentItem UTITypes];
  v12 = UTTypeConformsTo(v10, [v11 firstObject]);

  v13 = UTTypeConformsTo(v10, *MEMORY[0x1E6963788]);
  v14 = UTTypeConformsTo(v10, *MEMORY[0x1E6963748]);
  v15 = +[CKQuickLookThumbnailAttachmentItem UTITypes];
  v16 = UTTypeConformsTo(v10, [v15 firstObject]);

  if (v12)
  {
    v17 = CKSharedLocationCollectionViewCell;
LABEL_3:
    v18 = [(__objc2_class *)v17 reuseIdentifier];
    v19 = [v6 dequeueReusableCellWithReuseIdentifier:v18 forIndexPath:v7];

LABEL_4:
    [v19 configureWithAttachmentItem:v9];
    goto LABEL_14;
  }

  if (!v13)
  {
    if (v14)
    {
      v27 = CKSharedAudioCollectionViewCell;
    }

    else
    {
      if (!v16)
      {
        v17 = CKSharedOtherTypesCollectionViewCell;
        goto LABEL_3;
      }

      v27 = CKSharedQuickLookThumbnailCollectionViewCell;
    }

    v31 = [(__objc2_class *)v27 reuseIdentifier];
    v19 = [v6 dequeueReusableCellWithReuseIdentifier:v31 forIndexPath:v7];

    [v19 setDelegate:self];
    goto LABEL_4;
  }

  v20 = +[CKSharedContactsCollectionViewCell reuseIdentifier];
  v19 = [v6 dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:v7];

  v21 = [v9 fileURL];
  v33 = 0;
  v22 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v21 options:8 error:&v33];
  v23 = v33;
  if (v23 || !v22)
  {
    v24 = IMLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(CKSharedContentsViewController *)v21 collectionView:v23 cellForItemAtIndexPath:v24];
    }
  }

  else
  {
    v32 = 0;
    v24 = [MEMORY[0x1E695CE30] contactsWithData:v22 error:&v32];
    v23 = v32;
    v25 = [v24 firstObject];
    [v19 configureWithContact:v25];

    v26 = [v19 avatarView];
    [v26 setDelegate:self];
  }

LABEL_14:
  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v7, "row")];
  [v19 setAccessibilityIdentifier:v28];

  [v19 setDelegate:self];
  v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v7, "row")];
  [v19 setAccessibilityIdentifier:v29];

  [v19 setEditing:{-[CKSharedContentsViewController isSelectingAttachments](self, "isSelectingAttachments")}];

  return v19;
}

- (CKSharedAssetsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)collectionView:(os_log_t)log cellForItemAtIndexPath:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "Couldn't read data from file %@ ; error %@", &v3, 0x16u);
}

@end