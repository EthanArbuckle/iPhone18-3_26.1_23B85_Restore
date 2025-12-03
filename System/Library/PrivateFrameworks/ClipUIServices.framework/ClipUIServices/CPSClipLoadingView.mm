@interface CPSClipLoadingView
- (CPSClipLoadingView)initWithCoder:(id)coder;
- (CPSClipLoadingView)initWithFrame:(CGRect)frame;
- (id)_animationForTranslationY:(double)y;
- (id)_textScaleUpSpringAnimation;
- (void)_arcadeAnimationDidComplete:(id)complete;
- (void)_configureViewForArcadeIfNeeded;
- (void)_reloadTapped:(id)tapped;
- (void)_revealBackgroundAndLabels;
- (void)_showCompletionAnimation:(id)animation;
- (void)_startAnimationIfNeeded;
- (void)_updateConicGradientRotation;
- (void)_updateLoadingProgress;
- (void)finishLoadingWithCompletion:(id)completion;
- (void)layoutSubviews;
- (void)setBackgroundImage:(id)image animated:(BOOL)animated;
- (void)setLoadingHasFailed:(BOOL)failed animated:(BOOL)animated reason:(id)reason reloadHandler:(id)handler;
- (void)setLoadingProgress:(float)progress completion:(id)completion;
- (void)setName:(id)name;
- (void)setProvider:(id)provider;
- (void)setSupportsArcade:(BOOL)arcade;
@end

@implementation CPSClipLoadingView

