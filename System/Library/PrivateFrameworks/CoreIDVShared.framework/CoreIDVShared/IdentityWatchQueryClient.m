@interface IdentityWatchQueryClient
- (void)watchIdentityPassesCountWithCompletionHandler:(id)a3;
@end

@implementation IdentityWatchQueryClient

- (void)watchIdentityPassesCountWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_225CCE994();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D02D18;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_225CF9CD0;
  v13[5] = v12;
  v14 = self;
  sub_225CBCC70(0, 0, v8, &unk_225D02030, v13);
}

@end