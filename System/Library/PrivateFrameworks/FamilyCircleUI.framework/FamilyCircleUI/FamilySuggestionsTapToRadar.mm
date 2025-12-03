@interface FamilySuggestionsTapToRadar
- (FamilySuggestionsTapToRadar)init;
- (FamilySuggestionsTapToRadar)initWithSuggestions:(id)suggestions screenshot:(id)screenshot;
- (void)open;
@end

@implementation FamilySuggestionsTapToRadar

- (FamilySuggestionsTapToRadar)initWithSuggestions:(id)suggestions screenshot:(id)screenshot
{
  sub_21BB3A2A4(0, &qword_27CDB8FE8, 0x277D082D8);
  *(&self->super.isa + OBJC_IVAR___FamilySuggestionsTapToRadar_suggestions) = sub_21BE28C3C();
  *(&self->super.isa + OBJC_IVAR___FamilySuggestionsTapToRadar_screenshot) = screenshot;
  v8.receiver = self;
  v8.super_class = FamilySuggestionsTapToRadar;
  screenshotCopy = screenshot;
  return [(FamilySuggestionsTapToRadar *)&v8 init];
}

- (void)open
{
  selfCopy = self;
  sub_21BCAEB64();
}

- (FamilySuggestionsTapToRadar)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end