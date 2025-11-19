@interface DMCEnrollmentTableViewIconCell
- (DMCEnrollmentTableViewIconCell)initWithIconImage:(id)a3 layoutStyle:(unint64_t)a4;
- (DMCEnrollmentTableViewIconCell)initWithIconName:(id)a3 layoutStyle:(unint64_t)a4;
- (double)_bottomMargin;
- (double)_iconHeight;
- (double)_topMargin;
- (double)cellHeight;
- (id)_createImageViewWithImage:(id)a3;
- (id)_systemImageWithName:(id)a3;
- (void)_addConstraintsForImageView:(id)a3;
- (void)layoutSubviews;
- (void)setIconImage:(id)a3;
- (void)setIconName:(id)a3;
@end

@implementation DMCEnrollmentTableViewIconCell

- (DMCEnrollmentTableViewIconCell)initWithIconName:(id)a3 layoutStyle:(unint64_t)a4
{
  v6 = [(DMCEnrollmentTableViewIconCell *)self _systemImageWithName:a3];
  v7 = [(DMCEnrollmentTableViewIconCell *)self initWithIconImage:v6 layoutStyle:a4];

  return v7;
}

- (DMCEnrollmentTableViewIconCell)initWithIconImage:(id)a3 layoutStyle:(unint64_t)a4
{
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v16.receiver = self;
  v16.super_class = DMCEnrollmentTableViewIconCell;
  v10 = [(DMCEnrollmentTableViewIconCell *)&v16 initWithStyle:0 reuseIdentifier:v9];

  if (v10)
  {
    v11 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(DMCEnrollmentTableViewIconCell *)v10 setBackgroundColor:v11];

    [(DMCEnrollmentTableViewIconCell *)v10 setSelectionStyle:0];
    v10->_layoutStyle = a4;
    objc_storeStrong(&v10->_icon, a3);
    v12 = [(DMCEnrollmentTableViewIconCell *)v10 _createImageViewWithImage:v7];
    v13 = [(DMCEnrollmentTableViewIconCell *)v10 contentView];
    [v13 addSubview:v12];

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

- (void)setIconName:(id)a3
{
  v4 = [(DMCEnrollmentTableViewIconCell *)self _systemImageWithName:a3];
  [(DMCEnrollmentTableViewIconCell *)self setIconImage:v4];
}

- (void)setIconImage:(id)a3
{
  objc_storeStrong(&self->_icon, a3);
  v5 = a3;
  v6 = [(DMCEnrollmentTableViewIconCell *)self iconImageView];
  [v6 setImage:v5];

  v7 = [(DMCEnrollmentTableViewIconCell *)self iconImageView];
  [(DMCEnrollmentTableViewIconCell *)self _addConstraintsForImageView:v7];

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
  v2 = [(DMCEnrollmentTableViewIconCell *)self layoutStyle];
  result = 80.0;
  if (v2 == 1)
  {
    return 38.0;
  }

  return result;
}

- (double)_topMargin
{
  v3 = [(DMCEnrollmentTableViewIconCell *)self icon];
  [v3 size];
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
  v3 = [(DMCEnrollmentTableViewIconCell *)self icon];
  [v3 size];
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

- (id)_systemImageWithName:(id)a3
{
  v3 = [MEMORY[0x277D755B8] _systemImageNamed:a3];
  v4 = MEMORY[0x277D755D0];
  v5 = [MEMORY[0x277D75348] systemBlueColor];
  v6 = [v4 configurationWithHierarchicalColor:v5];

  v7 = [v3 imageWithConfiguration:v6];

  return v7;
}

- (id)_createImageViewWithImage:(id)a3
{
  v4 = MEMORY[0x277D755E8];
  v5 = a3;
  v6 = [[v4 alloc] initWithImage:v5];

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

- (void)_addConstraintsForImageView:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DMCEnrollmentTableViewIconCell *)self contentViewConstraints];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(DMCEnrollmentTableViewIconCell *)self contentView];
    v8 = [(DMCEnrollmentTableViewIconCell *)self contentViewConstraints];
    [v7 removeConstraints:v8];

    [(DMCEnrollmentTableViewIconCell *)self setContentViewConstraints:0];
  }

  v22 = @"imageView";
  v23[0] = v4;
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
  v18 = [(DMCEnrollmentTableViewIconCell *)self contentView];
  v19 = [v17 constraintWithItem:v4 attribute:9 relatedBy:0 toItem:v18 attribute:9 multiplier:1.0 constant:0.0];
  v20 = [v16 arrayByAddingObject:v19];

  v21 = [(DMCEnrollmentTableViewIconCell *)self contentView];
  [v21 addConstraints:v20];

  [(DMCEnrollmentTableViewIconCell *)self setContentViewConstraints:v20];
}

@end