- (CPSClipLoadingView)initWithFrame:(CGRect)frame
{
  v76[1] = *MEMORY[0x277D85DE8];
  v75.receiver = self;
  v75.super_class = CPSClipLoadingView;
  v3 = [(CPSClipLoadingView *)&v75 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    name = v3->_name;
    v3->_name = &stru_285684560;

    provider = v4->_provider;
    v4->_provider = &stru_285684560;

    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(CPSClipLoadingView *)v4 setBackgroundColor:systemBackgroundColor];

    [(CPSClipLoadingView *)v4 setAccessibilityIgnoresInvertColors:1];
    v8 = [MEMORY[0x277D755E8] cps_imageViewWithImage:0 tintColor:0 backgroundColor:0];
    heroImageView = v4->_heroImageView;
    v4->_heroImageView = v8;

    [(UIImageView *)v4->_heroImageView setContentMode:2];
    v10 = objc_alloc_init(MEMORY[0x277D75D18]);
    gradientView = v4->_gradientView;
    v4->_gradientView = v10;

    if (UIAccessibilityIsReduceMotionEnabled())
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      v13 = [blackColor colorWithAlphaComponent:0.3];
      [(UIView *)v4->_gradientView setBackgroundColor:v13];
    }

    else
    {
      cps_grayscaleConicGradientLayer = [MEMORY[0x277CD9EB0] cps_grayscaleConicGradientLayer];
      gradientLayer = v4->_gradientLayer;
      v4->_gradientLayer = cps_grayscaleConicGradientLayer;

      layer = [(UIView *)v4->_gradientView layer];
      [layer addSublayer:v4->_gradientLayer];

      blackColor = [(UIView *)v4->_gradientView layer];
      LODWORD(v17) = 1053609165;
      [blackColor setOpacity:v17];
    }

    [(UIView *)v4->_gradientView sizeToFit];
    v18 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5D8]];
    layer2 = [(UIView *)v4->_gradientView layer];
    [layer2 setCompositingFilter:v18];

    array = [MEMORY[0x277CBEB18] array];
    if (!UIAccessibilityIsReduceTransparencyEnabled())
    {
      v21 = [MEMORY[0x277CD9EA0] cps_filterWithType:*MEMORY[0x277CDA580] value:*MEMORY[0x277CDA360] forKey:0.4];
      [v21 setValue:&unk_285688B70 forKey:*MEMORY[0x277CDA540]];
      [array addObject:v21];
    }

    v74 = [MEMORY[0x277CD9EA0] cps_filterWithType:*MEMORY[0x277CDA328] value:*MEMORY[0x277CDA4F0] forKey:50.0];
    [v74 setValue:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CDA448]];
    [v74 setValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDA4C8]];
    [array addObject:v74];
    v22 = *MEMORY[0x277CDA2D0];
    v73 = [MEMORY[0x277CD9EA0] cps_filterWithType:*MEMORY[0x277CDA2D0] value:*MEMORY[0x277CDA2D0] forKey:1.6];
    [array addObject:v73];
    v23 = objc_alloc_init(MEMORY[0x277D75D18]);
    backdropView = v4->_backdropView;
    v4->_backdropView = v23;

    layer3 = [(UIView *)v4->_backdropView layer];
    [layer3 setAllowsGroupBlending:0];

    [(UIView *)v4->_backdropView addSubview:v4->_heroImageView];
    [(UIView *)v4->_backdropView addSubview:v4->_gradientView];
    [(CPSClipLoadingView *)v4 addSubview:v4->_backdropView];
    v26 = objc_alloc_init(MEMORY[0x277CD9E08]);
    backdropLayer = v4->_backdropLayer;
    v4->_backdropLayer = v26;

    [(CABackdropLayer *)v4->_backdropLayer setFilters:array];
    [(CABackdropLayer *)v4->_backdropLayer setScale:0.25];
    layer4 = [(CPSClipLoadingView *)v4 layer];
    [layer4 addSublayer:v4->_backdropLayer];

    v29 = objc_alloc_init(MEMORY[0x277D75D18]);
    labelContainerView = v4->_labelContainerView;
    v4->_labelContainerView = v29;

    v31 = objc_alloc_init(MEMORY[0x277D75D18]);
    clipNameContainerView = v4->_clipNameContainerView;
    v4->_clipNameContainerView = v31;

    v33 = MEMORY[0x277D756B8];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v35 = [v33 cps_labelWithText:0 textColor:whiteColor fontSize:35.0 fontWeight:*MEMORY[0x277D743F8]];
    clipNameLabel = v4->_clipNameLabel;
    v4->_clipNameLabel = v35;

    [(UILabel *)v4->_clipNameLabel setTextAlignment:1];
    [(UIView *)v4->_clipNameContainerView setMaskView:v4->_clipNameLabel];
    v37 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2A8]];
    layer5 = [(UIView *)v4->_clipNameContainerView layer];
    mask = [layer5 mask];
    [mask setCompositingFilter:v37];

    v72 = [MEMORY[0x277CD9EA0] cps_filterWithType:v22 value:v22 forKey:2.0];
    v40 = objc_alloc_init(MEMORY[0x277D75D18]);
    clipNameBackdropView = v4->_clipNameBackdropView;
    v4->_clipNameBackdropView = v40;

    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(UIView *)v4->_clipNameBackdropView setBackgroundColor:whiteColor2];

    [(UIView *)v4->_clipNameBackdropView setAlpha:0.5];
    v76[0] = v72;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:1];
    layer6 = [(UIView *)v4->_clipNameBackdropView layer];
    [layer6 setFilters:v43];

    [(UIView *)v4->_clipNameContainerView addSubview:v4->_clipNameBackdropView];
    v45 = objc_alloc_init(MEMORY[0x277D75D18]);
    clipNameProgressView = v4->_clipNameProgressView;
    v4->_clipNameProgressView = v45;

    whiteColor3 = [MEMORY[0x277D75348] whiteColor];
    [(UIView *)v4->_clipNameProgressView setBackgroundColor:whiteColor3];

    [(UIView *)v4->_clipNameContainerView addSubview:v4->_clipNameProgressView];
    v48 = MEMORY[0x277D756B8];
    whiteColor4 = [MEMORY[0x277D75348] whiteColor];
    v50 = [v48 cps_labelWithText:0 textColor:whiteColor4 fontSize:17.0 fontWeight:*MEMORY[0x277D74418]];
    poweredByLabel = v4->_poweredByLabel;
    v4->_poweredByLabel = v50;

    [(UILabel *)v4->_poweredByLabel setTextAlignment:1];
    layer7 = [(UILabel *)v4->_poweredByLabel layer];
    LODWORD(v53) = 0.75;
    [layer7 setOpacity:v53];

    [(UIView *)v4->_labelContainerView addSubview:v4->_clipNameContainerView];
    [(UIView *)v4->_labelContainerView addSubview:v4->_poweredByLabel];
    [(CPSClipLoadingView *)v4 addSubview:v4->_labelContainerView];
    v54 = objc_alloc_init(MEMORY[0x277D75D18]);
    errorContainerView = v4->_errorContainerView;
    v4->_errorContainerView = v54;

    [(UIView *)v4->_errorContainerView setAlpha:0.0];
    [(CPSClipLoadingView *)v4 addSubview:v4->_errorContainerView];
    v56 = [CPSVibrantLabel alloc];
    v57 = [(CPSVibrantLabel *)v56 initWithTextStyle:*MEMORY[0x277D76A28] textVariant:0 vibrancyEffectStyle:1];
    clipUnavailableLabel = v4->_clipUnavailableLabel;
    v4->_clipUnavailableLabel = v57;

    [(CPSVibrantLabel *)v4->_clipUnavailableLabel setOverrideUserInterfaceStyle:2];
    [(CPSVibrantLabel *)v4->_clipUnavailableLabel setNumberOfLines:3];
    [(CPSVibrantLabel *)v4->_clipUnavailableLabel setTextAlignment:1];
    v59 = _CPSLocalizedString();
    [(CPSVibrantLabel *)v4->_clipUnavailableLabel setText:v59];

    [(UIView *)v4->_errorContainerView addSubview:v4->_clipUnavailableLabel];
    v60 = [CPSButton alloc];
    v61 = _CPSLocalizedString();
    whiteColor5 = [MEMORY[0x277D75348] whiteColor];
    whiteColor6 = [MEMORY[0x277D75348] whiteColor];
    v64 = [whiteColor6 colorWithAlphaComponent:0.15];
    v65 = *MEMORY[0x277D76988];
    v66 = [(CPSButton *)v60 initWithTitle:v61 enabledTitleColor:whiteColor5 disabledTitleColor:0 backgroundColor:v64 textStyle:*MEMORY[0x277D76988] cornerRadius:1 animatesAlphaWhenHighlighted:0.0];
    retryButton = v4->_retryButton;
    v4->_retryButton = v66;

    v68 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v65 variant:8];
    titleLabel = [(CPSButton *)v4->_retryButton titleLabel];
    [titleLabel setFont:v68];

    [(CPSButton *)v4->_retryButton setContentEdgeInsets:14.0, 27.0, 14.0, 27.0];
    [(CPSButton *)v4->_retryButton addTarget:v4 action:sel__reloadTapped_ forControlEvents:64];
    [(UIView *)v4->_errorContainerView addSubview:v4->_retryButton];
    v70 = v4;
  }

  return v4;
}

