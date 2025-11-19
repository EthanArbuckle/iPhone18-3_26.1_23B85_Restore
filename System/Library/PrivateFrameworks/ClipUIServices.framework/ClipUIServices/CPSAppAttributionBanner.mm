@interface CPSAppAttributionBanner
+ (ISImageDescriptor)preferredImageDescriptor;
- (CPSAppAttributionBanner)init;
- (CPSAppAttributionBanner)initWithCoder:(id)a3;
- (CPSAppAttributionBanner)initWithFrame:(CGRect)a3;
- (void)_handleTap:(id)a3;
- (void)commonInit;
- (void)setTitle:(id)a3;
@end

@implementation CPSAppAttributionBanner

+ (ISImageDescriptor)preferredImageDescriptor
{
  v2 = objc_alloc(MEMORY[0x277D1B1C8]);
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 scale];
  v5 = [v2 initWithSize:48.0 scale:{48.0, v4}];

  [v5 setShape:1];

  return v5;
}

- (CPSAppAttributionBanner)init
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  v7.receiver = self;
  v7.super_class = CPSAppAttributionBanner;
  v4 = [(CPSAppAttributionBanner *)&v7 initWithFrame:?];

  if (v4)
  {
    [(CPSAppAttributionBanner *)v4 commonInit];
    v5 = v4;
  }

  return v4;
}

- (CPSAppAttributionBanner)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CPSAppAttributionBanner;
  v3 = [(CPSAppAttributionBanner *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CPSAppAttributionBanner *)v3 commonInit];
    v5 = v4;
  }

  return v4;
}

- (CPSAppAttributionBanner)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"-[CPSAppAttributionBanner initWithCoder:] is not available." userInfo:0];
  objc_exception_throw(v4);
}

- (void)commonInit
{
  v3 = MEMORY[0x277D757B0];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v3 nibWithNibName:@"CPSAppAttributionBanner" bundle:v4];

  v6 = [v5 instantiateWithOwner:self options:0];
  v7 = [v6 firstObject];

  if (v7)
  {
    [(CPSAppStoreButton *)self->_appStoreButton setHidden:1];
    v8 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76940] variant:256];
    [(UILabel *)self->_supertitleLabel setFont:v8];

    v9 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] variant:1280];
    [(CPSLabelWithPlaceholder *)self->_titleLabel setFont:v9];

    v10 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76938] variant:256];
    [(CPSLabelWithPlaceholder *)self->_subtitleLabel setFont:v10];

    [(UIImageView *)self->_iconView setAccessibilityIgnoresInvertColors:1];
    if (_UISolariumEnabled())
    {
      v11 = objc_alloc_init(CPSHighlightablePlatterView);
      platterView = self->_platterView;
      self->_platterView = v11;

      [(CPSHighlightable *)self->_platterView _setContinuousCornerRadius:20.0];
      [(CPSHighlightable *)self->_platterView cps_setGlassBackground];
    }

    else
    {
      v14 = [MEMORY[0x277D3D328] platterViewWithBlurEffectStyle:8];
      v15 = self->_platterView;
      self->_platterView = v14;
    }

    [(CPSAppAttributionBanner *)self bounds];
    [(CPSHighlightable *)self->_platterView setFrame:?];
    [(CPSHighlightable *)self->_platterView setAutoresizingMask:18];
    [(CPSAppAttributionBanner *)self addSubview:self->_platterView];
    v16 = _UISolariumEnabled();
    v17 = self->_platterView;
    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v18 = [(CPSHighlightable *)v17 customContentView];
    }

    v19 = v18;
    [(CPSAppAttributionBanner *)self bounds];
    [(CPSHighlightable *)v19 setFrame:?];
    [v7 setAutoresizingMask:18];
    [(CPSHighlightable *)v19 bounds];
    [v7 setFrame:?];
    [(CPSHighlightable *)v19 addSubview:v7];
    [(CPSHighlightForwardingButton *)self->_overlayButton setHighlightForwardingTarget:self->_platterView];
  }

  else
  {
    v13 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(CPSAppAttributionBanner *)v13 commonInit];
    }
  }
}

- (void)_handleTap:(id)a3
{
  tapAction = self->_tapAction;
  if (tapAction)
  {
    tapAction[2]();
  }
}

- (void)setTitle:(id)a3
{
  [(CPSLabelWithPlaceholder *)self->_titleLabel setText:a3];
  v4 = [(CPSLabelWithPlaceholder *)self->_titleLabel text];
  -[CPSLabelWithPlaceholder setPlaceholderWidth:](self->_subtitleLabel, "setPlaceholderWidth:", fmax(fmin((5 * [v4 length]), 200.0), 50.0));
}

@end