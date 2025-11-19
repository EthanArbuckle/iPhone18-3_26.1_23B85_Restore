@interface HUWallpaperEditingViewController
- (HUWallpaperEditingViewController)initWithWallpaper:(id)a3 image:(id)a4 delegate:(id)a5;
- (HUWallpaperEditingViewControllerDelegate)delegate;
- (id)_blurButtonConfiguration;
- (id)_convertDefaultBlurImage:(id)a3 toScale:(double)a4;
- (id)_croppedWallpaperInfo;
- (id)_screenScaleAdjustedImage:(id)a3;
- (void)_blurButtonPressed:(id)a3;
- (void)_cancelButtonPressed:(id)a3;
- (void)_createButtonViews;
- (void)_refreshBlurButton;
- (void)_setButtonPressed:(id)a3;
- (void)updateScrollViewScale;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUWallpaperEditingViewController

- (HUWallpaperEditingViewController)initWithWallpaper:(id)a3 image:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = HUWallpaperEditingViewController;
  v12 = [(HUWallpaperEditingViewController *)&v19 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, v11);
    objc_storeStrong(&v13->_wallpaper, a3);
    if ([v9 type] == 4)
    {
      v14 = [MEMORY[0x277D759A0] mainScreen];
      [v14 scale];
      v15 = [(HUWallpaperEditingViewController *)v13 _convertDefaultBlurImage:v10 toScale:?];
      image = v13->_image;
      v13->_image = v15;
    }

    else
    {
      v17 = [(HUWallpaperEditingViewController *)v13 _screenScaleAdjustedImage:v10];
      v14 = v13->_image;
      v13->_image = v17;
    }
  }

  return v13;
}

- (id)_screenScaleAdjustedImage:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 scale];
  v6 = v5;

  [v3 scale];
  if (v7 == v6)
  {
    v8 = v3;
  }

  else
  {
    v8 = [MEMORY[0x277D755B8] imageWithCGImage:objc_msgSend(v3 scale:"CGImage") orientation:{objc_msgSend(v3, "imageOrientation"), v6}];
  }

  v9 = v8;

  return v9;
}

