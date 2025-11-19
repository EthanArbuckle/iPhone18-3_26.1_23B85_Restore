@interface FAFamilyCircleFetcher
- (_TtC14FamilyCircleUI21FAFamilyCircleFetcher)init;
- (void)fetchCachedFamilyCircleWithQualityOfService:(int64_t)a3 completionHandler:(id)a4;
- (void)forceFetchFamilyCircleWithQualityOfService:(int64_t)a3 completionHandler:(id)a4;
@end

@implementation FAFamilyCircleFetcher

- (void)fetchCachedFamilyCircleWithQualityOfService:(int64_t)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_21BE28DAC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21BE4D4B0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_21BE4D4B8;
  v15[5] = v14;
  v16 = self;
  sub_21BDC4F90(0, 0, v10, &unk_21BE4D4C0, v15);
}

- (void)forceFetchFamilyCircleWithQualityOfService:(int64_t)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_21BE28DAC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21BE4D468;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_21BE32A10;
  v15[5] = v14;
  v16 = self;
  sub_21BDC4F90(0, 0, v10, &unk_21BE391F0, v15);
}

- (_TtC14FamilyCircleUI21FAFamilyCircleFetcher)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(FAFamilyCircleFetcher *)&v3 init];
}

@end