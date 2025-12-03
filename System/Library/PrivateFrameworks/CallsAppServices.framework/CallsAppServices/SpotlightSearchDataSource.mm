@interface SpotlightSearchDataSource
- (_TtC16CallsAppServices25SpotlightSearchDataSource)init;
- (void)providersChangedForProviderManager:(id)manager;
- (void)searchSuggestionsWithText:(NSString *)text completion:(id)completion;
@end

@implementation SpotlightSearchDataSource

- (void)searchSuggestionsWithText:(NSString *)text completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = text;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1D33DE9B4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1D33E2DF8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1D33E2E08;
  v15[5] = v14;
  textCopy = text;
  selfCopy = self;
  sub_1D337CB4C(0, 0, v10, &unk_1D33E2E18, v15);
}

- (void)providersChangedForProviderManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  sub_1D337D018();
}

- (_TtC16CallsAppServices25SpotlightSearchDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end