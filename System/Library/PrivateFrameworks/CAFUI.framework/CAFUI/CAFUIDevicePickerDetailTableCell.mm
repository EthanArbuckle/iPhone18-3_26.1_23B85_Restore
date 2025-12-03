@interface CAFUIDevicePickerDetailTableCell
- (_TtC5CAFUI32CAFUIDevicePickerDetailTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation CAFUIDevicePickerDetailTableCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CAFUIDevicePickerDetailTableCell();
  v2 = v3.receiver;
  [(CAFUITableCell *)&v3 prepareForReuse];
  v2[OBJC_IVAR____TtC5CAFUI32CAFUIDevicePickerDetailTableCell_isEnabled] = 1;
}

- (_TtC5CAFUI32CAFUIDevicePickerDetailTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5CAFUI32CAFUIDevicePickerDetailTableCell_isEnabled) = 1;
    v7 = MEMORY[0x245D0D180](v6);
  }

  else
  {
    v7 = 0;
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5CAFUI32CAFUIDevicePickerDetailTableCell_isEnabled) = 1;
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for CAFUIDevicePickerDetailTableCell();
  v8 = [(CAFUITableCell *)&v10 initWithStyle:style reuseIdentifier:v7];

  return v8;
}

@end