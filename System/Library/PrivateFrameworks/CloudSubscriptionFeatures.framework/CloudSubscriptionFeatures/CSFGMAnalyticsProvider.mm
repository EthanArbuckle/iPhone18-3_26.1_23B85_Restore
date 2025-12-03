@interface CSFGMAnalyticsProvider
- (void)sendAction:(int64_t)action completionHandler:(id)handler;
@end

@implementation CSFGMAnalyticsProvider

- (void)sendAction:(int64_t)action completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = action;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1DF564B44();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1DF56A6F0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1DF5692D0;
  v15[5] = v14;
  selfCopy = self;
  sub_1DF51CC08(0, 0, v10, &unk_1DF56A700, v15);
}

@end