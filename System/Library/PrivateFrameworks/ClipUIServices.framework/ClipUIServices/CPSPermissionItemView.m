@interface CPSPermissionItemView
- (CPSPermissionItemView)init;
- (CPSPermissionItemView)initWithCoder:(id)a3;
- (CPSPermissionItemView)initWithFrame:(CGRect)a3;
- (CPSPermissionItemView)initWithTitle:(id)a3 label:(id)a4 description:(id)a5;
- (void)layoutSubviews;
- (void)setHasBlurEffect:(BOOL)a3;
- (void)setUpSwitchWithLabel:(id)a3;
@end

@implementation CPSPermissionItemView

- (CPSPermissionItemView)initWithTitle:(id)a3 label:(id)a4 description:(id)a5
{
  v65[8] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v64.receiver = self;
  v64.super_class = CPSPermissionItemView;
  v11 = [(CPSPermissionItemView *)&v64 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v12 = v11;
  if (v11)
  {
    [(CPSPermissionItemView *)v11 setAxis:1];
    [(CPSPermissionItemView *)v12 setSpacing:10.0];
    v63 = v12;
    v13 = objc_alloc_init(MEMORY[0x277D75D18]);
    v14 = [CPSVibrantLabel alloc];
    v15 = [(CPSVibrantLabel *)v14 initWithTextStyle:*MEMORY[0x277D76968] textVariant:256 vibrancyEffectStyle:1];
    [(CPSVibrantLabel *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPSVibrantLabel *)v15 setText:v8];
    [(CPSVibrantLabel *)v15 setAdjustsFontSizeToFitWidth:1];
    [v13 addSubview:v15];
    [(CPSPermissionItemView *)v12 addArrangedSubview:v13];
    [(CPSPermissionItemView *)v12 setUpSwitchWithLabel:v9];
    v16 = objc_alloc_init(MEMORY[0x277D75D18]);
    v17 = [CPSVibrantLabel alloc];
    v18 = [(CPSVibrantLabel *)v17 initWithTextStyle:*MEMORY[0x277D76938] textVariant:256 vibrancyEffectStyle:1];
    [(CPSVibrantLabel *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPSVibrantLabel *)v18 setNumberOfLines:0];
    [(CPSVibrantLabel *)v18 setText:v10];
    [v16 addSubview:v18];
    [(CPSPermissionItemView *)v63 addArrangedSubview:v16];
    v50 = MEMORY[0x277CCAAD0];
    v61 = [(CPSVibrantLabel *)v15 topAnchor];
    v60 = [v13 topAnchor];
    v59 = [v61 constraintEqualToAnchor:v60];
    v65[0] = v59;
    v19 = [(CPSVibrantLabel *)v15 leadingAnchor];
    v58 = v19;
    v20 = [v13 leadingAnchor];
    v55 = v20;
    if (_UISolariumEnabled())
    {
      v21 = 12.0;
    }

    else
    {
      v21 = 10.0;
    }

    v54 = [v19 constraintEqualToAnchor:v20 constant:v21];
    v65[1] = v54;
    v57 = v15;
    v22 = [(CPSVibrantLabel *)v15 trailingAnchor];
    v53 = v22;
    v56 = v13;
    v23 = [v13 trailingAnchor];
    v52 = v23;
    v24 = _UISolariumEnabled();
    v25 = 0.0;
    if (v24)
    {
      v25 = 12.0;
    }

    v51 = [v22 constraintEqualToAnchor:v23 constant:v25];
    v65[2] = v51;
    v49 = [(CPSVibrantLabel *)v15 bottomAnchor];
    v48 = [v13 bottomAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v65[3] = v47;
    v45 = [(CPSVibrantLabel *)v18 topAnchor];
    v44 = [v16 topAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v65[4] = v43;
    v26 = [(CPSVibrantLabel *)v18 leadingAnchor];
    v42 = v26;
    v46 = v16;
    v27 = [v16 leadingAnchor];
    v41 = v27;
    if (_UISolariumEnabled())
    {
      v28 = 12.0;
    }

    else
    {
      v28 = 10.0;
    }

    v40 = [v26 constraintEqualToAnchor:v27 constant:v28];
    v65[5] = v40;
    [(CPSVibrantLabel *)v18 trailingAnchor];
    v29 = v62 = v8;
    v30 = [v16 trailingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    v65[6] = v31;
    v32 = [(CPSVibrantLabel *)v18 bottomAnchor];
    [v16 bottomAnchor];
    v34 = v33 = v10;
    v35 = [v32 constraintEqualToAnchor:v34];
    v65[7] = v35;
    [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:8];
    v37 = v36 = v9;
    [v50 activateConstraints:v37];

    v9 = v36;
    v12 = v63;

    v10 = v33;
    v8 = v62;

    v63->_blurEffectNeedsUpdate = 1;
    v38 = v63;
  }

  return v12;
}

- (CPSPermissionItemView)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"-[CPSPermissionItemView init:] is not available." userInfo:0];
  objc_exception_throw(v2);
}

- (CPSPermissionItemView)initWithFrame:(CGRect)a3
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"-[CPSPermissionItemView initWithFrame:] is not available." userInfo:{0, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  objc_exception_throw(v3);
}

- (CPSPermissionItemView)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"-[CPSPermissionItemView initWithCoder:] is not available." userInfo:0];
  objc_exception_throw(v4);
}

