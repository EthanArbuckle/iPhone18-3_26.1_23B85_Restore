@interface BPSIllustratedWatchView
- (BOOL)_shouldUseCompactWatchAsset;
- (BPSIllustratedWatchView)initWithFrame:(CGRect)frame;
- (CGRect)_unscaledWatchScreenInsetGuide;
- (CGRect)watchScreenInsetGuide;
- (double)idealAssetHeight;
- (double)idealContainerHeight;
- (id)_blankScreenImageName;
- (void)_configureWatchImage;
- (void)_updateSyncTrapProgressViewTransform;
- (void)addScreenView:(id)view;
- (void)addSyncTrapProgressView:(id)view;
- (void)layoutSubviews;
- (void)setScreenImageName:(id)name;
- (void)setShowCrownOnLeft:(BOOL)left;
- (void)textSizeDidChange:(id)change;
@end

@implementation BPSIllustratedWatchView

- (BPSIllustratedWatchView)initWithFrame:(CGRect)frame
{
  v42[4] = *MEMORY[0x277D85DE8];
  v41.receiver = self;
  v41.super_class = BPSIllustratedWatchView;
  v3 = [(BPSIllustratedWatchView *)&v41 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_usingSemiCompactWatchAsset = 1;
    v3->_usingCompactWatchAsset = [(BPSIllustratedWatchView *)v3 _shouldUseCompactWatchAsset];
    v5 = BPSGetActiveSetupCompletedDevice();
    v6 = +[BPSBridgeAppContext shared];
    inWatchSetupFlow = [v6 inWatchSetupFlow];

    if ((inWatchSetupFlow & 1) != 0 || !v5)
    {
      mEMORY[0x277D37A78] = [MEMORY[0x277D37A78] sharedDeviceController];
      v8 = [mEMORY[0x277D37A78] size];
    }

    else
    {
      v8 = [MEMORY[0x277D37A78] sizeFromDevice:v5];
    }

    v39 = v5;
    v4->_usingAgaveWatchAsset = v8 == 19;
    v4->_usingAvoniaWatchAsset = v8 != 19;
    v4->_usingBegoniaWatchAsset = v8 == 25;
    usingAvoniaWatchAsset = v4->_usingAvoniaWatchAsset;
    if (v8 == 25)
    {
      usingAvoniaWatchAsset = 0;
    }

    v4->_usingAvoniaWatchAsset = usingAvoniaWatchAsset;
    if (PSIsInternalInstall())
    {
      v11 = CFPreferencesCopyAppValue(@"DebugIdealAssetOverride", @"com.apple.Bridge");
      v12 = CFPreferencesCopyAppValue(@"DebugIdealAssetOverrideModifier", @"com.apple.Bridge");
      v13 = v12;
      if (v12 && ![v12 caseInsensitiveCompare:@"compact"])
      {
        v4->_usingCompactWatchAsset = 1;
        v14 = bps_setup_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241E74000, v14, OS_LOG_TYPE_DEFAULT, "Forcing Compact", buf, 2u);
        }
      }

      if (v11)
      {
        if (![v11 caseInsensitiveCompare:@"aloe"])
        {
          v4->_usingAgaveWatchAsset = 0;
          v4->_usingAvoniaWatchAsset = 0;
          v4->_usingBegoniaWatchAsset = 0;
          v15 = bps_setup_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_241E74000, v15, OS_LOG_TYPE_DEFAULT, "Forcing Aloe", buf, 2u);
          }
        }

        if (![v11 caseInsensitiveCompare:@"agave"])
        {
          v4->_usingAgaveWatchAsset = 1;
          v4->_usingAvoniaWatchAsset = 0;
          v4->_usingBegoniaWatchAsset = 0;
          v16 = bps_setup_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_241E74000, v16, OS_LOG_TYPE_DEFAULT, "Forcing Agave", buf, 2u);
          }
        }

        if (![v11 caseInsensitiveCompare:@"avonia"])
        {
          v4->_usingAgaveWatchAsset = 0;
          v4->_usingAvoniaWatchAsset = 1;
          v4->_usingBegoniaWatchAsset = 0;
          v17 = bps_setup_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_241E74000, v17, OS_LOG_TYPE_DEFAULT, "Forcing Avonia", buf, 2u);
          }
        }

        if (![v11 caseInsensitiveCompare:@"begonia"])
        {
          v4->_usingAgaveWatchAsset = 0;
          v4->_usingAvoniaWatchAsset = 0;
          v4->_usingBegoniaWatchAsset = 1;
          v18 = bps_setup_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_241E74000, v18, OS_LOG_TYPE_DEFAULT, "Forcing Avonia", buf, 2u);
          }
        }
      }
    }

    v19 = objc_alloc_init(BPSFadingImageView);
    watchView = v4->_watchView;
    v4->_watchView = v19;

    [(BPSIllustratedWatchView *)v4 _configureWatchImage];
    [(BPSIllustratedWatchView *)v4 addSubview:v4->_watchView];
    v21 = objc_alloc_init(MEMORY[0x277D755E8]);
    watchScreenImageView = v4->_watchScreenImageView;
    v4->_watchScreenImageView = v21;

    [(BPSFadingImageView *)v4->_watchView addSubview:v4->_watchScreenImageView];
    v34 = MEMORY[0x277CCAAD0];
    topAnchor = [(BPSIllustratedWatchView *)v4 topAnchor];
    topAnchor2 = [(BPSFadingImageView *)v4->_watchView topAnchor];
    v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v42[0] = v36;
    leadingAnchor = [(BPSIllustratedWatchView *)v4 leadingAnchor];
    leadingAnchor2 = [(BPSFadingImageView *)v4->_watchView leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v42[1] = v24;
    trailingAnchor = [(BPSIllustratedWatchView *)v4 trailingAnchor];
    trailingAnchor2 = [(BPSFadingImageView *)v4->_watchView trailingAnchor];
    v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v42[2] = v27;
    bottomAnchor = [(BPSIllustratedWatchView *)v4 bottomAnchor];
    bottomAnchor2 = [(BPSFadingImageView *)v4->_watchView bottomAnchor];
    v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v42[3] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
    [v34 activateConstraints:v31];

    v4->_allowScaling = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_textSizeDidChange_ name:*MEMORY[0x277D76810] object:0];
  }

  return v4;
}

