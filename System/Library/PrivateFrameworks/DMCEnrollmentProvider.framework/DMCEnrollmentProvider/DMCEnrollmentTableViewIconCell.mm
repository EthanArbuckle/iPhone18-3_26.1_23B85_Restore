@interface DMCEnrollmentTableViewIconCell
- (DMCEnrollmentTableViewIconCell)initWithIconImage:(id)image layoutStyle:(unint64_t)style;
- (DMCEnrollmentTableViewIconCell)initWithIconName:(id)name layoutStyle:(unint64_t)style;
- (double)_bottomMargin;
- (double)_iconHeight;
- (double)_topMargin;
- (double)cellHeight;
- (id)_createImageViewWithImage:(id)image;
- (id)_systemImageWithName:(id)name;
- (void)_addConstraintsForImageView:(id)view;
- (void)layoutSubviews;
- (void)setIconImage:(id)image;
- (void)setIconName:(id)name;
@end

@implementation DMCEnrollmentTableViewIconCell

- (DMCEnrollmentTableViewIconCell)initWithIconName:(id)name layoutStyle:(unint64_t)style
{
  v6 = [(DMCEnrollmentTableViewIconCell *)self _systemImageWithName:name];
  v7 = [(DMCEnrollmentTableViewIconCell *)self initWithIconImage:v6 layoutStyle:style];

  return v7;
}

- (DMCEnrollmentTableViewIconCell)initWithIconImage:(id)image layoutStyle:(unint64_t)style
{
  imageCopy = image;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v16.receiver = self;
  v16.super_class = DMCEnrollmentTableViewIconCell;
  v10 = [(DMCEnrollmentTableViewIconCell *)&v16 initWithStyle:0 reuseIdentifier:v9];

  if (v10)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(DMCEnrollmentTableViewIconCell *)v10 setBackgroundColor:systemBackgroundColor];

    [(DMCEnrollmentTableViewIconCell *)v10 setSelectionStyle:0];
    v10->_layoutStyle = style;
    objc_storeStrong(&v10->_icon, image);
    v12 = [(DMCEnrollmentTableViewIconCell *)v10 _createImageViewWithImage:imageCopy];
    contentView = [(DMCEnrollmentTableViewIconCell *)v10 contentView];
    [contentView addSubview:v12];

    [(DMCEnrollmentTableViewIconCell *)v10 _addConstraintsForImageView:v12];
    iconImageView = v10->_iconImageView;
    v10->_iconImageView = v12;
  }

  return v10;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = DMCEnrollmentTableViewIconCell;
  [(DMCEnrollmentTableViewIconCell *)&v3 layoutSubviews];
  [(DMCEnrollmentTableViewIconCell *)self setUserInteractionEnabled:0];
  [(DMCEnrollmentTableViewIconCell *)self bounds];
  [(DMCEnrollmentTableViewIconCell *)self setSeparatorInset:0.0, CGRectGetWidth(v4), 0.0, 0.0];
}

- (void)setIconName:(id)name
{
  v4 = [(DMCEnrollmentTableViewIconCell *)self _systemImageWithName:name];
  [(DMCEnrollmentTableViewIconCell *)self setIconImage:v4];
}

- (void)setIconImage:(id)image
{
  objc_storeStrong(&self->_icon, image);
  imageCopy = image;
  iconImageView = [(DMCEnrollmentTableViewIconCell *)self iconImageView];
  [iconImageView setImage:imageCopy];

  iconImageView2 = [(DMCEnrollmentTableViewIconCell *)self iconImageView];
  [(DMCEnrollmentTableViewIconCell *)self _addConstraintsForImageView:iconImageView2];

  [(DMCEnrollmentTableViewIconCell *)self setNeedsDisplay];
}

- (double)cellHeight
{
  [(DMCEnrollmentTableViewIconCell *)self _iconHeight];
  v4 = v3;
  [(DMCEnrollmentTableViewIconCell *)self _topMargin];
  v6 = v4 + v5;
  [(DMCEnrollmentTableViewIconCell *)self _bottomMargin];
  return v6 + v7;
}

