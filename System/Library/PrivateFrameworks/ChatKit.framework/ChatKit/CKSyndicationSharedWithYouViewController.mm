@interface CKSyndicationSharedWithYouViewController
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)maxContentSize;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index;
- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)_appIconNameForBundleID:(id)d;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)loadView;
- (void)setMaxContentSize:(CGSize)size;
- (void)updateViewConstraints;
@end

@implementation CKSyndicationSharedWithYouViewController

- (void)loadView
{
  v15.receiver = self;
  v15.super_class = CKSyndicationSharedWithYouViewController;
  [(CKSyndicationSharedWithYouViewController *)&v15 loadView];
  onboardingAppBundleIDs = [MEMORY[0x1E69A8288] onboardingAppBundleIDs];
  [(CKSyndicationSharedWithYouViewController *)self setDefaultAppBundleIDs:onboardingAppBundleIDs];

  v4 = objc_alloc(MEMORY[0x1E69DD250]);
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
  [(CKSyndicationSharedWithYouViewController *)self setView:v9];

  view = [(CKSyndicationSharedWithYouViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = objc_alloc_init(MEMORY[0x1E69DC840]);
  v12 = [objc_alloc(MEMORY[0x1E69DC7F0]) initWithFrame:v11 collectionViewLayout:{v5, v6, v7, v8}];
  [(CKSyndicationSharedWithYouViewController *)self setCollectionView:v12];
  [v12 setDelegate:self];
  [v12 setDataSource:self];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v12 setBackgroundColor:clearColor];

  [v12 setClipsToBounds:0];
  [v12 setSemanticContentAttribute:3];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(CKSyndicationSharedWithYouViewController *)self view];
  [view2 addSubview:v12];
}

- (void)setMaxContentSize:(CGSize)size
{
  if (size.width != self->_maxContentSize.width || size.height != self->_maxContentSize.height)
  {
    self->_maxContentSize = size;
    collectionView = [(CKSyndicationSharedWithYouViewController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];
    [collectionViewLayout invalidateLayout];

    view = [(CKSyndicationSharedWithYouViewController *)self view];
    [view setNeedsUpdateConstraints];
  }
}

- (void)updateViewConstraints
{
  v35[5] = *MEMORY[0x1E69E9840];
  constraints = [(CKSyndicationSharedWithYouViewController *)self constraints];
  v4 = [constraints count];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACD8];
    constraints2 = [(CKSyndicationSharedWithYouViewController *)self constraints];
    [v5 deactivateConstraints:constraints2];
  }

  [(CKSyndicationSharedWithYouViewController *)self maxContentSize];
  v8 = v7;
  if (IMSharedHelperDeviceIsiPad() && !CKIsRunningInMacCatalyst())
  {
    v9 = 0.45;
  }

  else
  {
    v9 = 0.75;
    if (!CKIsRunningInMacCatalyst())
    {
      v10 = v8 * 0.8;
      goto LABEL_9;
    }
  }

  [(CKSyndicationSharedWithYouViewController *)self maxContentSize];
  v10 = v11 * v9;
LABEL_9:
  view = [(CKSyndicationSharedWithYouViewController *)self view];
  widthAnchor = [view widthAnchor];
  v31 = [widthAnchor constraintEqualToConstant:v10];
  v35[0] = v31;
  view2 = [(CKSyndicationSharedWithYouViewController *)self view];
  heightAnchor = [view2 heightAnchor];
  v28 = [heightAnchor constraintEqualToConstant:v10];
  v35[1] = v28;
  collectionView = [(CKSyndicationSharedWithYouViewController *)self collectionView];
  widthAnchor2 = [collectionView widthAnchor];
  v25 = [widthAnchor2 constraintEqualToConstant:v10];
  v35[2] = v25;
  collectionView2 = [(CKSyndicationSharedWithYouViewController *)self collectionView];
  heightAnchor2 = [collectionView2 heightAnchor];
  v14 = [heightAnchor2 constraintEqualToConstant:v10];
  v35[3] = v14;
  collectionView3 = [(CKSyndicationSharedWithYouViewController *)self collectionView];
  centerXAnchor = [collectionView3 centerXAnchor];
  view3 = [(CKSyndicationSharedWithYouViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v35[4] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:5];
  [(CKSyndicationSharedWithYouViewController *)self setConstraints:v20];

  constraints3 = [(CKSyndicationSharedWithYouViewController *)self constraints];
  v22 = [constraints3 count];

  if (v22)
  {
    v23 = MEMORY[0x1E696ACD8];
    constraints4 = [(CKSyndicationSharedWithYouViewController *)self constraints];
    [v23 activateConstraints:constraints4];
  }

  v34.receiver = self;
  v34.super_class = CKSyndicationSharedWithYouViewController;
  [(CKSyndicationSharedWithYouViewController *)&v34 updateViewConstraints];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(CKSyndicationSharedWithYouViewController *)self defaultAppBundleIDs:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(CKSyndicationSharedWithYouViewController *)self collectionView];
  v7 = objc_opt_class();
  v8 = +[CKAppIconCollectionViewCell reuseIdentifier];
  [collectionView registerClass:v7 forCellWithReuseIdentifier:v8];

  collectionView2 = [(CKSyndicationSharedWithYouViewController *)self collectionView];
  v10 = +[CKAppIconCollectionViewCell reuseIdentifier];
  v11 = [collectionView2 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:pathCopy];

  defaultAppBundleIDs = [(CKSyndicationSharedWithYouViewController *)self defaultAppBundleIDs];
  item = [pathCopy item];

  v14 = [defaultAppBundleIDs objectAtIndex:item];

  v15 = [(CKSyndicationSharedWithYouViewController *)self _appIconNameForBundleID:v14];
  if (v15 != -1)
  {
    [v11 configureWithAppName:v15];
  }

  return v11;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  if (IMSharedHelperDeviceIsiPad() && !CKIsRunningInMacCatalyst())
  {
    [(CKSyndicationSharedWithYouViewController *)self maxContentSize];
    v11 = v14 / 15.0;
    [(CKSyndicationSharedWithYouViewController *)self maxContentSize];
    v12 = v15 / 15.0;
  }

  else
  {
    v6 = CKIsRunningInMacCatalyst();
    [(CKSyndicationSharedWithYouViewController *)self maxContentSize];
    v8 = v7;
    [(CKSyndicationSharedWithYouViewController *)self maxContentSize];
    if (v6)
    {
      v10 = 8.5;
    }

    else
    {
      v10 = 7.0;
    }

    v11 = v8 / v10;
    v12 = v9 / v10;
  }

  v13 = v11;
  result.height = v12;
  result.width = v13;
  return result;
}

- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index
{
  if (IMSharedHelperDeviceIsiPad() && !CKIsRunningInMacCatalyst())
  {
    [(CKSyndicationSharedWithYouViewController *)self maxContentSize];
    return v10 / 25.0;
  }

  else
  {
    v6 = CKIsRunningInMacCatalyst();
    [(CKSyndicationSharedWithYouViewController *)self maxContentSize];
    if (v6)
    {
      v8 = 35.0;
    }

    else
    {
      v8 = 14.5;
    }

    return v7 / v8;
  }
}

- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index
{
  if (IMSharedHelperDeviceIsiPad() && !CKIsRunningInMacCatalyst())
  {
    [(CKSyndicationSharedWithYouViewController *)self maxContentSize];
    return v10 / 25.0;
  }

  else
  {
    v6 = CKIsRunningInMacCatalyst();
    [(CKSyndicationSharedWithYouViewController *)self maxContentSize];
    result = v7 / 14.5;
    v9 = v7 / 10.0;
    if (v6)
    {
      return v9;
    }
  }

  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  if (IMSharedHelperDeviceIsiPad() && !CKIsRunningInMacCatalyst())
  {
    [(CKSyndicationSharedWithYouViewController *)self maxContentSize];
    v8 = v20 / 15.0;
    [(CKSyndicationSharedWithYouViewController *)self maxContentSize];
    v15 = v21 / 20.0;
    [(CKSyndicationSharedWithYouViewController *)self maxContentSize];
    v12 = v22 / 15.0;
    [(CKSyndicationSharedWithYouViewController *)self maxContentSize];
    v16 = v23 / 20.0;
  }

  else
  {
    v6 = CKIsRunningInMacCatalyst();
    [(CKSyndicationSharedWithYouViewController *)self maxContentSize];
    v8 = v7 / 7.0;
    [(CKSyndicationSharedWithYouViewController *)self maxContentSize];
    v10 = v9;
    [(CKSyndicationSharedWithYouViewController *)self maxContentSize];
    v12 = v11 / 7.0;
    [(CKSyndicationSharedWithYouViewController *)self maxContentSize];
    if (v6)
    {
      v14 = 10.0;
    }

    else
    {
      v14 = 15.0;
    }

    v15 = v10 / v14;
    v16 = v13 / v14;
  }

  v17 = v8;
  v18 = v15;
  v19 = v12;
  result.right = v16;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (!IMSharedHelperDeviceIsiPad() || CKIsRunningInMacCatalyst())
  {
    CKIsRunningInMacCatalyst();
  }

  [viewCopy frame];
  v8 = v7;
  [(CKSyndicationSharedWithYouViewController *)self maxContentSize];
  v10 = v9 / 40.0;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (int64_t)_appIconNameForBundleID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    if ([dCopy isEqualToString:@"com.apple.podcasts"])
    {
      v4 = 3;
    }

    else if ([dCopy isEqualToString:@"com.apple.news"])
    {
      v4 = 5;
    }

    else if ([dCopy isEqualToString:@"com.apple.mobileslideshow"])
    {
      v4 = 2;
    }

    else if ([dCopy isEqualToString:@"com.apple.tv"])
    {
      v4 = 4;
    }

    else if ([dCopy isEqualToString:@"com.apple.mobilesafari"])
    {
      v4 = 0;
    }

    else if ([dCopy isEqualToString:@"com.apple.Music"])
    {
      v4 = 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (CGSize)maxContentSize
{
  width = self->_maxContentSize.width;
  height = self->_maxContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end