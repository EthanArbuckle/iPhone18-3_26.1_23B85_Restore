@interface WDProfileHeaderView
- (BOOL)isNameHidden;
- (CGSize)sizeThatFits:(CGSize)fits;
- (WDProfileHeaderView)initWithFrame:(CGRect)frame;
- (void)_updateFont;
- (void)layoutSubviews;
- (void)setAvatarView:(id)view;
- (void)setFirstName:(id)name lastName:(id)lastName;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WDProfileHeaderView

- (WDProfileHeaderView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = WDProfileHeaderView;
  v3 = [(WDProfileHeaderView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    nameLabel = v3->_nameLabel;
    v3->_nameLabel = v4;

    [(UILabel *)v3->_nameLabel setAllowsDefaultTighteningForTruncation:1];
    [(UILabel *)v3->_nameLabel setNumberOfLines:0];
    v6 = [MEMORY[0x277D74300] systemFontOfSize:28.0];
    [(UILabel *)v3->_nameLabel setFont:v6];

    [(UILabel *)v3->_nameLabel setTextAlignment:1];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v3->_nameLabel setTextColor:labelColor];

    [(WDProfileHeaderView *)v3 addSubview:v3->_nameLabel];
    [(WDProfileHeaderView *)v3 _updateFont];
    v8 = objc_alloc_init(MEMORY[0x277CCAC08]);
    nameFormatter = v3->_nameFormatter;
    v3->_nameFormatter = v8;

    [(NSPersonNameComponentsFormatter *)v3->_nameFormatter setStyle:0];
    systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    [(WDProfileHeaderView *)v3 setBackgroundColor:systemGroupedBackgroundColor];
  }

  return v3;
}

- (void)_updateFont
{
  v3 = *MEMORY[0x277D767F8];
  IsLargerThanSizeCategory = HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory();
  v5 = MEMORY[0x277D74300];
  if (IsLargerThanSizeCategory)
  {
    v6 = *MEMORY[0x277D76918];
    v7 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:v3];
    v8 = [v5 preferredFontForTextStyle:v6 compatibleWithTraitCollection:v7];
    [v8 _scaledValueForValue:28.0];
    v10 = v9;

    v12 = [MEMORY[0x277D74300] systemFontOfSize:v10];
    [(UILabel *)self->_nameLabel setFont:?];
  }

  else
  {
    v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
    nameLabel = [(WDProfileHeaderView *)self nameLabel];
    [nameLabel setFont:v12];
  }
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = WDProfileHeaderView;
  [(WDProfileHeaderView *)&v17 layoutSubviews];
  [(WDProfileHeaderView *)self bounds];
  Width = CGRectGetWidth(v18);
  [(UILabel *)self->_nameLabel frame];
  v4 = Width + -20.0;
  v5 = 0.0;
  [(UILabel *)self->_nameLabel sizeThatFits:Width + -20.0, 0.0];
  v7 = v6;
  avatarView = self->_avatarView;
  if (avatarView)
  {
    [(UIView *)avatarView frame];
    v10 = v9;
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    isIPhone = [mEMORY[0x277CCDD30] isIPhone];

    if (isIPhone)
    {
      v13 = (Width + -86.0) * 0.5;
    }

    else
    {
      v13 = v10;
    }

    [(UIView *)self->_avatarView setFrame:v13, 56.0, 86.0, 86.0];
    [(UILabel *)self->_nameLabel _firstBaselineOffsetFromTop];
    v15 = 34.0 - v14;
    if (v15 >= 0.0)
    {
      v5 = v15;
    }

    v19.origin.x = v13;
    v19.origin.y = 56.0;
    v19.size.width = 86.0;
    v19.size.height = 86.0;
    v16 = CGRectGetMaxY(v19) + v5;
  }

  else
  {
    v16 = 10.0;
  }

  [(UILabel *)self->_nameLabel setFrame:10.0, v16, v4, v7];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(WDProfileHeaderView *)self layoutIfNeeded:fits.width];
  if ([(UILabel *)self->_nameLabel isHidden])
  {
    avatarView = self->_avatarView;
    if (avatarView)
    {
      goto LABEL_6;
    }
  }

  if (([(UILabel *)self->_nameLabel isHidden]& 1) == 0)
  {
    avatarView = self->_nameLabel;
LABEL_6:
    [(UILabel *)avatarView frame];
    v6 = CGRectGetMaxY(v9) + 56.0;
    goto LABEL_7;
  }

  v6 = 56.0;
LABEL_7:
  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)setAvatarView:(id)view
{
  viewCopy = view;
  avatarView = self->_avatarView;
  if (avatarView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)avatarView removeFromSuperview];
    if (v7)
    {
      [(WDProfileHeaderView *)self addSubview:v7];
    }

    objc_storeStrong(&self->_avatarView, view);
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](avatarView, viewCopy);
}

- (void)setFirstName:(id)name lastName:(id)lastName
{
  v6 = MEMORY[0x277CCAC00];
  lastNameCopy = lastName;
  nameCopy = name;
  v12 = objc_alloc_init(v6);
  [v12 setGivenName:nameCopy];

  [v12 setFamilyName:lastNameCopy];
  nameFormatter = [(WDProfileHeaderView *)self nameFormatter];
  v10 = [nameFormatter stringFromPersonNameComponents:v12];
  nameLabel = [(WDProfileHeaderView *)self nameLabel];
  [nameLabel setText:v10];

  [(WDProfileHeaderView *)self setNeedsLayout];
}

- (BOOL)isNameHidden
{
  nameLabel = [(WDProfileHeaderView *)self nameLabel];
  isHidden = [nameLabel isHidden];

  return isHidden;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = WDProfileHeaderView;
  [(WDProfileHeaderView *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(WDProfileHeaderView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(WDProfileHeaderView *)self _updateFont];
      [(WDProfileHeaderView *)self setNeedsLayout];
    }
  }
}

@end