@interface HUAccessoryTileCell
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)showsSizeChangeButton;
- (HUAccessoryTileCellDelegate)delegate;
- (NSString)description;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)prepareForReuse;
- (void)setShowsSizeChangeButton:(BOOL)a3;
- (void)setShowsSizeChangeButton:(BOOL)a3 animated:(BOOL)a4;
- (void)tileSizeButtonTappedWithSender:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
- (void)updateSizeChangeButton;
@end

@implementation HUAccessoryTileCell

- (HUAccessoryTileCellDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)showsSizeChangeButton
{
  v3 = OBJC_IVAR___HUAccessoryTileCell_showsSizeChangeButton;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShowsSizeChangeButton:(BOOL)a3
{
  v5 = OBJC_IVAR___HUAccessoryTileCell_showsSizeChangeButton;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AccessoryTileCell();
  v2 = v3.receiver;
  [(HUAccessoryTileCell *)&v3 updateConstraints];
  sub_20CFF8E64();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_20CFF7B58();
}

- (void)setShowsSizeChangeButton:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_20CFF8674(a3, a4);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_20CFF883C(a4, x, y);

  return v10;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v14.receiver = self;
  v14.super_class = type metadata accessor for AccessoryTileCell();
  v7 = a4;
  v8 = v14.receiver;
  if ([(HUAccessoryTileCell *)&v14 pointInside:v7 withEvent:x, y])
  {
    v9 = 1;
  }

  else
  {
    v10 = OBJC_IVAR___HUAccessoryTileCell_sizeChangeButton;
    swift_beginAccess();
    v11 = *&v8[v10];
    if (v11)
    {
      v12 = v11;
      [v8 convertPoint:v12 toCoordinateSpace:{x, y}];
      v9 = [v12 pointInside:v7 withEvent:?];

      v7 = v8;
      v8 = v12;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)updateSizeChangeButton
{
  v2 = self;
  sub_20CFF8AC8();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_20CFF9120(a3);
}

- (void)tileSizeButtonTappedWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  sub_20CFF9310();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (NSString)description
{
  v2 = self;
  sub_20CFF94DC();

  v3 = sub_20D5677F8();

  return v3;
}

@end