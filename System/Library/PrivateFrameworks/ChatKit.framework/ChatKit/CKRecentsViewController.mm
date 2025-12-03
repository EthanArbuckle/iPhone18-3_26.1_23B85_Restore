@interface CKRecentsViewController
- (BOOL)dragManager:(id)manager canPeelItem:(id)item;
- (BOOL)dragManager:(id)manager canRotateItem:(id)item;
- (BOOL)dragManager:(id)manager canScaleItem:(id)item;
- (BOOL)isLoaded;
- (BOOL)stickerBrowserView:(id)view shouldDrawBorderAroundSticker:(id)sticker;
- (CKRecentsViewController)initWithBalloonPlugin:(id)plugin dataSource:(id)source;
- (id)_stickerForMSSticker:(id)sticker;
- (id)requestSnapshotDataForPersistance;
- (id)stickerBrowserView:(id)view stickerAtIndex:(int64_t)index;
- (int64_t)_userInterfaceStyle;
- (int64_t)numberOfStickersInStickerBrowserView:(id)view;
- (void)_loadRecentHandwritingsAndStickersWithCompletion:(id)completion;
- (void)_postBrowserDidPrepareForDisplayNotificationIfNecessary;
- (void)_setContentOverlayInsets:(UIEdgeInsets)insets;
- (void)dealloc;
- (void)didTransitionFromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation;
- (void)dismiss;
- (void)dragManager:(id)manager didEndDraggingItem:(id)item toDragTarget:(id)target dropArea:(int)area;
- (void)forceTearDownRemoteView;
- (void)insertSticker:(id)sticker forceStage:(BOOL)stage completionHandler:(id)handler;
- (void)insertSticker:(id)sticker representations:(id)representations forceStage:(BOOL)stage frameInScreenCoordinates:(CGRect)coordinates completionHandler:(id)handler;
- (void)loadRecents;
- (void)loadView;
- (void)prepareForDisplay;
- (void)resortAndReloadRecents;
- (void)saveSnapshotForBrowserViewController;
- (void)setupNoRecentsLabel;
- (void)startDragSticker:(id)sticker frameInRemoteView:(CGRect)view fence:(id)fence completionHandler:(id)handler;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CKRecentsViewController