- (void)_configureWatchImage
{
  usingCompactWatchAsset = [(BPSIllustratedWatchView *)self usingCompactWatchAsset];
  if (usingCompactWatchAsset)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 0.27;
  }

  if (usingCompactWatchAsset)
  {
    v5 = @"watch-ideal-compact-aloe";
  }

  else
  {
    v5 = @"watch-ideal-aloe";
  }

  if (usingCompactWatchAsset)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 0.5;
  }

  if (self->_usingAgaveWatchAsset || self->_usingBegoniaWatchAsset)
  {
    usingCompactWatchAsset2 = [(BPSIllustratedWatchView *)self usingCompactWatchAsset];
    if (usingCompactWatchAsset2)
    {
      v5 = @"watch-ideal-compact-agave";
    }

    else
    {
      v4 = 0.2;
      v5 = @"watch-ideal-agave";
    }

    if (!usingCompactWatchAsset2)
    {
      v6 = 0.5;
    }
  }

  else if (self->_usingAvoniaWatchAsset)
  {
    usingCompactWatchAsset3 = [(BPSIllustratedWatchView *)self usingCompactWatchAsset];
    if (usingCompactWatchAsset3)
    {
      v5 = @"watch-ideal-compact-avonia";
    }

    else
    {
      v4 = 0.175;
      v5 = @"watch-ideal-avonia";
    }

    if (!usingCompactWatchAsset3)
    {
      v6 = 0.5;
    }
  }

  v8 = MEMORY[0x277D755B8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v8 imageNamed:v5 inBundle:v9 withConfiguration:0];

  [(BPSFadingImageView *)self->_watchView setImage:v13];
  usingSemiCompactWatchAsset = [(BPSIllustratedWatchView *)self usingSemiCompactWatchAsset];
  if (usingSemiCompactWatchAsset)
  {
    v11 = v6;
  }

  else
  {
    v11 = 0.0;
  }

  if (!usingSemiCompactWatchAsset)
  {
    v4 = 0.0;
  }

  [(BPSFadingImageView *)self->_watchView setFadeSpread:v11];
  [(BPSFadingImageView *)self->_watchView setFadePercentage:v4];
  [(BPSIllustratedWatchView *)self setNeedsLayout];
}

