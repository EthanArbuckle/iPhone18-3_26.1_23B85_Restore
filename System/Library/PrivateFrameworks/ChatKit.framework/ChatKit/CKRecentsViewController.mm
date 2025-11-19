@interface CKRecentsViewController
- (BOOL)dragManager:(id)a3 canPeelItem:(id)a4;
- (BOOL)dragManager:(id)a3 canRotateItem:(id)a4;
- (BOOL)dragManager:(id)a3 canScaleItem:(id)a4;
- (BOOL)isLoaded;
- (BOOL)stickerBrowserView:(id)a3 shouldDrawBorderAroundSticker:(id)a4;
- (CKRecentsViewController)initWithBalloonPlugin:(id)a3 dataSource:(id)a4;
- (id)_stickerForMSSticker:(id)a3;
- (id)requestSnapshotDataForPersistance;
- (id)stickerBrowserView:(id)a3 stickerAtIndex:(int64_t)a4;
- (int64_t)_userInterfaceStyle;
- (int64_t)numberOfStickersInStickerBrowserView:(id)a3;
- (void)_loadRecentHandwritingsAndStickersWithCompletion:(id)a3;
- (void)_postBrowserDidPrepareForDisplayNotificationIfNecessary;
- (void)_setContentOverlayInsets:(UIEdgeInsets)a3;
- (void)dealloc;
- (void)didTransitionFromOrientation:(int64_t)a3 toOrientation:(int64_t)a4;
- (void)dismiss;
- (void)dragManager:(id)a3 didEndDraggingItem:(id)a4 toDragTarget:(id)a5 dropArea:(int)a6;
- (void)forceTearDownRemoteView;
- (void)insertSticker:(id)a3 forceStage:(BOOL)a4 completionHandler:(id)a5;
- (void)insertSticker:(id)a3 representations:(id)a4 forceStage:(BOOL)a5 frameInScreenCoordinates:(CGRect)a6 completionHandler:(id)a7;
- (void)loadRecents;
- (void)loadView;
- (void)prepareForDisplay;
- (void)resortAndReloadRecents;
- (void)saveSnapshotForBrowserViewController;
- (void)setupNoRecentsLabel;
- (void)startDragSticker:(id)a3 frameInRemoteView:(CGRect)a4 fence:(id)a5 completionHandler:(id)a6;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CKRecentsViewController

- (CKRecentsViewController)initWithBalloonPlugin:(id)a3 dataSource:(id)a4
{
  v11.receiver = self;
  v11.super_class = CKRecentsViewController;
  v4 = [(CKBrowserViewController *)&v11 initWithBalloonPlugin:a3 dataSource:a4];
  v5 = v4;
  if (v4)
  {
    recentItems = v4->_recentItems;
    v4->_recentItems = 0;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    stickerCache = v5->_stickerCache;
    v5->_stickerCache = v7;

    v5->_isLoadingRecents = 0;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, _RecentsUpdated, *MEMORY[0x1E69A83D8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(CKRecentsViewController *)v5 loadRecents];
  }

  return v5;
}

- (void)dealloc
{
  +[CKPreviewDispatchCache _invalidateStickerPreviewCache];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x1E69A83D8], 0);
  v4.receiver = self;
  v4.super_class = CKRecentsViewController;
  [(CKRecentsViewController *)&v4 dealloc];
}

- (void)loadRecents
{
  if (![(CKRecentsViewController *)self isLoadingRecents])
  {
    [(CKRecentsViewController *)self setIsLoadingRecents:1];
    objc_initWeak(&location, self);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __38__CKRecentsViewController_loadRecents__block_invoke;
    v3[3] = &unk_1E72EEDA0;
    objc_copyWeak(&v4, &location);
    [(CKRecentsViewController *)self _loadRecentHandwritingsAndStickersWithCompletion:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __38__CKRecentsViewController_loadRecents__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 mutableCopy];

  [WeakRetained setRecentItems:v5];
  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 resortAndReloadRecents];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 setIsLoadingRecents:0];
}

- (void)_loadRecentHandwritingsAndStickersWithCompletion:(id)a3
{
  v3 = MEMORY[0x1E69A81E8];
  v4 = a3;
  v5 = [v3 sharedInstance];
  [v5 loadRecentHandwritingsAndStickersWithThumbnailSize:v4 completion:{80.0, 44.0}];
}