- (id)_convertDefaultBlurImage:(id)a3 toScale:(double)a4
{
  v5 = a3;
  v6 = [v5 imageAsset];
  v7 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
  v8 = [v6 imageWithTraitCollection:v7];

  v9 = [v5 imageAsset];

  v10 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v11 = [v9 imageWithTraitCollection:v10];

  v12 = [MEMORY[0x277D755B8] imageWithCGImage:objc_msgSend(v8 scale:"CGImage") orientation:{objc_msgSend(v8, "imageOrientation"), a4}];
  v13 = [MEMORY[0x277D755B8] imageWithCGImage:objc_msgSend(v11 scale:"CGImage") orientation:{objc_msgSend(v11, "imageOrientation"), a4}];
  v14 = [v12 imageAsset];
  v15 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  [v14 registerImage:v13 withTraitCollection:v15];

  return v12;
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = HUWallpaperEditingViewController;
  [(HUWallpaperEditingViewController *)&v7 viewWillAppear:a3];
  [(HUWallpaperEditingViewController *)self setStatusBarHidden:1];
  v4 = [(HUWallpaperEditingViewController *)self navigationController];
  [v4 setNavigationBarHidden:1];

  v5 = *MEMORY[0x277D76DA0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HUWallpaperEditingViewController_viewWillAppear___block_invoke;
  v6[3] = &unk_277DB8488;
  v6[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v6 animations:v5];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = HUWallpaperEditingViewController;
  [(HUWallpaperEditingViewController *)&v7 viewWillDisappear:a3];
  [(HUWallpaperEditingViewController *)self setStatusBarHidden:0];
  v4 = [(HUWallpaperEditingViewController *)self navigationController];
  [v4 setNavigationBarHidden:0];

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

  v5 = [(HUWallpaperEditingViewController *)self scrollView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(HUWallpaperEditingViewController *)self scrollView];
  [v6 setShowsHorizontalScrollIndicator:0];

  v7 = [(HUWallpaperEditingViewController *)self scrollView];
  [v7 setShowsVerticalScrollIndicator:0];

  v8 = [MEMORY[0x277D75348] systemBlackColor];
  v9 = [(HUWallpaperEditingViewController *)self scrollView];
  [v9 setBackgroundColor:v8];

  v10 = [(HUWallpaperEditingViewController *)self scrollView];
  [v10 setDelegate:self];

  v11 = [(HUWallpaperEditingViewController *)self view];
  v12 = [(HUWallpaperEditingViewController *)self scrollView];
  [v11 addSubview:v12];

  v13 = objc_alloc(MEMORY[0x277D755E8]);
  v14 = [(HUWallpaperEditingViewController *)self image];
  v15 = [v13 initWithImage:v14];
  [(HUWallpaperEditingViewController *)self setImageView:v15];

  v16 = [(HUWallpaperEditingViewController *)self wallpaper];
  LOBYTE(v14) = [v16 isCustomType];

  if (v14)
  {
    v17 = [(HUWallpaperEditingViewController *)self image];
    [v17 size];
    v19 = v18;
    v21 = v20;
    v22 = [(HUWallpaperEditingViewController *)self scrollView];
    [v22 setContentSize:{v19, v21}];
  }

  else
  {
    v23 = [(HUWallpaperEditingViewController *)self imageView];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

    v24 = [(HUWallpaperEditingViewController *)self imageView];
    [v24 setContentMode:2];

    v17 = [(HUWallpaperEditingViewController *)self scrollView];
    [v17 setUserInteractionEnabled:0];
  }

  v25 = [(HUWallpaperEditingViewController *)self scrollView];
  v26 = [(HUWallpaperEditingViewController *)self imageView];
  [v25 addSubview:v26];

  v27 = [(HUWallpaperEditingViewController *)self scrollView];
  [v27 setContentInsetAdjustmentBehavior:2];

  [(HUWallpaperEditingViewController *)self _createButtonViews];
  v28 = [MEMORY[0x277CBEB18] array];
  v29 = [(HUWallpaperEditingViewController *)self scrollView];
  v30 = [v29 topAnchor];
  v31 = [(HUWallpaperEditingViewController *)self view];
  v32 = [v31 topAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];
  [v28 addObject:v33];

  v34 = [(HUWallpaperEditingViewController *)self scrollView];
  v35 = [v34 leadingAnchor];
  v36 = [(HUWallpaperEditingViewController *)self view];
  v37 = [v36 leadingAnchor];
  v38 = [v35 constraintEqualToAnchor:v37];
  [v28 addObject:v38];

  v39 = [(HUWallpaperEditingViewController *)self scrollView];
  v40 = [v39 trailingAnchor];
  v41 = [(HUWallpaperEditingViewController *)self view];
  v42 = [v41 trailingAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];
  [v28 addObject:v43];

  v44 = [(HUWallpaperEditingViewController *)self scrollView];
  v45 = [v44 bottomAnchor];
  v46 = [(HUWallpaperEditingViewController *)self view];
  v47 = [v46 bottomAnchor];
  v48 = [v45 constraintEqualToAnchor:v47];
  [v28 addObject:v48];

  v49 = [(HUWallpaperEditingViewController *)self wallpaper];
  LOBYTE(v45) = [v49 isCustomType];

  if ((v45 & 1) == 0)
  {
    v50 = [(HUWallpaperEditingViewController *)self imageView];
    v51 = [v50 topAnchor];
    v52 = [(HUWallpaperEditingViewController *)self view];
    v53 = [v52 topAnchor];
    v54 = [v51 constraintEqualToAnchor:v53];
    [v28 addObject:v54];

    v55 = [(HUWallpaperEditingViewController *)self imageView];
    v56 = [v55 bottomAnchor];
    v57 = [(HUWallpaperEditingViewController *)self view];
    v58 = [v57 bottomAnchor];
    v59 = [v56 constraintEqualToAnchor:v58];
    [v28 addObject:v59];

    v60 = [(HUWallpaperEditingViewController *)self imageView];
    v61 = [v60 leadingAnchor];
    v62 = [(HUWallpaperEditingViewController *)self view];
    v63 = [v62 safeAreaLayoutGuide];
    v64 = [v63 leadingAnchor];
    v65 = [v61 constraintEqualToAnchor:v64];
    [v28 addObject:v65];

    v66 = [(HUWallpaperEditingViewController *)self imageView];
    v67 = [v66 trailingAnchor];
    v68 = [(HUWallpaperEditingViewController *)self view];
    v69 = [v68 safeAreaLayoutGuide];
    v70 = [v69 trailingAnchor];
    v71 = [v67 constraintEqualToAnchor:v70];
    [v28 addObject:v71];
  }

  v72 = [(HUWallpaperEditingViewController *)self bottomToolbar];
  v73 = [v72 safeAreaLayoutGuide];
  v74 = [v73 widthAnchor];
  v75 = [(HUWallpaperEditingViewController *)self view];
  v76 = [v75 safeAreaLayoutGuide];
  v77 = [v76 widthAnchor];
  v78 = [v74 constraintEqualToAnchor:v77];
  [v28 addObject:v78];

  v79 = [(HUWallpaperEditingViewController *)self bottomToolbar];
  v80 = [v79 safeAreaLayoutGuide];
  v81 = [v80 bottomAnchor];
  v82 = [(HUWallpaperEditingViewController *)self view];
  v83 = [v82 safeAreaLayoutGuide];
  v84 = [v83 bottomAnchor];
  v85 = [MEMORY[0x277D14CE8] isAMac];
  v86 = 0.0;
  if (v85)
  {
    v86 = -18.0;
  }

  v87 = [v81 constraintEqualToAnchor:v84 constant:v86];
  [v28 addObject:v87];

  [MEMORY[0x277CCAAD0] activateConstraints:v28];
  v88 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
  [v88 setValue:&unk_2824933A0 forKey:*MEMORY[0x277CDA4F0]];
  [v88 setValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDA4C8]];
  v96[0] = v88;
  v89 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:1];
  [(HUWallpaperEditingViewController *)self setLayerFilters:v89];

  v90 = [(HUWallpaperEditingViewController *)self wallpaper];
  v91 = [v90 type];
  if (v91 == 6)
  {
    v92 = [(HUWallpaperEditingViewController *)self layerFilters];
  }

  else
  {
    v92 = 0;
  }

  v93 = [(HUWallpaperEditingViewController *)self imageView];
  v94 = [v93 layer];
  [v94 setFilters:v92];

  if (v91 == 6)
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

