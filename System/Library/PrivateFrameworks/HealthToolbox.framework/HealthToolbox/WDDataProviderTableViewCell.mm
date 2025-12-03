@interface WDDataProviderTableViewCell
- (CGSize)iconSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (WDDataProviderTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_getSourceStatusLabelText;
- (void)_setupUI;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setDisplayName:(id)name;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setIconImage:(id)image;
@end

@implementation WDDataProviderTableViewCell

- (WDDataProviderTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = WDDataProviderTableViewCell;
  v4 = [(WDDataProviderTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(WDDataProviderTableViewCell *)v4 _setupUI];
  }

  return v5;
}

- (void)_setupUI
{
  self->_sourceStatus = 0;
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  sourceStatusLabel = self->_sourceStatusLabel;
  self->_sourceStatusLabel = v3;

  detailTextLabel = [(WDDataProviderTableViewCell *)self detailTextLabel];
  font = [detailTextLabel font];
  [(UILabel *)self->_sourceStatusLabel setFont:font];

  [(UILabel *)self->_sourceStatusLabel setHidden:1];
  _getSourceStatusLabelText = [(WDDataProviderTableViewCell *)self _getSourceStatusLabelText];
  [(UILabel *)self->_sourceStatusLabel setText:_getSourceStatusLabelText];

  [(UILabel *)self->_sourceStatusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_sourceStatusLabel setNumberOfLines:0];
  v39 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
  [v39 size];
  UIGraphicsBeginImageContext(v41);
  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v9 = objc_alloc_init(MEMORY[0x277D75220]);
  checkmarkButton = self->_checkmarkButton;
  self->_checkmarkButton = v9;

  [(UIButton *)self->_checkmarkButton setImage:v8 forState:0];
  [(UIButton *)self->_checkmarkButton setImage:v39 forState:4];
  v11 = self->_checkmarkButton;
  labelColor = [MEMORY[0x277D75348] labelColor];
  [(UIButton *)v11 setTitleColor:labelColor forState:0];

  [(UIButton *)self->_checkmarkButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_checkmarkButton setUserInteractionEnabled:0];
  contentView = [(WDDataProviderTableViewCell *)self contentView];
  [contentView addSubview:self->_sourceStatusLabel];

  contentView2 = [(WDDataProviderTableViewCell *)self contentView];
  [contentView2 addSubview:self->_checkmarkButton];

  widthAnchor = [(UIButton *)self->_checkmarkButton widthAnchor];
  [(UIButton *)self->_checkmarkButton intrinsicContentSize];
  v16 = [widthAnchor constraintEqualToConstant:?];
  [v16 setActive:1];

  leadingAnchor = [(UIButton *)self->_checkmarkButton leadingAnchor];
  contentView3 = [(WDDataProviderTableViewCell *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  [(UIButton *)self->_checkmarkButton intrinsicContentSize];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-v20];
  [(WDDataProviderTableViewCell *)self setCheckmarkLeadingConstraint:v21];

  checkmarkLeadingConstraint = [(WDDataProviderTableViewCell *)self checkmarkLeadingConstraint];
  [checkmarkLeadingConstraint setActive:1];

  [(UIButton *)self->_checkmarkButton setAlpha:0.0];
  centerYAnchor = [(UIButton *)self->_checkmarkButton centerYAnchor];
  imageView = [(WDDataProviderTableViewCell *)self imageView];
  centerYAnchor2 = [imageView centerYAnchor];
  v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v26 setActive:1];

  topAnchor = [(UILabel *)self->_sourceStatusLabel topAnchor];
  textLabel = [(WDDataProviderTableViewCell *)self textLabel];
  bottomAnchor = [textLabel bottomAnchor];
  v30 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  [v30 setActive:1];

  leadingAnchor3 = [(UILabel *)self->_sourceStatusLabel leadingAnchor];
  textLabel2 = [(WDDataProviderTableViewCell *)self textLabel];
  leadingAnchor4 = [textLabel2 leadingAnchor];
  v34 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v34 setActive:1];

  trailingAnchor = [(UILabel *)self->_sourceStatusLabel trailingAnchor];
  contentView4 = [(WDDataProviderTableViewCell *)self contentView];
  trailingAnchor2 = [contentView4 trailingAnchor];
  v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:10.0];
  [v38 setActive:1];
}

