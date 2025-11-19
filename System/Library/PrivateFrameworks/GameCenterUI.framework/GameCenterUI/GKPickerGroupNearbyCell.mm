@interface GKPickerGroupNearbyCell
- (BOOL)isHighlighted;
- (UILabel)accessibilityTitleLabel;
- (UILabel)badgeLabel;
- (UILabel)titleLabel;
- (UIView)iconContainer;
- (void)awakeFromNib;
- (void)configureWithBadgeCount:(int64_t)a3;
- (void)prepareForReuse;
- (void)setBadgeLabel:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setIconContainer:(id)a3;
- (void)setTitleLabel:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation GKPickerGroupNearbyCell

- (UIView)iconContainer
{
  v2 = sub_24E131268();

  return v2;
}

- (void)setIconContainer:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E1312D0(a3);
}

- (UILabel)badgeLabel
{
  v2 = sub_24E13134C();

  return v2;
}

- (void)setBadgeLabel:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E1313B4(a3);
}

- (UILabel)titleLabel
{
  v2 = sub_24E131430();

  return v2;
}

- (void)setTitleLabel:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E131498(a3);
}

- (void)awakeFromNib
{
  v2 = self;
  sub_24E1314E0();
}

- (void)configureWithBadgeCount:(int64_t)a3
{
  v4 = self;
  sub_24E13176C(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E131A94(a3);
}

- (BOOL)isHighlighted
{
  v2 = self;
  v3 = sub_24E131BBC();

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_24E131C44(a3);
}

- (UILabel)accessibilityTitleLabel
{
  v2 = sub_24E131DF8();

  return v2;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_24E131E24();
}

@end