- (void)prepareForDisplay
{
  [(CKRecentsViewController *)self setPreparingForDisplay:1];

  [(CKRecentsViewController *)self loadRecents];
}

- (void)didTransitionFromOrientation:(int64_t)a3 toOrientation:(int64_t)a4
{
  v4 = [(CKRecentsViewController *)self browserView:a3];
  [v4 invalidateFlowLayout];
}

- (void)forceTearDownRemoteView
{
  v2 = [(CKRecentsViewController *)self browserView];
  [v2 invalidateFlowLayout];
}

- (void)resortAndReloadRecents
{
  if ([(NSMutableArray *)self->_recentItems count])
  {
    [(NSMutableArray *)self->_recentItems sortUsingComparator:&__block_literal_global_194];
    v3 = [(CKRecentsViewController *)self browserView];
    [v3 reloadData];

    [(UILabel *)self->_noRecentsLabel removeFromSuperview];
    noRecentsLabel = self->_noRecentsLabel;
    self->_noRecentsLabel = 0;
LABEL_4:

    goto LABEL_5;
  }

  noRecentsLabel = [(CKRecentsViewController *)self recentItems];
  if ([noRecentsLabel count])
  {
    goto LABEL_4;
  }

  v5 = self->_noRecentsLabel;

  if (!v5)
  {
    [(CKRecentsViewController *)self setupNoRecentsLabel];
    noRecentsLabel = [(CKRecentsViewController *)self browserView];
    [noRecentsLabel addSubview:self->_noRecentsLabel];
    goto LABEL_4;
  }

LABEL_5:

  [(CKRecentsViewController *)self _postBrowserDidPrepareForDisplayNotificationIfNecessary];
}

uint64_t __49__CKRecentsViewController_resortAndReloadRecents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 timestamp];
  v6 = [v4 timestamp];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_postBrowserDidPrepareForDisplayNotificationIfNecessary
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(CKRecentsViewController *)self isPreparingForDisplay])
  {
    v3 = [(CKBrowserViewController *)self balloonPlugin];

    if (v3)
    {
      v9 = @"CKRemoteViewPluginKey";
      v4 = [(CKBrowserViewController *)self balloonPlugin];
      v10[0] = v4;
      v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__CKRecentsViewController__postBrowserDidPrepareForDisplayNotificationIfNecessary__block_invoke;
    block[3] = &unk_1E72EB8D0;
    v7 = v3;
    v8 = self;
    v5 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __82__CKRecentsViewController__postBrowserDidPrepareForDisplayNotificationIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 __mainThreadPostNotificationName:@"CKMessageExtensionBrowserViewControllerDidPrepareForDisplay" object:0 userInfo:*(a1 + 32)];

  v3 = *(a1 + 40);

  return [v3 setPreparingForDisplay:0];
}

