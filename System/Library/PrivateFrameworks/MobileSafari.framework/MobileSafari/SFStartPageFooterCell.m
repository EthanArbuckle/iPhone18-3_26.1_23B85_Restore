@interface SFStartPageFooterCell
- (SFStartPageFooterCell)initWithFrame:(CGRect)a3;
- (void)_updateVibrancy;
- (void)layoutSubviews;
- (void)setAction:(id)a3;
- (void)setBackdropCaptureView:(id)a3;
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

- (SFStartPageFooterCell)initWithFrame:(CGRect)a3
{
  v50[8] = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = SFStartPageFooterCell;
  v3 = [(SFStartPageFooterCell *)&v48 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SFStartPageFooterCell *)v3 contentView];
    v6 = [MEMORY[0x1E69DD298] sf_startPageCellBackgroundEffectViewWithShadow:0];
    buttonBackgroundView = v4->_buttonBackgroundView;
    v4->_buttonBackgroundView = v6;

    [(UIVisualEffectView *)v4->_buttonBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v47 = v5;
    [v5 addSubview:v4->_buttonBackgroundView];
    v8 = objc_alloc_init(SFFooterButton);
    button = v4->_button;
    v4->_button = &v8->super;

    [(UIButton *)v4->_button setAccessibilityIdentifier:@"customizationsSheetButton"];
    [(UIButton *)v4->_button addTarget:v4 action:sel_primaryActionTriggered_ forControlEvents:0x2000];
    [v5 addSubview:v4->_button];
    v10 = [(SFStartPageFooterCell *)v4 contentView];
    v11 = [v10 layoutMarginsGuide];

    v36 = MEMORY[0x1E696ACD8];
    v45 = [(UIButton *)v4->_button centerXAnchor];
    v44 = [v11 centerXAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v50[0] = v43;
    v42 = [(UIButton *)v4->_button centerYAnchor];
    v41 = [v11 centerYAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v50[1] = v40;
    v39 = [(UIButton *)v4->_button topAnchor];
    v46 = v11;
    v38 = [v11 topAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v50[2] = v37;
    v35 = [(UIButton *)v4->_button leadingAnchor];
    v34 = [v11 leadingAnchor];
    v33 = [v35 constraintGreaterThanOrEqualToAnchor:v34];
    v50[3] = v33;
    v32 = [(UIVisualEffectView *)v4->_buttonBackgroundView centerXAnchor];
    v31 = [(UIButton *)v4->_button centerXAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v50[4] = v30;
    v29 = [(UIVisualEffectView *)v4->_buttonBackgroundView centerYAnchor];
    v28 = [(UIButton *)v4->_button centerYAnchor];
    v12 = [v29 constraintEqualToAnchor:v28];
    v50[5] = v12;
    v13 = [(UIVisualEffectView *)v4->_buttonBackgroundView topAnchor];
    v14 = [(UIButton *)v4->_button topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v50[6] = v15;
    v16 = [(UIVisualEffectView *)v4->_buttonBackgroundView leadingAnchor];
    v17 = [(UIButton *)v4->_button leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v50[7] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:8];
    [v36 activateConstraints:v19];

    [(UIVisualEffectView *)v4->_buttonBackgroundView sf_configureAsStartPageBackground];
    v20 = v4->_buttonBackgroundView;
    v21 = [MEMORY[0x1E69DD298] sf_startPageBackgroundTraits];
    v22 = [(UIVisualEffectView *)v20 registerForTraitChanges:v21 withAction:sel_sf_configureAsStartPageBackground];

    v23 = [(SFStartPageFooterCell *)v4 contentView];
    v49 = objc_opt_class();
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    v25 = [v23 registerForTraitChanges:v24 withTarget:v4 action:sel__updateVibrancy];

    v26 = v4;
  }

  return v4;
}

- (void)_updateVibrancy
{
  v3 = [(SFStartPageFooterCell *)self traitCollection];
  -[UIVisualEffectView setHidden:](self->_buttonBackgroundView, "setHidden:", [v3 sf_usesVibrantAppearance] ^ 1);
}

- (void)setBackdropCaptureView:(id)a3
{
  v6 = a3;
  v4 = [(UIVisualEffectView *)self->_buttonBackgroundView _captureView];
  v5 = WBSIsEqual();

  if ((v5 & 1) == 0)
  {
    [(UIVisualEffectView *)self->_buttonBackgroundView _setCaptureView:v6];
  }
}

- (void)setAction:(id)a3
{
  v9 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_action, a3);
    button = self->_button;
    v6 = [(UIAction *)self->_action title];
    [(UIButton *)button setTitle:v6 forState:0];

    v7 = self->_button;
    v8 = [(UIAction *)self->_action image];
    [(UIButton *)v7 setImage:v8 forState:0];
  }
}

@end