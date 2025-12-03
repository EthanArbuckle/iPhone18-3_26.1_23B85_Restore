@interface NANowPlayingTitleView
- (BOOL)hasPublisherLogo;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NANowPlayingTitleView)initWithFrame:(CGRect)frame layoutSpecProvider:(id)provider;
- (NANowPlayingTitleViewDelegate)delegate;
- (NANowPlayingTitleViewLayoutSpecProvider)layoutSpecProvider;
- (double)publisherLogoHeight;
- (void)_setPublisherImage:(id)image;
- (void)ellipsisButtonTapped:(id)tapped;
- (void)layoutSubviews;
- (void)setMarqueeRunning:(BOOL)running;
- (void)setPublisherImage:(id)image fallbackName:(id)name;
- (void)setTitle:(id)title;
@end

@implementation NANowPlayingTitleView

- (NANowPlayingTitleView)initWithFrame:(CGRect)frame layoutSpecProvider:(id)provider
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  providerCopy = provider;
  v35.receiver = self;
  v35.super_class = NANowPlayingTitleView;
  height = [(NANowPlayingTitleView *)&v35 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __58__NANowPlayingTitleView_initWithFrame_layoutSpecProvider___block_invoke;
    v33[3] = &unk_1E84EA1C0;
    v12 = height;
    v34 = v12;
    v13 = __58__NANowPlayingTitleView_initWithFrame_layoutSpecProvider___block_invoke(v33);
    publisherImageView = v12->_publisherImageView;
    v12->_publisherImageView = v13;

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __58__NANowPlayingTitleView_initWithFrame_layoutSpecProvider___block_invoke_2;
    v31[3] = &unk_1E84EA2B0;
    v15 = v12;
    v32 = v15;
    v16 = __58__NANowPlayingTitleView_initWithFrame_layoutSpecProvider___block_invoke_2(v31);
    publisherMarqueeContainer = v15->_publisherMarqueeContainer;
    v15->_publisherMarqueeContainer = v16;

    v18 = __58__NANowPlayingTitleView_initWithFrame_layoutSpecProvider___block_invoke_3();
    titleLabel = v15->_titleLabel;
    v15->_titleLabel = v18;

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __58__NANowPlayingTitleView_initWithFrame_layoutSpecProvider___block_invoke_4;
    v29[3] = &unk_1E84EA2B0;
    v20 = v15;
    v30 = v20;
    v21 = __58__NANowPlayingTitleView_initWithFrame_layoutSpecProvider___block_invoke_4(v29);
    titleMarqueeContainer = v20->_titleMarqueeContainer;
    v20->_titleMarqueeContainer = v21;

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __58__NANowPlayingTitleView_initWithFrame_layoutSpecProvider___block_invoke_5;
    v27[3] = &unk_1E84EA238;
    v23 = v20;
    v28 = v23;
    v24 = __58__NANowPlayingTitleView_initWithFrame_layoutSpecProvider___block_invoke_5(v27);
    v25 = v23[55];
    v23[55] = v24;

    objc_storeWeak(v23 + 57, providerCopy);
  }

  return v11;
}

id __58__NANowPlayingTitleView_initWithFrame_layoutSpecProvider___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v3 = [*(a1 + 32) layoutSpecProvider];
  [v3 publisherLogoHeight];
  v5 = [v2 initWithFrame:{0.0, 0.0, 0.0, v4}];

  [v5 setContentMode:1];
  [v5 setAccessibilityIgnoresInvertColors:1];
  [v5 setAccessibilityTraits:{objc_msgSend(v5, "accessibilityTraits") & ~*MEMORY[0x1E69DD9D0]}];
  v6 = [v5 accessibilityTraits];
  [v5 setAccessibilityTraits:*MEMORY[0x1E69DDA18] | v6];

  return v5;
}

id __58__NANowPlayingTitleView_initWithFrame_layoutSpecProvider___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69AD990]);
  [v2 setMarqueeEnabled:1];
  [v2 setFadeEdgeInsets:{0.0, 0.0, 0.0, 36.0}];
  [v2 setContentGap:32.0];
  v3 = [v2 contentView];
  v4 = [*(a1 + 32) publisherImageView];
  [v3 addSubview:v4];

  [*(a1 + 32) addSubview:v2];

  return v2;
}

id __58__NANowPlayingTitleView_initWithFrame_layoutSpecProvider___block_invoke_3()
{
  v0 = objc_alloc(MEMORY[0x1E69DCC10]);
  v1 = [v0 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v1 setAdjustsFontForContentSizeCategory:1];

  return v1;
}