- (void)setupNoRecentsLabel
{
  [(UILabel *)self->_noRecentsLabel removeFromSuperview];
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [(CKRecentsViewController *)self view];
  [v4 frame];
  v5 = [v3 initWithFrame:?];
  noRecentsLabel = self->_noRecentsLabel;
  self->_noRecentsLabel = v5;

  v7 = self->_noRecentsLabel;
  v8 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
  [(UILabel *)v7 setFont:v8];

  v9 = self->_noRecentsLabel;
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"NO_RECENTS" value:&stru_1F04268F8 table:@"ChatKit"];
  [(UILabel *)v9 setText:v11];

  v12 = self->_noRecentsLabel;

  [(UILabel *)v12 setTextAlignment:1];
}

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = CKRecentsViewController;
  [(CKBrowserViewController *)&v9 loadView];
  v3 = [(CKRecentsViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [objc_alloc(MEMORY[0x193AF5EC0](@"MSStickerBrowserView" @"Messages"))];
  [(MSStickerBrowserView *)v5 setDataSource:self];
  [(MSStickerBrowserView *)v5 performSelector:sel_setDisplayDelegate_ withObject:self];
  [(MSStickerBrowserView *)v5 setAutoresizingMask:18];
  browserView = self->_browserView;
  self->_browserView = v5;
  v7 = v5;

  v8 = [(CKRecentsViewController *)self view];
  [v8 addSubview:self->_browserView];
}

- (void)viewDidLayoutSubviews
{
  browserView = self->_browserView;
  v4 = [(CKRecentsViewController *)self view];
  [v4 bounds];
  [(MSStickerBrowserView *)browserView setFrame:?];

  noRecentsLabel = self->_noRecentsLabel;
  if (noRecentsLabel)
  {
    v6 = [(CKRecentsViewController *)self view];
    [v6 bounds];
    [(UILabel *)noRecentsLabel setFrame:?];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CKRecentsViewController;
  [(CKBrowserViewController *)&v6 viewWillAppear:a3];
  v4 = [MEMORY[0x193AF5EC0](@"_MSStickerSendManager" @"Messages")];
  [v4 setDelegate:self];

  v5 = [(CKRecentsViewController *)self browserView];
  [v5 _startAnimating];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CKRecentsViewController;
  [(CKBrowserViewController *)&v5 viewDidDisappear:a3];
  v4 = [(CKRecentsViewController *)self browserView];
  [v4 _stopAnimating];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKRecentsViewController;
  [(CKRecentsViewController *)&v4 traitCollectionDidChange:a3];
  [(CKRecentsViewController *)self recentsUpdated];
}

- (int64_t)numberOfStickersInStickerBrowserView:(id)a3
{
  result = [(NSMutableArray *)self->_recentItems count];
  if (result >= 0x19)
  {
    return 25;
  }

  return result;
}

- (id)stickerBrowserView:(id)a3 stickerAtIndex:(int64_t)a4
{
  v4 = self;
  v5 = [(NSMutableArray *)self->_recentItems objectAtIndex:a4];
  v6 = MEMORY[0x193AF5EC0](@"MSSticker", @"Messages");
  v7 = [v5 payloadData];

  if (v7)
  {
    v8 = [v6 alloc];
    v9 = [v5 fileURL];
    v10 = [v5 payloadData];
    v11 = [v8 initWithContentsOfURL:v9 data:v10 localizedDescription:@"handwriting" error:0];
  }

  else
  {
    v9 = [v5 messageItemInfo];
    v12 = [v5 fileURL];
    v13 = [v12 path];
    v10 = [v13 lastPathComponent];

    v14 = MEMORY[0x1E695DFF8];
    v15 = [v5 fileURL];
    v16 = [v15 path];
    v17 = [v14 fileURLWithPath:v16];

    v18 = [v9 objectForKey:*MEMORY[0x1E69A7CB0]];
    v19 = v18;
    v20 = @"com.apple.messages.Recents";
    if (v18)
    {
      v20 = v18;
    }

    v21 = v20;

    v22 = objc_alloc(MEMORY[0x1E69A82C0]);
    v23 = [v5 accessibilityString];
    v47 = v17;
    v24 = [v22 initWithStickerID:v10 stickerPackID:v21 fileURL:v17 accessibilityLabel:v23 accessibilityName:0 searchText:0 sanitizedPrompt:0 moodCategory:0 stickerName:0];

    v25 = [MEMORY[0x1E69A5AD0] sharedInstance];
    v26 = [v24 stickerPackGUID];
    v27 = [v25 balloonPluginForBundleID:v26];

    v46 = v27;
    v28 = [v27 attributionInfo];
    [v24 setAttributionInfo:v28];

    v29 = [v9 objectForKey:*MEMORY[0x1E69A7CC0]];
    if ([v29 length])
    {
      v30 = [v29 _FTDataFromHexString];
      [v24 setRecipe:v30];

      v31 = [v9 objectForKey:*MEMORY[0x1E69A7C80]];
      [v24 setBallonBundleID:v31];
    }

    v45 = v29;
    v32 = [v5 accessibilityString];
    v33 = [v32 length];

    v34 = MEMORY[0x1E696AEC0];
    v35 = CKFrameworkBundle();
    v36 = v35;
    if (v33)
    {
      v37 = [v35 localizedStringForKey:@"STICKER_ACCESSIBILTY_LABEL_FORMAT" value:&stru_1F04268F8 table:@"ChatKit"];
      [v5 accessibilityString];
      v38 = v4;
      v40 = v39 = v6;
      v41 = [v34 stringWithFormat:v37, v40];

      v6 = v39;
      v4 = v38;
    }

    else
    {
      v37 = [v35 localizedStringForKey:@"STICKER_ACCESSIBILTY_LABEL_NO_CONTENT" value:&stru_1F04268F8 table:@"ChatKit"];
      v41 = [v34 stringWithFormat:v37];
    }

    v11 = [[v6 alloc] initWithContentsOfFileURL:v47 localizedDescription:v41 error:0];
    stickerCache = v4->_stickerCache;
    v43 = [v11 imageFileURL];
    [(NSMutableDictionary *)stickerCache setObject:v24 forKey:v43];
  }

  return v11;
}

- (id)_stickerForMSSticker:(id)a3
{
  v4 = [a3 imageFileURL];
  v5 = [(NSMutableDictionary *)self->_stickerCache objectForKey:v4];

  return v5;
}

- (id)requestSnapshotDataForPersistance
{
  v2 = [(CKRecentsViewController *)self view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v11 scale];
  v13 = v12;
  v18.width = v8;
  v18.height = v10;
  UIGraphicsBeginImageContextWithOptions(v18, 1, v13);

  [v2 drawViewHierarchyInRect:0 afterScreenUpdates:{v4, v6, v8, v10}];
  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v15 = UIImagePNGRepresentation(v14);

  return v15;
}

- (void)saveSnapshotForBrowserViewController
{
  v3 = [(CKRecentsViewController *)self _userInterfaceStyle];
  v4 = [(CKRecentsViewController *)self view];
  [v4 bounds];
  v16 = [CKSnapshotCacheKey keyWithIdentifier:@"com.apple.messages.browser.RecentPlugin" interfaceStyle:v3 bounds:?];

  v5 = [(CKRecentsViewController *)self requestSnapshotDataForPersistance];
  v6 = MEMORY[0x1E69DCAB8];
  v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v7 scale];
  v8 = [v6 imageWithData:v5 scale:?];

  v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
  v10 = [v16 stringValue];
  v11 = CKBrowserSnapshotPreviewURL(v10, @"png");

  CKFreeSpaceWriteDataToURL(v5, v11, 1);
  v12 = +[CKBalloonPluginManager sharedInstance];
  v13 = [v12 snapshotCache];
  v14 = [v16 stringValue];
  [v13 setCachedPreview:v9 key:v14];

  v15 = [MEMORY[0x1E696AD88] defaultCenter];
  [v15 postNotificationName:@"CKBalloonPluginManagerSnapshotsDidChange" object:0];
}

- (void)dismiss
{
  v2.receiver = self;
  v2.super_class = CKRecentsViewController;
  [(CKBrowserViewController *)&v2 dismiss];
}

- (BOOL)isLoaded
{
  v3.receiver = self;
  v3.super_class = CKRecentsViewController;
  return [(CKBrowserViewController *)&v3 isLoaded];
}

- (void)_setContentOverlayInsets:(UIEdgeInsets)a3
{
  bottom = a3.bottom;
  top = a3.top;
  v6.receiver = self;
  v6.super_class = CKRecentsViewController;
  [(CKRecentsViewController *)&v6 _setContentOverlayInsets:a3.top, a3.left, a3.bottom, a3.right];
  [(CKRecentsViewController *)self _setNavigationControllerContentInsetAdjustment:top, 0.0, bottom, 0.0];
}

- (void)insertSticker:(id)a3 forceStage:(BOOL)a4 completionHandler:(id)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"CKRecentsViewController.m" lineNumber:338 description:{@"Unexpected call to %s", "-[CKRecentsViewController insertSticker:forceStage:completionHandler:]"}];
}