- (CPSClipLoadingView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"-initWithCoder: is not implemented." userInfo:0];
  objc_exception_throw(v4);
}

- (void)layoutSubviews
{
  v56.receiver = self;
  v56.super_class = CPSClipLoadingView;
  [(CPSClipLoadingView *)&v56 layoutSubviews];
  if (self->_labelsNeedUpdate)
  {
    self->_labelsNeedUpdate = 0;
    if (self->_poweredByThirdParty)
    {
      v3 = &OBJC_IVAR___CPSClipLoadingView__name;
    }

    else
    {
      v3 = &OBJC_IVAR___CPSClipLoadingView__provider;
    }

    v4 = *(&self->super.super.super.isa + *v3);
    if (self->_poweredByThirdParty)
    {
      provider = self->_provider;
    }

    else
    {
      provider = 0;
    }

    v6 = provider;
    v7 = [v4 length];
    clipNameLabel = self->_clipNameLabel;
    if (v7)
    {
      [(UILabel *)clipNameLabel setText:v4];
      if ([(NSString *)v6 length])
      {
        [MEMORY[0x277CFA6E0] poweredByCaptionForAppName:self->_provider];
      }

      else
      {
        _CPSLocalizedString();
      }
      v9 = ;
      [(UILabel *)self->_poweredByLabel setText:v9];
    }

    else
    {
      [(UILabel *)clipNameLabel setText:0];
      [(UILabel *)self->_poweredByLabel setText:0];
    }

    if (self->_supportsArcade)
    {
      [(UILabel *)self->_poweredByLabel setText:0];
    }
  }

  [(CPSClipLoadingView *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(CPSClipLoadingView *)self center];
  v19 = v18;
  v21 = v20;
  [(UIImageView *)self->_heroImageView setFrame:0.0, 0.0, v15 * 3.45, v17 * 1.74];
  [(UIImageView *)self->_heroImageView setCenter:v19, v21];
  if (self->_supportsArcade)
  {
    [(UIView *)self->_arcadeGradientView setFrame:v11, v13, v15, v17];
    [(CAGradientLayer *)self->_arcadeGradientLayer setFrame:v11, v13, v15, v17];
    v22 = fmin(v15 * 0.7, 280.0);
    [(AVPlayerLayer *)self->_arcadeAnimationPlayerLayer setFrame:(v15 - v22) * 0.5, -(v22 * 0.3515625 - v17 * 0.95)];
  }

  if (v15 >= v17)
  {
    v23 = v15;
  }

  else
  {
    v23 = v17;
  }

  [(UIView *)self->_gradientView setFrame:0.0, 0.0, v23 * 1.3, v23 * 1.3];
  [(UIView *)self->_gradientView setCenter:v19, v21];
  [(UIView *)self->_gradientView bounds];
  [(CAGradientLayer *)self->_gradientLayer setFrame:?];
  [(UIView *)self->_backdropView setFrame:v11, v13, v15, v17];
  [(UIView *)self->_backdropView setCenter:v19, v21];
  [(CABackdropLayer *)self->_backdropLayer setFrame:v11, v13, v15, v17];
  if ([MEMORY[0x277CFA6E0] deviceIsPad])
  {
    v24 = 55.0;
  }

  else
  {
    v24 = 30.0;
  }

  v25 = v15 / 1.1 + v24 * -2.0;
  v55 = v25;
  if (v17 < 568.0)
  {
    v26 = 1;
  }

  else
  {
    v26 = 3;
  }

  [(UILabel *)self->_clipNameLabel setNumberOfLines:v26, *&v24];
  [(UILabel *)self->_poweredByLabel setNumberOfLines:v26];
  [(UILabel *)self->_poweredByLabel cps_sizeToFitWithinSize:v25, v17];
  [(UILabel *)self->_clipNameLabel cps_sizeToFitWithinSize:v25, v17];
  [(UILabel *)self->_clipNameLabel frame];
  [(UIView *)self->_clipNameContainerView setFrame:?];
  [(UIView *)self->_clipNameContainerView bounds];
  v53 = v21;
  v54 = v19;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  [(UILabel *)self->_clipNameLabel setFrame:?];
  [(UIView *)self->_clipNameBackdropView setFrame:v28, v30, v32, v34];
  [(CPSClipLoadingView *)self _updateLoadingProgress];
  [(UIView *)self->_clipNameContainerView frame];
  v36 = v35;
  [(UILabel *)self->_poweredByLabel frame];
  v38 = fmax(v36, v37);
  [(UIView *)self->_clipNameContainerView frame];
  v40 = v39;
  [(UILabel *)self->_poweredByLabel frame];
  v42 = v52 + v40 + v41;
  v57.origin.x = v11;
  v57.origin.y = v13;
  v57.size.width = v15;
  v57.size.height = v17;
  v43 = (CGRectGetWidth(v57) - v38) * 0.5;
  v58.origin.x = v11;
  v58.origin.y = v13;
  v58.size.width = v15;
  v58.size.height = v17;
  [(UIView *)self->_labelContainerView setFrame:v43, -(v42 - CGRectGetHeight(v58) * 0.96615) * 0.5, v38, v42];
  if (self->_poweredByThirdParty)
  {
    v44 = 432;
  }

  else
  {
    v44 = 528;
  }

  if (self->_poweredByThirdParty)
  {
    v45 = 528;
  }

  else
  {
    v45 = 432;
  }

  [(UIView *)self->_labelContainerView cps_verticallyAlignTopView:*(&self->super.super.super.isa + v44) bottomView:*(&self->super.super.super.isa + v45) margin:v52];
  [(UIView *)self->_errorContainerView setFrame:v11, v13, v15, v17];
  [(CPSButton *)self->_retryButton sizeToFit];
  [(CPSButton *)self->_retryButton bounds];
  v46 = CGRectGetHeight(v59) * 0.5;
  [(CPSButton *)self->_retryButton _setContinuousCornerRadius:ceil(v46)];
  [(CPSButton *)self->_retryButton setCenter:v54, v53];
  [(CPSButton *)self->_retryButton frame];
  v48 = v47;
  v60.origin.x = v11;
  v60.origin.y = v13;
  v60.size.width = v15;
  v60.size.height = v17;
  [(CPSButton *)self->_retryButton setOrigin:v48, (CGRectGetHeight(v60) - v46) * 0.85];
  [(UIView *)self->_clipUnavailableLabel cps_sizeToFitWithinSize:v55, v17];
  [(CPSVibrantLabel *)self->_clipUnavailableLabel setCenter:v54, v53];
  [(CPSVibrantLabel *)self->_clipUnavailableLabel bounds];
  v49 = CGRectGetHeight(v61) * 0.5;
  [(CPSVibrantLabel *)self->_clipUnavailableLabel frame];
  v51 = v50;
  v62.origin.x = v11;
  v62.origin.y = v13;
  v62.size.width = v15;
  v62.size.height = v17;
  [(CPSVibrantLabel *)self->_clipUnavailableLabel setOrigin:v51, (CGRectGetHeight(v62) - v49) * 0.45];
  [(CPSClipLoadingView *)self _startAnimationIfNeeded];
}

- (void)setLoadingHasFailed:(BOOL)failed animated:(BOOL)animated reason:(id)reason reloadHandler:(id)handler
{
  animatedCopy = animated;
  failedCopy = failed;
  reasonCopy = reason;
  if (self->_loadingHasFailed != failedCopy)
  {
    self->_loadingHasFailed = failedCopy;
    if (failedCopy)
    {
      handlerCopy = handler;
    }

    else
    {
      handlerCopy = 0;
    }

    v12 = MEMORY[0x245D3DDC0](handlerCopy);
    reloadHandler = self->_reloadHandler;
    self->_reloadHandler = v12;

    if (failedCopy && [reasonCopy length])
    {
      [(CPSVibrantLabel *)self->_clipUnavailableLabel setText:reasonCopy];
    }

    v14 = 0.3;
    if (!animatedCopy)
    {
      v14 = 0.0;
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __72__CPSClipLoadingView_setLoadingHasFailed_animated_reason_reloadHandler___block_invoke;
    v17[3] = &unk_278DD2498;
    v17[4] = self;
    v18 = failedCopy;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __72__CPSClipLoadingView_setLoadingHasFailed_animated_reason_reloadHandler___block_invoke_2;
    v15[3] = &unk_278DD2838;
    v16 = failedCopy;
    v15[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v17 animations:v15 completion:v14];
    [(CPSClipLoadingView *)self _updateConicGradientRotation];
  }
}

uint64_t __72__CPSClipLoadingView_setLoadingHasFailed_animated_reason_reloadHandler___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 504) setAlpha:(*(a1 + 40) ^ 1u)];
  LOBYTE(v2) = *(a1 + 40);
  v3 = v2;
  v4 = *(*(a1 + 32) + 456);

  return [v4 setAlpha:v3];
}

