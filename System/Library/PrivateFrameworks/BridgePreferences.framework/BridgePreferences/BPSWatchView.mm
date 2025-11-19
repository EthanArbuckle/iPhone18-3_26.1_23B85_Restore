@interface BPSWatchView
- (BPSWatchView)initWithStyle:(unint64_t)a3 versionModifier:(id)a4 allowsMaterialFallback:(BOOL)a5;
- (CGRect)watchScreenInsetGuide;
- (CGSize)intrinsicContentSize;
- (CGSize)screenImageSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)screenBackground:(CGSize)a3;
- (unint64_t)deviceSize;
- (void)_cleanedImageName:(id *)a3 withFallbackImage:(id *)a4;
- (void)layoutSubviews;
- (void)layoutWatchScreenImageView;
- (void)overrideMaterial:(unint64_t)a3 size:(unint64_t)a4;
- (void)setScreenImageName:(id)a3;
@end

@implementation BPSWatchView

- (BPSWatchView)initWithStyle:(unint64_t)a3 versionModifier:(id)a4 allowsMaterialFallback:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v44.receiver = self;
  v44.super_class = BPSWatchView;
  v9 = [(BPSWatchView *)&v44 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v9)
  {
    v10 = [v8 copy];
    styleVersionSuffix = v9->_styleVersionSuffix;
    v9->_styleVersionSuffix = v10;

    v9->_style = a3;
    v12 = _WatchImageNameForStyle(a3, 0);
    v13 = _WatchImageNameForStyle(v9->_style, 1);
    v43 = v13;
    if (v9->_styleVersionSuffix)
    {
      v14 = [v12 stringByAppendingString:?];
      v15 = [v13 stringByAppendingString:v9->_styleVersionSuffix];
    }

    else
    {
      v14 = v12;
      v15 = v13;
    }

    v16 = v15;
    v17 = [MEMORY[0x277D37A78] sharedDeviceController];
    v18 = v17;
    if (v5 && ![v17 material])
    {
      v33 = BPSGetActiveSetupCompletedDevice();
      v34 = [MEMORY[0x277D37A78] materialFromDevice:v33];
      v42 = v33;
      v35 = [MEMORY[0x277D37A78] sizeFromDevice:v33];
      v36 = v9->_style - 1;
      if (v36 > 7)
      {
        v37 = 0;
      }

      else
      {
        v37 = qword_241EADDF8[v36];
      }

      v22 = [MEMORY[0x277D37A78] resourceString:v14 material:v34 size:v35 forAttributes:v37];
      v38 = MEMORY[0x277D37A78];
      v39 = [v18 fallbackMaterialForSize:v35];
      v40 = v9->_style - 1;
      if (v40 > 7)
      {
        v41 = 0;
      }

      else
      {
        v41 = qword_241EADDF8[v40];
      }

      v27 = [v38 resourceString:v16 material:v39 size:v35 forAttributes:v41];
    }

    else
    {
      v19 = [v18 size];
      v20 = v9->_style - 1;
      if (v20 > 7)
      {
        v21 = 0;
      }

      else
      {
        v21 = qword_241EADDF8[v20];
      }

      v22 = [v18 resourceString:v14 forAttributes:v21];
      v23 = MEMORY[0x277D37A78];
      v24 = [v18 fallbackMaterialForSize:v19];
      v25 = v9->_style - 1;
      if (v25 > 7)
      {
        v26 = 0;
      }

      else
      {
        v26 = qword_241EADDF8[v25];
      }

      v27 = [v23 resourceString:v16 material:v24 size:v19 forAttributes:v26];
    }

    v28 = objc_alloc_init(BPSRemoteImageView);
    watchImageView = v9->_watchImageView;
    v9->_watchImageView = v28;

    [(BPSRemoteImageView *)v9->_watchImageView setFallbackImageName:v27];
    [(BPSRemoteImageView *)v9->_watchImageView setDesiredImageName:v22];
    [(BPSRemoteImageView *)v9->_watchImageView updateImagesWithAnimation:0];
    [(BPSWatchView *)v9 addSubview:v9->_watchImageView];
    v30 = objc_alloc_init(MEMORY[0x277D755E8]);
    watchScreenImageView = v9->_watchScreenImageView;
    v9->_watchScreenImageView = v30;

    [(UIImageView *)v9->_watchScreenImageView setContentMode:1];
    [(BPSRemoteImageView *)v9->_watchImageView addSubview:v9->_watchScreenImageView];
  }

  return v9;
}

