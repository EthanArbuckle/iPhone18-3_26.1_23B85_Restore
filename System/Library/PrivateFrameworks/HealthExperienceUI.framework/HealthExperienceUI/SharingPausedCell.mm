@interface SharingPausedCell
- (_TtC18HealthExperienceUI17SharingPausedCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI17SharingPausedCell)initWithFrame:(CGRect)frame;
@end

@implementation SharingPausedCell

- (_TtC18HealthExperienceUI17SharingPausedCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectWeakInit();
  v8 = self + OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_item;
  type metadata accessor for MessageWithActionTileView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v10 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_tileView) = v10;
  v13.receiver = self;
  v13.super_class = type metadata accessor for SharingPausedCell();
  height = [(SharingPausedCell *)&v13 initWithFrame:x, y, width, height];
  sub_1BA13CA4C();

  return height;
}

- (_TtC18HealthExperienceUI17SharingPausedCell)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v4 = self + OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

@end