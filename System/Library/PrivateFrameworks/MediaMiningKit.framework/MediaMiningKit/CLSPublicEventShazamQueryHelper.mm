@interface CLSPublicEventShazamQueryHelper
- (CLSPublicEventShazamQueryHelper)init;
- (void)cancel;
- (void)launchPublicEventQueryWithCancellerBlock:(id)a3 completionBlock:(id)a4;
- (void)launchQueryWithCancellerBlock:(id)a3 completionBlock:;
@end

@implementation CLSPublicEventShazamQueryHelper

- (void)launchQueryWithCancellerBlock:(id)a3 completionBlock:
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1990);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a3);
  v11 = _Block_copy(v4);
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22F989BE0();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22F991EE0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22F992200;
  v15[5] = v14;

  sub_22F91FC54(0, 0, v9, &unk_22F991EF0, v15);
}

- (void)launchPublicEventQueryWithCancellerBlock:(id)a3 completionBlock:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1990);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a3);
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = sub_22F989BE0();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = sub_22F90DEE8;
  v15[6] = v12;
  v15[7] = sub_22F90DEFC;
  v15[8] = v13;

  sub_22F90A944(0, 0, v9, &unk_22F991EC8, v15);
}

- (void)cancel
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1990);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_22F989BE0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;

  sub_22F90A944(0, 0, v5, &unk_22F991EC0, v7);
}

- (CLSPublicEventShazamQueryHelper)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end