@interface CAFUIAutomakerSettingCell
- (BOOL)canBecomeFocused;
- (NSArray)preferredFocusEnvironments;
- (_TtC5CAFUI25CAFUIAutomakerSettingCell)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
@end

@implementation CAFUIAutomakerSettingCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CAFUIAutomakerSettingCell();
  v2 = v3.receiver;
  [(CAFUITileBaseCell *)&v3 prepareForReuse];
  CAFUIAutomakerSettingCell.representable.setter(0, 0);
}

- (BOOL)canBecomeFocused
{
  selfCopy = self;
  v3 = CAFUIAutomakerSettingCell.canBecomeFocused.getter();

  return v3 & 1;
}

- (NSArray)preferredFocusEnvironments
{
  selfCopy = self;
  CAFUIAutomakerSettingCell.preferredFocusEnvironments.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (_TtC5CAFUI25CAFUIAutomakerSettingCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = (&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC5CAFUI25CAFUIAutomakerSettingCell_representable);
  v9 = type metadata accessor for CAFUIAutomakerSettingCell();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(CAFUITileBaseCell *)&v11 initWithFrame:x, y, width, height];
}

@end