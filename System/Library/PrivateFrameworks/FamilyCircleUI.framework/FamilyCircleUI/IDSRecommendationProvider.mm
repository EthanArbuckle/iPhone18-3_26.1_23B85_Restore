@interface IDSRecommendationProvider
- (IDSRecommendationProvider)init;
- (id)getIDForPhoneNumberWithPhoneNumber:(id)a3;
- (void)validateHandlesWithIdsDestinations:(NSArray *)a3 completionHandler:(id)a4;
@end

@implementation IDSRecommendationProvider

- (id)getIDForPhoneNumberWithPhoneNumber:(id)a3
{
  if (a3)
  {
    sub_21BE28A0C();
    v4 = self;
    v5 = sub_21BE289CC();
  }

  else
  {
    v6 = self;
    v5 = 0;
  }

  v7 = _IDSCopyIDForPhoneNumberWithOptions();

  if (v7)
  {
    sub_21BE28A0C();

    v8 = sub_21BE289CC();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (void)validateHandlesWithIdsDestinations:(NSArray *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
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
  v14[4] = &unk_21BE48830;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_21BE32A10;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_21BDC4F90(0, 0, v10, &unk_21BE391F0, v15);
}

- (IDSRecommendationProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IDSRecommendationProvider();
  return [(IDSRecommendationProvider *)&v3 init];
}

@end