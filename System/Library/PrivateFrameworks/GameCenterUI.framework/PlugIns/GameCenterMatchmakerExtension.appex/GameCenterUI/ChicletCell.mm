@interface ChicletCell
- (BOOL)isHighlighted;
- (UILabel)accessibilityTitleLabel;
- (UILabel)titleLabel;
- (UIView)accessibilityMetadataContainer;
- (UIView)container;
- (UIView)iconContainer;
- (UIView)metadataContainer;
- (void)awakeFromNib;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setContainer:(id)container;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIconContainer:(id)container;
- (void)setMetadataContainer:(id)container;
- (void)setTitleLabel:(id)label;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ChicletCell

- (UIView)container
{
  v2 = sub_100009298();

  return v2;
}

- (void)setContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  sub_100009300();
}

- (UIView)metadataContainer
{
  v2 = sub_100009378();

  return v2;
}

- (void)setMetadataContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  sub_1000093E0();
}

- (UIView)iconContainer
{
  v2 = sub_100009458();

  return v2;
}

- (void)setIconContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  sub_1000094C0();
}

- (UILabel)titleLabel
{
  v2 = sub_100009538();

  return v2;
}

- (void)setTitleLabel:(id)label
{
  labelCopy = label;
  selfCopy = self;
  sub_1000095A0();
}

- (void)awakeFromNib
{
  selfCopy = self;
  sub_1000095E4();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100009D40(change);
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_10000B098(contextCopy, coordinatorCopy);
}

- (BOOL)isHighlighted
{
  selfCopy = self;
  v3 = sub_10000B444();

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_10000B4CC(highlighted);
}

- (UILabel)accessibilityTitleLabel
{
  v2 = sub_10000B658();

  return v2;
}

- (UIView)accessibilityMetadataContainer
{
  v2 = sub_10000B698();

  return v2;
}

@end