uint64_t __72__CPSClipLoadingView_setLoadingHasFailed_animated_reason_reloadHandler___block_invoke_2(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) setLoadingProgress:0 completion:0.0];
  }

  return result;
}

- (void)setName:(id)name
{
  nameCopy = &stru_285684560;
  if (name)
  {
    nameCopy = name;
  }

  v5 = nameCopy;
  name = self->_name;
  if (name != v5)
  {
    v9 = v5;
    name = [name isEqualToString:v5];
    v5 = v9;
    if ((name & 1) == 0)
    {
      v7 = [(__CFString *)v9 copy];
      v8 = self->_name;
      self->_name = v7;

      self->_labelsNeedUpdate = 1;
      name = [(CPSClipLoadingView *)self setNeedsLayout];
      v5 = v9;
    }
  }

  MEMORY[0x2821F96F8](name, v5);
}

- (void)setProvider:(id)provider
{
  providerCopy = &stru_285684560;
  if (provider)
  {
    providerCopy = provider;
  }

  v5 = providerCopy;
  provider = self->_provider;
  if (provider != v5)
  {
    v9 = v5;
    provider = [provider isEqualToString:v5];
    v5 = v9;
    if ((provider & 1) == 0)
    {
      v7 = [(__CFString *)v9 copy];
      v8 = self->_provider;
      self->_provider = v7;

      self->_labelsNeedUpdate = 1;
      provider = [(CPSClipLoadingView *)self setNeedsLayout];
      v5 = v9;
    }
  }

  MEMORY[0x2821F96F8](provider, v5);
}

