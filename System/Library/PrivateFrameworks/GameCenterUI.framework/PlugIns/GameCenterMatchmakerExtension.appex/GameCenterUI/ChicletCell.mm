@interface ChicletCell
- (BOOL)isHighlighted;
- (UILabel)accessibilityTitleLabel;
- (UILabel)titleLabel;
- (UIView)accessibilityMetadataContainer;
- (UIView)container;
- (UIView)iconContainer;
- (UIView)metadataContainer;
- (void)awakeFromNib;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setContainer:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setIconContainer:(id)a3;
- (void)setMetadataContainer:(id)a3;
- (void)setTitleLabel:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ChicletCell

- (UIView)container
{
  v2 = sub_100009298();

  return v2;
}

- (void)setContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100009300();
}

- (UIView)metadataContainer
{
  v2 = sub_100009378();

  return v2;
}

- (void)setMetadataContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000093E0();
}

- (UIView)iconContainer
{
  v2 = sub_100009458();

  return v2;
}

- (void)setIconContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000094C0();
}

- (UILabel)titleLabel
{
  v2 = sub_100009538();

  return v2;
}

- (void)setTitleLabel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000095A0();
}

- (void)awakeFromNib
{
  v2 = self;
  sub_1000095E4();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100009D40(a3);
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10000B098(v6, v7);
}

- (BOOL)isHighlighted
{
  v2 = self;
  v3 = sub_10000B444();

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_10000B4CC(a3);
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