@interface CKSharedContentsViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)isDisplayingAttachmentContent;
- (BOOL)isJ99LandscapeModeFullScreen;
- (CGRect)previewController:(id)controller frameForPreviewItem:(id)item inSourceView:(id *)view;
- (CGSize)contentSizeThatFits:(CGSize)fits;
- (CKQLPreviewController)qlPreviewController;
- (CKSharedAssetsControllerDelegate)delegate;
- (CKSharedContentsViewController)initWithAttachmentItems:(id)items;
- (id)_collectionView:(id)view dragItemsForItemAtIndexPath:(id)path;
- (id)avatarView:(id)view orderedPropertiesForProperties:(id)properties category:(id)category;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)presentingViewControllerForAvatarView:(id)view;
- (id)previewController:(id)controller transitionViewForPreviewItem:(id)item uncroppedSourceFrame:(CGRect *)frame realSize:(CGSize *)size;
- (id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location;
- (id)selectedAttachmentIndexes;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfItemsInRow;
- (void)dealloc;
- (void)deleteContents:(id)contents;
- (void)deleteSelectedContents:(id)contents;
- (void)didDismissPreviewViewController:(id)controller committing:(BOOL)committing;
- (void)didMoveToParentViewController:(id)controller;
- (void)loadView;
- (void)performAction:(SEL)action forSharedContentsCollectionViewCell:(id)cell;
- (void)previewingContext:(id)context commitViewController:(id)controller;
- (void)setAttachmentItems:(id)items;
- (void)setSelectingAttachments:(BOOL)attachments;
- (void)setupToolbar;
- (void)sharedContentsCollectionViewCellDidTap:(id)tap;
- (void)teardownToolbar;
- (void)updateToolbar;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willPresentPreviewViewController:(id)controller forLocation:(CGPoint)location inSourceView:(id)view;
@end

@implementation CKSharedContentsViewController

- (CKSharedContentsViewController)initWithAttachmentItems:(id)items
{
  itemsCopy = items;
  v8.receiver = self;
  v8.super_class = CKSharedContentsViewController;
  v5 = [(CKSharedContentsViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CKSharedContentsViewController *)v5 setAttachmentItems:itemsCopy];
  }

  return v6;
}

- (void)didMoveToParentViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = CKSharedContentsViewController;
  [(CKSharedContentsViewController *)&v6 didMoveToParentViewController:controller];
  collectionviewLayout = [(CKSharedContentsViewController *)self collectionviewLayout];
  [collectionviewLayout prepareLayout];

  delegate = [(CKSharedContentsViewController *)self delegate];
  [delegate sharedAssetsControllerContentSizeDidChange:self];
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  _supportsForceTouch = [currentDevice _supportsForceTouch];

  if (_supportsForceTouch)
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
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v5 = [v3 initWithFrame:v20 collectionViewLayout:?];

  [v5 setAutoresizingMask:18];
  [v5 setDelegate:self];
  [v5 setDataSource:self];
  [v5 setDragSourceDelegate:self];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v5 setBackgroundColor:clearColor];

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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  LODWORD(v18) = [currentDevice _supportsForceTouch];

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
  view = [(CKSharedContentsViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  collectionviewLayout = [(CKSharedContentsViewController *)self collectionviewLayout];
  numberOfItemsInRow = [(CKSharedContentsViewController *)self numberOfItemsInRow];
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

  v18 = fmin(round((Width - (2 * numberOfItemsInRow) * v15) / numberOfItemsInRow * v17) / v17, 160.0);
  [(CKSharedContentsViewController *)self cellAspectRatio];
  [collectionviewLayout setItemSize:{v18, v19 * v18}];
  [(CKSharedContentsViewController *)self paddingLeftRightForCell];
  [collectionviewLayout setMinimumInteritemSpacing:?];
  [(CKSharedContentsViewController *)self paddingTopBottomForCell];
  [collectionviewLayout setMinimumLineSpacing:v20 + v20];
  [(CKSharedContentsViewController *)self paddingTopBottomForCell];
  v22 = v21;
  [(CKSharedContentsViewController *)self paddingLeftRightForCell];
  v24 = v23;
  [(CKSharedContentsViewController *)self paddingTopBottomForCell];
  v26 = v25;
  [(CKSharedContentsViewController *)self paddingLeftRightForCell];
  [collectionviewLayout setSectionInset:{v22, v24, v26, v27}];
  view2 = [(CKSharedContentsViewController *)self view];
  _ckSystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] _ckSystemGroupedBackgroundColor];
  [view2 setBackgroundColor:_ckSystemGroupedBackgroundColor];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CKSharedContentsViewController;
  [(CKSharedContentsViewController *)&v4 viewDidDisappear:disappear];
  [(CKSharedContentsViewController *)self setSelectingAttachments:0];
}