- (void)setBackgroundImage:(id)image animated:(BOOL)animated
{
  imageCopy = image;
  if (self->_supportsArcade)
  {

    imageCopy = 0;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__CPSClipLoadingView_setBackgroundImage_animated___block_invoke;
  v15[3] = &unk_278DD2860;
  v15[4] = self;
  v7 = imageCopy;
  v16 = v7;
  v8 = MEMORY[0x245D3DDC0](v15);
  v9 = v8;
  if (animated)
  {
    v10 = MEMORY[0x277D75D18];
    heroImageView = self->_heroImageView;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__CPSClipLoadingView_setBackgroundImage_animated___block_invoke_2;
    v12[3] = &unk_278DD2888;
    v14 = v8;
    v13 = v7;
    [v10 transitionWithView:heroImageView duration:5242880 options:v12 animations:0 completion:0.7];
  }

  else
  {
    (v8)[2](v8, v7);
  }
}

void __50__CPSClipLoadingView_setBackgroundImage_animated___block_invoke(uint64_t a1)
{
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v3 = *(a1 + 40);
  if (IsReduceTransparencyEnabled)
  {
    v3 = [*(a1 + 40) cps_averageColorImage];
  }

  [*(*(a1 + 32) + 496) setImage:v3];
  if (IsReduceTransparencyEnabled)
  {
  }

  if (*(a1 + 40))
  {
    v4 = 0.25;
  }

  else
  {
    v4 = 0.4;
  }

  v6 = [*(*(a1 + 32) + 544) layer];
  *&v5 = v4;
  [v6 setOpacity:v5];
}

- (void)setSupportsArcade:(BOOL)arcade
{
  if (self->_supportsArcade != arcade)
  {
    self->_supportsArcade = arcade;
    if (arcade)
    {
      [(CPSClipLoadingView *)self _configureViewForArcadeIfNeeded];
    }
  }
}

- (void)setLoadingProgress:(float)progress completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_loadingProgress == progress)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    ++self->_progressChangeAnimationCount;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __52__CPSClipLoadingView_setLoadingProgress_completion___block_invoke;
    v18[3] = &unk_278DD28B0;
    v18[4] = self;
    v19 = completionCopy;
    v8 = MEMORY[0x245D3DDC0](v18);
    self->_loadingProgress = progress;
    _loadingIsComplete = [(CPSClipLoadingView *)self _loadingIsComplete];
    v10 = _loadingIsComplete;
    if (_loadingIsComplete)
    {
      v11 = 0.2;
    }

    else
    {
      v11 = 0.1;
    }

    v12 = MEMORY[0x277D75D18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __52__CPSClipLoadingView_setLoadingProgress_completion___block_invoke_2;
    v17[3] = &unk_278DD2268;
    v17[4] = self;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__CPSClipLoadingView_setLoadingProgress_completion___block_invoke_3;
    v14[3] = &unk_278DD28D8;
    v16 = _loadingIsComplete;
    v13 = v8;
    v15 = v13;
    [v12 animateWithDuration:v17 animations:v14 completion:v11];
    if (v10)
    {
      [(CPSClipLoadingView *)self _showCompletionAnimation:v13];
    }
  }
}

