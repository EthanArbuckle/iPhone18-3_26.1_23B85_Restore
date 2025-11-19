@interface HUTileCellToggleSizeButton
- (BOOL)isExpanding;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (HUTileCellToggleSizeButton)initWithFrame:(CGRect)a3;
- (UIImageSymbolConfiguration)symbolConfiguration;
- (void)setHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setIsExpanding:(BOOL)a3;
- (void)setSymbolConfiguration:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation HUTileCellToggleSizeButton

- (BOOL)isExpanding
{
  v3 = OBJC_IVAR___HUTileCellToggleSizeButton_isExpanding;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setIsExpanding:(BOOL)a3
{
  v4 = self;
  sub_20CFFFFE4(a3);
}

- (UIImageSymbolConfiguration)symbolConfiguration
{
  v3 = OBJC_IVAR___HUTileCellToggleSizeButton_symbolConfiguration;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setSymbolConfiguration:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_20D001710(v5);
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  [(HUTileCellToggleSizeButton *)v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(HUTileCellToggleSizeButton *)v6 _touchInsets];
  v20.origin.x = UIEdgeInsetsInsetRect(v8, v10, v12, v14, v15, v16);
  v19.x = x;
  v19.y = y;
  v17 = CGRectContainsPoint(v20, v19);

  return v17;
}

- (void)setHidden:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_20D000BA8(a3, a4);
}

- (void)updateConstraints
{
  v2 = self;
  sub_20D000FB4();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_20D00127C(a3);
}

- (HUTileCellToggleSizeButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end