id __58__NANowPlayingTitleView_initWithFrame_layoutSpecProvider___block_invoke_4(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69AD990]);
  [v2 setMarqueeEnabled:1];
  [v2 setFadeEdgeInsets:{0.0, 0.0, 0.0, 36.0}];
  [v2 setContentGap:32.0];
  v3 = [v2 contentView];
  v4 = [*(a1 + 32) titleLabel];
  [v3 addSubview:v4];

  v5 = [*(a1 + 32) publisherMarqueeContainer];
  [v2 addCoordinatedMarqueeView:v5];

  v6 = [*(a1 + 32) titleLabel];
  [v2 setViewForContentSize:v6];

  [*(a1 + 32) addSubview:v2];

  return v2;
}

id __58__NANowPlayingTitleView_initWithFrame_layoutSpecProvider___block_invoke_5(uint64_t a1)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v1 = [NATouchInsetsButton buttonWithType:0];
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ellipsis.circle.fill"];
  v3 = [MEMORY[0x1E69DB878] systemFontOfSize:20.0 weight:*MEMORY[0x1E69DB980]];
  v4 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDDC8]];
  v5 = [v4 scaledFontForFont:v3 maximumPointSize:26.0];
  [v5 pointSize];
  v7 = v6;

  v8 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:3 scale:v7];
  v9 = MEMORY[0x1E69DCAD8];
  v10 = [MEMORY[0x1E69DC888] whiteColor];
  v19[0] = v10;
  v11 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
  v19[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v13 = [v9 configurationWithPaletteColors:v12];
  v14 = [v8 configurationByApplyingConfiguration:v13];

  [v1 setImage:v2 forState:0];
  [v1 setPreferredSymbolConfiguration:v14 forImageInState:0];
  [v1 addTarget:*(a1 + 32) action:sel_ellipsisButtonTapped_ forControlEvents:0x2000];
  v15 = NABundle();
  v16 = [v15 localizedStringForKey:@"more" value:&stru_1F52B5BC8 table:0];
  [v1 setAccessibilityLabel:v16];

  [*(a1 + 32) addSubview:v1];

  return v1;
}