- (BOOL)_shouldUseCompactWatchAsset
{
  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return IsAccessibilityCategory;
}

- (void)textSizeDidChange:(id)change
{
  _shouldUseCompactWatchAsset = [(BPSIllustratedWatchView *)self _shouldUseCompactWatchAsset];

  [(BPSIllustratedWatchView *)self setUsingCompactWatchAsset:_shouldUseCompactWatchAsset];
}

- (void)setShowCrownOnLeft:(BOOL)left
{
  if (self->_showCrownOnLeft != left)
  {
    self->_showCrownOnLeft = left;
    [(BPSIllustratedWatchView *)self setNeedsLayout];
  }
}

- (double)idealAssetHeight
{
  [(BPSIllustratedWatchView *)self _idealHeight];
  v4 = v3;
  usingAvoniaWatchAsset = [(BPSIllustratedWatchView *)self usingAvoniaWatchAsset];
  v6 = 0.9;
  if (!usingAvoniaWatchAsset)
  {
    v6 = 1.0;
  }

  return v4 * v6;
}

- (double)idealContainerHeight
{
  [(BPSIllustratedWatchView *)self _idealHeight];
  v4 = v3;
  usingSemiCompactWatchAsset = [(BPSIllustratedWatchView *)self usingSemiCompactWatchAsset];
  v6 = 0.85;
  if (!usingSemiCompactWatchAsset)
  {
    v6 = 1.0;
  }

  return v4 * v6;
}

- (void)setScreenImageName:(id)name
{
  v31 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = [nameCopy copy];
  screenImageName = self->_screenImageName;
  self->_screenImageName = v5;

  if (![(NSString *)self->_screenImageName length])
  {
    [(UIImageView *)self->_watchScreenImageView setImage:0];
    goto LABEL_47;
  }

  self->_screenImageSize = 13;
  v28 = nameCopy;
  if (self->_usingAgaveWatchAsset)
  {
    v7 = 19;
  }

  else if (self->_usingAvoniaWatchAsset)
  {
    v7 = 21;
  }

  else
  {
    if (!self->_usingBegoniaWatchAsset)
    {
      goto LABEL_10;
    }

    v7 = 25;
  }

  self->_screenImageSize = v7;
LABEL_10:
  v8 = [MEMORY[0x277D37A78] resourceString:self->_screenImageName material:0 size:? forAttributes:?];
  if (!self->_screenImageSearchBundleIdentifier || ([MEMORY[0x277CCA8D8] bundleWithIdentifier:?], (watchAssetBundle = objc_claimAutoreleasedReturnValue()) == 0))
  {
    watchAssetBundle = [(BPSIllustratedWatchView *)self watchAssetBundle];
  }

  v10 = [MEMORY[0x277D755B8] imageNamed:v8 inBundle:watchAssetBundle compatibleWithTraitCollection:0];
  if (self->_usingBegoniaWatchAsset && v10 == 0)
  {
    self->_screenImageSize = 19;
    v14 = [MEMORY[0x277D37A78] resourceString:self->_screenImageName material:0 size:19 forAttributes:4];

    v13 = watchAssetBundle;
    v12 = [MEMORY[0x277D755B8] imageNamed:v14 inBundle:watchAssetBundle compatibleWithTraitCollection:0];
    v15 = bps_setup_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v14;
      _os_log_impl(&dword_241E74000, v15, OS_LOG_TYPE_DEFAULT, "Begonia image doesn't exist, using Agave image for: %@", buf, 0xCu);
    }
  }

  else
  {
    v12 = v10;
    v13 = watchAssetBundle;
    v14 = v8;
  }

  if (!self->_usingAgaveWatchAsset)
  {
    nameCopy = v28;
    if (self->_usingBegoniaWatchAsset)
    {
      v16 = v13;
      if (!v12)
      {
        goto LABEL_26;
      }

      v17 = v14;
    }

    else
    {
      v17 = v14;
      v16 = v13;
    }

    if (v12)
    {
LABEL_29:
      v14 = v17;
      goto LABEL_37;
    }

LABEL_34:
    self->_usingFallbackScreen = 1;
    self->_screenImageSize = 7;
    v14 = [MEMORY[0x277D37A78] resourceString:self->_screenImageName material:0 size:7 forAttributes:4];

    v12 = [MEMORY[0x277D755B8] imageNamed:v14 inBundle:v16 compatibleWithTraitCollection:0];
    v20 = bps_setup_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v14;
      _os_log_impl(&dword_241E74000, v20, OS_LOG_TYPE_DEFAULT, "Aloe image doesn't exist, using luxo image for: %@", buf, 0xCu);
    }

    goto LABEL_37;
  }

  nameCopy = v28;
  v16 = v13;
  if (!v12)
  {
LABEL_26:
    self->_screenImageSize = 13;
    v17 = [MEMORY[0x277D37A78] resourceString:self->_screenImageName material:0 size:13 forAttributes:4];

    v18 = [MEMORY[0x277D755B8] imageNamed:v17 inBundle:v16 compatibleWithTraitCollection:0];

    v19 = bps_setup_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v17;
      _os_log_impl(&dword_241E74000, v19, OS_LOG_TYPE_DEFAULT, "Agave image doesn't exist, using aloe image for: %@", buf, 0xCu);
    }

    v12 = v18;
    if (v18)
    {
      goto LABEL_29;
    }

    goto LABEL_34;
  }

