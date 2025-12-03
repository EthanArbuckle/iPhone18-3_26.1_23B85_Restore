@interface AudiogramCurrentValueDataProvider
- (_TtC8HealthUI33AudiogramCurrentValueDataProvider)init;
- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache;
@end

@implementation AudiogramCurrentValueDataProvider

- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache
{
  typeCopy = type;
  controllerCopy = controller;
  fontCopy = font;
  unitFontCopy = unitFont;
  cacheCopy = cache;
  selfCopy = self;
  sub_1C3C54478(typeCopy, controllerCopy, font, unitFont);
  v19 = v18;

  return v19;
}

- (_TtC8HealthUI33AudiogramCurrentValueDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end