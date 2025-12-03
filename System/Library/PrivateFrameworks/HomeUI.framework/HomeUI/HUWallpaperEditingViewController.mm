@interface HUWallpaperEditingViewController
- (HUWallpaperEditingViewController)initWithWallpaper:(id)wallpaper image:(id)image delegate:(id)delegate;
- (HUWallpaperEditingViewControllerDelegate)delegate;
- (id)_blurButtonConfiguration;
- (id)_convertDefaultBlurImage:(id)image toScale:(double)scale;
- (id)_croppedWallpaperInfo;
- (id)_screenScaleAdjustedImage:(id)image;
- (void)_blurButtonPressed:(id)pressed;
- (void)_cancelButtonPressed:(id)pressed;
- (void)_createButtonViews;
- (void)_refreshBlurButton;
- (void)_setButtonPressed:(id)pressed;
- (void)updateScrollViewScale;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUWallpaperEditingViewController

- (HUWallpaperEditingViewController)initWithWallpaper:(id)wallpaper image:(id)image delegate:(id)delegate
{
  wallpaperCopy = wallpaper;
  imageCopy = image;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = HUWallpaperEditingViewController;
  v12 = [(HUWallpaperEditingViewController *)&v19 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeStrong(&v13->_wallpaper, wallpaper);
    if ([wallpaperCopy type] == 4)
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v15 = [(HUWallpaperEditingViewController *)v13 _convertDefaultBlurImage:imageCopy toScale:?];
      image = v13->_image;
      v13->_image = v15;
    }

    else
    {
      v17 = [(HUWallpaperEditingViewController *)v13 _screenScaleAdjustedImage:imageCopy];
      mainScreen = v13->_image;
      v13->_image = v17;
    }
  }

  return v13;
}

- (id)_screenScaleAdjustedImage:(id)image
{
  imageCopy = image;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v6 = v5;

  [imageCopy scale];
  if (v7 == v6)
  {
    v8 = imageCopy;
  }

  else
  {
    v8 = [MEMORY[0x277D755B8] imageWithCGImage:objc_msgSend(imageCopy scale:"CGImage") orientation:{objc_msgSend(imageCopy, "imageOrientation"), v6}];
  }

  v9 = v8;

  return v9;
}