- (void)setScreenImageName:(id)a3
{
  v34[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 copy];
  screenImageName = self->_screenImageName;
  self->_screenImageName = v5;

  if ([(NSString *)self->_screenImageName length])
  {
    sizeOverride = self->_sizeOverride;
    if (sizeOverride)
    {
      v8 = [MEMORY[0x277D37A78] resourceString:self->_screenImageName material:0 size:sizeOverride forAttributes:4];
    }

    else
    {
      v9 = [MEMORY[0x277D37A78] sharedDeviceController];
      v8 = [v9 resourceString:self->_screenImageName forAttributes:4];
    }

    if (!self->_screenImageSearchBundleIdentifier || ([MEMORY[0x277CCA8D8] bundleWithIdentifier:?], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v10 = [(BPSWatchView *)self watchAssetBundle];
    }

    v11 = [MEMORY[0x277D755B8] imageNamed:v8 inBundle:v10 compatibleWithTraitCollection:0];
    if (self->_wantsLightenBlendedScreen)
    {
      v12 = [objc_alloc(MEMORY[0x277CBF758]) initWithImage:v11];
      [v11 size];
      v13 = [(BPSWatchView *)self screenBackground:?];
      v14 = [objc_alloc(MEMORY[0x277CBF758]) initWithImage:v13];
      v15 = v14;
      if (v12 && v14)
      {
        v32 = v8;
        v16 = MEMORY[0x277CBF750];
        v33[0] = @"inputImage";
        v33[1] = @"inputBackgroundImage";
        v34[0] = v12;
        v34[1] = v14;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
        v17 = v31 = v13;
        v18 = [v16 filterWithName:@"CILightenBlendMode" withInputParameters:v17];
        v19 = [v18 outputImage];

        v20 = [objc_alloc(MEMORY[0x277CBF740]) initWithOptions:0];
        [v19 extent];
        v21 = [v20 createCGImage:v19 fromRect:?];
        v22 = objc_alloc(MEMORY[0x277D755B8]);
        [v11 scale];
        v23 = v21;
        v13 = v31;
        v24 = [v22 initWithCGImage:v23 scale:0 orientation:?];

        v8 = v32;
        v11 = v24;
      }

      else
      {
        NSLog(&cfstr_ErrorUnableToC.isa, v4);
      }
    }

    if (PBIsInternalInstall() && [(BPSWatchView *)self wantsInternalFPOLabel])
    {
      v25 = objc_alloc(MEMORY[0x277D756B8]);
      [v11 size];
      v26 = [v25 initWithSize:?];
      v27 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
      [v26 setBackgroundColor:v27];

      v28 = [MEMORY[0x277D74300] boldSystemFontOfSize:10.0];
      [v26 setFont:v28];

      v29 = [MEMORY[0x277D75348] systemGreenColor];
      [v26 setTextColor:v29];

      [v26 setNumberOfLines:0];
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"FPO [No Radars Please] %@", v4];
      [v26 setText:v30];

      [(UIImageView *)self->_watchScreenImageView addSubview:v26];
    }

    [(UIImageView *)self->_watchScreenImageView setImage:v11];
    [(BPSWatchView *)self setNeedsLayout];
  }

  else
  {
    [(UIImageView *)self->_watchScreenImageView setImage:0];
  }

  [(BPSWatchView *)self applyScreenStyle];
}

- (id)screenBackground:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (a3.width == *MEMORY[0x277CBF3A8] && a3.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    v10 = 0;
  }

  else
  {
    v7 = [(BPSWatchView *)self image];
    v13.width = width;
    v13.height = height;
    UIGraphicsBeginImageContextWithOptions(v13, 1, 0.0);
    v8 = _ScreenInsets(self->_style, [(BPSWatchView *)self deviceSize]);
    [v7 drawAtPoint:{-v8, -v9}];
    v10 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v10;
}

