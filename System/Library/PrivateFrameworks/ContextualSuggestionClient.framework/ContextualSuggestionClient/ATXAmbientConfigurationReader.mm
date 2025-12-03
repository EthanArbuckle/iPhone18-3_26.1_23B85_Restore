@interface ATXAmbientConfigurationReader
- (ATXAmbientConfigurationReader)init;
- (void)readStacksWithCompletion:(id)completion;
@end

@implementation ATXAmbientConfigurationReader

- (void)readStacksWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2441D8D9C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2441DB438;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2441DB440;
  v13[5] = v12;
  selfCopy = self;
  sub_2441AD2EC(0, 0, v8, &unk_2441DB448, v13);
}

- (ATXAmbientConfigurationReader)init
{
  v3.receiver = self;
  v3.super_class = ATXAmbientConfigurationReader;
  return [(ATXAmbientConfigurationReader *)&v3 init];
}

@end