LABEL_37:
  v21 = bps_setup_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v14;
    _os_log_impl(&dword_241E74000, v21, OS_LOG_TYPE_DEFAULT, "Original ImageName: %@", buf, 0xCu);
  }

  v22 = bps_setup_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = nameCopy;
    _os_log_impl(&dword_241E74000, v22, OS_LOG_TYPE_DEFAULT, "Resolved ImageName: %@", buf, 0xCu);
  }

  if (!v12)
  {
    v23 = bps_setup_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241E74000, v23, OS_LOG_TYPE_DEFAULT, "Did not resolve to valid screen image!", buf, 2u);
    }
  }

  [(UIImageView *)self->_watchScreenImageView setImage:v12];
  imageName = self->_imageName;
  self->_imageName = v14;
  v25 = v14;

  bundlePath = [v16 bundlePath];
  imageSearchBundlePath = self->_imageSearchBundlePath;
  self->_imageSearchBundlePath = bundlePath;

  [(BPSIllustratedWatchView *)self setNeedsLayout];
LABEL_47:
}

- (void)layoutSubviews
{
  v82 = *MEMORY[0x277D85DE8];
  v79.receiver = self;
  v79.super_class = BPSIllustratedWatchView;
  [(BPSIllustratedWatchView *)&v79 layoutSubviews];
  if (self->_usingAgaveWatchAsset || self->_usingBegoniaWatchAsset)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.92;
  }

  image = [(BPSFadingImageView *)self->_watchView image];
  [image size];
  v6 = v5;
  v8 = v7;

  memset(&v78, 0, sizeof(v78));
  CGAffineTransformMakeScale(&v78, v3, v3);
  v9 = v8 * v78.c + v78.a * v6;
  v10 = v8 * v78.d + v78.b * v6;
  [(BPSIllustratedWatchView *)self _unscaledWatchScreenInsetGuide];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(UIImageView *)self->_watchScreenImageView sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  if (self->_allowScaling)
  {
    [(BPSIllustratedWatchView *)self frame];
    if (v19 < v9 || ([(BPSIllustratedWatchView *)self frame], v20 < v10))
    {
      [(BPSIllustratedWatchView *)self frame];
      v22 = v21 / v9;
      [(BPSIllustratedWatchView *)self frame];
      v24 = fmin(v22, v23 / v10);
      self->_scaledDownFactor = v24;
      memset(&v81, 0, sizeof(v81));
      CGAffineTransformMakeScale(&v81, v24, v24);
      v77 = v81;
      v83.origin.x = 0.0;
      v83.origin.y = 0.0;
      v83.size.width = v9;
      v83.size.height = v10;
      v84 = CGRectApplyAffineTransform(v83, &v77);
      x = v84.origin.x;
      y = v84.origin.y;
      width = v84.size.width;
      height = v84.size.height;
      v77 = v81;
      v84.origin.x = v12;
      v84.origin.y = v14;
      v84.size.width = v16;
      v84.size.height = v18;
      v85 = CGRectApplyAffineTransform(v84, &v77);
      v71 = v85.origin.x;
      v29 = v85.origin.y;
      v30 = v85.size.width;
      v31 = v85.size.height;
      [(BPSIllustratedWatchView *)self frame];
      self->_scaledDownXDelta = (v32 - width) * 0.5;
      [(BPSIllustratedWatchView *)self frame];
      v34 = (v33 - height) * 0.5;
      self->_scaledDownYDelta = v34;
      memset(&v77, 0, sizeof(v77));
      CGAffineTransformMakeTranslation(&v77, self->_scaledDownXDelta, v34);
      v76 = v77;
      v86.origin.x = x;
      v86.origin.y = y;
      v86.size.width = width;
      v86.size.height = height;
      v87 = CGRectApplyAffineTransform(v86, &v76);
      v35 = v87.origin.x;
      v36 = v87.origin.y;
      v9 = v87.size.width;
      v10 = v87.size.height;
      v76 = v77;
      v37 = &v76;
      v38 = v71;
      v39 = v29;
      v40 = v30;
      v41 = v31;
LABEL_18:
      v90 = CGRectApplyAffineTransform(*&v38, v37);
      v12 = v90.origin.x;
      v14 = v90.origin.y;
      v16 = v90.size.width;
      v18 = v90.size.height;
      goto LABEL_20;
    }
  }

  preferredCGSizeValue = self->_preferredCGSizeValue;
  if (preferredCGSizeValue)
  {
    [(NSValue *)preferredCGSizeValue CGSizeValue];
    if (v43 >= 2.22044605e-16)
    {
      if (v44 < 2.22044605e-16)
      {
        v44 = v10 * v43 / v9;
      }
    }

    else
    {
      v43 = v9 * v44 / v10;
    }

    v45 = fmin(v43 / v9, v44 / v10);
    self->_scaledDownFactor = v45;
    if (v45 < 1.0 || (v36 = 0.0, self->_allowUpScaling))
    {
      memset(&v81, 0, sizeof(v81));
      CGAffineTransformMakeScale(&v81, v45, v45);
      v77 = v81;
      v88.origin.x = 0.0;
      v88.origin.y = 0.0;
      v88.size.width = v9;
      v88.size.height = v10;
      v89 = CGRectApplyAffineTransform(v88, &v77);
      v35 = v89.origin.x;
      v36 = v89.origin.y;
      v9 = v89.size.width;
      v10 = v89.size.height;
      v77 = v81;
      v37 = &v77;
      v38 = v12;
      v39 = v14;
      v40 = v16;
      v41 = v18;
      goto LABEL_18;
    }
  }

  else
  {
    self->_scaledDownFactor = 0.0;
    self->_scaledDownXDelta = 0.0;
    self->_scaledDownYDelta = 0.0;
    v36 = 0.0;
  }

  v35 = 0.0;
