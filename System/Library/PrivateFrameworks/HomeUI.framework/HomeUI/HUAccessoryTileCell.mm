@interface HUAccessoryTileCell
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)showsSizeChangeButton;
- (HUAccessoryTileCellDelegate)delegate;
- (NSString)description;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)prepareForReuse;
- (void)setShowsSizeChangeButton:(BOOL)button;
- (void)setShowsSizeChangeButton:(BOOL)button animated:(BOOL)animated;
- (void)tileSizeButtonTappedWithSender:(id)sender;
- (void)traitCollectionDidChange:(id)change;
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

- (void)setShowsSizeChangeButton:(BOOL)button
{
  v5 = OBJC_IVAR___HUAccessoryTileCell_showsSizeChangeButton;
  swift_beginAccess();
  *(self + v5) = button;
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
  selfCopy = self;
  sub_20CFF7B58();
}

- (void)setShowsSizeChangeButton:(BOOL)button animated:(BOOL)animated
{
  selfCopy = self;
  sub_20CFF8674(button, animated);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_20CFF883C(event, x, y);

  return v10;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v14.receiver = self;
  v14.super_class = type metadata accessor for AccessoryTileCell();
  eventCopy = event;
  v8 = v14.receiver;
  if ([(HUAccessoryTileCell *)&v14 pointInside:eventCopy withEvent:x, y])
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
      v9 = [v12 pointInside:eventCopy withEvent:?];

      eventCopy = v8;
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
  selfCopy = self;
  sub_20CFF8AC8();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_20CFF9120(change);
}

- (void)tileSizeButtonTappedWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  sub_20CFF9310();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (NSString)description
{
  selfCopy = self;
  sub_20CFF94DC();

  v3 = sub_20D5677F8();

  return v3;
}

@end