- (id)_convertDefaultBlurImage:(id)image toScale:(double)scale
{
  imageCopy = image;
  imageAsset = [imageCopy imageAsset];
  v7 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
  v8 = [imageAsset imageWithTraitCollection:v7];

  imageAsset2 = [imageCopy imageAsset];

  v10 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v11 = [imageAsset2 imageWithTraitCollection:v10];

  v12 = [MEMORY[0x277D755B8] imageWithCGImage:objc_msgSend(v8 scale:"CGImage") orientation:{objc_msgSend(v8, "imageOrientation"), scale}];
  v13 = [MEMORY[0x277D755B8] imageWithCGImage:objc_msgSend(v11 scale:"CGImage") orientation:{objc_msgSend(v11, "imageOrientation"), scale}];
  imageAsset3 = [v12 imageAsset];
  v15 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  [imageAsset3 registerImage:v13 withTraitCollection:v15];

  return v12;
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = HUWallpaperEditingViewController;
  [(HUWallpaperEditingViewController *)&v7 viewWillAppear:appear];
  [(HUWallpaperEditingViewController *)self setStatusBarHidden:1];
  navigationController = [(HUWallpaperEditingViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1];

  v5 = *MEMORY[0x277D76DA0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HUWallpaperEditingViewController_viewWillAppear___block_invoke;
  v6[3] = &unk_277DB8488;
  v6[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v6 animations:v5];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = HUWallpaperEditingViewController;
  [(HUWallpaperEditingViewController *)&v7 viewWillDisappear:disappear];
  [(HUWallpaperEditingViewController *)self setStatusBarHidden:0];
  navigationController = [(HUWallpaperEditingViewController *)self navigationController];
  [navigationController setNavigationBarHidden:0];

  v5 = *MEMORY[0x277D76DA0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__HUWallpaperEditingViewController_viewWillDisappear___block_invoke;
  v6[3] = &unk_277DB8488;
  v6[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v6 animations:v5];
}

- (void)viewDidLoad
{
  v96[1] = *MEMORY[0x277D85DE8];
  v95.receiver = self;
  v95.super_class = HUWallpaperEditingViewController;
  [(HUWallpaperEditingViewController *)&v95 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D759D8]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(HUWallpaperEditingViewController *)self setScrollView:v4];

  scrollView = [(HUWallpaperEditingViewController *)self scrollView];
  [scrollView setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollView2 = [(HUWallpaperEditingViewController *)self scrollView];
  [scrollView2 setShowsHorizontalScrollIndicator:0];

  scrollView3 = [(HUWallpaperEditingViewController *)self scrollView];
  [scrollView3 setShowsVerticalScrollIndicator:0];

  systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
  scrollView4 = [(HUWallpaperEditingViewController *)self scrollView];
  [scrollView4 setBackgroundColor:systemBlackColor];

  scrollView5 = [(HUWallpaperEditingViewController *)self scrollView];
  [scrollView5 setDelegate:self];

  view = [(HUWallpaperEditingViewController *)self view];
  scrollView6 = [(HUWallpaperEditingViewController *)self scrollView];
  [view addSubview:scrollView6];

  v13 = objc_alloc(MEMORY[0x277D755E8]);
  image = [(HUWallpaperEditingViewController *)self image];
  v15 = [v13 initWithImage:image];
  [(HUWallpaperEditingViewController *)self setImageView:v15];

  wallpaper = [(HUWallpaperEditingViewController *)self wallpaper];
  LOBYTE(image) = [wallpaper isCustomType];

  if (image)
  {
    image2 = [(HUWallpaperEditingViewController *)self image];
    [image2 size];
    v19 = v18;
    v21 = v20;
    scrollView7 = [(HUWallpaperEditingViewController *)self scrollView];
    [scrollView7 setContentSize:{v19, v21}];
  }

  else
  {
    imageView = [(HUWallpaperEditingViewController *)self imageView];
    [imageView setTranslatesAutoresizingMaskIntoConstraints:0];

    imageView2 = [(HUWallpaperEditingViewController *)self imageView];
    [imageView2 setContentMode:2];

    image2 = [(HUWallpaperEditingViewController *)self scrollView];
    [image2 setUserInteractionEnabled:0];
  }

  scrollView8 = [(HUWallpaperEditingViewController *)self scrollView];
  imageView3 = [(HUWallpaperEditingViewController *)self imageView];
  [scrollView8 addSubview:imageView3];

  scrollView9 = [(HUWallpaperEditingViewController *)self scrollView];
  [scrollView9 setContentInsetAdjustmentBehavior:2];

  [(HUWallpaperEditingViewController *)self _createButtonViews];
  array = [MEMORY[0x277CBEB18] array];
  scrollView10 = [(HUWallpaperEditingViewController *)self scrollView];
  topAnchor = [scrollView10 topAnchor];
  view2 = [(HUWallpaperEditingViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v33];

  scrollView11 = [(HUWallpaperEditingViewController *)self scrollView];
  leadingAnchor = [scrollView11 leadingAnchor];
  view3 = [(HUWallpaperEditingViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v38];

  scrollView12 = [(HUWallpaperEditingViewController *)self scrollView];
  trailingAnchor = [scrollView12 trailingAnchor];
  view4 = [(HUWallpaperEditingViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v43];

  scrollView13 = [(HUWallpaperEditingViewController *)self scrollView];
  bottomAnchor = [scrollView13 bottomAnchor];
  view5 = [(HUWallpaperEditingViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v48 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v48];

  wallpaper2 = [(HUWallpaperEditingViewController *)self wallpaper];
  LOBYTE(bottomAnchor) = [wallpaper2 isCustomType];

  if ((bottomAnchor & 1) == 0)
  {
    imageView4 = [(HUWallpaperEditingViewController *)self imageView];
    topAnchor3 = [imageView4 topAnchor];
    view6 = [(HUWallpaperEditingViewController *)self view];
    topAnchor4 = [view6 topAnchor];
    v54 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [array addObject:v54];

    imageView5 = [(HUWallpaperEditingViewController *)self imageView];
    bottomAnchor3 = [imageView5 bottomAnchor];
    view7 = [(HUWallpaperEditingViewController *)self view];
    bottomAnchor4 = [view7 bottomAnchor];
    v59 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [array addObject:v59];

    imageView6 = [(HUWallpaperEditingViewController *)self imageView];
    leadingAnchor3 = [imageView6 leadingAnchor];
    view8 = [(HUWallpaperEditingViewController *)self view];
    safeAreaLayoutGuide = [view8 safeAreaLayoutGuide];
    leadingAnchor4 = [safeAreaLayoutGuide leadingAnchor];
    v65 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [array addObject:v65];

    imageView7 = [(HUWallpaperEditingViewController *)self imageView];
    trailingAnchor3 = [imageView7 trailingAnchor];
    view9 = [(HUWallpaperEditingViewController *)self view];
    safeAreaLayoutGuide2 = [view9 safeAreaLayoutGuide];
    trailingAnchor4 = [safeAreaLayoutGuide2 trailingAnchor];
    v71 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [array addObject:v71];
  }

  bottomToolbar = [(HUWallpaperEditingViewController *)self bottomToolbar];
  safeAreaLayoutGuide3 = [bottomToolbar safeAreaLayoutGuide];
  widthAnchor = [safeAreaLayoutGuide3 widthAnchor];
  view10 = [(HUWallpaperEditingViewController *)self view];
  safeAreaLayoutGuide4 = [view10 safeAreaLayoutGuide];
  widthAnchor2 = [safeAreaLayoutGuide4 widthAnchor];
  v78 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [array addObject:v78];

  bottomToolbar2 = [(HUWallpaperEditingViewController *)self bottomToolbar];
  safeAreaLayoutGuide5 = [bottomToolbar2 safeAreaLayoutGuide];
  bottomAnchor5 = [safeAreaLayoutGuide5 bottomAnchor];
  view11 = [(HUWallpaperEditingViewController *)self view];
  safeAreaLayoutGuide6 = [view11 safeAreaLayoutGuide];
  bottomAnchor6 = [safeAreaLayoutGuide6 bottomAnchor];
  isAMac = [MEMORY[0x277D14CE8] isAMac];
  v86 = 0.0;
  if (isAMac)
  {
    v86 = -18.0;
  }

  v87 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:v86];
  [array addObject:v87];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
  v88 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
  [v88 setValue:&unk_2824933A0 forKey:*MEMORY[0x277CDA4F0]];
  [v88 setValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDA4C8]];
  v96[0] = v88;
  v89 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:1];
  [(HUWallpaperEditingViewController *)self setLayerFilters:v89];

  wallpaper3 = [(HUWallpaperEditingViewController *)self wallpaper];
  type = [wallpaper3 type];
  if (type == 6)
  {
    layerFilters = [(HUWallpaperEditingViewController *)self layerFilters];
  }

  else
  {
    layerFilters = 0;
  }

  imageView8 = [(HUWallpaperEditingViewController *)self imageView];
  layer = [imageView8 layer];
  [layer setFilters:layerFilters];

  if (type == 6)
  {
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUWallpaperEditingViewController;
  [(HUWallpaperEditingViewController *)&v3 viewDidLayoutSubviews];
  if (![(HUWallpaperEditingViewController *)self scrollViewHasBeenLoaded])
  {
    [(HUWallpaperEditingViewController *)self updateScrollViewScale];
    [(HUWallpaperEditingViewController *)self setScrollViewHasBeenLoaded:1];
  }
}

- (void)_setButtonPressed:(id)pressed
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: Set button pressed", &v14, 0xCu);
  }

  delegate = [(HUWallpaperEditingViewController *)self delegate];
  v6 = objc_alloc(MEMORY[0x277D14D10]);
  wallpaper = [(HUWallpaperEditingViewController *)self wallpaper];
  type = [wallpaper type];
  wallpaper2 = [(HUWallpaperEditingViewController *)self wallpaper];
  assetIdentifier = [wallpaper2 assetIdentifier];
  _croppedWallpaperInfo = [(HUWallpaperEditingViewController *)self _croppedWallpaperInfo];
  v12 = [v6 initWithType:type assetIdentifier:assetIdentifier cropInfo:_croppedWallpaperInfo];
  image = [(HUWallpaperEditingViewController *)self image];
  [delegate wallpaperEditing:self didFinishWithWallpaper:v12 image:image];
}

- (void)_cancelButtonPressed:(id)pressed
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: Cancel button pressed", &v6, 0xCu);
  }

  delegate = [(HUWallpaperEditingViewController *)self delegate];
  [delegate wallpaperEditingDidCancel:self];
}

- (void)_blurButtonPressed:(id)pressed
{
  v22 = *MEMORY[0x277D85DE8];
  wallpaper = [(HUWallpaperEditingViewController *)self wallpaper];
  type = [wallpaper type];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"OFF";
    if (type == 1)
    {
      v7 = @"ON";
    }

    v18 = 138412546;
    selfCopy = self;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: Blur button toggled %@", &v18, 0x16u);
  }

  if (type == 1)
  {
    v8 = 6;
  }

  else
  {
    v8 = 1;
  }

  v9 = objc_alloc(MEMORY[0x277D14D10]);
  wallpaper2 = [(HUWallpaperEditingViewController *)self wallpaper];
  assetIdentifier = [wallpaper2 assetIdentifier];
  wallpaper3 = [(HUWallpaperEditingViewController *)self wallpaper];
  cropInfo = [wallpaper3 cropInfo];
  v14 = [v9 initWithType:v8 assetIdentifier:assetIdentifier cropInfo:cropInfo];

  [(HUWallpaperEditingViewController *)self setWallpaper:v14];
  if (type == 1)
  {
    layerFilters = [(HUWallpaperEditingViewController *)self layerFilters];
  }

  else
  {
    layerFilters = 0;
  }

  imageView = [(HUWallpaperEditingViewController *)self imageView];
  layer = [imageView layer];
  [layer setFilters:layerFilters];

  if (type == 1)
  {
  }

  [(HUWallpaperEditingViewController *)self _refreshBlurButton];
}

