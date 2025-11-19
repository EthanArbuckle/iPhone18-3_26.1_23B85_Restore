@interface ActionBarDirectionButton
- (CGSize)intrinsicContentSize;
- (_TtC10MapsDesign24ActionBarDirectionButton)initWithCoder:(id)a3;
- (_TtC10MapsDesign24ActionBarDirectionButton)initWithFrame:(CGRect)a3;
@end

@implementation ActionBarDirectionButton

- (_TtC10MapsDesign24ActionBarDirectionButton)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC10MapsDesign24ActionBarDirectionButton_symbolImageView;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v5 = OBJC_IVAR____TtC10MapsDesign24ActionBarDirectionButton_textLabel;
  *(&self->super.super.super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  result = sub_213F4F7C0();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v11.receiver = self;
  v11.super_class = swift_getObjectType();
  v2 = v11.receiver;
  [(ActionBarDirectionButton *)&v11 intrinsicContentSize];
  v4 = v3;
  [*&v2[OBJC_IVAR____TtC10MapsDesign24ActionBarDirectionButton_symbolImageView] intrinsicContentSize];
  v6 = v5 + 14.0 + 4.0;
  [*&v2[OBJC_IVAR____TtC10MapsDesign24ActionBarDirectionButton_textLabel] intrinsicContentSize];
  v8 = v7;

  v9 = v6 + v8 + 16.0;
  v10 = v4;
  result.height = v10;
  result.width = v9;
  return result;
}

- (_TtC10MapsDesign24ActionBarDirectionButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end