- (double)_iconHeight
{
  layoutStyle = [(DMCEnrollmentTableViewIconCell *)self layoutStyle];
  result = 80.0;
  if (layoutStyle == 1)
  {
    return 38.0;
  }

  return result;
}

- (double)_topMargin
{
  icon = [(DMCEnrollmentTableViewIconCell *)self icon];
  [icon size];
  v5 = v4;
  v7 = v6;

  result = 0.0;
  if (v7 < v5)
  {
    [(DMCEnrollmentTableViewIconCell *)self _iconHeight];
    return (v5 - v7) / v5 * v9 * 0.5 + 0.0;
  }

  return result;
}

- (double)_bottomMargin
{
  icon = [(DMCEnrollmentTableViewIconCell *)self icon];
  [icon size];
  v5 = v4;
  v7 = v6;

  result = 20.0;
  if (v7 < v5)
  {
    [(DMCEnrollmentTableViewIconCell *)self _iconHeight];
    return fmax((v5 - v7) / v5 * v9 * -0.5 + 20.0, 0.0);
  }

  return result;
}

- (id)_systemImageWithName:(id)name
{
  v3 = [MEMORY[0x277D755B8] _systemImageNamed:name];
  v4 = MEMORY[0x277D755D0];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v6 = [v4 configurationWithHierarchicalColor:systemBlueColor];

  v7 = [v3 imageWithConfiguration:v6];

  return v7;
}

- (id)_createImageViewWithImage:(id)image
{
  v4 = MEMORY[0x277D755E8];
  imageCopy = image;
  v6 = [[v4 alloc] initWithImage:imageCopy];

  [v6 setFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = MEMORY[0x277CCAAD0];
  [(DMCEnrollmentTableViewIconCell *)self _iconWidth];
  v9 = [v7 constraintWithItem:v6 attribute:7 relatedBy:0 toItem:v6 attribute:7 multiplier:0.0 constant:v8];
  [v6 addConstraint:v9];

  v10 = MEMORY[0x277CCAAD0];
  [(DMCEnrollmentTableViewIconCell *)self _iconHeight];
  v12 = [v10 constraintWithItem:v6 attribute:8 relatedBy:0 toItem:v6 attribute:8 multiplier:0.0 constant:v11];
  [v6 addConstraint:v12];

  [v6 setContentMode:1];

  return v6;
}

- (void)_addConstraintsForImageView:(id)view
{
  v23[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  contentViewConstraints = [(DMCEnrollmentTableViewIconCell *)self contentViewConstraints];
  v6 = [contentViewConstraints count];

  if (v6)
  {
    contentView = [(DMCEnrollmentTableViewIconCell *)self contentView];
    contentViewConstraints2 = [(DMCEnrollmentTableViewIconCell *)self contentViewConstraints];
    [contentView removeConstraints:contentViewConstraints2];

    [(DMCEnrollmentTableViewIconCell *)self setContentViewConstraints:0];
  }

  v22 = @"imageView";
  v23[0] = viewCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v10 = 0;
  v11 = 0;
  if ([(DMCEnrollmentTableViewIconCell *)self layoutStyle]!= 1)
  {
    [(DMCEnrollmentTableViewIconCell *)self _topMargin];
    v11 = v12;
  }

  if ([(DMCEnrollmentTableViewIconCell *)self layoutStyle]!= 1)
  {
    [(DMCEnrollmentTableViewIconCell *)self _bottomMargin];
    v10 = v13;
  }

  v14 = MEMORY[0x277CCAAD0];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"V:|-%f-[imageView]-%f-|", v11, v10];
  v16 = [v14 constraintsWithVisualFormat:v15 options:0 metrics:0 views:v9];

  v17 = MEMORY[0x277CCAAD0];
  contentView2 = [(DMCEnrollmentTableViewIconCell *)self contentView];
  v19 = [v17 constraintWithItem:viewCopy attribute:9 relatedBy:0 toItem:contentView2 attribute:9 multiplier:1.0 constant:0.0];
  v20 = [v16 arrayByAddingObject:v19];

  contentView3 = [(DMCEnrollmentTableViewIconCell *)self contentView];
  [contentView3 addConstraints:v20];

  [(DMCEnrollmentTableViewIconCell *)self setContentViewConstraints:v20];
}

@end