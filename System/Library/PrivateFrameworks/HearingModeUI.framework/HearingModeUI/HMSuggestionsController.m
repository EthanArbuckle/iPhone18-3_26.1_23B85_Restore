@interface HMSuggestionsController
- (_TtC13HearingModeUI23HMSuggestionsController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC13HearingModeUI23HMSuggestionsController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (uint64_t)earTipSuggestionTapped;
- (void)buttonTapped;
- (void)viewDidLoad;
@end

@implementation HMSuggestionsController

- (void)viewDidLoad
{
  v2 = self;
  sub_2520469E8();
}

- (void)buttonTapped
{
  v4 = self;
  v2 = [(HMSuggestionsController *)v4 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC13HearingModeUI23HMSuggestionsController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HearingModeUI23HMSuggestionsController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (uint64_t)earTipSuggestionTapped
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9950, &qword_252067210);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_252063DA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252063D94();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_252034F68(v3);
  }

  (*(v5 + 32))(v8, v3, v4);
  v10 = [objc_opt_self() sharedApplication];
  v11 = sub_252063D74();
  sub_25203A508(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey();
  sub_25203A77C(&qword_27F4C9958);
  v12 = sub_252064654();

  [v10 openURL:v11 options:v12 completionHandler:0];

  return (*(v5 + 8))(v8, v4);
}

@end