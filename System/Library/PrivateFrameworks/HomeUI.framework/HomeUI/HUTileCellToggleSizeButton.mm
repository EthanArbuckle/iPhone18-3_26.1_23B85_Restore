@interface HUTileCellToggleSizeButton
- (BOOL)isExpanding;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (HUTileCellToggleSizeButton)initWithFrame:(CGRect)frame;
- (UIImageSymbolConfiguration)symbolConfiguration;
- (void)setHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setIsExpanding:(BOOL)expanding;
- (void)setSymbolConfiguration:(id)configuration;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation HUTileCellToggleSizeButton

- (BOOL)isExpanding
{
  v3 = OBJC_IVAR___HUTileCellToggleSizeButton_isExpanding;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setIsExpanding:(BOOL)expanding
{
  selfCopy = self;
  sub_20CFFFFE4(expanding);
}

- (UIImageSymbolConfiguration)symbolConfiguration
{
  v3 = OBJC_IVAR___HUTileCellToggleSizeButton_symbolConfiguration;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setSymbolConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_20D001710(configurationCopy);
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  [(HUTileCellToggleSizeButton *)selfCopy bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(HUTileCellToggleSizeButton *)selfCopy _touchInsets];
  v20.origin.x = UIEdgeInsetsInsetRect(v8, v10, v12, v14, v15, v16);
  v19.x = x;
  v19.y = y;
  v17 = CGRectContainsPoint(v20, v19);

  return v17;
}

- (void)setHidden:(BOOL)hidden animated:(BOOL)animated
{
  selfCopy = self;
  sub_20D000BA8(hidden, animated);
}

- (void)updateConstraints
{
  selfCopy = self;
  sub_20D000FB4();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_20D00127C(change);
}

- (HUTileCellToggleSizeButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end