- (void)_setButtonPressed:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = self;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: Set button pressed", &v14, 0xCu);
  }

  v5 = [(HUWallpaperEditingViewController *)self delegate];
  v6 = objc_alloc(MEMORY[0x277D14D10]);
  v7 = [(HUWallpaperEditingViewController *)self wallpaper];
  v8 = [v7 type];
  v9 = [(HUWallpaperEditingViewController *)self wallpaper];
  v10 = [v9 assetIdentifier];
  v11 = [(HUWallpaperEditingViewController *)self _croppedWallpaperInfo];
  v12 = [v6 initWithType:v8 assetIdentifier:v10 cropInfo:v11];
  v13 = [(HUWallpaperEditingViewController *)self image];
  [v5 wallpaperEditing:self didFinishWithWallpaper:v12 image:v13];
}

- (void)_cancelButtonPressed:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: Cancel button pressed", &v6, 0xCu);
  }

  v5 = [(HUWallpaperEditingViewController *)self delegate];
  [v5 wallpaperEditingDidCancel:self];
}

- (void)_blurButtonPressed:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [(HUWallpaperEditingViewController *)self wallpaper];
  v5 = [v4 type];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"OFF";
    if (v5 == 1)
    {
      v7 = @"ON";
    }

    v18 = 138412546;
    v19 = self;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: Blur button toggled %@", &v18, 0x16u);
  }

  if (v5 == 1)
  {
    v8 = 6;
  }

  else
  {
    v8 = 1;
  }

  v9 = objc_alloc(MEMORY[0x277D14D10]);
  v10 = [(HUWallpaperEditingViewController *)self wallpaper];
  v11 = [v10 assetIdentifier];
  v12 = [(HUWallpaperEditingViewController *)self wallpaper];
  v13 = [v12 cropInfo];
  v14 = [v9 initWithType:v8 assetIdentifier:v11 cropInfo:v13];

  [(HUWallpaperEditingViewController *)self setWallpaper:v14];
  if (v5 == 1)
  {
    v15 = [(HUWallpaperEditingViewController *)self layerFilters];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(HUWallpaperEditingViewController *)self imageView];
  v17 = [v16 layer];
  [v17 setFilters:v15];

  if (v5 == 1)
  {
  }

  [(HUWallpaperEditingViewController *)self _refreshBlurButton];
}