LABEL_20:
  v46 = bps_setup_log();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v91.origin.x = v12;
    v91.origin.y = v14;
    v91.size.width = v16;
    v91.size.height = v18;
    v47 = NSStringFromCGRect(v91);
    LODWORD(v81.a) = 138412290;
    *(&v81.a + 4) = v47;
    _os_log_impl(&dword_241E74000, v46, OS_LOG_TYPE_DEFAULT, "watchScreenViewFrame: %@", &v81, 0xCu);
  }

  [(BPSFadingImageView *)self->_watchView setFrame:v35, v36, v9, v10];
  [(UIImageView *)self->_watchScreenImageView setFrame:v12, v14, v16, v18];
  if ([(BPSIllustratedWatchView *)self shouldBeVerticallyCentered])
  {
    [(BPSFadingImageView *)self->_watchView center];
    v49 = v48;
    [(BPSIllustratedWatchView *)self frame];
    [(BPSFadingImageView *)self->_watchView setCenter:v49, CGRectGetMidY(v92)];
  }

  if ([(BPSIllustratedWatchView *)self showCrownOnLeft])
  {
    memset(&v81, 0, sizeof(v81));
    CGAffineTransformMakeRotation(&v81, 3.14159265);
    v77 = v81;
    [(BPSFadingImageView *)self->_watchView setTransform:&v77];
    v77 = v81;
    [(UIImageView *)self->_watchScreenImageView setTransform:&v77];
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  subviews = [(UIImageView *)self->_watchScreenImageView subviews];
  v51 = [subviews countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v73;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v73 != v53)
        {
          objc_enumerationMutation(subviews);
        }

        v55 = *(*(&v72 + 1) + 8 * i);
        maskView = [v55 maskView];

        if (!maskView)
        {
          v57 = MEMORY[0x277D755B8];
          _blankScreenImageName = [(BPSIllustratedWatchView *)self _blankScreenImageName];
          v59 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v60 = [v57 imageNamed:_blankScreenImageName inBundle:v59];

          v61 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v60];
          [v61 setContentMode:1];
          [v55 setMaskView:v61];
        }

        [(UIImageView *)self->_watchScreenImageView bounds];
        v63 = v62;
        v65 = v64;
        v67 = v66;
        v69 = v68;
        maskView2 = [v55 maskView];
        [maskView2 setFrame:{v63, v65, v67, v69}];
      }

      v52 = [subviews countByEnumeratingWithState:&v72 objects:v80 count:16];
    }

    while (v52);
  }

  [(BPSIllustratedWatchView *)self _updateSyncTrapProgressViewTransform];
}