- (void)insertSticker:(id)a3 representations:(id)a4 forceStage:(BOOL)a5 frameInScreenCoordinates:(CGRect)a6 completionHandler:(id)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v12 = a3;
  v13 = [v12 data];

  if (v13)
  {
    v14 = objc_alloc_init(CKBrowserItemPayload);
    v15 = [v12 data];

    [(CKBrowserItemPayload *)v14 setData:v15];
    [(CKBrowserItemPayload *)v14 setPluginBundleID:@"com.apple.Handwriting.HandwritingProvider"];
    v16 = [(CKBrowserViewController *)self sendDelegate];
    [v16 startEditingPayload:v14];
  }

  else
  {
    v14 = [(CKBrowserViewController *)self sendDelegate];
    v16 = [(CKRecentsViewController *)self _stickerForMSSticker:v12];

    [(CKBrowserItemPayload *)v14 commitSticker:v16 stickerFrame:x, y, width, height];
  }

  v17 = [MEMORY[0x1E69A8168] sharedInstance];
  [v17 trackEvent:*MEMORY[0x1E69A7718]];

  if ([(CKBrowserViewController *)self inExpandedPresentation])
  {
    v18 = [(CKBrowserViewController *)self sendDelegate];
    [v18 dismissAndReloadInputViews:1];
  }
}