- (id)_getSourceStatusLabelText
{
  sourceStatus = self->_sourceStatus;
  if (sourceStatus == 1)
  {
    v3 = @"APP_NOT_INSTALLED";
    goto LABEL_5;
  }

  if (!sourceStatus)
  {
    v3 = @"INACTIVE";
LABEL_5:
    v4 = WDBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

    goto LABEL_7;
  }

  v5 = &stru_28641D9B8;
LABEL_7:

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v11.receiver = self;
  v11.super_class = WDDataProviderTableViewCell;
  [(WDDataProviderTableViewCell *)&v11 sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  if (![(WDDataProviderTableViewCell *)self isActive])
  {
    [(UILabel *)self->_sourceStatusLabel sizeThatFits:v5, 0.0];
    v7 = v7 + v8;
  }

  v9 = v5;
  v10 = v7;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v59.receiver = self;
  v59.super_class = WDDataProviderTableViewCell;
  [(WDDataProviderTableViewCell *)&v59 layoutSubviews];
  imageView = [(WDDataProviderTableViewCell *)self imageView];
  [imageView frame];
  v5 = v4;
  v53 = v6;
  v57 = v8;
  v58 = v7;

  textLabel = [(WDDataProviderTableViewCell *)self textLabel];
  [textLabel frame];
  v11 = v10;
  v13 = v12;
  v55 = v15;
  v56 = v14;

  [(UILabel *)self->_sourceStatusLabel frame];
  v17 = v16;
  v52 = v18;
  v20 = v19;
  v22 = v21;
  sourceStatus = self->_sourceStatus;
  if (sourceStatus >= 2)
  {
    if (sourceStatus != 2)
    {
      goto LABEL_6;
    }

    labelColor = [MEMORY[0x277D75348] labelColor];
    textLabel2 = [(WDDataProviderTableViewCell *)self textLabel];
    [textLabel2 setTextColor:labelColor];

    v28 = 1;
  }

  else
  {
    _getSourceStatusLabelText = [(WDDataProviderTableViewCell *)self _getSourceStatusLabelText];
    [(UILabel *)self->_sourceStatusLabel setText:_getSourceStatusLabelText];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    textLabel3 = [(WDDataProviderTableViewCell *)self textLabel];
    [textLabel3 setTextColor:secondaryLabelColor];

    labelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)self->_sourceStatusLabel setTextColor:labelColor];
    v28 = 0;
  }

  [(UILabel *)self->_sourceStatusLabel setHidden:v28];