- (void)setUpSwitchWithLabel:(id)a3
{
  v55[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [CPSVibrantLabel alloc];
  v6 = [(CPSVibrantLabel *)v5 initWithTextStyle:*MEMORY[0x277D769D0] textVariant:256 vibrancyEffectStyle:0];
  [(CPSVibrantLabel *)v6 setNumberOfLines:0];
  v7 = v6;
  v53 = v6;
  [(CPSVibrantLabel *)v6 setText:v4];

  v8 = objc_opt_new();
  switchWithLabelVisualEffectView = self->_switchWithLabelVisualEffectView;
  self->_switchWithLabelVisualEffectView = v8;

  [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
  if (_UISolariumEnabled())
  {
    v10 = 14.0;
  }

  else
  {
    v10 = 12.0;
  }

  [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView _setContinuousCornerRadius:v10];
  v11 = objc_opt_new();
  switchWithLabelBackgroundView = self->_switchWithLabelBackgroundView;
  self->_switchWithLabelBackgroundView = v11;

  [(UIView *)self->_switchWithLabelBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
  [(UIView *)self->_switchWithLabelBackgroundView setBackgroundColor:v13];

  if (_UISolariumEnabled())
  {
    v14 = 14.0;
  }

  else
  {
    v14 = 12.0;
  }

  [(UIView *)self->_switchWithLabelBackgroundView _setContinuousCornerRadius:v14];
  v15 = [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView contentView];
  [v15 addSubview:self->_switchWithLabelBackgroundView];

  v16 = objc_opt_new();
  permissionSwitch = self->_permissionSwitch;
  self->_permissionSwitch = v16;

  LODWORD(v18) = 1148846080;
  [(UISwitch *)self->_permissionSwitch setContentCompressionResistancePriority:0 forAxis:v18];
  v19 = objc_alloc(MEMORY[0x277D75A68]);
  v20 = self->_permissionSwitch;
  v55[0] = v7;
  v55[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
  v22 = [v19 initWithArrangedSubviews:v21];

  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v22 setAxis:0];
  [v22 setAlignment:3];
  v23 = [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView contentView];
  [v23 addSubview:v22];

  v43 = MEMORY[0x277CCAAD0];
  v52 = [(UIView *)self->_switchWithLabelBackgroundView topAnchor];
  v51 = [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView topAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v54[0] = v50;
  v49 = [(UIView *)self->_switchWithLabelBackgroundView leadingAnchor];
  v48 = [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView leadingAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v54[1] = v47;
  v46 = [(UIView *)self->_switchWithLabelBackgroundView trailingAnchor];
  v45 = [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView trailingAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v54[2] = v44;
  v42 = [(UIView *)self->_switchWithLabelBackgroundView bottomAnchor];
  v41 = [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView bottomAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v54[3] = v40;
  v39 = [v22 topAnchor];
  v38 = [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView topAnchor];
  v37 = [v39 constraintEqualToAnchor:v38 constant:10.0];
  v54[4] = v37;
  v24 = [v22 leadingAnchor];
  v36 = v24;
  v25 = [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView leadingAnchor];
  v35 = v25;
  if (_UISolariumEnabled())
  {
    v26 = 12.0;
  }

  else
  {
    v26 = 10.0;
  }

  v34 = [v24 constraintEqualToAnchor:v25 constant:v26];
  v54[5] = v34;
  v27 = [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView trailingAnchor];
  v28 = [v22 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:10.0];
  v54[6] = v29;
  v30 = [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView bottomAnchor];
  v31 = [v22 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:10.0];
  v54[7] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:8];
  [v43 activateConstraints:v33];

  [(CPSPermissionItemView *)self addArrangedSubview:self->_switchWithLabelVisualEffectView];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CPSPermissionItemView;
  [(CPSPermissionItemView *)&v4 layoutSubviews];
  if (self->_blurEffectNeedsUpdate)
  {
    self->_blurEffectNeedsUpdate = 0;
    [(UIView *)self->_switchWithLabelBackgroundView setAlpha:!self->_hasBlurEffect];
    if (self->_hasBlurEffect)
    {
      v3 = [MEMORY[0x277D75210] effectWithStyle:8];
      [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView setEffect:v3];
    }

    else
    {
      [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView setEffect:0];
    }
  }
}

- (void)setHasBlurEffect:(BOOL)a3
{
  if (self->_hasBlurEffect != a3)
  {
    [(CPSPermissionItemView *)self layoutIfNeeded];
    self->_hasBlurEffect = a3;
    self->_blurEffectNeedsUpdate = 1;
    [(CPSPermissionItemView *)self setNeedsLayout];

    [(CPSPermissionItemView *)self layoutSubviews];
  }
}

@end