uint64_t __52__CPSClipLoadingView_setLoadingProgress_completion___block_invoke(uint64_t a1)
{
  --*(*(a1 + 32) + 520);
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v3 = *(a1 + 32);
  if (!*(v3 + 520))
  {
    result = *(v3 + 488);
    if (result)
    {
      v4 = *(result + 16);

      return v4();
    }
  }

  return result;
}

uint64_t __52__CPSClipLoadingView_setLoadingProgress_completion___block_invoke_3(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)finishLoadingWithCompletion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    loadingProgress = self->_loadingProgress;
    progressChangeAnimationCount = self->_progressChangeAnimationCount;
    *buf = 134218240;
    v31 = loadingProgress;
    v32 = 2048;
    v33 = progressChangeAnimationCount;
    _os_log_impl(&dword_24374B000, v5, OS_LOG_TYPE_DEFAULT, "Requested to finish the loading animation with current progress %f and animation count %ld.", buf, 0x16u);
  }

  if (self->_loadingProgress >= 1.0)
  {
    if (self->_progressChangeAnimationCount || self->_supportsArcade && !self->_arcadeAnimationCompleted)
    {
      if (!self->_deferredActions)
      {
        objc_initWeak(buf, self);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __50__CPSClipLoadingView_finishLoadingWithCompletion___block_invoke_2;
        v24[3] = &unk_278DD2900;
        objc_copyWeak(&v26, buf);
        v25 = completionCopy;
        v9 = MEMORY[0x245D3DDC0](v24);
        deferredActions = self->_deferredActions;
        self->_deferredActions = v9;

        objc_destroyWeak(&v26);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v11 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24374B000, v11, OS_LOG_TYPE_DEFAULT, "Animating out the loading view.", buf, 2u);
      }

      backdropLayer = self->_backdropLayer;
      v13 = [(CPSClipLoadingView *)self _backdropEffectRemovalAnimationForKeyPath:@"filters.luminanceCurveMap.inputAmount"];
      [(CABackdropLayer *)backdropLayer addAnimation:v13 forKey:0];

      v14 = self->_backdropLayer;
      v15 = [(CPSClipLoadingView *)self _backdropEffectRemovalAnimationForKeyPath:@"filters.colorSaturate.inputAmount"];
      [(CABackdropLayer *)v14 addAnimation:v15 forKey:0];

      layer = [(UIView *)self->_labelContainerView layer];
      _basicAnimationToDecreaseOpacity = [(CPSClipLoadingView *)self _basicAnimationToDecreaseOpacity];
      [layer addAnimation:_basicAnimationToDecreaseOpacity forKey:0];

      layer2 = [(CPSClipLoadingView *)self layer];
      _springAnimationToDecreaseOpacity = [(CPSClipLoadingView *)self _springAnimationToDecreaseOpacity];
      [layer2 addAnimation:_springAnimationToDecreaseOpacity forKey:0];

      _textScaleUpSpringAnimation = [(CPSClipLoadingView *)self _textScaleUpSpringAnimation];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __50__CPSClipLoadingView_finishLoadingWithCompletion___block_invoke_71;
      v22[3] = &unk_278DD2928;
      v23 = completionCopy;
      [_textScaleUpSpringAnimation cps_setDelegateWithDidStartHandler:0 didStopHandler:v22];
      layer3 = [(UIView *)self->_clipNameContainerView layer];
      [layer3 addAnimation:_textScaleUpSpringAnimation forKey:0];
    }
  }

  else
  {
    objc_initWeak(buf, self);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __50__CPSClipLoadingView_finishLoadingWithCompletion___block_invoke;
    v27[3] = &unk_278DD2900;
    objc_copyWeak(&v29, buf);
    v28 = completionCopy;
    LODWORD(v8) = 1.0;
    [(CPSClipLoadingView *)self setLoadingProgress:v27 completion:v8];

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }
}

void __50__CPSClipLoadingView_finishLoadingWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained finishLoadingWithCompletion:*(a1 + 32)];
}

void __50__CPSClipLoadingView_finishLoadingWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained finishLoadingWithCompletion:*(a1 + 32)];
}