- (BOOL)isJ99LandscapeModeFullScreen
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
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
  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 _applicationFrame];
  v15 = CGRectGetWidth(v21);

  v16 = Width >= 1366.0 && v13;
  return v15 == 1366.0 && v16;
}

- (void)setAttachmentItems:(id)items
{
  itemsCopy = items;
  if (self->_attachmentItems != itemsCopy)
  {
    v9 = itemsCopy;
    objc_storeStrong(&self->_attachmentItems, items);
    collectionviewLayout = [(CKSharedContentsViewController *)self collectionviewLayout];
    [collectionviewLayout invalidateLayout];

    collectionView = [(CKSharedContentsViewController *)self collectionView];
    [collectionView reloadData];

    delegate = [(CKSharedContentsViewController *)self delegate];
    [delegate sharedAssetsControllerContentSizeDidChange:self];

    itemsCopy = v9;
  }
}

- (void)setSelectingAttachments:(BOOL)attachments
{
  if (self->_selectingAttachments != attachments)
  {
    self->_selectingAttachments = attachments;
    if (attachments)
    {
      [(CKSharedContentsViewController *)self setupToolbar];
    }

    else
    {
      [(CKSharedContentsViewController *)self teardownToolbar];
    }

    [(CKSharedContentsViewController *)self updateToolbar];
    collectionView = [(CKSharedContentsViewController *)self collectionView];
    [collectionView reloadData];
  }
}

- (void)setupToolbar
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:16 target:self action:sel_deleteSelectedContents_];
  [(CKSharedContentsViewController *)self setDeleteButton:v3];
  navigationController = [(CKSharedContentsViewController *)self navigationController];
  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  [navigationController setToolbarHidden:0 animated:1];
  toolbar = [navigationController toolbar];
  v16[0] = v5;
  v16[1] = v3;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  [toolbar setItems:v7];

  v8 = objc_alloc(MEMORY[0x1E69DC708]);
  v9 = CKFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v11 = [v8 initWithTitle:v10 style:0 target:self action:sel_cancelSelectingContents_];

  parentViewController = [(CKSharedContentsViewController *)self parentViewController];
  navigationItem = [parentViewController navigationItem];

  rightBarButtonItems = [navigationItem rightBarButtonItems];
  [(CKSharedContentsViewController *)self setParentRightBarButtonItemsToRestore:rightBarButtonItems];

  [navigationItem setRightBarButtonItem:v11 animated:1];
  backBarButtonItem = [navigationItem backBarButtonItem];

  if (backBarButtonItem)
  {
    [navigationItem setHidesBackButton:1];
  }
}

- (void)teardownToolbar
{
  navigationController = [(CKSharedContentsViewController *)self navigationController];
  [navigationController setToolbarHidden:1 animated:1];
  parentViewController = [(CKSharedContentsViewController *)self parentViewController];
  navigationItem = [parentViewController navigationItem];

  parentRightBarButtonItemsToRestore = [(CKSharedContentsViewController *)self parentRightBarButtonItemsToRestore];
  [navigationItem setRightBarButtonItems:parentRightBarButtonItemsToRestore animated:1];

  backBarButtonItem = [navigationItem backBarButtonItem];

  if (backBarButtonItem)
  {
    [navigationItem setHidesBackButton:0];
  }

  toolbar = [navigationController toolbar];
  [toolbar setItems:0];

  [(CKSharedContentsViewController *)self setSaveButton:0];
  [(CKSharedContentsViewController *)self setDeleteButton:0];
}

- (void)updateToolbar
{
  selectedAttachmentIndexes = [(CKSharedContentsViewController *)self selectedAttachmentIndexes];
  v4 = [selectedAttachmentIndexes count];

  saveButton = [(CKSharedContentsViewController *)self saveButton];
  deleteButton = [(CKSharedContentsViewController *)self deleteButton];
  [saveButton setEnabled:v4 != 0];
  [deleteButton setEnabled:v4 != 0];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
  v7 = CKLocalizedStringForNumber(v6);

  if (v4 >= 2)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"SAVE_ATTACHMENTS" value:&stru_1F04268F8 table:@"ChatKit"];
    v11 = [v8 stringWithFormat:v10, v7];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v14 = @"\u200F";
    }

    else
    {
      v14 = @"\u200E";
    }

    v15 = [(__CFString *)v14 stringByAppendingString:v11];

    [saveButton setTitle:v15];
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

