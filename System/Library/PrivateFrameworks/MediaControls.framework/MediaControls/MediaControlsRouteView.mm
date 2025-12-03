@interface MediaControlsRouteView
- (CGSize)sizeThatFits:(CGSize)fits;
- (MediaControlsRouteView)initWithFrame:(CGRect)frame;
- (void)_contentSizeCategoryDidChange;
- (void)_updateLabelVisualStyling;
- (void)layoutSubviews;
- (void)setLabelHidden:(BOOL)hidden;
- (void)setPackageName:(id)name;
- (void)setTitle:(id)title;
- (void)setVisualStylingProvider:(id)provider;
- (void)showMessage:(id)message;
@end

@implementation MediaControlsRouteView

- (MediaControlsRouteView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v19.receiver = self;
  v19.super_class = MediaControlsRouteView;
  v7 = [(MediaControlsRouteView *)&v19 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E6997250]) initWithFrame:{x, y, width, height}];
    packageView = v7->_packageView;
    v7->_packageView = v8;

    [(CCUICAPackageView *)v7->_packageView setUserInteractionEnabled:0];
    [(CCUICAPackageView *)v7->_packageView setScale:1.5];
    [(MediaControlsRouteView *)v7 addSubview:v7->_packageView];
    v10 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{x, y, width, height}];
    titleLabel = v7->_titleLabel;
    v7->_titleLabel = v10;

    [(UILabel *)v7->_titleLabel setTextAlignment:1];
    [(UILabel *)v7->_titleLabel setNumberOfLines:2];
    [(MediaControlsRouteView *)v7 addSubview:v7->_titleLabel];
    v12 = objc_alloc(MEMORY[0x1E69DCC10]);
    v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    messageLabel = v7->_messageLabel;
    v7->_messageLabel = v13;

    [(UILabel *)v7->_messageLabel setNumberOfLines:2];
    [(UILabel *)v7->_messageLabel setTextAlignment:1];
    LODWORD(v15) = 1051931443;
    [(UILabel *)v7->_messageLabel _setHyphenationFactor:v15];
    [(UILabel *)v7->_messageLabel setAlpha:0.0];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v7->_messageLabel setTextColor:labelColor];

    [(MediaControlsRouteView *)v7 addSubview:v7->_messageLabel];
    [(MediaControlsRouteView *)v7 _contentSizeCategoryDidChange];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v7;
}

- (void)layoutSubviews
{
  v56.receiver = self;
  v56.super_class = MediaControlsRouteView;
  [(MediaControlsRouteView *)&v56 layoutSubviews];
  [(MediaControlsRouteView *)self bounds];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  if (self->_labelHidden)
  {
    [(MediaControlsRouteView *)self bounds];
    UIRectCenteredIntegralRect();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [(CCUICAPackageView *)self->_packageView setFrame:?];
    v57.origin.x = v12;
    v57.origin.y = v14;
    v57.size.width = v16;
    v57.size.height = v18;
    CGRectGetMaxY(v57);
    UIRectInset();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = &OBJC_IVAR___MediaControlsRouteView__titleLabel;
  }

  else
  {
    v28 = CGRectGetHeight(*&v3) + -48.0;
    v58.origin.x = v7;
    v58.origin.y = v8;
    v58.size.width = v9;
    v58.size.height = v10;
    [(UILabel *)self->_titleLabel sizeThatFits:CGRectGetWidth(v58), v28];
    v55 = v29;
    UIRectCenteredXInRect();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    [(CCUICAPackageView *)self->_packageView setFrame:?];
    v59.origin.x = v31;
    v59.origin.y = v33;
    v59.size.width = v35;
    v59.size.height = v37;
    CGRectGetMaxY(v59);
    UIRectInset();
    x = v60.origin.x;
    y = v60.origin.y;
    width = v60.size.width;
    height = v60.size.height;
    CGRectGetMinY(v60);
    v61.origin.x = x;
    v61.origin.y = y;
    v61.size.width = width;
    v61.size.height = height;
    CGRectGetWidth(v61);
    v62.origin.x = x;
    v62.origin.y = y;
    v62.size.width = width;
    v62.size.height = height;
    CGRectGetHeight(v62);
    UIRectCenteredXInRect();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    [(UILabel *)self->_titleLabel setFrame:?];
    v63.origin.x = v43;
    v63.origin.y = v45;
    v63.size.width = v47;
    v63.size.height = v49;
    CGRectGetHeight(v63);
    UIRectInset();
    v20 = v50;
    v22 = v51;
    v24 = v52;
    v26 = v53;
    v27 = &OBJC_IVAR___MediaControlsRouteView__messageLabel;
  }

  v54 = *v27;
  [*(&self->super.super.super.isa + v54) sizeThatFits:{v24, v26, v55}];
  v64.origin.x = v20;
  v64.origin.y = v22;
  v64.size.width = v24;
  v64.size.height = v26;
  CGRectGetMinY(v64);
  v65.origin.x = v20;
  v65.origin.y = v22;
  v65.size.width = v24;
  v65.size.height = v26;
  CGRectGetWidth(v65);
  v66.origin.x = v20;
  v66.origin.y = v22;
  v66.size.width = v24;
  v66.size.height = v26;
  CGRectGetHeight(v66);
  UIRectCenteredXInRect();
  [*(&self->super.super.super.isa + v54) setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  if (self->_labelHidden)
  {
    v4 = 48.0;
  }

  else
  {
    [(UILabel *)self->_titleLabel sizeThatFits:fits.width, fits.height];
    v4 = v5 + 48.0;
  }

  v6 = width;
  result.height = v4;
  result.width = v6;
  return result;
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  [(UILabel *)self->_titleLabel setText:titleCopy];

  [(MediaControlsRouteView *)self setNeedsLayout];
}

- (void)setPackageName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_packageName isEqualToString:?])
  {
    objc_storeStrong(&self->_packageName, name);
    v5 = MEMORY[0x1E6997248];
    mediaControlsBundle = [MEMORY[0x1E696AAE8] mediaControlsBundle];
    v7 = [v5 descriptionForPackageNamed:nameCopy inBundle:mediaControlsBundle];
    [(CCUICAPackageView *)self->_packageView setPackageDescription:v7];
  }
}