- (CGRect)watchScreenInsetGuide
{
  v3 = _ScreenInsets(self->_style, [(BPSWatchView *)self deviceSize]);
  v5 = v4;
  [(BPSWatchView *)self screenImageSize];
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v11 = v5;
  result.size.height = v9;
  result.size.width = v7;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(BPSRemoteImageView *)self->_watchImageView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(BPSRemoteImageView *)self->_watchImageView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = BPSWatchView;
  [(BPSWatchView *)&v5 layoutSubviews];
  [(BPSRemoteImageView *)self->_watchImageView sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  [(BPSRemoteImageView *)self->_watchImageView setFrame:0.0, 0.0, v3, v4];
  [(BPSWatchView *)self layoutWatchScreenImageView];
}

- (void)layoutWatchScreenImageView
{
  v3 = [(BPSWatchView *)self deviceSize];
  [(BPSWatchView *)self screenImageSize];
  v4 = _ScreenInsets(self->_style, v3);
  watchScreenImageView = self->_watchScreenImageView;

  [(UIImageView *)watchScreenImageView setFrame:v4];
}

- (void)_cleanedImageName:(id *)a3 withFallbackImage:(id *)a4
{
  if (PBIsInternalInstall())
  {
    [*a4 rangeOfString:@"448h"];
    v7 = v6;
    [*a4 rangeOfString:@"394h"];
    if (v8 | v7)
    {
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v9 pathForResource:*a4 ofType:@"png"];

      v10 = v16;
      if (!v16)
      {
        if (v7)
        {
          v11 = @"448h";
        }

        else
        {
          v11 = @"394h";
        }

        v12 = *a4;
        v13 = v11;
        *a4 = [v12 stringByReplacingOccurrencesOfString:v13 withString:@"regular"];
        v14 = [*a3 stringByReplacingOccurrencesOfString:v13 withString:@"regular"];

        v15 = v14;
        v10 = 0;
        *a3 = v14;
      }
    }
  }
}

- (void)overrideMaterial:(unint64_t)a3 size:(unint64_t)a4
{
  self->_sizeOverride = a4;
  v17 = _WatchImageNameForStyle(self->_style, 0);
  v7 = _WatchImageNameForStyle(self->_style, 1);
  if (self->_styleVersionSuffix)
  {
    v8 = [v17 stringByAppendingString:?];
    v9 = [v7 stringByAppendingString:self->_styleVersionSuffix];
  }

  else
  {
    v8 = v17;
    v9 = v7;
  }

  v10 = v9;
  v11 = [MEMORY[0x277D37A78] resourceString:v8 material:a3 size:self->_sizeOverride forAttributes:6];
  v12 = MEMORY[0x277D37A78];
  v13 = [MEMORY[0x277D37A78] sharedDeviceController];
  v14 = [v12 resourceString:v10 material:objc_msgSend(v13 size:"fallbackMaterialForSize:" forAttributes:{a4), a4, 6}];

  v15 = [(BPSWatchView *)self watchImageView];
  [v15 setDesiredImageName:v11];

  v16 = [(BPSWatchView *)self watchImageView];
  [v16 setFallbackImageName:v14];

  [(BPSRemoteImageView *)self->_watchImageView updateImagesWithAnimation:0];
}

- (unint64_t)deviceSize
{
  v3 = [MEMORY[0x277D37A78] sharedDeviceController];
  v4 = [v3 size];

  if (self->_sizeOverride)
  {
    return self->_sizeOverride;
  }

  else
  {
    return v4;
  }
}

- (CGSize)screenImageSize
{
  v3 = [(BPSWatchView *)self deviceSize];
  [(UIImageView *)self->_watchScreenImageView sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  v5 = v4;
  v7 = v6;
  style = self->_style;
  if (style == 3 || style == 7)
  {
    v10 = [MEMORY[0x277D759A0] mainScreen];
    [v10 scale];
    v12 = v11;

    v13 = v3 - 1;
    if (v12 <= 2.0)
    {
      if (v13 < 0x19 && ((0x11C30C3u >> v13) & 1) != 0)
      {
        v14 = (&unk_241EAEE58 + 8 * v13);
        v15 = &unk_241EAEF20;
        goto LABEL_17;
      }
    }

    else if (v13 < 0x19 && ((0x11C30C3u >> v13) & 1) != 0)
    {
      v14 = (&unk_241EAECC8 + 8 * v13);
      v15 = &unk_241EAED90;
LABEL_17:
      v7 = *v14;
      v5 = *&v15[v13];
    }
  }

  else if (style == 6)
  {
    v13 = v3 - 1;
    if (v3 - 1 < 8 && ((0xC3u >> v13) & 1) != 0)
    {
      v14 = (&unk_241EAEC48 + 8 * v13);
      v15 = &unk_241EAEC88;
      goto LABEL_17;
    }
  }

  v16 = v5;
  v17 = v7;
  result.height = v17;
  result.width = v16;
  return result;
}

@end