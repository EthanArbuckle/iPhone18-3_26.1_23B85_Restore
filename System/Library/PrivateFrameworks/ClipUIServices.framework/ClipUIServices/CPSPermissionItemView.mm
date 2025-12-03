@interface CPSPermissionItemView
- (CPSPermissionItemView)init;
- (CPSPermissionItemView)initWithCoder:(id)coder;
- (CPSPermissionItemView)initWithFrame:(CGRect)frame;
- (CPSPermissionItemView)initWithTitle:(id)title label:(id)label description:(id)description;
- (void)layoutSubviews;
- (void)setHasBlurEffect:(BOOL)effect;
- (void)setUpSwitchWithLabel:(id)label;
@end

@implementation CPSPermissionItemView

- (CPSPermissionItemView)initWithTitle:(id)title label:(id)label description:(id)description
{
  v65[8] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  labelCopy = label;
  descriptionCopy = description;
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
    [(CPSVibrantLabel *)v15 setText:titleCopy];
    [(CPSVibrantLabel *)v15 setAdjustsFontSizeToFitWidth:1];
    [v13 addSubview:v15];
    [(CPSPermissionItemView *)v12 addArrangedSubview:v13];
    [(CPSPermissionItemView *)v12 setUpSwitchWithLabel:labelCopy];
    v16 = objc_alloc_init(MEMORY[0x277D75D18]);
    v17 = [CPSVibrantLabel alloc];
    v18 = [(CPSVibrantLabel *)v17 initWithTextStyle:*MEMORY[0x277D76938] textVariant:256 vibrancyEffectStyle:1];
    [(CPSVibrantLabel *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPSVibrantLabel *)v18 setNumberOfLines:0];
    [(CPSVibrantLabel *)v18 setText:descriptionCopy];
    [v16 addSubview:v18];
    [(CPSPermissionItemView *)v63 addArrangedSubview:v16];
    v50 = MEMORY[0x277CCAAD0];
    topAnchor = [(CPSVibrantLabel *)v15 topAnchor];
    topAnchor2 = [v13 topAnchor];
    v59 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v65[0] = v59;
    leadingAnchor = [(CPSVibrantLabel *)v15 leadingAnchor];
    v58 = leadingAnchor;
    leadingAnchor2 = [v13 leadingAnchor];
    v55 = leadingAnchor2;
    if (_UISolariumEnabled())
    {
      v21 = 12.0;
    }

    else
    {
      v21 = 10.0;
    }

    v54 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v21];
    v65[1] = v54;
    v57 = v15;
    trailingAnchor = [(CPSVibrantLabel *)v15 trailingAnchor];
    v53 = trailingAnchor;
    v56 = v13;
    trailingAnchor2 = [v13 trailingAnchor];
    v52 = trailingAnchor2;
    v24 = _UISolariumEnabled();
    v25 = 0.0;
    if (v24)
    {
      v25 = 12.0;
    }

    v51 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v25];
    v65[2] = v51;
    bottomAnchor = [(CPSVibrantLabel *)v15 bottomAnchor];
    bottomAnchor2 = [v13 bottomAnchor];
    v47 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v65[3] = v47;
    topAnchor3 = [(CPSVibrantLabel *)v18 topAnchor];
    topAnchor4 = [v16 topAnchor];
    v43 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v65[4] = v43;
    leadingAnchor3 = [(CPSVibrantLabel *)v18 leadingAnchor];
    v42 = leadingAnchor3;
    v46 = v16;
    leadingAnchor4 = [v16 leadingAnchor];
    v41 = leadingAnchor4;
    if (_UISolariumEnabled())
    {
      v28 = 12.0;
    }

    else
    {
      v28 = 10.0;
    }

    v40 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v28];
    v65[5] = v40;
    [(CPSVibrantLabel *)v18 trailingAnchor];
    v29 = v62 = titleCopy;
    trailingAnchor3 = [v16 trailingAnchor];
    v31 = [v29 constraintEqualToAnchor:trailingAnchor3];
    v65[6] = v31;
    bottomAnchor3 = [(CPSVibrantLabel *)v18 bottomAnchor];
    [v16 bottomAnchor];
    v34 = v33 = descriptionCopy;
    v35 = [bottomAnchor3 constraintEqualToAnchor:v34];
    v65[7] = v35;
    [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:8];
    v37 = v36 = labelCopy;
    [v50 activateConstraints:v37];

    labelCopy = v36;
    v12 = v63;

    descriptionCopy = v33;
    titleCopy = v62;

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

