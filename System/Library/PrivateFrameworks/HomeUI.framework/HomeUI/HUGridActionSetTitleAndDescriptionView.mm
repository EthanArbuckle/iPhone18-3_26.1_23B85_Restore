@interface HUGridActionSetTitleAndDescriptionView
- (HUGridActionSetTitleAndDescriptionView)initWithFrame:(CGRect)a3 titleLabelSuperview:(id)a4;
- (void)setTitleAndDescriptionLabelTintColor:(id)a3;
- (void)setTitleDescriptionLineSpacing:(double)a3;
- (void)updateConstraints;
- (void)updateTitleText:(id)a3 descriptionText:(id)a4;
@end

@implementation HUGridActionSetTitleAndDescriptionView

- (HUGridActionSetTitleAndDescriptionView)initWithFrame:(CGRect)a3 titleLabelSuperview:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v23.receiver = self;
  v23.super_class = HUGridActionSetTitleAndDescriptionView;
  v10 = [(HUGridActionSetTitleAndDescriptionView *)&v23 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(HUGridActionSetTitleAndDescriptionView *)v10 setTitleLabel:v11];

    v12 = [(HUGridActionSetTitleAndDescriptionView *)v10 titleLabel];
    [v9 addSubview:v12];

    v13 = [(HUGridActionSetTitleAndDescriptionView *)v10 titleLabel];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    v14 = [(HUGridActionSetTitleAndDescriptionView *)v10 titleLabel];
    [v14 setNumberOfLines:1];

    v15 = [MEMORY[0x277D75348] systemBlackColor];
    v16 = [(HUGridActionSetTitleAndDescriptionView *)v10 titleLabel];
    [v16 setTextColor:v15];

    v17 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(HUGridActionSetTitleAndDescriptionView *)v10 setDescriptionLabel:v17];

    v18 = [(HUGridActionSetTitleAndDescriptionView *)v10 descriptionLabel];
    [(HUGridActionSetTitleAndDescriptionView *)v10 addSubview:v18];

    v19 = [(HUGridActionSetTitleAndDescriptionView *)v10 descriptionLabel];
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

    v20 = [(HUGridActionSetTitleAndDescriptionView *)v10 descriptionLabel];
    [v20 setNumberOfLines:1];

    v21 = [(HUGridActionSetTitleAndDescriptionView *)v10 descriptionLabel];
    [v21 setHidden:1];
  }

  return v10;
}

