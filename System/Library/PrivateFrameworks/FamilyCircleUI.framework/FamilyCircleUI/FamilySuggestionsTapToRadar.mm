@interface FamilySuggestionsTapToRadar
- (FamilySuggestionsTapToRadar)init;
- (FamilySuggestionsTapToRadar)initWithSuggestions:(id)a3 screenshot:(id)a4;
- (void)open;
@end

@implementation FamilySuggestionsTapToRadar

- (FamilySuggestionsTapToRadar)initWithSuggestions:(id)a3 screenshot:(id)a4
{
  sub_21BB3A2A4(0, &qword_27CDB8FE8, 0x277D082D8);
  *(&self->super.isa + OBJC_IVAR___FamilySuggestionsTapToRadar_suggestions) = sub_21BE28C3C();
  *(&self->super.isa + OBJC_IVAR___FamilySuggestionsTapToRadar_screenshot) = a4;
  v8.receiver = self;
  v8.super_class = FamilySuggestionsTapToRadar;
  v6 = a4;
  return [(FamilySuggestionsTapToRadar *)&v8 init];
}

- (void)open
{
  v2 = self;
  sub_21BCAEB64();
}

- (FamilySuggestionsTapToRadar)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end