- (void)setVisualStylingProvider:(id)provider
{
  providerCopy = provider;
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider != providerCopy)
  {
    v7 = providerCopy;
    [(MTVisualStylingProvider *)visualStylingProvider _removeObserver:self];
    objc_storeStrong(&self->_visualStylingProvider, provider);
    [(MTVisualStylingProvider *)self->_visualStylingProvider _addObserver:self];
    visualStylingProvider = [(MediaControlsRouteView *)self _updateLabelVisualStyling];
    providerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](visualStylingProvider, providerCopy);
}

- (void)setLabelHidden:(BOOL)hidden
{
  self->_labelHidden = hidden;
  [(MediaControlsRouteView *)self _updateLabelVisualStyling];

  [(MediaControlsRouteView *)self setNeedsLayout];
}

- (void)showMessage:(id)message
{
  [(UILabel *)self->_messageLabel setText:message];
  [(MediaControlsRouteView *)self setNeedsLayout];
  [(MediaControlsRouteView *)self layoutIfNeeded];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__MediaControlsRouteView_showMessage___block_invoke;
  v4[3] = &unk_1E7663898;
  v4[4] = self;
  [MEMORY[0x1E69DD250] animateKeyframesWithDuration:0 delay:v4 options:0 animations:2.5 completion:0.0];
}

uint64_t __38__MediaControlsRouteView_showMessage___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__MediaControlsRouteView_showMessage___block_invoke_2;
  v4[3] = &unk_1E7663898;
  v4[4] = *(a1 + 32);
  [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.1];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__MediaControlsRouteView_showMessage___block_invoke_3;
  v3[3] = &unk_1E7663898;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v3 relativeDuration:0.9 animations:0.1];
}

- (void)_updateLabelVisualStyling
{
  if (self->_labelHidden)
  {
    titleLabel = self->_titleLabel;
    v4 = 0.0;
  }

  else
  {
    visualStylingProvider = self->_visualStylingProvider;
    v6 = self->_titleLabel;
    if (visualStylingProvider)
    {
      v7 = [(MTVisualStylingProvider *)visualStylingProvider _visualStylingForStyle:0];
      [(UILabel *)v6 mt_replaceVisualStyling:v7];

      goto LABEL_7;
    }

    v4 = 1.0;
    titleLabel = self->_titleLabel;
  }

  [(UILabel *)titleLabel setAlpha:v4];
LABEL_7:
  messageLabel = self->_messageLabel;
  if (self->_displayMessage)
  {
    v10 = [(MTVisualStylingProvider *)self->_visualStylingProvider _visualStylingForStyle:0];
    [(UILabel *)messageLabel mt_replaceVisualStyling:v10];
  }

  else
  {
    v9 = self->_messageLabel;

    [(UILabel *)v9 setAlpha:0.0];
  }
}

- (void)_contentSizeCategoryDidChange
{
  v3 = *MEMORY[0x1E69DDC50];
  v4 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD40] maximumContentSizeCategory:*MEMORY[0x1E69DDC50]];
  [(UILabel *)self->_titleLabel setFont:v4];

  v5 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD08] maximumContentSizeCategory:v3];
  [(UILabel *)self->_messageLabel setFont:v5];
}

@end