- (CGRect)_unscaledWatchScreenInsetGuide
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v5 = 1.0 / v4;

  usingCompactWatchAsset = [(BPSIllustratedWatchView *)self usingCompactWatchAsset];
  v7 = 126.0;
  v8 = 103.0;
  if (usingCompactWatchAsset)
  {
    v9 = 29.0;
    v10 = 41.0;
  }

  else
  {
    v10 = v5 + 12.0;
    v9 = 83.0;
  }

  if (self->_usingAgaveWatchAsset || self->_usingBegoniaWatchAsset)
  {
    v11 = [(BPSIllustratedWatchView *)self usingCompactWatchAsset:v10];
    v9 = 21.0;
    if (!v11)
    {
      v9 = 76.0;
    }

    v7 = 156.5;
    v8 = 128.0;
    v10 = 36.0;
  }

  else if (self->_usingAvoniaWatchAsset)
  {
    v12 = [(BPSIllustratedWatchView *)self usingCompactWatchAsset:v10];
    v7 = 133.0;
    v8 = 111.0;
    if (v12)
    {
      v9 = 10.0;
      v10 = 11.0;
    }

    else
    {
      v10 = v5 + 11.0;
      v9 = 50.0;
    }
  }

  result.size.height = v7;
  result.size.width = v8;
  result.origin.y = v9;
  result.origin.x = v10;
  return result;
}

