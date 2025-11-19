@interface SFHighlightBanner
- (CGSize)sizeThatFits:(CGSize)a3;
- (SFHighlightBanner)initWithHighlight:(id)a3;
- (double)_closeButtonTrailingPadding;
- (id)makeCloseButton;
- (void)_close;
- (void)themeDidChange;
@end

@implementation SFHighlightBanner

- (SFHighlightBanner)initWithHighlight:(id)a3
{
  v43[6] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v42.receiver = self;
  v42.super_class = SFHighlightBanner;
  v6 = [(SFHighlightBanner *)&v42 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_highlight, a3);
    v8 = [SFThemeColorEffectView alloc];
    v9 = [MEMORY[0x1E69DC730] effectWithStyle:10];
    v10 = [(SFThemeColorEffectView *)v8 initWithEffect:v9];
    backdrop = v7->_backdrop;
    v7->_backdrop = v10;

    [(SFHighlightBanner *)v7 bounds];
    [(SFThemeColorEffectView *)v7->_backdrop setFrame:?];
    [(SFThemeColorEffectView *)v7->_backdrop setAutoresizingMask:18];
    [(SFHighlightBanner *)v7 addSubview:v7->_backdrop];
    [(SFHighlightBanner *)v7 sendSubviewToBack:v7->_backdrop];
    v12 = objc_alloc_init(MEMORY[0x1E697B690]);
    attributionView = v7->_attributionView;
    v7->_attributionView = v12;

    v14 = [objc_alloc(MEMORY[0x1E697B6B0]) initWithSLHighlight:v5];
    [(SWAttributionView *)v7->_attributionView setHighlight:v14];

    [(SWAttributionView *)v7->_attributionView useBannerLayout];
    [(SWAttributionView *)v7->_attributionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFHighlightBanner *)v7 addSubview:v7->_attributionView];
    v15 = [(SFHighlightBanner *)v7 makeCloseButton];
    [(SFHighlightBanner *)v7 addSubview:?];
    v34 = MEMORY[0x1E696ACD8];
    v41 = [(SFHighlightBanner *)v7 heightAnchor];
    v40 = [(SWAttributionView *)v7->_attributionView heightAnchor];
    v39 = [v41 constraintEqualToAnchor:v40 constant:16.0];
    v43[0] = v39;
    v37 = [(SWAttributionView *)v7->_attributionView leadingAnchor];
    v38 = [(SFHighlightBanner *)v7 layoutMarginsGuide];
    v36 = [v38 leadingAnchor];
    v35 = [v37 constraintEqualToAnchor:v36 constant:4.0];
    v43[1] = v35;
    v33 = [(SWAttributionView *)v7->_attributionView centerYAnchor];
    v32 = [(SFHighlightBanner *)v7 centerYAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v43[2] = v31;
    v29 = [(SWAttributionView *)v7->_attributionView trailingAnchor];
    v28 = [v15 leadingAnchor];
    v27 = [v29 constraintEqualToAnchor:v28 constant:-8.0];
    v43[3] = v27;
    v16 = v15;
    v30 = v15;
    v17 = [v15 trailingAnchor];
    v18 = [(SFHighlightBanner *)v7 layoutMarginsGuide];
    v19 = [v18 trailingAnchor];
    [(SFHighlightBanner *)v7 _closeButtonTrailingPadding];
    v20 = [v17 constraintEqualToAnchor:v19 constant:?];
    v43[4] = v20;
    v21 = [v16 centerYAnchor];
    v22 = [(SFHighlightBanner *)v7 centerYAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    v43[5] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:6];
    [v34 activateConstraints:v24];

    v25 = v7;
  }

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(SFHighlightBanner *)self systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)themeDidChange
{
  v3 = [(SFPinnableBanner *)self theme];
  [(SFThemeColorEffectView *)self->_backdrop setTheme:v3];
}

- (void)_close
{
  closeActionHandler = self->_closeActionHandler;
  if (closeActionHandler)
  {
    closeActionHandler[2](closeActionHandler, self);
  }
}

- (id)makeCloseButton
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    objc_initWeak(&location, self);
    v3 = [SFCloseButton alloc];
    v4 = MEMORY[0x1E69DC628];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __36__SFHighlightBanner_makeCloseButton__block_invoke;
    v18 = &unk_1E721C458;
    objc_copyWeak(&v19, &location);
    v5 = [v4 actionWithHandler:&v15];
    v6 = [(SFCloseButton *)v3 initWithStyle:0 primaryAction:v5, v15, v16, v17, v18];

    [(UIView *)v6 _sf_setMatchesIntrinsicContentSize];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    v8 = [MEMORY[0x1E69DC888] clearColor];
    v9 = [v7 background];
    [v9 setBackgroundColor:v8];

    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill"];
    v11 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v12 = [v10 imageWithTintColor:v11 renderingMode:1];
    [v7 setImage:v12];

    v13 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:6 weight:2 scale:15.0];
    [v7 setPreferredSymbolConfigurationForImage:v13];

    [v7 setContentInsets:{6.0, 6.0, 6.0, 6.0}];
    v6 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v7 primaryAction:0];
    [(SFCloseButton *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFCloseButton *)v6 addTarget:self action:sel__close forControlEvents:64];
    [(UIView *)v6 _sf_setMatchesIntrinsicContentSize];
  }

  return v6;
}

void __36__SFHighlightBanner_makeCloseButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _close];
    WeakRetained = v2;
  }
}

- (double)_closeButtonTrailingPadding
{
  v2 = [MEMORY[0x1E69C8880] isSolariumEnabled];
  result = -4.0;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

@end