- (CGSize)contentSizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(CKSharedContentsViewController *)self numberOfItemsInRow:fits.width];
  [(CKSharedContentsViewController *)self paddingLeftRightForCell];
  v7 = v6;
  if (CKMainScreenScale_once_3 != -1)
  {
    [CKSharedContentsViewController contentSizeThatFits:];
  }

  v8 = *&CKMainScreenScale_sMainScreenScale_3;
  [(CKSharedContentsViewController *)self cellAspectRatio];
  v10 = v9;
  attachmentItems = [(CKSharedContentsViewController *)self attachmentItems];
  v12 = [attachmentItems count];

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
  attachmentItems = [(CKSharedContentsViewController *)self attachmentItems];
  v3 = [attachmentItems count] != 0;

  return v3;
}

- (id)selectedAttachmentIndexes
{
  collectionView = [(CKSharedContentsViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v4 = [indexPathsForSelectedItems __ck_indexSetForIndexPathItemsInSection:0];

  return v4;
}

- (id)presentingViewControllerForAvatarView:(id)view
{
  parentViewController = [(CKSharedContentsViewController *)self parentViewController];
  if (parentViewController)
  {
    selfCopy = [(CKSharedContentsViewController *)self parentViewController];
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  return v6;
}

- (id)avatarView:(id)view orderedPropertiesForProperties:(id)properties category:(id)category
{
  v30 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if ([category isEqualToString:*MEMORY[0x1E695D070]])
  {
    v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = propertiesCopy;
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
            value = [v14 value];
          }

          else
          {
            v18 = [v14 key];
            v19 = [v18 isEqualToString:v12];

            if (v19)
            {
              value2 = [v14 value];
              value = [value2 stringValue];
            }

            else
            {
              value = 0;
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

- (CGRect)previewController:(id)controller frameForPreviewItem:(id)item inSourceView:(id *)view
{
  itemCopy = item;
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    contentView = 0;
    if (!view)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = itemCopy;
  collectionView = [(CKSharedContentsViewController *)self collectionView];
  attachmentItems = [(CKSharedContentsViewController *)self attachmentItems];
  v15 = [attachmentItems indexOfObject:v12];

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    contentView = 0;
  }

  else
  {
    v17 = [MEMORY[0x1E696AC88] indexPathForRow:v15 inSection:0];
    v18 = [collectionView cellForItemAtIndexPath:v17];
    contentView = [v18 contentView];
    [contentView frame];
    v8 = v19;
    v9 = v20;
    v10 = v21;
    v11 = v22;
  }

  if (view)
  {
LABEL_8:
    v23 = contentView;
    *view = contentView;
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

- (id)previewController:(id)controller transitionViewForPreviewItem:(id)item uncroppedSourceFrame:(CGRect *)frame realSize:(CGSize *)size
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = itemCopy;
    collectionView = [(CKSharedContentsViewController *)self collectionView];
    attachmentItems = [(CKSharedContentsViewController *)self attachmentItems];
    v13 = [attachmentItems indexOfObject:v10];

    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      contentView2 = 0;
    }

    else
    {
      v15 = [MEMORY[0x1E696AC88] indexPathForRow:v13 inSection:0];
      v16 = [collectionView cellForItemAtIndexPath:v15];
      contentView = [v16 contentView];
      [contentView bounds];
      frame->origin.x = v18;
      frame->origin.y = v19;
      frame->size.width = v20;
      frame->size.height = v21;

      *size = *MEMORY[0x1E695F060];
      contentView2 = [v16 contentView];
    }
  }

  else
  {
    contentView2 = 0;
  }

  return contentView2;
}

- (id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  collectionView = [(CKSharedContentsViewController *)self collectionView];
  v8 = [collectionView indexPathForItemAtPoint:{x, y}];

  if ([(CKSharedContentsViewController *)self isSelectingAttachments])
  {
    qlPreviewController5 = 0;
  }

  else
  {
    qlPreviewController = [(CKSharedContentsViewController *)self qlPreviewController];
    dataSource = [qlPreviewController dataSource];
    attachmentItems = [(CKSharedContentsViewController *)self attachmentItems];
    [dataSource setPreviewItems:attachmentItems];

    qlPreviewController2 = [(CKSharedContentsViewController *)self qlPreviewController];
    [qlPreviewController2 reloadData];

    qlPreviewController3 = [(CKSharedContentsViewController *)self qlPreviewController];
    [qlPreviewController3 setCurrentPreviewItemIndex:{objc_msgSend(v8, "item")}];

    qlPreviewController4 = [(CKSharedContentsViewController *)self qlPreviewController];
    [qlPreviewController4 refreshCurrentPreviewItem];

    qlPreviewController5 = [(CKSharedContentsViewController *)self qlPreviewController];
  }

  return qlPreviewController5;
}

- (void)willPresentPreviewViewController:(id)controller forLocation:(CGPoint)location inSourceView:(id)view
{
  y = location.y;
  x = location.x;
  controllerCopy = controller;
  collectionView = [(CKSharedContentsViewController *)self collectionView];
  v9 = [collectionView indexPathForItemAtPoint:{x, y}];
  v10 = [collectionView cellForItemAtIndexPath:v9];
  presentationController = [controllerCopy presentationController];

  [presentationController setSourceView:v10];
  [v10 bounds];
  [presentationController setSourceRect:?];
  qlPreviewController = [(CKSharedContentsViewController *)self qlPreviewController];
  [qlPreviewController setCurrentOrbMode:1];
}

- (void)didDismissPreviewViewController:(id)controller committing:(BOOL)committing
{
  if (!committing)
  {
    qlPreviewController = [(CKSharedContentsViewController *)self qlPreviewController];
    [qlPreviewController setCurrentOrbMode:0];
  }
}

- (void)previewingContext:(id)context commitViewController:(id)controller
{
  v5 = MEMORY[0x1E69A8168];
  controllerCopy = controller;
  sharedInstance = [v5 sharedInstance];
  [sharedInstance trackEvent:*MEMORY[0x1E69A7588]];

  qlPreviewController = [(CKSharedContentsViewController *)self qlPreviewController];
  [qlPreviewController setCurrentOrbMode:2];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__CKSharedContentsViewController_previewingContext_commitViewController___block_invoke;
  v9[3] = &unk_1E72EBA18;
  v9[4] = self;
  [(CKSharedContentsViewController *)self presentViewController:controllerCopy animated:0 completion:v9];
}

void __73__CKSharedContentsViewController_previewingContext_commitViewController___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) qlPreviewController];
  [v1 setCurrentOrbMode:0];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  view = [touch view];
  superview = [view superview];

  isSelectingAttachments = [(CKSharedContentsViewController *)self isSelectingAttachments];
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

  return !isSelectingAttachments & isKindOfClass;
}

- (void)sharedContentsCollectionViewCellDidTap:(id)tap
{
  tapCopy = tap;
  if (![(CKSharedContentsViewController *)self isSelectingAttachments])
  {
    collectionView = [(CKSharedContentsViewController *)self collectionView];
    qlPreviewController = [(CKSharedContentsViewController *)self qlPreviewController];
    v6 = [collectionView indexPathForCell:tapCopy];
    item = [v6 item];

    v8 = objc_alloc_init(CKQLPreviewControllerDataSource);
    [qlPreviewController setDataSource:v8];
    attachmentItems = [(CKSharedContentsViewController *)self attachmentItems];
    [(CKQLPreviewControllerDataSource *)v8 setPreviewItems:attachmentItems];

    [qlPreviewController reloadData];
    [qlPreviewController setCurrentPreviewItemIndex:item];
    [qlPreviewController refreshCurrentPreviewItem];
    [qlPreviewController setModalPresentationStyle:0];
    mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
    [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A7588]];

    [(CKSharedContentsViewController *)self presentViewController:qlPreviewController animated:1 completion:0];
  }
}