- (void)layoutSubviews
{
  v54.receiver = self;
  v54.super_class = NANowPlayingTitleView;
  [(NANowPlayingTitleView *)&v54 layoutSubviews];
  ellipsisButton = [(NANowPlayingTitleView *)self ellipsisButton];
  [ellipsisButton sizeToFit];

  ellipsisButton2 = [(NANowPlayingTitleView *)self ellipsisButton];
  [ellipsisButton2 frame];
  Width = CGRectGetWidth(v55);

  [(NANowPlayingTitleView *)self bounds];
  v10 = CGRectGetWidth(v56) + -16.0;
  hasPublisherLogo = [(NANowPlayingTitleView *)self hasPublisherLogo];
  if (hasPublisherLogo)
  {
    ellipsisButton2 = [(NANowPlayingTitleView *)self layoutSpecProvider];
    [ellipsisButton2 publisherLogoHeight];
    v13 = v12;
    publisherImageView = [(NANowPlayingTitleView *)self publisherImageView];
    image = [publisherImageView image];
    [image size];
    v15 = v13 * v14;
    publisherImageView2 = [(NANowPlayingTitleView *)self publisherImageView];
    image2 = [publisherImageView2 image];
    [image2 size];
    v17 = v15 / v16;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = v10 - Width;
  layoutSpecProvider = [(NANowPlayingTitleView *)self layoutSpecProvider];
  [layoutSpecProvider publisherLogoHeight];
  v21 = v20;

  if (hasPublisherLogo)
  {
  }

  publisherMarqueeContainer = [(NANowPlayingTitleView *)self publisherMarqueeContainer];
  [publisherMarqueeContainer setContentSize:{v17, v21}];

  publisherImageView3 = [(NANowPlayingTitleView *)self publisherImageView];
  [publisherImageView3 setFrame:{0.0, 0.0, v17, v21}];

  publisherMarqueeContainer2 = [(NANowPlayingTitleView *)self publisherMarqueeContainer];
  [publisherMarqueeContainer2 setFrame:{0.0, 0.0, v18, v21}];

  publisherMarqueeContainer3 = [(NANowPlayingTitleView *)self publisherMarqueeContainer];
  [publisherMarqueeContainer3 frame];
  MaxY = CGRectGetMaxY(v57);

  if ([(NANowPlayingTitleView *)self hasPublisherLogo])
  {
    layoutSpecProvider2 = [(NANowPlayingTitleView *)self layoutSpecProvider];
    [layoutSpecProvider2 publisherLogoBottomMargin];
    MaxY = MaxY + v28;
  }

  titleLabel = [(NANowPlayingTitleView *)self titleLabel];
  [titleLabel bounds];
  Height = CGRectGetHeight(v58);
  titleMarqueeContainer = [(NANowPlayingTitleView *)self titleMarqueeContainer];
  [titleMarqueeContainer setFrame:{0.0, MaxY, v18, Height}];

  ellipsisButton3 = [(NANowPlayingTitleView *)self ellipsisButton];
  [ellipsisButton3 bounds];
  v33 = CGRectGetHeight(v59);

  if ([(NANowPlayingTitleView *)self hasPublisherLogo])
  {
    publisherMarqueeContainer4 = [(NANowPlayingTitleView *)self publisherMarqueeContainer];
    [publisherMarqueeContainer4 frame];
    v35 = CGRectGetMaxY(v60);
    layoutSpecProvider3 = [(NANowPlayingTitleView *)self layoutSpecProvider];
    [layoutSpecProvider3 publisherLogoBottomMargin];
    MidY = v35 + v37 * 0.5;
  }

  else
  {
    publisherMarqueeContainer4 = [(NANowPlayingTitleView *)self titleMarqueeContainer];
    [publisherMarqueeContainer4 frame];
    MidY = CGRectGetMidY(v61);
  }

  v39 = v33 * -0.5;
  [(NANowPlayingTitleView *)self bounds];
  v40 = CGRectGetWidth(v62);
  ellipsisButton4 = [(NANowPlayingTitleView *)self ellipsisButton];
  [ellipsisButton4 bounds];
  v42 = v40 - CGRectGetWidth(v63);
  v43 = MidY + v39;
  ellipsisButton5 = [(NANowPlayingTitleView *)self ellipsisButton];
  [ellipsisButton5 bounds];
  v45 = CGRectGetWidth(v64);
  ellipsisButton6 = [(NANowPlayingTitleView *)self ellipsisButton];
  [ellipsisButton6 bounds];
  v47 = CGRectGetHeight(v65);
  ellipsisButton7 = [(NANowPlayingTitleView *)self ellipsisButton];
  [ellipsisButton7 setFrame:{v42, v43, v45, v47}];

  ellipsisButton8 = [(NANowPlayingTitleView *)self ellipsisButton];
  [ellipsisButton8 bounds];
  [(NATouchInsetsButton *)self->_ellipsisButton setTouchInsets:NAInsetsToMinimumTapTargetForFrame(v50, v51, v52, v53)];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = MEMORY[0x1E69DB878];
  v6 = [(NANowPlayingTitleView *)self layoutSpecProvider:fits.width];
  [v6 titleLabelFontSize];
  v7 = [v5 systemFontOfSize:? weight:?];
  [v7 pointSize];
  v9 = v8;

  if ([(NANowPlayingTitleView *)self hasPublisherLogo])
  {
    layoutSpecProvider = [(NANowPlayingTitleView *)self layoutSpecProvider];
    [layoutSpecProvider publisherLogoHeight];
    v12 = v11;
    layoutSpecProvider2 = [(NANowPlayingTitleView *)self layoutSpecProvider];
    [layoutSpecProvider2 publisherLogoBottomMargin];
    v9 = v9 + v12 + v14;
  }

  v15 = width;
  v16 = v9;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)setPublisherImage:(id)image fallbackName:(id)name
{
  v28[3] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  nameCopy = name;
  v8 = nameCopy;
  if (imageCopy)
  {
    selfCopy2 = self;
    v10 = imageCopy;
  }

  else
  {
    if (nameCopy)
    {
      v11 = MEMORY[0x1E69DB878];
      layoutSpecProvider = [(NANowPlayingTitleView *)self layoutSpecProvider];
      [layoutSpecProvider publisherLogoHeight];
      v13 = [v11 systemFontOfSize:? weight:?];

      v14 = *MEMORY[0x1E6965A88];
      v27[0] = *MEMORY[0x1E69DB648];
      v27[1] = v14;
      v28[0] = v13;
      v28[1] = &unk_1F52DE098;
      v27[2] = *MEMORY[0x1E69DB650];
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      v28[2] = whiteColor;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];

      [v8 sizeWithAttributes:v16];
      v18 = v17;
      v20 = v19;
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      v23 = v22;
      v29.width = v18;
      v29.height = v20;
      UIGraphicsBeginImageContextWithOptions(v29, 0, v23);

      [v8 drawAtPoint:v16 withAttributes:{0.0, 0.0}];
      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextSetShouldAntialias(CurrentContext, 1);
      v25 = UIGraphicsGetCurrentContext();
      CGContextSetAllowsAntialiasing(v25, 1);
      v26 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      [(NANowPlayingTitleView *)self _setPublisherImage:v26];

      goto LABEL_6;
    }

    selfCopy2 = self;
    v10 = 0;
  }

  [(NANowPlayingTitleView *)selfCopy2 _setPublisherImage:v10];
LABEL_6:
}