- (void)updateScrollViewScale
{
  v111 = *MEMORY[0x277D85DE8];
  wallpaper = [(HUWallpaperEditingViewController *)self wallpaper];
  if ([wallpaper type] != 3)
  {
    wallpaper2 = [(HUWallpaperEditingViewController *)self wallpaper];
    if ([wallpaper2 type] == 4)
    {

      goto LABEL_4;
    }

    wallpaper3 = [(HUWallpaperEditingViewController *)self wallpaper];
    type = [wallpaper3 type];

    if (type == 5)
    {
      return;
    }

    [MEMORY[0x277D14D10] contentSizeForWallpaper];
    v7 = v6;
    v9 = v8;
    image = [(HUWallpaperEditingViewController *)self image];
    [image size];
    v12 = v7 / v11;

    image2 = [(HUWallpaperEditingViewController *)self image];
    [image2 size];
    v15 = v9 / v14;

    if (v12 < 1.0 && v15 < 1.0)
    {
      scrollView = [(HUWallpaperEditingViewController *)self scrollView];
      [scrollView setMaximumZoomScale:1.0];

      if (v12 < v15)
      {
        v12 = v15;
      }

      scrollView2 = [(HUWallpaperEditingViewController *)self scrollView];
      [scrollView2 setMinimumZoomScale:v12];
    }

    else
    {
      if (v12 < v15)
      {
        v12 = v15;
      }

      scrollView3 = [(HUWallpaperEditingViewController *)self scrollView];
      [scrollView3 setMaximumZoomScale:v12];

      scrollView2 = [(HUWallpaperEditingViewController *)self scrollView];
      [scrollView2 maximumZoomScale];
      v20 = v19;
      scrollView4 = [(HUWallpaperEditingViewController *)self scrollView];
      [scrollView4 setMinimumZoomScale:v20];
    }

    scrollView5 = [(HUWallpaperEditingViewController *)self scrollView];
    [scrollView5 minimumZoomScale];
    v25 = v24;
    scrollView6 = [(HUWallpaperEditingViewController *)self scrollView];
    [scrollView6 setZoomScale:v25];

    wallpaper4 = [(HUWallpaperEditingViewController *)self wallpaper];
    LODWORD(scrollView6) = [wallpaper4 isCustomType];

    if (!scrollView6)
    {
      wallpaper5 = [(HUWallpaperEditingViewController *)self wallpaper];
      type2 = [wallpaper5 type];

      if (type2)
      {
        return;
      }

      wallpaper = [(HUWallpaperEditingViewController *)self scrollView];
      [wallpaper setBouncesZoom:0];
      goto LABEL_4;
    }

    scrollView7 = [(HUWallpaperEditingViewController *)self scrollView];
    [scrollView7 maximumZoomScale];
    [scrollView7 setMaximumZoomScale:v29 + 1.0];

    wallpaper6 = [(HUWallpaperEditingViewController *)self wallpaper];
    cropInfo = [wallpaper6 cropInfo];

    if (cropInfo)
    {
      image3 = [(HUWallpaperEditingViewController *)self image];
      [image3 scale];
      v34 = v33;
      wallpaper7 = [(HUWallpaperEditingViewController *)self wallpaper];
      cropInfo2 = [wallpaper7 cropInfo];
      [cropInfo2 scale];
      v38 = v34 / v37;

      scrollView8 = [(HUWallpaperEditingViewController *)self scrollView];
      [scrollView8 minimumZoomScale];
      if (v38 >= v40)
      {
        scrollView9 = [(HUWallpaperEditingViewController *)self scrollView];
        [scrollView9 maximumZoomScale];
        v45 = v44;

        if (v38 <= v45)
        {
          wallpaper8 = [(HUWallpaperEditingViewController *)self wallpaper];
          cropInfo3 = [wallpaper8 cropInfo];
          [cropInfo3 center];
          v66 = v65;
          wallpaper9 = [(HUWallpaperEditingViewController *)self wallpaper];
          cropInfo4 = [wallpaper9 cropInfo];
          [cropInfo4 scale];
          v70 = v66 / v69;
          wallpaper10 = [(HUWallpaperEditingViewController *)self wallpaper];
          cropInfo5 = [wallpaper10 cropInfo];
          [cropInfo5 center];
          v74 = v73;
          wallpaper11 = [(HUWallpaperEditingViewController *)self wallpaper];
          cropInfo6 = [wallpaper11 cropInfo];
          [cropInfo6 scale];
          v78 = v74 / v77;

          scrollView10 = [(HUWallpaperEditingViewController *)self scrollView];
          [scrollView10 bounds];
          v81 = round(v70 - v80 * 0.5);

          v82 = 0.0;
          if (v81 < 0.0)
          {
            v81 = 0.0;
          }

          scrollView11 = [(HUWallpaperEditingViewController *)self scrollView];
          [scrollView11 bounds];
          v85 = round(v78 - v84 * 0.5);

          if (v85 >= 0.0)
          {
            v82 = v85;
          }

          scrollView12 = [(HUWallpaperEditingViewController *)self scrollView];
          [scrollView12 setZoomScale:v38];

          scrollView13 = [(HUWallpaperEditingViewController *)self scrollView];
          [scrollView13 setContentOffset:{v81, v82}];

          scrollView20 = HFLogForCategory();
          if (os_log_type_enabled(scrollView20, OS_LOG_TYPE_DEBUG))
          {
            scrollView14 = [(HUWallpaperEditingViewController *)self scrollView];
            [scrollView14 minimumZoomScale];
            v90 = v89;
            scrollView15 = [(HUWallpaperEditingViewController *)self scrollView];
            [scrollView15 maximumZoomScale];
            v93 = v92;
            scrollView16 = [(HUWallpaperEditingViewController *)self scrollView];
            [scrollView16 contentOffset];
            v95 = NSStringFromCGPoint(v113);
            *buf = 134218754;
            v104 = v38;
            v105 = 2048;
            v106 = v90;
            v107 = 2048;
            v108 = v93;
            v109 = 2112;
            v110 = v95;
            _os_log_debug_impl(&dword_20CEB6000, scrollView20, OS_LOG_TYPE_DEBUG, "Setting scale %f (min: %f, max %f), offset %@", buf, 0x2Au);
          }

          goto LABEL_29;
        }
      }

      else
      {
      }

      v46 = HFLogForCategory();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        wallpaper12 = [(HUWallpaperEditingViewController *)self wallpaper];
        scrollView17 = [(HUWallpaperEditingViewController *)self scrollView];
        [scrollView17 minimumZoomScale];
        v99 = v98;
        scrollView18 = [(HUWallpaperEditingViewController *)self scrollView];
        [scrollView18 maximumZoomScale];
        *buf = 138412802;
        v104 = *&wallpaper12;
        v105 = 2048;
        v106 = v99;
        v107 = 2048;
        v108 = v101;
        _os_log_error_impl(&dword_20CEB6000, v46, OS_LOG_TYPE_ERROR, "Crop scale (%@) doesn't fit within scroll scales (min: %f, max: %f)", buf, 0x20u);
      }
    }

    scrollView19 = [(HUWallpaperEditingViewController *)self scrollView];
    [scrollView19 zoomScale];
    v49 = v48;

    image4 = [(HUWallpaperEditingViewController *)self image];
    [image4 size];
    v52 = v49 * v51;
    image5 = [(HUWallpaperEditingViewController *)self image];
    [image5 size];
    v55 = v49 * v54;

    scrollView20 = [(HUWallpaperEditingViewController *)self scrollView];
    [scrollView20 bounds];
    v58 = round((v52 - v57) * 0.5);
    scrollView21 = [(HUWallpaperEditingViewController *)self scrollView];
    [scrollView21 bounds];
    v61 = round((v55 - v60) * 0.5);
    scrollView22 = [(HUWallpaperEditingViewController *)self scrollView];
    [scrollView22 setContentOffset:{v58, v61}];

LABEL_29:
    return;
  }