- (void)performAction:(SEL)action forSharedContentsCollectionViewCell:(id)cell
{
  v13[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  collectionView = [(CKSharedContentsViewController *)self collectionView];
  v8 = [collectionView indexPathForCell:cellCopy];
  item = [v8 item];

  attachmentItems = [(CKSharedContentsViewController *)self attachmentItems];
  v11 = [attachmentItems objectAtIndex:item];

  if (sel_delete_ == action)
  {
    v13[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [(CKSharedContentsViewController *)self deleteContents:v12];
    goto LABEL_5;
  }

  if (sel_more_ == action)
  {
    v12 = [collectionView indexPathForCell:cellCopy];
    [(CKSharedContentsViewController *)self setSelectingAttachments:1];
    [collectionView selectItemAtIndexPath:v12 animated:1 scrollPosition:0];
    [(CKSharedContentsViewController *)self updateToolbar];
LABEL_5:
  }
}

- (void)deleteContents:(id)contents
{
  contentsCopy = contents;
  v5 = [contentsCopy count];
  if (v5)
  {
    v6 = v5;
    attachmentItems = [(CKSharedContentsViewController *)self attachmentItems];
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

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection == 1)
      {
        v18 = @"\u200F";
      }

      else
      {
        v18 = @"\u200E";
      }

      v10 = [(__CFString *)v18 stringByAppendingString:v15];
    }

    collectionView = [(CKSharedContentsViewController *)self collectionView];
    v20 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __49__CKSharedContentsViewController_deleteContents___block_invoke;
    v34[3] = &unk_1E72EC1A0;
    v34[4] = self;
    v21 = contentsCopy;
    v35 = v21;
    v22 = collectionView;
    v36 = v22;
    v23 = [CKAlertAction actionWithTitle:v10 style:2 handler:v34];
    [v20 addAction:v23];

    v24 = [CKAlertAction actionWithTitle:v33 style:1 handler:0];
    [v20 addAction:v24];

    deleteButton = [(CKSharedContentsViewController *)self deleteButton];
    popoverPresentationController = [v20 popoverPresentationController];
    if ([deleteButton isEnabled])
    {
      [popoverPresentationController setBarButtonItem:deleteButton];
    }

    else
    {
      lastObject = [v21 lastObject];
      v28 = [attachmentItems indexOfObject:lastObject];

      if (v28 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v29 = [MEMORY[0x1E696AC88] indexPathForRow:v28 inSection:0];
        v30 = [v22 cellForItemAtIndexPath:v29];
        [v30 contentView];
        v31 = v32 = attachmentItems;
        [popoverPresentationController setSourceView:v31];
        [v31 bounds];
        [popoverPresentationController setSourceRect:?];

        attachmentItems = v32;
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

- (void)deleteSelectedContents:(id)contents
{
  attachmentItems = [(CKSharedContentsViewController *)self attachmentItems];
  selectedAttachmentIndexes = [(CKSharedContentsViewController *)self selectedAttachmentIndexes];
  v6 = [attachmentItems objectsAtIndexes:selectedAttachmentIndexes];

  [(CKSharedContentsViewController *)self deleteContents:v6];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(CKSharedContentsViewController *)self attachmentItems:view];
  v5 = [v4 count];

  return v5;
}

- (id)_collectionView:(id)view dragItemsForItemAtIndexPath:(id)path
{
  v12[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  attachmentItems = [(CKSharedContentsViewController *)self attachmentItems];
  item = [pathCopy item];

  v8 = [attachmentItems objectAtIndex:item];

  dragItem = [v8 dragItem];
  v12[0] = dragItem;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

  return v10;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  attachmentItems = [(CKSharedContentsViewController *)self attachmentItems];
  v9 = [attachmentItems objectAtIndex:{objc_msgSend(pathCopy, "item")}];

  uTIType = [v9 UTIType];
  v11 = +[CKLocationAttachmentItem UTITypes];
  v12 = UTTypeConformsTo(uTIType, [v11 firstObject]);

  v13 = UTTypeConformsTo(uTIType, *MEMORY[0x1E6963788]);
  v14 = UTTypeConformsTo(uTIType, *MEMORY[0x1E6963748]);
  v15 = +[CKQuickLookThumbnailAttachmentItem UTITypes];
  v16 = UTTypeConformsTo(uTIType, [v15 firstObject]);

  if (v12)
  {
    v17 = CKSharedLocationCollectionViewCell;
LABEL_3:
    reuseIdentifier = [(__objc2_class *)v17 reuseIdentifier];
    v19 = [viewCopy dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:pathCopy];

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

    reuseIdentifier2 = [(__objc2_class *)v27 reuseIdentifier];
    v19 = [viewCopy dequeueReusableCellWithReuseIdentifier:reuseIdentifier2 forIndexPath:pathCopy];

    [v19 setDelegate:self];
    goto LABEL_4;
  }

  v20 = +[CKSharedContactsCollectionViewCell reuseIdentifier];
  v19 = [viewCopy dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:pathCopy];

  fileURL = [v9 fileURL];
  v33 = 0;
  v22 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:fileURL options:8 error:&v33];
  v23 = v33;
  if (v23 || !v22)
  {
    v24 = IMLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(CKSharedContentsViewController *)fileURL collectionView:v23 cellForItemAtIndexPath:v24];
    }
  }

  else
  {
    v32 = 0;
    v24 = [MEMORY[0x1E695CE30] contactsWithData:v22 error:&v32];
    v23 = v32;
    firstObject = [v24 firstObject];
    [v19 configureWithContact:firstObject];

    avatarView = [v19 avatarView];
    [avatarView setDelegate:self];
  }

LABEL_14:
  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(pathCopy, "row")];
  [v19 setAccessibilityIdentifier:v28];

  [v19 setDelegate:self];
  v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(pathCopy, "row")];
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