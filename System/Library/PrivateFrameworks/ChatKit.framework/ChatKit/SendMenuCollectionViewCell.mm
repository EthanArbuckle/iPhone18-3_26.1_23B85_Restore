@interface SendMenuCollectionViewCell
- (CGPoint)center;
- (CGRect)accessibilityFrame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setCenter:(CGPoint)center;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SendMenuCollectionViewCell

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for SendMenuCollectionViewCell();
  changeCopy = change;
  v5 = v6.receiver;
  [(SendMenuCollectionViewCell *)&v6 traitCollectionDidChange:changeCopy];
  sub_190A136DC();
  sub_190A155A4();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_190A14580(event, x, y);

  return v10;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_190D531F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D531E0();
  selfCopy = self;
  sub_190A147E0();

  (*(v5 + 8))(v7, v4);
}

- (CGRect)accessibilityFrame
{
  selfCopy = self;
  sub_190A143DC();
  [(SendMenuCollectionViewCell *)selfCopy convertRect:0 toView:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190A15C30();
}

- (CGPoint)center
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SendMenuCollectionViewCell();
  [(SendMenuCollectionViewCell *)&v4 center];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for SendMenuCollectionViewCell();
  v5 = v9.receiver;
  [(SendMenuCollectionViewCell *)&v9 setCenter:x, y];
  v6 = &v5[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCellDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v5, ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_190A17F0C();
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = _s7ChatKit26SendMenuCollectionViewCellC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0lI0C_So0L6RegionCtF_0();

  return v9;
}

@end