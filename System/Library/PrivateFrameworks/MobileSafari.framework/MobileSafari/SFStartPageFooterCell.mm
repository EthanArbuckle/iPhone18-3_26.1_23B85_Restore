@interface SFStartPageFooterCell
- (SFStartPageFooterCell)initWithFrame:(CGRect)frame;
- (void)_updateVibrancy;
- (void)layoutSubviews;
- (void)setAction:(id)action;
- (void)setBackdropCaptureView:(id)view;
@end

@implementation SFStartPageFooterCell

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SFStartPageFooterCell;
  [(SFStartPageFooterCell *)&v4 layoutSubviews];
  [(UIButton *)self->_button frame];
  [(UIVisualEffectView *)self->_buttonBackgroundView _setContinuousCornerRadius:v3 * 0.5];
}

- (SFStartPageFooterCell)initWithFrame:(CGRect)frame
{
  v50[8] = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = SFStartPageFooterCell;
  v3 = [(SFStartPageFooterCell *)&v48 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(SFStartPageFooterCell *)v3 contentView];
    v6 = [MEMORY[0x1E69DD298] sf_startPageCellBackgroundEffectViewWithShadow:0];
    buttonBackgroundView = v4->_buttonBackgroundView;
    v4->_buttonBackgroundView = v6;

    [(UIVisualEffectView *)v4->_buttonBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v47 = contentView;
    [contentView addSubview:v4->_buttonBackgroundView];
    v8 = objc_alloc_init(SFFooterButton);
    button = v4->_button;
    v4->_button = &v8->super;

    [(UIButton *)v4->_button setAccessibilityIdentifier:@"customizationsSheetButton"];
    [(UIButton *)v4->_button addTarget:v4 action:sel_primaryActionTriggered_ forControlEvents:0x2000];
    [contentView addSubview:v4->_button];
    contentView2 = [(SFStartPageFooterCell *)v4 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];

    v36 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(UIButton *)v4->_button centerXAnchor];
    centerXAnchor2 = [layoutMarginsGuide centerXAnchor];
    v43 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v50[0] = v43;
    centerYAnchor = [(UIButton *)v4->_button centerYAnchor];
    centerYAnchor2 = [layoutMarginsGuide centerYAnchor];
    v40 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v50[1] = v40;
    topAnchor = [(UIButton *)v4->_button topAnchor];
    v46 = layoutMarginsGuide;
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v37 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v50[2] = v37;
    leadingAnchor = [(UIButton *)v4->_button leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v33 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v50[3] = v33;
    centerXAnchor3 = [(UIVisualEffectView *)v4->_buttonBackgroundView centerXAnchor];
    centerXAnchor4 = [(UIButton *)v4->_button centerXAnchor];
    v30 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v50[4] = v30;
    centerYAnchor3 = [(UIVisualEffectView *)v4->_buttonBackgroundView centerYAnchor];
    centerYAnchor4 = [(UIButton *)v4->_button centerYAnchor];
    v12 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v50[5] = v12;
    topAnchor3 = [(UIVisualEffectView *)v4->_buttonBackgroundView topAnchor];
    topAnchor4 = [(UIButton *)v4->_button topAnchor];
    v15 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v50[6] = v15;
    leadingAnchor3 = [(UIVisualEffectView *)v4->_buttonBackgroundView leadingAnchor];
    leadingAnchor4 = [(UIButton *)v4->_button leadingAnchor];
    v18 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v50[7] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:8];
    [v36 activateConstraints:v19];

    [(UIVisualEffectView *)v4->_buttonBackgroundView sf_configureAsStartPageBackground];
    v20 = v4->_buttonBackgroundView;
    sf_startPageBackgroundTraits = [MEMORY[0x1E69DD298] sf_startPageBackgroundTraits];
    v22 = [(UIVisualEffectView *)v20 registerForTraitChanges:sf_startPageBackgroundTraits withAction:sel_sf_configureAsStartPageBackground];

    contentView3 = [(SFStartPageFooterCell *)v4 contentView];
    v49 = objc_opt_class();
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    v25 = [contentView3 registerForTraitChanges:v24 withTarget:v4 action:sel__updateVibrancy];

    v26 = v4;
  }

  return v4;
}

- (void)_updateVibrancy
{
  traitCollection = [(SFStartPageFooterCell *)self traitCollection];
  -[UIVisualEffectView setHidden:](self->_buttonBackgroundView, "setHidden:", [traitCollection sf_usesVibrantAppearance] ^ 1);
}

- (void)setBackdropCaptureView:(id)view
{
  viewCopy = view;
  _captureView = [(UIVisualEffectView *)self->_buttonBackgroundView _captureView];
  v5 = WBSIsEqual();

  if ((v5 & 1) == 0)
  {
    [(UIVisualEffectView *)self->_buttonBackgroundView _setCaptureView:viewCopy];
  }
}

- (void)setAction:(id)action
{
  actionCopy = action;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_action, action);
    button = self->_button;
    title = [(UIAction *)self->_action title];
    [(UIButton *)button setTitle:title forState:0];

    v7 = self->_button;
    image = [(UIAction *)self->_action image];
    [(UIButton *)v7 setImage:image forState:0];
  }
}

@end