- (CPSPermissionItemView)initWithFrame:(CGRect)frame
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"-[CPSPermissionItemView initWithFrame:] is not available." userInfo:{0, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];
  objc_exception_throw(v3);
}

- (CPSPermissionItemView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"-[CPSPermissionItemView initWithCoder:] is not available." userInfo:0];
  objc_exception_throw(v4);
}

- (void)setUpSwitchWithLabel:(id)label
{
  v55[2] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  v5 = [CPSVibrantLabel alloc];
  v6 = [(CPSVibrantLabel *)v5 initWithTextStyle:*MEMORY[0x277D769D0] textVariant:256 vibrancyEffectStyle:0];
  [(CPSVibrantLabel *)v6 setNumberOfLines:0];
  v7 = v6;
  v53 = v6;
  [(CPSVibrantLabel *)v6 setText:labelCopy];

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
  secondarySystemGroupedBackgroundColor = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
  [(UIView *)self->_switchWithLabelBackgroundView setBackgroundColor:secondarySystemGroupedBackgroundColor];

  if (_UISolariumEnabled())
  {
    v14 = 14.0;
  }

  else
  {
    v14 = 12.0;
  }

  [(UIView *)self->_switchWithLabelBackgroundView _setContinuousCornerRadius:v14];
  contentView = [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView contentView];
  [contentView addSubview:self->_switchWithLabelBackgroundView];

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
  contentView2 = [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView contentView];
  [contentView2 addSubview:v22];

  v43 = MEMORY[0x277CCAAD0];
  topAnchor = [(UIView *)self->_switchWithLabelBackgroundView topAnchor];
  topAnchor2 = [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView topAnchor];
  v50 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v54[0] = v50;
  leadingAnchor = [(UIView *)self->_switchWithLabelBackgroundView leadingAnchor];
  leadingAnchor2 = [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView leadingAnchor];
  v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v54[1] = v47;
  trailingAnchor = [(UIView *)self->_switchWithLabelBackgroundView trailingAnchor];
  trailingAnchor2 = [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView trailingAnchor];
  v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v54[2] = v44;
  bottomAnchor = [(UIView *)self->_switchWithLabelBackgroundView bottomAnchor];
  bottomAnchor2 = [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView bottomAnchor];
  v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v54[3] = v40;
  topAnchor3 = [v22 topAnchor];
  topAnchor4 = [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView topAnchor];
  v37 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:10.0];
  v54[4] = v37;
  leadingAnchor3 = [v22 leadingAnchor];
  v36 = leadingAnchor3;
  leadingAnchor4 = [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView leadingAnchor];
  v35 = leadingAnchor4;
  if (_UISolariumEnabled())
  {
    v26 = 12.0;
  }

  else
  {
    v26 = 10.0;
  }

  v34 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v26];
  v54[5] = v34;
  trailingAnchor3 = [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView trailingAnchor];
  trailingAnchor4 = [v22 trailingAnchor];
  v29 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:10.0];
  v54[6] = v29;
  bottomAnchor3 = [(UIVisualEffectView *)self->_switchWithLabelVisualEffectView bottomAnchor];
  bottomAnchor4 = [v22 bottomAnchor];
  v32 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:10.0];
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

- (void)setHasBlurEffect:(BOOL)effect
{
  if (self->_hasBlurEffect != effect)
  {
    [(CPSPermissionItemView *)self layoutIfNeeded];
    self->_hasBlurEffect = effect;
    self->_blurEffectNeedsUpdate = 1;
    [(CPSPermissionItemView *)self setNeedsLayout];

    [(CPSPermissionItemView *)self layoutSubviews];
  }
}

@end