- (void)_setPublisherImage:(id)image
{
  imageCopy = image;
  v5 = MEMORY[0x1E69DD250];
  publisherImageView = [(NANowPlayingTitleView *)self publisherImageView];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__NANowPlayingTitleView__setPublisherImage___block_invoke;
  v8[3] = &unk_1E84EA210;
  v8[4] = self;
  v9 = imageCopy;
  v7 = imageCopy;
  [v5 transitionWithView:publisherImageView duration:5242880 options:v8 animations:0 completion:0.25];
}

uint64_t __44__NANowPlayingTitleView__setPublisherImage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) publisherImageView];
  [v3 setImage:v2];

  v4 = [*(a1 + 40) accessibilityLabel];
  v5 = [*(a1 + 32) publisherImageView];
  [v5 setAccessibilityLabel:v4];

  v6 = [*(a1 + 40) accessibilityLabel];
  v7 = [*(a1 + 32) publisherImageView];
  [v7 setIsAccessibilityElement:v6 != 0];

  v8 = *(a1 + 32);

  return [v8 setNeedsLayout];
}

- (void)setTitle:(id)title
{
  v21[3] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  v5 = MEMORY[0x1E69DB878];
  layoutSpecProvider = [(NANowPlayingTitleView *)self layoutSpecProvider];
  [layoutSpecProvider titleLabelFontSize];
  v7 = [v5 systemFontOfSize:? weight:?];

  v8 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDDC0]];
  v9 = [v8 scaledFontForFont:v7 maximumPointSize:26.0];

  v10 = *MEMORY[0x1E6965A88];
  v20[0] = *MEMORY[0x1E69DB648];
  v20[1] = v10;
  v21[0] = v9;
  v21[1] = &unk_1F52DE098;
  v20[2] = *MEMORY[0x1E69DB650];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v21[2] = whiteColor;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  v13 = MEMORY[0x1E69DD250];
  titleLabel = [(NANowPlayingTitleView *)self titleLabel];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __34__NANowPlayingTitleView_setTitle___block_invoke;
  v17[3] = &unk_1E84EA2D8;
  v17[4] = self;
  v18 = titleCopy;
  v19 = v12;
  v15 = v12;
  v16 = titleCopy;
  [v13 transitionWithView:titleLabel duration:5242880 options:v17 animations:0 completion:0.25];
}

uint64_t __34__NANowPlayingTitleView_setTitle___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:*(a1 + 40) attributes:*(a1 + 48)];
  v3 = [*(a1 + 32) titleLabel];
  [v3 setAttributedText:v2];

  v4 = [*(a1 + 32) titleLabel];
  [v4 sizeToFit];

  v5 = *(a1 + 32);

  return [v5 setNeedsLayout];
}

- (void)setMarqueeRunning:(BOOL)running
{
  runningCopy = running;
  publisherMarqueeContainer = [(NANowPlayingTitleView *)self publisherMarqueeContainer];
  [publisherMarqueeContainer setMarqueeEnabled:runningCopy];

  titleMarqueeContainer = [(NANowPlayingTitleView *)self titleMarqueeContainer];
  [titleMarqueeContainer setMarqueeEnabled:runningCopy];
}

- (double)publisherLogoHeight
{
  layoutSpecProvider = [(NANowPlayingTitleView *)self layoutSpecProvider];
  [layoutSpecProvider publisherLogoHeight];
  v4 = v3;

  return v4;
}

- (BOOL)hasPublisherLogo
{
  publisherImageView = [(NANowPlayingTitleView *)self publisherImageView];
  image = [publisherImageView image];
  [image size];
  v5 = v4 > 0.0;

  return v5;
}

- (void)ellipsisButtonTapped:(id)tapped
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "ellipsisButtonTouchUpInside:", v6, 2u);
  }

  delegate = [(NANowPlayingTitleView *)self delegate];
  [delegate nowPlayingTitleViewDidTapEllipsis:self];
}

- (NANowPlayingTitleViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NANowPlayingTitleViewLayoutSpecProvider)layoutSpecProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutSpecProvider);

  return WeakRetained;
}

@end