LABEL_4:
}

- (void)_createButtonViews
{
  v29[5] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__setButtonPressed_];
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonPressed_];
  v5 = objc_opt_new();
  [(HUWallpaperEditingViewController *)self setBottomToolbar:v5];

  bottomToolbar = [(HUWallpaperEditingViewController *)self bottomToolbar];
  [bottomToolbar setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(HUWallpaperEditingViewController *)self view];
  bottomToolbar2 = [(HUWallpaperEditingViewController *)self bottomToolbar];
  [view addSubview:bottomToolbar2];

  wallpaper = [(HUWallpaperEditingViewController *)self wallpaper];
  LODWORD(bottomToolbar2) = [wallpaper isCustomType];

  if (bottomToolbar2)
  {
    objc_initWeak(&location, self);
    v10 = MEMORY[0x277D750C8];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __54__HUWallpaperEditingViewController__createButtonViews__block_invoke;
    v25[3] = &unk_277DB8950;
    objc_copyWeak(&v26, &location);
    v11 = [v10 actionWithHandler:v25];
    v12 = MEMORY[0x277D75220];
    _blurButtonConfiguration = [(HUWallpaperEditingViewController *)self _blurButtonConfiguration];
    v14 = [v12 buttonWithConfiguration:_blurButtonConfiguration primaryAction:v11];
    [(HUWallpaperEditingViewController *)self setBlurButton:v14];

    v15 = objc_alloc(MEMORY[0x277D751E0]);
    blurButton = [(HUWallpaperEditingViewController *)self blurButton];
    v17 = [v15 initWithCustomView:blurButton];

    [v17 setHidesSharedBackground:1];
    v29[0] = v4;
    flexibleSpaceItem = [MEMORY[0x277D751E0] flexibleSpaceItem];
    v29[1] = flexibleSpaceItem;
    v29[2] = v17;
    flexibleSpaceItem2 = [MEMORY[0x277D751E0] flexibleSpaceItem];
    v29[3] = flexibleSpaceItem2;
    v29[4] = v3;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:5];
    bottomToolbar3 = [(HUWallpaperEditingViewController *)self bottomToolbar];
    [bottomToolbar3 setItems:v20];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  else
  {
    v28[0] = v4;
    flexibleSpaceItem3 = [MEMORY[0x277D751E0] flexibleSpaceItem];
    v28[1] = flexibleSpaceItem3;
    v28[2] = v3;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
    bottomToolbar4 = [(HUWallpaperEditingViewController *)self bottomToolbar];
    [bottomToolbar4 setItems:v23];
  }
}