- (void)updateTitleText:(id)a3 descriptionText:(id)a4
{
  v24 = a3;
  v6 = a4;
  v7 = [(HUGridActionSetTitleAndDescriptionView *)self titleLabel];
  v8 = [v7 attributedText];
  if ([v24 isEqualToAttributedString:v8])
  {
    v9 = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
    v10 = [v9 attributedText];
    v11 = [v6 isEqualToAttributedString:v10];

    if (v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v12 = [(HUGridActionSetTitleAndDescriptionView *)self titleLabel];
  [v12 setAttributedText:v24];

  v13 = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
  [v13 setAttributedText:v6];

  v14 = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
  v15 = [v14 isHidden];

  v16 = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
  v17 = [v16 text];
  v18 = [v17 length] == 0;
  v19 = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
  [v19 setHidden:v18];

  v20 = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
  LODWORD(v17) = [v20 isHidden];

  if (v15 != v17)
  {
    v21 = [(HUGridActionSetTitleAndDescriptionView *)self titleAndDescriptionConstraints];

    if (v21)
    {
      v22 = MEMORY[0x277CCAAD0];
      v23 = [(HUGridActionSetTitleAndDescriptionView *)self titleAndDescriptionConstraints];
      [v22 deactivateConstraints:v23];
    }

    [(HUGridActionSetTitleAndDescriptionView *)self setTitleAndDescriptionConstraints:0];
    [(HUGridActionSetTitleAndDescriptionView *)self setTitleDescriptionSpacingConstraint:0];
    [(HUGridActionSetTitleAndDescriptionView *)self setNeedsUpdateConstraints];
  }

LABEL_9:
}

- (void)setTitleDescriptionLineSpacing:(double)a3
{
  self->_titleDescriptionLineSpacing = a3;
  v4 = [(HUGridActionSetTitleAndDescriptionView *)self titleDescriptionSpacingConstraint];
  [v4 setConstant:a3];
}

- (void)setTitleAndDescriptionLabelTintColor:(id)a3
{
  v4 = a3;
  v5 = [(HUGridActionSetTitleAndDescriptionView *)self titleLabel];
  [v5 setTextColor:v4];

  v6 = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
  [v6 setTextColor:v4];
}

- (void)updateConstraints
{
  v3 = [(HUGridActionSetTitleAndDescriptionView *)self titleAndDescriptionConstraints];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [(HUGridActionSetTitleAndDescriptionView *)self titleLabel];
    v6 = [v5 leadingAnchor];
    v7 = [(HUGridActionSetTitleAndDescriptionView *)self leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    [v4 addObject:v8];

    v9 = [(HUGridActionSetTitleAndDescriptionView *)self titleLabel];
    v10 = [v9 trailingAnchor];
    v11 = [(HUGridActionSetTitleAndDescriptionView *)self trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    [v4 addObject:v12];

    v13 = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
    v14 = [v13 leadingAnchor];
    v15 = [(HUGridActionSetTitleAndDescriptionView *)self leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v4 addObject:v16];

    v17 = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
    v18 = [v17 trailingAnchor];
    v19 = [(HUGridActionSetTitleAndDescriptionView *)self trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [v4 addObject:v20];

    v21 = [(HUGridActionSetTitleAndDescriptionView *)self titleLabel];
    v22 = [v21 topAnchor];
    v23 = [(HUGridActionSetTitleAndDescriptionView *)self topAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    [v4 addObject:v24];

    v25 = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
    LODWORD(v22) = [v25 isHidden];

    if (v22)
    {
      v26 = [(HUGridActionSetTitleAndDescriptionView *)self titleLabel];
      v27 = [v26 bottomAnchor];
      v28 = [(HUGridActionSetTitleAndDescriptionView *)self bottomAnchor];
      v29 = [v27 constraintEqualToAnchor:v28];
      [v4 addObject:v29];
    }

    else
    {
      v30 = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
      v31 = [v30 bottomAnchor];
      v32 = [(HUGridActionSetTitleAndDescriptionView *)self bottomAnchor];
      v33 = [v31 constraintEqualToAnchor:v32];
      [v4 addObject:v33];

      v34 = [MEMORY[0x277D14CE8] shouldUseControlCenterMaterials];
      v35 = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
      v36 = [v35 firstBaselineAnchor];
      v37 = [(HUGridActionSetTitleAndDescriptionView *)self titleLabel];
      v38 = [v37 lastBaselineAnchor];
      if (v34)
      {
        [(HUGridActionSetTitleAndDescriptionView *)self titleDescriptionLineSpacing];
        [v36 constraintEqualToAnchor:v38 constant:?];
      }

      else
      {
        [v36 constraintEqualToSystemSpacingBelowAnchor:v38 multiplier:1.0];
      }
      v39 = ;
      [(HUGridActionSetTitleAndDescriptionView *)self setTitleDescriptionSpacingConstraint:v39];

      v26 = [(HUGridActionSetTitleAndDescriptionView *)self titleDescriptionSpacingConstraint];
      [v4 addObject:v26];
    }

    [(HUGridActionSetTitleAndDescriptionView *)self setTitleAndDescriptionConstraints:v4];
    v40 = MEMORY[0x277CCAAD0];
    v41 = [(HUGridActionSetTitleAndDescriptionView *)self titleAndDescriptionConstraints];
    [v40 activateConstraints:v41];
  }

  v42.receiver = self;
  v42.super_class = HUGridActionSetTitleAndDescriptionView;
  [(HUGridActionSetTitleAndDescriptionView *)&v42 updateConstraints];
}

@end