uint64_t __50__CPSClipLoadingView_finishLoadingWithCompletion___block_invoke_71(uint64_t a1)
{
  v2 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24374B000, v2, OS_LOG_TYPE_DEFAULT, "The loading view has been animated out.", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_updateLoadingProgress
{
  [(UIView *)self->_clipNameContainerView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(CPSClipLoadingView *)self _loadingIsComplete])
  {
    v11 = 1.0;
  }

  else
  {
    v11 = 0.7;
  }

  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  [(UIView *)self->_clipNameProgressView setFrame:v4, CGRectGetHeight(v14) * (1.0 - self->_loadingProgress * v11), v8, v10];
  if (self->_supportsArcade && self->_loadingProgress > 0.05 && [(AVPlayer *)self->_arcadeAnimationPlayer timeControlStatus]== AVPlayerTimeControlStatusPaused)
  {
    arcadeAnimationPlayer = self->_arcadeAnimationPlayer;

    [(AVPlayer *)arcadeAnimationPlayer play];
  }
}

- (void)_startAnimationIfNeeded
{
  if (!self->_animationHasStarted && !self->_loadingHasFailed)
  {
    superview = [(CPSClipLoadingView *)self superview];
    if (superview)
    {
      v7 = superview;
      window = [(CPSClipLoadingView *)self window];
      if (window)
      {
        v5 = window;
        if ([(NSString *)self->_name length])
        {
        }

        else
        {
          v6 = [(NSString *)self->_provider length];

          if (!v6)
          {
            return;
          }
        }

        [(CPSClipLoadingView *)self _revealBackgroundAndLabels];
        [(CPSClipLoadingView *)self _updateConicGradientRotation];
        self->_animationHasStarted = 1;
      }

      else
      {
      }
    }
  }
}

- (void)_revealBackgroundAndLabels
{
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v11 = [(CPSClipLoadingView *)self _animationForTranslationY:150.0];
    layer = [(UIView *)self->_labelContainerView layer];
    [layer addAnimation:v11 forKey:@"labelContainerTranslationAnimation"];

    v4 = [(CPSClipLoadingView *)self _animationForTranslationY:80.0];
    if (self->_poweredByThirdParty)
    {
      v5 = &OBJC_IVAR___CPSClipLoadingView__poweredByLabel;
    }

    else
    {
      v5 = &OBJC_IVAR___CPSClipLoadingView__clipNameContainerView;
    }

    v6 = *(&self->super.super.super.isa + *v5);
    layer2 = [v6 layer];
    [layer2 addAnimation:v4 forKey:@"poweredByLabelTranslationAnimation"];

    v8 = [MEMORY[0x277CD9FA0] cps_animationForKeyPath:@"transform.scale.xy" from:&unk_285688B20 to:&unk_285688AE8 beginAfter:0 duration:0.015 mass:0.8 stiffness:2.0 damping:300.0 keepFinalFrame:50.0];
    layer3 = [(UIImageView *)self->_heroImageView layer];
    [layer3 setValue:&unk_285688B20 forKey:@"transform.scale.xy"];

    layer4 = [(UIImageView *)self->_heroImageView layer];

    [layer4 addAnimation:v8 forKey:@"heroImageScaleUpAnimation"];
  }
}

- (void)_updateConicGradientRotation
{
  if (UIAccessibilityIsReduceMotionEnabled() || self->_supportsArcade)
  {
    return;
  }

  layer = [(UIView *)self->_gradientView layer];
  v3 = [layer animationForKey:@"conicGradientRotationAnimation"];
  if (v3)
  {
    v4 = v3;
    if (self->_loadingHasFailed)
    {
      [layer cps_pauseAnimations];
    }

    else
    {
      [layer cps_resumeAnimations];
    }

    goto LABEL_10;
  }

  if (!self->_loadingHasFailed)
  {
    v4 = [MEMORY[0x277CD9E10] cps_animationForKeyPath:@"transform.rotation.z" from:0 to:&unk_285688B30 beginAfter:0 duration:0.0 keepFinalFrame:5.0];
    LODWORD(v5) = 2139095040;
    [v4 setRepeatCount:v5];
    layer2 = [(UIView *)self->_gradientView layer];
    [layer2 addAnimation:v4 forKey:@"conicGradientRotationAnimation"];

LABEL_10:
  }
}

- (void)_arcadeAnimationDidComplete:(id)complete
{
  self->_arcadeAnimationCompleted = 1;
  if (self->_deferredActions)
  {
    LODWORD(v3) = 1.0;
    [(CPSClipLoadingView *)self setLoadingProgress:0 completion:v3];
  }
}