- (CGRect)watchScreenInsetGuide
{
  [(BPSIllustratedWatchView *)self _unscaledWatchScreenInsetGuide];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  scaledDownFactor = self->_scaledDownFactor;
  if (scaledDownFactor > 0.0)
  {
    memset(&v22, 0, sizeof(v22));
    CGAffineTransformMakeScale(&v22, scaledDownFactor, scaledDownFactor);
    v21 = v22;
    v23.origin.x = v4;
    v23.origin.y = v6;
    v23.size.width = v8;
    v23.size.height = v10;
    v24 = CGRectApplyAffineTransform(v23, &v21);
    x = v24.origin.x;
    y = v24.origin.y;
    width = v24.size.width;
    height = v24.size.height;
    memset(&v21, 0, sizeof(v21));
    CGAffineTransformMakeTranslation(&v21, self->_scaledDownXDelta, self->_scaledDownYDelta);
    v20 = v21;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v26 = CGRectApplyAffineTransform(v25, &v20);
    v4 = v26.origin.x;
    v6 = v26.origin.y;
    v8 = v26.size.width;
    v10 = v26.size.height;
  }

  v16 = v4;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)addSyncTrapProgressView:(id)view
{
  v18[2] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if (self->_centeredSubviewCenterXConstraint)
  {
    v5 = bps_setup_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241E74000, v5, OS_LOG_TYPE_DEFAULT, "Only one sync trap progress view is supported.", buf, 2u);
    }
  }

  else
  {
    [(BPSIllustratedWatchView *)self setSyncTrapProgressView:viewCopy];
    watchScreenImageView = [(BPSIllustratedWatchView *)self watchScreenImageView];
    [watchScreenImageView addSubview:viewCopy];

    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = MEMORY[0x277CCAAD0];
    centerXAnchor = [viewCopy centerXAnchor];
    watchScreenImageView2 = [(BPSIllustratedWatchView *)self watchScreenImageView];
    centerXAnchor2 = [watchScreenImageView2 centerXAnchor];
    v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v18[0] = v9;
    centerYAnchor = [viewCopy centerYAnchor];
    watchScreenImageView3 = [(BPSIllustratedWatchView *)self watchScreenImageView];
    centerYAnchor2 = [watchScreenImageView3 centerYAnchor];
    v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v18[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    [v15 activateConstraints:v14];

    [(BPSIllustratedWatchView *)self _updateSyncTrapProgressViewTransform];
  }
}

- (void)_updateSyncTrapProgressViewTransform
{
  if (self->_syncTrapProgressView)
  {
    [(BPSIllustratedWatchView *)self scaledDownFactor];
    v4 = v3;
    v5 = 1.0;
    if (v4 > 0.0)
    {
      [(BPSIllustratedWatchView *)self scaledDownFactor];
    }

    CGAffineTransformMakeScale(&v8, v5, v5);
    syncTrapProgressView = [(BPSIllustratedWatchView *)self syncTrapProgressView];
    v7 = v8;
    [syncTrapProgressView setTransform:&v7];
  }
}

- (void)addScreenView:(id)view
{
  v24[4] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  watchScreenImageView = [(BPSIllustratedWatchView *)self watchScreenImageView];
  [watchScreenImageView addSubview:viewCopy];

  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = MEMORY[0x277CCAAD0];
  leadingAnchor = [viewCopy leadingAnchor];
  watchScreenImageView2 = [(BPSIllustratedWatchView *)self watchScreenImageView];
  leadingAnchor2 = [watchScreenImageView2 leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v24[0] = v20;
  trailingAnchor = [viewCopy trailingAnchor];
  watchScreenImageView3 = [(BPSIllustratedWatchView *)self watchScreenImageView];
  trailingAnchor2 = [watchScreenImageView3 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v24[1] = v15;
  topAnchor = [viewCopy topAnchor];
  watchScreenImageView4 = [(BPSIllustratedWatchView *)self watchScreenImageView];
  topAnchor2 = [watchScreenImageView4 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v24[2] = v9;
  bottomAnchor = [viewCopy bottomAnchor];

  watchScreenImageView5 = [(BPSIllustratedWatchView *)self watchScreenImageView];
  bottomAnchor2 = [watchScreenImageView5 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
  [v16 activateConstraints:v14];

  [(BPSIllustratedWatchView *)self setNeedsLayout];
}

- (id)_blankScreenImageName
{
  if ([(BPSIllustratedWatchView *)self usingAgaveWatchAsset]|| [(BPSIllustratedWatchView *)self usingBegoniaWatchAsset])
  {
    return @"Screen-Blank-502h";
  }

  else
  {
    return @"Screen-Blank-496h";
  }
}

@end