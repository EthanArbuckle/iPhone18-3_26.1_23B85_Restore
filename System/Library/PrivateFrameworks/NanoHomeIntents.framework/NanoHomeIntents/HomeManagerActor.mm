@interface HomeManagerActor
- (void)homeManagerDidUpdateHomes:(id)homes;
@end

@implementation HomeManagerActor

- (void)homeManagerDidUpdateHomes:(id)homes
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A378, &qword_25B164A58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = sub_25B161CF4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  sub_25B161274();
  sub_25B131B20(0, 0, v7, &unk_25B164AF8, v9);
}

@end