- (void)updateScrollViewScale
{
  v111 = *MEMORY[0x277D85DE8];
  v102 = [(HUWallpaperEditingViewController *)self wallpaper];
  if ([v102 type] != 3)
  {
    v3 = [(HUWallpaperEditingViewController *)self wallpaper];
    if ([v3 type] == 4)
    {

      goto LABEL_4;
    }

    v4 = [(HUWallpaperEditingViewController *)self wallpaper];
    v5 = [v4 type];

    if (v5 == 5)
    {
      return;
    }

    [MEMORY[0x277D14D10] contentSizeForWallpaper];
    v7 = v6;
    v9 = v8;
    v10 = [(HUWallpaperEditingViewController *)self image];
    [v10 size];
    v12 = v7 / v11;

    v13 = [(HUWallpaperEditingViewController *)self image];
    [v13 size];
    v15 = v9 / v14;

    if (v12 < 1.0 && v15 < 1.0)
    {
      v22 = [(HUWallpaperEditingViewController *)self scrollView];
      [v22 setMaximumZoomScale:1.0];

      if (v12 < v15)
      {
        v12 = v15;
      }

      v18 = [(HUWallpaperEditingViewController *)self scrollView];
      [v18 setMinimumZoomScale:v12];
    }

    else
    {
      if (v12 < v15)
      {
        v12 = v15;
      }

      v17 = [(HUWallpaperEditingViewController *)self scrollView];
      [v17 setMaximumZoomScale:v12];

      v18 = [(HUWallpaperEditingViewController *)self scrollView];
      [v18 maximumZoomScale];
      v20 = v19;
      v21 = [(HUWallpaperEditingViewController *)self scrollView];
      [v21 setMinimumZoomScale:v20];
    }

    v23 = [(HUWallpaperEditingViewController *)self scrollView];
    [v23 minimumZoomScale];
    v25 = v24;
    v26 = [(HUWallpaperEditingViewController *)self scrollView];
    [v26 setZoomScale:v25];

    v27 = [(HUWallpaperEditingViewController *)self wallpaper];
    LODWORD(v26) = [v27 isCustomType];

    if (!v26)
    {
      v41 = [(HUWallpaperEditingViewController *)self wallpaper];
      v42 = [v41 type];

      if (v42)
      {
        return;
      }

      v102 = [(HUWallpaperEditingViewController *)self scrollView];
      [v102 setBouncesZoom:0];
      goto LABEL_4;
    }

    v28 = [(HUWallpaperEditingViewController *)self scrollView];
    [v28 maximumZoomScale];
    [v28 setMaximumZoomScale:v29 + 1.0];

    v30 = [(HUWallpaperEditingViewController *)self wallpaper];
    v31 = [v30 cropInfo];

    if (v31)
    {
      v32 = [(HUWallpaperEditingViewController *)self image];
      [v32 scale];
      v34 = v33;
      v35 = [(HUWallpaperEditingViewController *)self wallpaper];
      v36 = [v35 cropInfo];
      [v36 scale];
      v38 = v34 / v37;

      v39 = [(HUWallpaperEditingViewController *)self scrollView];
      [v39 minimumZoomScale];
      if (v38 >= v40)
      {
        v43 = [(HUWallpaperEditingViewController *)self scrollView];
        [v43 maximumZoomScale];
        v45 = v44;

        if (v38 <= v45)
        {
          v63 = [(HUWallpaperEditingViewController *)self wallpaper];
          v64 = [v63 cropInfo];
          [v64 center];
          v66 = v65;
          v67 = [(HUWallpaperEditingViewController *)self wallpaper];
          v68 = [v67 cropInfo];
          [v68 scale];
          v70 = v66 / v69;
          v71 = [(HUWallpaperEditingViewController *)self wallpaper];
          v72 = [v71 cropInfo];
          [v72 center];
          v74 = v73;
          v75 = [(HUWallpaperEditingViewController *)self wallpaper];
          v76 = [v75 cropInfo];
          [v76 scale];
          v78 = v74 / v77;

          v79 = [(HUWallpaperEditingViewController *)self scrollView];
          [v79 bounds];
          v81 = round(v70 - v80 * 0.5);

          v82 = 0.0;
          if (v81 < 0.0)
          {
            v81 = 0.0;
          }

          v83 = [(HUWallpaperEditingViewController *)self scrollView];
          [v83 bounds];
          v85 = round(v78 - v84 * 0.5);

          if (v85 >= 0.0)
          {
            v82 = v85;
          }

          v86 = [(HUWallpaperEditingViewController *)self scrollView];
          [v86 setZoomScale:v38];

          v87 = [(HUWallpaperEditingViewController *)self scrollView];
          [v87 setContentOffset:{v81, v82}];

          v56 = HFLogForCategory();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            v88 = [(HUWallpaperEditingViewController *)self scrollView];
            [v88 minimumZoomScale];
            v90 = v89;
            v91 = [(HUWallpaperEditingViewController *)self scrollView];
            [v91 maximumZoomScale];
            v93 = v92;
            v94 = [(HUWallpaperEditingViewController *)self scrollView];
            [v94 contentOffset];
            v95 = NSStringFromCGPoint(v113);
            *buf = 134218754;
            v104 = v38;
            v105 = 2048;
            v106 = v90;
            v107 = 2048;
            v108 = v93;
            v109 = 2112;
            v110 = v95;
            _os_log_debug_impl(&dword_20CEB6000, v56, OS_LOG_TYPE_DEBUG, "Setting scale %f (min: %f, max %f), offset %@", buf, 0x2Au);
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
        v96 = [(HUWallpaperEditingViewController *)self wallpaper];
        v97 = [(HUWallpaperEditingViewController *)self scrollView];
        [v97 minimumZoomScale];
        v99 = v98;
        v100 = [(HUWallpaperEditingViewController *)self scrollView];
        [v100 maximumZoomScale];
        *buf = 138412802;
        v104 = *&v96;
        v105 = 2048;
        v106 = v99;
        v107 = 2048;
        v108 = v101;
        _os_log_error_impl(&dword_20CEB6000, v46, OS_LOG_TYPE_ERROR, "Crop scale (%@) doesn't fit within scroll scales (min: %f, max: %f)", buf, 0x20u);
      }
    }

    v47 = [(HUWallpaperEditingViewController *)self scrollView];
    [v47 zoomScale];
    v49 = v48;

    v50 = [(HUWallpaperEditingViewController *)self image];
    [v50 size];
    v52 = v49 * v51;
    v53 = [(HUWallpaperEditingViewController *)self image];
    [v53 size];
    v55 = v49 * v54;

    v56 = [(HUWallpaperEditingViewController *)self scrollView];
    [v56 bounds];
    v58 = round((v52 - v57) * 0.5);
    v59 = [(HUWallpaperEditingViewController *)self scrollView];
    [v59 bounds];
    v61 = round((v55 - v60) * 0.5);
    v62 = [(HUWallpaperEditingViewController *)self scrollView];
    [v62 setContentOffset:{v58, v61}];

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

  v6 = [(HUWallpaperEditingViewController *)self bottomToolbar];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(HUWallpaperEditingViewController *)self view];
  v8 = [(HUWallpaperEditingViewController *)self bottomToolbar];
  [v7 addSubview:v8];

  v9 = [(HUWallpaperEditingViewController *)self wallpaper];
  LODWORD(v8) = [v9 isCustomType];

  if (v8)
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
    v13 = [(HUWallpaperEditingViewController *)self _blurButtonConfiguration];
    v14 = [v12 buttonWithConfiguration:v13 primaryAction:v11];
    [(HUWallpaperEditingViewController *)self setBlurButton:v14];

    v15 = objc_alloc(MEMORY[0x277D751E0]);
    v16 = [(HUWallpaperEditingViewController *)self blurButton];
    v17 = [v15 initWithCustomView:v16];

    [v17 setHidesSharedBackground:1];
    v29[0] = v4;
    v18 = [MEMORY[0x277D751E0] flexibleSpaceItem];
    v29[1] = v18;
    v29[2] = v17;
    v19 = [MEMORY[0x277D751E0] flexibleSpaceItem];
    v29[3] = v19;
    v29[4] = v3;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:5];
    v21 = [(HUWallpaperEditingViewController *)self bottomToolbar];
    [v21 setItems:v20];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  else
  {
    v28[0] = v4;
    v22 = [MEMORY[0x277D751E0] flexibleSpaceItem];
    v28[1] = v22;
    v28[2] = v3;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
    v24 = [(HUWallpaperEditingViewController *)self bottomToolbar];
    [v24 setItems:v23];
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
  v3 = [(HUWallpaperEditingViewController *)self wallpaper];
  v4 = [v3 isCustomType];

  if (v4)
  {
    v5 = [(HUWallpaperEditingViewController *)self image];
    [v5 scale];
    v7 = v6;
    v8 = [(HUWallpaperEditingViewController *)self scrollView];
    [v8 zoomScale];
    v10 = v7 / v9;

    v11 = [(HUWallpaperEditingViewController *)self scrollView];
    [v11 contentOffset];
    v13 = v10 * v12;
    v14 = [(HUWallpaperEditingViewController *)self scrollView];
    [v14 contentOffset];
    v16 = v10 * v15;

    v17 = [(HUWallpaperEditingViewController *)self scrollView];
    [v17 bounds];
    v19 = v10 * v18;
    v20 = [(HUWallpaperEditingViewController *)self scrollView];
    [v20 bounds];
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
  v2 = [(HUWallpaperEditingViewController *)self wallpaper];
  v3 = [v2 type];

  if (v3 == 6)
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
  v4 = [(HUWallpaperEditingViewController *)self _blurButtonConfiguration];
  v3 = [(HUWallpaperEditingViewController *)self blurButton];
  [v3 setConfiguration:v4];
}

- (HUWallpaperEditingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end