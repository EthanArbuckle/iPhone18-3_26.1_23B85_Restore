@interface CKSyndicationSharedWithYouViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)maxContentSize;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5;
- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)_appIconNameForBundleID:(id)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)loadView;
- (void)setMaxContentSize:(CGSize)a3;
- (void)updateViewConstraints;
@end

@implementation CKSyndicationSharedWithYouViewController

- (void)loadView
{
  v15.receiver = self;
  v15.super_class = CKSyndicationSharedWithYouViewController;
  [(CKSyndicationSharedWithYouViewController *)&v15 loadView];
  v3 = [MEMORY[0x1E69A8288] onboardingAppBundleIDs];
  [(CKSyndicationSharedWithYouViewController *)self setDefaultAppBundleIDs:v3];

  v4 = objc_alloc(MEMORY[0x1E69DD250]);
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
  [(CKSyndicationSharedWithYouViewController *)self setView:v9];

  v10 = [(CKSyndicationSharedWithYouViewController *)self view];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = objc_alloc_init(MEMORY[0x1E69DC840]);
  v12 = [objc_alloc(MEMORY[0x1E69DC7F0]) initWithFrame:v11 collectionViewLayout:{v5, v6, v7, v8}];
  [(CKSyndicationSharedWithYouViewController *)self setCollectionView:v12];
  [v12 setDelegate:self];
  [v12 setDataSource:self];
  v13 = [MEMORY[0x1E69DC888] clearColor];
  [v12 setBackgroundColor:v13];

  [v12 setClipsToBounds:0];
  [v12 setSemanticContentAttribute:3];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [(CKSyndicationSharedWithYouViewController *)self view];
  [v14 addSubview:v12];
}

- (void)setMaxContentSize:(CGSize)a3
{
  if (a3.width != self->_maxContentSize.width || a3.height != self->_maxContentSize.height)
  {
    self->_maxContentSize = a3;
    v6 = [(CKSyndicationSharedWithYouViewController *)self collectionView];
    v7 = [v6 collectionViewLayout];
    [v7 invalidateLayout];

    v8 = [(CKSyndicationSharedWithYouViewController *)self view];
    [v8 setNeedsUpdateConstraints];
  }
}

- (void)updateViewConstraints
{
  v35[5] = *MEMORY[0x1E69E9840];
  v3 = [(CKSyndicationSharedWithYouViewController *)self constraints];
  v4 = [v3 count];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACD8];
    v6 = [(CKSyndicationSharedWithYouViewController *)self constraints];
    [v5 deactivateConstraints:v6];
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
  v33 = [(CKSyndicationSharedWithYouViewController *)self view];
  v32 = [v33 widthAnchor];
  v31 = [v32 constraintEqualToConstant:v10];
  v35[0] = v31;
  v30 = [(CKSyndicationSharedWithYouViewController *)self view];
  v29 = [v30 heightAnchor];
  v28 = [v29 constraintEqualToConstant:v10];
  v35[1] = v28;
  v27 = [(CKSyndicationSharedWithYouViewController *)self collectionView];
  v26 = [v27 widthAnchor];
  v25 = [v26 constraintEqualToConstant:v10];
  v35[2] = v25;
  v12 = [(CKSyndicationSharedWithYouViewController *)self collectionView];
  v13 = [v12 heightAnchor];
  v14 = [v13 constraintEqualToConstant:v10];
  v35[3] = v14;
  v15 = [(CKSyndicationSharedWithYouViewController *)self collectionView];
  v16 = [v15 centerXAnchor];
  v17 = [(CKSyndicationSharedWithYouViewController *)self view];
  v18 = [v17 centerXAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  v35[4] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:5];
  [(CKSyndicationSharedWithYouViewController *)self setConstraints:v20];

  v21 = [(CKSyndicationSharedWithYouViewController *)self constraints];
  v22 = [v21 count];

  if (v22)
  {
    v23 = MEMORY[0x1E696ACD8];
    v24 = [(CKSyndicationSharedWithYouViewController *)self constraints];
    [v23 activateConstraints:v24];
  }

  v34.receiver = self;
  v34.super_class = CKSyndicationSharedWithYouViewController;
  [(CKSyndicationSharedWithYouViewController *)&v34 updateViewConstraints];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(CKSyndicationSharedWithYouViewController *)self defaultAppBundleIDs:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CKSyndicationSharedWithYouViewController *)self collectionView];
  v7 = objc_opt_class();
  v8 = +[CKAppIconCollectionViewCell reuseIdentifier];
  [v6 registerClass:v7 forCellWithReuseIdentifier:v8];

  v9 = [(CKSyndicationSharedWithYouViewController *)self collectionView];
  v10 = +[CKAppIconCollectionViewCell reuseIdentifier];
  v11 = [v9 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v5];

  v12 = [(CKSyndicationSharedWithYouViewController *)self defaultAppBundleIDs];
  v13 = [v5 item];

  v14 = [v12 objectAtIndex:v13];

  v15 = [(CKSyndicationSharedWithYouViewController *)self _appIconNameForBundleID:v14];
  if (v15 != -1)
  {
    [v11 configureWithAppName:v15];
  }

  return v11;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
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

- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5
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

- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5
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

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
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

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v6 = a3;
  if (!IMSharedHelperDeviceIsiPad() || CKIsRunningInMacCatalyst())
  {
    CKIsRunningInMacCatalyst();
  }

  [v6 frame];
  v8 = v7;
  [(CKSyndicationSharedWithYouViewController *)self maxContentSize];
  v10 = v9 / 40.0;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (int64_t)_appIconNameForBundleID:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    if ([v3 isEqualToString:@"com.apple.podcasts"])
    {
      v4 = 3;
    }

    else if ([v3 isEqualToString:@"com.apple.news"])
    {
      v4 = 5;
    }

    else if ([v3 isEqualToString:@"com.apple.mobileslideshow"])
    {
      v4 = 2;
    }

    else if ([v3 isEqualToString:@"com.apple.tv"])
    {
      v4 = 4;
    }

    else if ([v3 isEqualToString:@"com.apple.mobilesafari"])
    {
      v4 = 0;
    }

    else if ([v3 isEqualToString:@"com.apple.Music"])
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