void __54__HUWallpaperEditingViewController__createButtonViews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _blurButtonPressed:v4];
}

- (id)_croppedWallpaperInfo
{
  wallpaper = [(HUWallpaperEditingViewController *)self wallpaper];
  isCustomType = [wallpaper isCustomType];

  if (isCustomType)
  {
    image = [(HUWallpaperEditingViewController *)self image];
    [image scale];
    v7 = v6;
    scrollView = [(HUWallpaperEditingViewController *)self scrollView];
    [scrollView zoomScale];
    v10 = v7 / v9;

    scrollView2 = [(HUWallpaperEditingViewController *)self scrollView];
    [scrollView2 contentOffset];
    v13 = v10 * v12;
    scrollView3 = [(HUWallpaperEditingViewController *)self scrollView];
    [scrollView3 contentOffset];
    v16 = v10 * v15;

    scrollView4 = [(HUWallpaperEditingViewController *)self scrollView];
    [scrollView4 bounds];
    v19 = v10 * v18;
    scrollView5 = [(HUWallpaperEditingViewController *)self scrollView];
    [scrollView5 bounds];
    v22 = v10 * v21;

    v23 = [objc_alloc(MEMORY[0x277D145E0]) initWithSource:0 center:round(v13 + v19 * 0.5) scale:{round(v16 + v22 * 0.5), v10}];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)_blurButtonConfiguration
{
  wallpaper = [(HUWallpaperEditingViewController *)self wallpaper];
  type = [wallpaper type];

  if (type == 6)
  {
    [MEMORY[0x277D75230] tintedGlassButtonConfiguration];
  }

  else
  {
    [MEMORY[0x277D75230] glassButtonConfiguration];
  }
  v4 = ;
  v5 = _HULocalizedStringWithDefaultValue(@"HUWallpaperPickerBlurButton", @"HUWallpaperPickerBlurButton", 1);
  [v4 setTitle:v5];

  v6 = [MEMORY[0x277D755B8] systemImageNamed:@"drop.fill"];
  [v4 setImage:v6];

  [v4 setImagePadding:8.0];

  return v4;
}

- (void)_refreshBlurButton
{
  _blurButtonConfiguration = [(HUWallpaperEditingViewController *)self _blurButtonConfiguration];
  blurButton = [(HUWallpaperEditingViewController *)self blurButton];
  [blurButton setConfiguration:_blurButtonConfiguration];
}

- (HUWallpaperEditingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end