LABEL_6:
  [(UIButton *)self->_checkmarkButton setSelected:[(WDDataProviderTableViewCell *)self isActive]];
  isEditing = [(WDDataProviderTableViewCell *)self isEditing];
  checkmarkButton = self->_checkmarkButton;
  v32 = v22;
  if (isEditing)
  {
    [(UIButton *)checkmarkButton setAlpha:1.0];
    checkmarkLeadingConstraint = [(WDDataProviderTableViewCell *)self checkmarkLeadingConstraint];
    [checkmarkLeadingConstraint setConstant:10.0];

    effectiveUserInterfaceLayoutDirection = [(WDDataProviderTableViewCell *)self effectiveUserInterfaceLayoutDirection];
    checkmarkLeadingConstraint2 = [(WDDataProviderTableViewCell *)self checkmarkLeadingConstraint];
    [checkmarkLeadingConstraint2 constant];
    v37 = v36;
    [(UIButton *)self->_checkmarkButton intrinsicContentSize];
    v39 = v37 + v38;
    v40 = v20;
    if (effectiveUserInterfaceLayoutDirection)
    {
      v41 = v39 + -4.0;

      v42 = 0.0;
      if (v41 >= 0.0)
      {
        v42 = v41;
      }

      v5 = v5 - v42;
      v11 = v11 - v42;
    }

    else
    {
      v46 = v39 + 4.0 - v5;

      v47 = 0.0;
      if (v46 >= 0.0)
      {
        v47 = v46;
      }

      v5 = v5 + v47;
      v11 = v11 + v47;
    }
  }

  else
  {
    v40 = v20;
    [(UIButton *)checkmarkButton intrinsicContentSize];
    v44 = -v43;
    checkmarkLeadingConstraint3 = [(WDDataProviderTableViewCell *)self checkmarkLeadingConstraint];
    [checkmarkLeadingConstraint3 setConstant:v44];

    [(UIButton *)self->_checkmarkButton setAlpha:0.0];
  }

  v54 = v5;
  if ([(WDDataProviderTableViewCell *)self isActive])
  {
    v48 = v53;
    v49 = v13;
  }

  else
  {
    v60.origin.x = v17;
    v60.origin.y = v52;
    v60.size.width = v40;
    v60.size.height = v32;
    v48 = v53 - CGRectGetHeight(v60) * 0.25;
    v61.origin.x = v17;
    v61.origin.y = v52;
    v61.size.width = v40;
    v61.size.height = v32;
    v49 = v13 - CGRectGetHeight(v61) * 0.25;
  }

  v62.origin.x = v11;
  v62.origin.y = v49;
  v62.size.width = v56;
  v62.size.height = v55;
  [(UILabel *)self->_sourceStatusLabel setFrame:v17, CGRectGetMaxY(v62), v40, v32];
  imageView2 = [(WDDataProviderTableViewCell *)self imageView];
  [imageView2 setFrame:{v54, v48, v58, v57}];

  textLabel4 = [(WDDataProviderTableViewCell *)self textLabel];
  [textLabel4 setFrame:{v11, v49, v56, v55}];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = WDDataProviderTableViewCell;
  [(WDDataProviderTableViewCell *)&v6 prepareForReuse];
  [(UIButton *)self->_checkmarkButton intrinsicContentSize];
  v4 = -v3;
  checkmarkLeadingConstraint = [(WDDataProviderTableViewCell *)self checkmarkLeadingConstraint];
  [checkmarkLeadingConstraint setConstant:v4];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__WDDataProviderTableViewCell_setEditing_animated___block_invoke;
  v7[3] = &unk_2796E7E98;
  editingCopy = editing;
  v7[4] = self;
  v5 = MEMORY[0x253092270](v7, a2);
  v6 = v5;
  if (animatedCopy)
  {
    [MEMORY[0x277D75D18] animateWithDuration:v5 animations:0.25];
  }

  else
  {
    (*(v5 + 16))(v5);
  }
}

id __51__WDDataProviderTableViewCell_setEditing_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = WDDataProviderTableViewCell;
  return objc_msgSendSuper2(&v3, sel_setEditing_animated_, v1, 0);
}

- (CGSize)iconSize
{
  imageView = [(WDDataProviderTableViewCell *)self imageView];
  image = [imageView image];

  if (image)
  {
    imageView2 = [(WDDataProviderTableViewCell *)self imageView];
    image2 = [imageView2 image];
    [image2 size];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)setDisplayName:(id)name
{
  nameCopy = name;
  textLabel = [(WDDataProviderTableViewCell *)self textLabel];
  [textLabel setText:nameCopy];
}

- (void)setIconImage:(id)image
{
  imageCopy = image;
  imageView = [(WDDataProviderTableViewCell *)self imageView];
  [imageView setImage:imageCopy];
}

@end