- (CKRecentsViewController)initWithBalloonPlugin:(id)plugin dataSource:(id)source
{
  v11.receiver = self;
  v11.super_class = CKRecentsViewController;
  v4 = [(CKBrowserViewController *)&v11 initWithBalloonPlugin:plugin dataSource:source];
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

- (void)_loadRecentHandwritingsAndStickersWithCompletion:(id)completion
{
  v3 = MEMORY[0x1E69A81E8];
  completionCopy = completion;
  sharedInstance = [v3 sharedInstance];
  [sharedInstance loadRecentHandwritingsAndStickersWithThumbnailSize:completionCopy completion:{80.0, 44.0}];
}

- (void)prepareForDisplay
{
  [(CKRecentsViewController *)self setPreparingForDisplay:1];

  [(CKRecentsViewController *)self loadRecents];
}

- (void)didTransitionFromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation
{
  v4 = [(CKRecentsViewController *)self browserView:orientation];
  [v4 invalidateFlowLayout];
}

- (void)forceTearDownRemoteView
{
  browserView = [(CKRecentsViewController *)self browserView];
  [browserView invalidateFlowLayout];
}

- (void)resortAndReloadRecents
{
  if ([(NSMutableArray *)self->_recentItems count])
  {
    [(NSMutableArray *)self->_recentItems sortUsingComparator:&__block_literal_global_194];
    browserView = [(CKRecentsViewController *)self browserView];
    [browserView reloadData];

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
    balloonPlugin = [(CKBrowserViewController *)self balloonPlugin];

    if (balloonPlugin)
    {
      v9 = @"CKRemoteViewPluginKey";
      balloonPlugin2 = [(CKBrowserViewController *)self balloonPlugin];
      v10[0] = balloonPlugin2;
      balloonPlugin = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__CKRecentsViewController__postBrowserDidPrepareForDisplayNotificationIfNecessary__block_invoke;
    block[3] = &unk_1E72EB8D0;
    v7 = balloonPlugin;
    selfCopy = self;
    v5 = balloonPlugin;
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
  view = [(CKRecentsViewController *)self view];
  [view frame];
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
  view = [(CKRecentsViewController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = [objc_alloc(MEMORY[0x193AF5EC0](@"MSStickerBrowserView" @"Messages"))];
  [(MSStickerBrowserView *)v5 setDataSource:self];
  [(MSStickerBrowserView *)v5 performSelector:sel_setDisplayDelegate_ withObject:self];
  [(MSStickerBrowserView *)v5 setAutoresizingMask:18];
  browserView = self->_browserView;
  self->_browserView = v5;
  v7 = v5;

  view2 = [(CKRecentsViewController *)self view];
  [view2 addSubview:self->_browserView];
}

- (void)viewDidLayoutSubviews
{
  browserView = self->_browserView;
  view = [(CKRecentsViewController *)self view];
  [view bounds];
  [(MSStickerBrowserView *)browserView setFrame:?];

  noRecentsLabel = self->_noRecentsLabel;
  if (noRecentsLabel)
  {
    view2 = [(CKRecentsViewController *)self view];
    [view2 bounds];
    [(UILabel *)noRecentsLabel setFrame:?];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CKRecentsViewController;
  [(CKBrowserViewController *)&v6 viewWillAppear:appear];
  v4 = [MEMORY[0x193AF5EC0](@"_MSStickerSendManager" @"Messages")];
  [v4 setDelegate:self];

  browserView = [(CKRecentsViewController *)self browserView];
  [browserView _startAnimating];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CKRecentsViewController;
  [(CKBrowserViewController *)&v5 viewDidDisappear:disappear];
  browserView = [(CKRecentsViewController *)self browserView];
  [browserView _stopAnimating];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CKRecentsViewController;
  [(CKRecentsViewController *)&v4 traitCollectionDidChange:change];
  [(CKRecentsViewController *)self recentsUpdated];
}

- (int64_t)numberOfStickersInStickerBrowserView:(id)view
{
  result = [(NSMutableArray *)self->_recentItems count];
  if (result >= 0x19)
  {
    return 25;
  }

  return result;
}

- (id)stickerBrowserView:(id)view stickerAtIndex:(int64_t)index
{
  selfCopy = self;
  v5 = [(NSMutableArray *)self->_recentItems objectAtIndex:index];
  v6 = MEMORY[0x193AF5EC0](@"MSSticker", @"Messages");
  payloadData = [v5 payloadData];

  if (payloadData)
  {
    v8 = [v6 alloc];
    fileURL = [v5 fileURL];
    payloadData2 = [v5 payloadData];
    v11 = [v8 initWithContentsOfURL:fileURL data:payloadData2 localizedDescription:@"handwriting" error:0];
  }

  else
  {
    fileURL = [v5 messageItemInfo];
    fileURL2 = [v5 fileURL];
    path = [fileURL2 path];
    payloadData2 = [path lastPathComponent];

    v14 = MEMORY[0x1E695DFF8];
    fileURL3 = [v5 fileURL];
    path2 = [fileURL3 path];
    v17 = [v14 fileURLWithPath:path2];

    v18 = [fileURL objectForKey:*MEMORY[0x1E69A7CB0]];
    v19 = v18;
    v20 = @"com.apple.messages.Recents";
    if (v18)
    {
      v20 = v18;
    }

    v21 = v20;

    v22 = objc_alloc(MEMORY[0x1E69A82C0]);
    accessibilityString = [v5 accessibilityString];
    v47 = v17;
    v24 = [v22 initWithStickerID:payloadData2 stickerPackID:v21 fileURL:v17 accessibilityLabel:accessibilityString accessibilityName:0 searchText:0 sanitizedPrompt:0 moodCategory:0 stickerName:0];

    mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
    stickerPackGUID = [v24 stickerPackGUID];
    v27 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:stickerPackGUID];

    v46 = v27;
    attributionInfo = [v27 attributionInfo];
    [v24 setAttributionInfo:attributionInfo];

    v29 = [fileURL objectForKey:*MEMORY[0x1E69A7CC0]];
    if ([v29 length])
    {
      _FTDataFromHexString = [v29 _FTDataFromHexString];
      [v24 setRecipe:_FTDataFromHexString];

      v31 = [fileURL objectForKey:*MEMORY[0x1E69A7C80]];
      [v24 setBallonBundleID:v31];
    }

    v45 = v29;
    accessibilityString2 = [v5 accessibilityString];
    v33 = [accessibilityString2 length];

    v34 = MEMORY[0x1E696AEC0];
    v35 = CKFrameworkBundle();
    v36 = v35;
    if (v33)
    {
      v37 = [v35 localizedStringForKey:@"STICKER_ACCESSIBILTY_LABEL_FORMAT" value:&stru_1F04268F8 table:@"ChatKit"];
      [v5 accessibilityString];
      v38 = selfCopy;
      v40 = v39 = v6;
      v41 = [v34 stringWithFormat:v37, v40];

      v6 = v39;
      selfCopy = v38;
    }

    else
    {
      v37 = [v35 localizedStringForKey:@"STICKER_ACCESSIBILTY_LABEL_NO_CONTENT" value:&stru_1F04268F8 table:@"ChatKit"];
      v41 = [v34 stringWithFormat:v37];
    }

    v11 = [[v6 alloc] initWithContentsOfFileURL:v47 localizedDescription:v41 error:0];
    stickerCache = selfCopy->_stickerCache;
    imageFileURL = [v11 imageFileURL];
    [(NSMutableDictionary *)stickerCache setObject:v24 forKey:imageFileURL];
  }

  return v11;
}

- (id)_stickerForMSSticker:(id)sticker
{
  imageFileURL = [sticker imageFileURL];
  v5 = [(NSMutableDictionary *)self->_stickerCache objectForKey:imageFileURL];

  return v5;
}

- (id)requestSnapshotDataForPersistance
{
  view = [(CKRecentsViewController *)self view];
  [view bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v13 = v12;
  v18.width = v8;
  v18.height = v10;
  UIGraphicsBeginImageContextWithOptions(v18, 1, v13);

  [view drawViewHierarchyInRect:0 afterScreenUpdates:{v4, v6, v8, v10}];
  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v15 = UIImagePNGRepresentation(v14);

  return v15;
}

- (void)saveSnapshotForBrowserViewController
{
  _userInterfaceStyle = [(CKRecentsViewController *)self _userInterfaceStyle];
  view = [(CKRecentsViewController *)self view];
  [view bounds];
  v16 = [CKSnapshotCacheKey keyWithIdentifier:@"com.apple.messages.browser.RecentPlugin" interfaceStyle:_userInterfaceStyle bounds:?];

  requestSnapshotDataForPersistance = [(CKRecentsViewController *)self requestSnapshotDataForPersistance];
  v6 = MEMORY[0x1E69DCAB8];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v8 = [v6 imageWithData:requestSnapshotDataForPersistance scale:?];

  v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
  stringValue = [v16 stringValue];
  v11 = CKBrowserSnapshotPreviewURL(stringValue, @"png");

  CKFreeSpaceWriteDataToURL(requestSnapshotDataForPersistance, v11, 1);
  v12 = +[CKBalloonPluginManager sharedInstance];
  snapshotCache = [v12 snapshotCache];
  stringValue2 = [v16 stringValue];
  [snapshotCache setCachedPreview:v9 key:stringValue2];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CKBalloonPluginManagerSnapshotsDidChange" object:0];
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

- (void)_setContentOverlayInsets:(UIEdgeInsets)insets
{
  bottom = insets.bottom;
  top = insets.top;
  v6.receiver = self;
  v6.super_class = CKRecentsViewController;
  [(CKRecentsViewController *)&v6 _setContentOverlayInsets:insets.top, insets.left, insets.bottom, insets.right];
  [(CKRecentsViewController *)self _setNavigationControllerContentInsetAdjustment:top, 0.0, bottom, 0.0];
}

- (void)insertSticker:(id)sticker forceStage:(BOOL)stage completionHandler:(id)handler
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CKRecentsViewController.m" lineNumber:338 description:{@"Unexpected call to %s", "-[CKRecentsViewController insertSticker:forceStage:completionHandler:]"}];
}

- (void)insertSticker:(id)sticker representations:(id)representations forceStage:(BOOL)stage frameInScreenCoordinates:(CGRect)coordinates completionHandler:(id)handler
{
  height = coordinates.size.height;
  width = coordinates.size.width;
  y = coordinates.origin.y;
  x = coordinates.origin.x;
  stickerCopy = sticker;
  data = [stickerCopy data];

  if (data)
  {
    sendDelegate2 = objc_alloc_init(CKBrowserItemPayload);
    data2 = [stickerCopy data];

    [(CKBrowserItemPayload *)sendDelegate2 setData:data2];
    [(CKBrowserItemPayload *)sendDelegate2 setPluginBundleID:@"com.apple.Handwriting.HandwritingProvider"];
    sendDelegate = [(CKBrowserViewController *)self sendDelegate];
    [sendDelegate startEditingPayload:sendDelegate2];
  }

  else
  {
    sendDelegate2 = [(CKBrowserViewController *)self sendDelegate];
    sendDelegate = [(CKRecentsViewController *)self _stickerForMSSticker:stickerCopy];

    [(CKBrowserItemPayload *)sendDelegate2 commitSticker:sendDelegate stickerFrame:x, y, width, height];
  }

  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A7718]];

  if ([(CKBrowserViewController *)self inExpandedPresentation])
  {
    sendDelegate3 = [(CKBrowserViewController *)self sendDelegate];
    [sendDelegate3 dismissAndReloadInputViews:1];
  }
}

- (void)startDragSticker:(id)sticker frameInRemoteView:(CGRect)view fence:(id)fence completionHandler:(id)handler
{
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  stickerCopy = sticker;
  handlerCopy = handler;
  data = [stickerCopy data];

  if (data)
  {
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }

  else
  {
    imageFileURL = [stickerCopy imageFileURL];
    v14 = [[CKImageData alloc] initWithURL:imageFileURL];
    v15 = [(CKImageData *)v14 durationsWithMaxCount:0x7FFFFFFFLL];
    array = [MEMORY[0x1E695DF70] array];
    if ([(CKImageData *)v14 count])
    {
      v17 = 0;
      do
      {
        v18 = [(CKImageData *)v14 thumbnailAtIndex:v17 fillToSize:0x7FFFFFFFLL maxCount:1.79769313e308, 1.79769313e308];
        if (v18)
        {
          [array addObject:v18];
        }

        ++v17;
      }

      while (v17 < [(CKImageData *)v14 count]);
    }

    v19 = [[CKAnimatedImage alloc] initWithImages:array durations:v15];
    browserDragManager = [(CKBrowserViewController *)self browserDragManager];
    view = [(CKRecentsViewController *)self view];
    view2 = [(CKRecentsViewController *)self view];
    window = [view2 window];
    [view convertRect:window fromView:{x, y, width, height}];
    [browserDragManager beginDraggingItem:stickerCopy withAnimatedDragImage:v19 fromRect:?];

    [(CKRecentsViewController *)self setDraggingCompletionHandler:handlerCopy];
  }
}

- (void)dragManager:(id)manager didEndDraggingItem:(id)item toDragTarget:(id)target dropArea:(int)area
{
  targetCopy = target;
  itemCopy = item;
  managerCopy = manager;
  sendDelegate = [(CKBrowserViewController *)self sendDelegate];
  v14 = [(CKRecentsViewController *)self _stickerForMSSticker:itemCopy];

  draggedSticker = [managerCopy draggedSticker];

  [sendDelegate commitSticker:v14 withDragTarget:targetCopy draggedSticker:draggedSticker];
  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A7718]];

  draggingCompletionHandler = [(CKRecentsViewController *)self draggingCompletionHandler];

  if (draggingCompletionHandler)
  {
    draggingCompletionHandler2 = [(CKRecentsViewController *)self draggingCompletionHandler];
    (draggingCompletionHandler2)[2](draggingCompletionHandler2, (area & 0xFFFFFFFD) == 1, 0);

    [(CKRecentsViewController *)self setDraggingCompletionHandler:0];
  }
}

- (BOOL)dragManager:(id)manager canScaleItem:(id)item
{
  data = [item data];
  v5 = data == 0;

  return v5;
}

- (BOOL)dragManager:(id)manager canRotateItem:(id)item
{
  data = [item data];
  v5 = data == 0;

  return v5;
}

- (BOOL)dragManager:(id)manager canPeelItem:(id)item
{
  data = [item data];
  v5 = data == 0;

  return v5;
}

- (BOOL)stickerBrowserView:(id)view shouldDrawBorderAroundSticker:(id)sticker
{
  data = [sticker data];
  v5 = data != 0;

  return v5;
}

- (int64_t)_userInterfaceStyle
{
  view = [(CKRecentsViewController *)self view];
  traitCollection = [view traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  return userInterfaceStyle;
}

@end