- (void)startDragSticker:(id)a3 frameInRemoteView:(CGRect)a4 fence:(id)a5 completionHandler:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v25 = a3;
  v12 = a6;
  v13 = [v25 data];

  if (v13)
  {
    if (v12)
    {
      (*(v12 + 2))(v12, 0, 0);
    }
  }

  else
  {
    v24 = [v25 imageFileURL];
    v14 = [[CKImageData alloc] initWithURL:v24];
    v15 = [(CKImageData *)v14 durationsWithMaxCount:0x7FFFFFFFLL];
    v16 = [MEMORY[0x1E695DF70] array];
    if ([(CKImageData *)v14 count])
    {
      v17 = 0;
      do
      {
        v18 = [(CKImageData *)v14 thumbnailAtIndex:v17 fillToSize:0x7FFFFFFFLL maxCount:1.79769313e308, 1.79769313e308];
        if (v18)
        {
          [v16 addObject:v18];
        }

        ++v17;
      }

      while (v17 < [(CKImageData *)v14 count]);
    }

    v19 = [[CKAnimatedImage alloc] initWithImages:v16 durations:v15];
    v20 = [(CKBrowserViewController *)self browserDragManager];
    v21 = [(CKRecentsViewController *)self view];
    v22 = [(CKRecentsViewController *)self view];
    v23 = [v22 window];
    [v21 convertRect:v23 fromView:{x, y, width, height}];
    [v20 beginDraggingItem:v25 withAnimatedDragImage:v19 fromRect:?];

    [(CKRecentsViewController *)self setDraggingCompletionHandler:v12];
  }
}

- (void)dragManager:(id)a3 didEndDraggingItem:(id)a4 toDragTarget:(id)a5 dropArea:(int)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(CKBrowserViewController *)self sendDelegate];
  v14 = [(CKRecentsViewController *)self _stickerForMSSticker:v11];

  v15 = [v12 draggedSticker];

  [v13 commitSticker:v14 withDragTarget:v10 draggedSticker:v15];
  v16 = [MEMORY[0x1E69A8168] sharedInstance];
  [v16 trackEvent:*MEMORY[0x1E69A7718]];

  v17 = [(CKRecentsViewController *)self draggingCompletionHandler];

  if (v17)
  {
    v18 = [(CKRecentsViewController *)self draggingCompletionHandler];
    (v18)[2](v18, (a6 & 0xFFFFFFFD) == 1, 0);

    [(CKRecentsViewController *)self setDraggingCompletionHandler:0];
  }
}

- (BOOL)dragManager:(id)a3 canScaleItem:(id)a4
{
  v4 = [a4 data];
  v5 = v4 == 0;

  return v5;
}

- (BOOL)dragManager:(id)a3 canRotateItem:(id)a4
{
  v4 = [a4 data];
  v5 = v4 == 0;

  return v5;
}

- (BOOL)dragManager:(id)a3 canPeelItem:(id)a4
{
  v4 = [a4 data];
  v5 = v4 == 0;

  return v5;
}

- (BOOL)stickerBrowserView:(id)a3 shouldDrawBorderAroundSticker:(id)a4
{
  v4 = [a4 data];
  v5 = v4 != 0;

  return v5;
}

- (int64_t)_userInterfaceStyle
{
  v2 = [(CKRecentsViewController *)self view];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceStyle];

  return v4;
}

@end