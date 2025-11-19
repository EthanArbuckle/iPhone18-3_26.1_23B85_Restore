@interface WDProfileHeaderView
- (BOOL)isNameHidden;
- (CGSize)sizeThatFits:(CGSize)a3;
- (WDProfileHeaderView)initWithFrame:(CGRect)a3;
- (void)_updateFont;
- (void)layoutSubviews;
- (void)setAvatarView:(id)a3;
- (void)setFirstName:(id)a3 lastName:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WDProfileHeaderView

- (WDProfileHeaderView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = WDProfileHeaderView;
  v3 = [(WDProfileHeaderView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v7 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v3->_nameLabel setTextColor:v7];

    [(WDProfileHeaderView *)v3 addSubview:v3->_nameLabel];
    [(WDProfileHeaderView *)v3 _updateFont];
    v8 = objc_alloc_init(MEMORY[0x277CCAC08]);
    nameFormatter = v3->_nameFormatter;
    v3->_nameFormatter = v8;

    [(NSPersonNameComponentsFormatter *)v3->_nameFormatter setStyle:0];
    v10 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    [(WDProfileHeaderView *)v3 setBackgroundColor:v10];
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
    v11 = [(WDProfileHeaderView *)self nameLabel];
    [v11 setFont:v12];
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
    v11 = [MEMORY[0x277CCDD30] sharedBehavior];
    v12 = [v11 isIPhone];

    if (v12)
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(WDProfileHeaderView *)self layoutIfNeeded:a3.width];
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

- (void)setAvatarView:(id)a3
{
  v5 = a3;
  avatarView = self->_avatarView;
  if (avatarView != v5)
  {
    v7 = v5;
    [(UIView *)avatarView removeFromSuperview];
    if (v7)
    {
      [(WDProfileHeaderView *)self addSubview:v7];
    }

    objc_storeStrong(&self->_avatarView, a3);
    v5 = v7;
  }

  MEMORY[0x2821F96F8](avatarView, v5);
}

- (void)setFirstName:(id)a3 lastName:(id)a4
{
  v6 = MEMORY[0x277CCAC00];
  v7 = a4;
  v8 = a3;
  v12 = objc_alloc_init(v6);
  [v12 setGivenName:v8];

  [v12 setFamilyName:v7];
  v9 = [(WDProfileHeaderView *)self nameFormatter];
  v10 = [v9 stringFromPersonNameComponents:v12];
  v11 = [(WDProfileHeaderView *)self nameLabel];
  [v11 setText:v10];

  [(WDProfileHeaderView *)self setNeedsLayout];
}

- (BOOL)isNameHidden
{
  v2 = [(WDProfileHeaderView *)self nameLabel];
  v3 = [v2 isHidden];

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WDProfileHeaderView;
  [(WDProfileHeaderView *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(WDProfileHeaderView *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(WDProfileHeaderView *)self _updateFont];
      [(WDProfileHeaderView *)self setNeedsLayout];
    }
  }
}

@end