- (void)_configureViewForArcadeIfNeeded
{
  v24[2] = *MEMORY[0x277D85DE8];
  if (!self->_arcadeGradientView && self->_supportsArcade)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    arcadeGradientView = self->_arcadeGradientView;
    self->_arcadeGradientView = v4;

    v6 = objc_alloc_init(MEMORY[0x277CD9EB0]);
    arcadeGradientLayer = self->_arcadeGradientLayer;
    self->_arcadeGradientLayer = v6;

    [(UIView *)self->_arcadeGradientView bounds];
    [(CAGradientLayer *)self->_arcadeGradientLayer setFrame:?];
    v8 = [MEMORY[0x277D75348] colorNamed:@"arcadeGradientTop" inBundle:v3 compatibleWithTraitCollection:0];
    v24[0] = [v8 CGColor];
    v9 = [MEMORY[0x277D75348] colorNamed:@"arcadeGradientBottom" inBundle:v3 compatibleWithTraitCollection:0];
    v24[1] = [v9 CGColor];
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    [(CAGradientLayer *)self->_arcadeGradientLayer setColors:v10];

    [(CAGradientLayer *)self->_arcadeGradientLayer setLocations:&unk_285688B88];
    layer = [(UIView *)self->_arcadeGradientView layer];
    [layer insertSublayer:self->_arcadeGradientLayer atIndex:0];

    [(UIView *)self->_backdropView insertSubview:self->_arcadeGradientView above:self->_heroImageView];
    v12 = MEMORY[0x277CCA8D8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleURL = [v13 bundleURL];
    v15 = [v12 URLForResource:@"Arcade_4K_Video_Layer_2K" withExtension:@"m4v" subdirectory:0 inBundleWithURL:bundleURL];

    v16 = [MEMORY[0x277CE6598] playerWithURL:v15];
    arcadeAnimationPlayer = self->_arcadeAnimationPlayer;
    self->_arcadeAnimationPlayer = v16;

    v18 = [MEMORY[0x277CE65D8] playerLayerWithPlayer:self->_arcadeAnimationPlayer];
    arcadeAnimationPlayerLayer = self->_arcadeAnimationPlayerLayer;
    self->_arcadeAnimationPlayerLayer = v18;

    [(AVPlayerLayer *)self->_arcadeAnimationPlayerLayer setVideoGravity:*MEMORY[0x277CE5DD0]];
    layer2 = [(CPSClipLoadingView *)self layer];
    [layer2 addSublayer:self->_arcadeAnimationPlayerLayer];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v22 = *MEMORY[0x277CE60C0];
    currentItem = [(AVPlayer *)self->_arcadeAnimationPlayer currentItem];
    [defaultCenter addObserver:self selector:sel__arcadeAnimationDidComplete_ name:v22 object:currentItem];

    [(CABackdropLayer *)self->_backdropLayer setFilters:MEMORY[0x277CBEBF8]];
    [(UILabel *)self->_poweredByLabel setHidden:1];
    [(UIView *)self->_gradientView setHidden:1];
  }
}

- (void)_showCompletionAnimation:(id)animation
{
  animationCopy = animation;
  layer = [(UIView *)self->_clipNameContainerView layer];
  v6 = [layer animationForKey:@"progressCompletionAnimation"];

  if (v6)
  {
    if (animationCopy)
    {
      animationCopy[2](animationCopy);
    }
  }

  else
  {
    if (UIAccessibilityIsReduceMotionEnabled())
    {
      v7 = [MEMORY[0x277CD9E10] cps_nullAnimationWithDuration:1.19];
    }

    else
    {
      v8 = MEMORY[0x277CD9FA0];
      v9 = [MEMORY[0x277CCABB0] numberWithDouble:1.1];
      v7 = [v8 cps_animationForKeyPath:@"transform.scale.xy" from:0 to:v9 beginAfter:1 duration:0.0 mass:1.19 stiffness:2.0 damping:1000.0 keepFinalFrame:24.0];
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__CPSClipLoadingView__showCompletionAnimation___block_invoke;
    v11[3] = &unk_278DD2928;
    v12 = animationCopy;
    [v7 cps_setDelegateWithDidStartHandler:0 didStopHandler:v11];
    layer2 = [(UIView *)self->_clipNameContainerView layer];
    [layer2 addAnimation:v7 forKey:@"progressCompletionAnimation"];
  }
}

uint64_t __47__CPSClipLoadingView__showCompletionAnimation___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_reloadTapped:(id)tapped
{
  reloadHandler = self->_reloadHandler;
  if (reloadHandler)
  {
    reloadHandler[2]();
  }
}

- (id)_animationForTranslationY:(double)y
{
  v3 = MEMORY[0x277CD9FA0];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:y];
  v5 = [v3 cps_animationForKeyPath:@"transform.translation.y" from:v4 to:&unk_285688AD0 beginAfter:0 duration:0.0 mass:1.2 stiffness:3.0 damping:200.0 keepFinalFrame:300.0];

  return v5;
}

- (id)_textScaleUpSpringAnimation
{
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    [MEMORY[0x277CD9E10] cps_nullAnimationWithDuration:0.8];
  }

  else
  {
    [MEMORY[0x277CD9FA0] cps_animationForKeyPath:@"transform.scale.xy" from:0 to:&unk_285688B60 beginAfter:1 duration:0.0 mass:0.8 stiffness:2.0 damping:300.0 keepFinalFrame:50.0];
  }
  v2 = ;

  return v2;
}

@end