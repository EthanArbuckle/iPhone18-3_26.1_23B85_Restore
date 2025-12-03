@interface GKPickerGroupNearbyCell
- (BOOL)isHighlighted;
- (UILabel)accessibilityTitleLabel;
- (UILabel)badgeLabel;
- (UILabel)titleLabel;
- (UIView)iconContainer;
- (void)awakeFromNib;
- (void)configureWithBadgeCount:(int64_t)count;
- (void)prepareForReuse;
- (void)setBadgeLabel:(id)label;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIconContainer:(id)container;
- (void)setTitleLabel:(id)label;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation GKPickerGroupNearbyCell

- (UIView)iconContainer
{
  v2 = sub_24E131268();

  return v2;
}

- (void)setIconContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  sub_24E1312D0(container);
}

- (UILabel)badgeLabel
{
  v2 = sub_24E13134C();

  return v2;
}

- (void)setBadgeLabel:(id)label
{
  labelCopy = label;
  selfCopy = self;
  sub_24E1313B4(label);
}

- (UILabel)titleLabel
{
  v2 = sub_24E131430();

  return v2;
}

- (void)setTitleLabel:(id)label
{
  labelCopy = label;
  selfCopy = self;
  sub_24E131498(label);
}

- (void)awakeFromNib
{
  selfCopy = self;
  sub_24E1314E0();
}

- (void)configureWithBadgeCount:(int64_t)count
{
  selfCopy = self;
  sub_24E13176C(count);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24E131A94(change);
}

- (BOOL)isHighlighted
{
  selfCopy = self;
  v3 = sub_24E131BBC();

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_24E131C44(highlighted);
}

- (UILabel)accessibilityTitleLabel
{
  v2 = sub_24E131DF8();

  return v2;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_24E131E24();
}

@end