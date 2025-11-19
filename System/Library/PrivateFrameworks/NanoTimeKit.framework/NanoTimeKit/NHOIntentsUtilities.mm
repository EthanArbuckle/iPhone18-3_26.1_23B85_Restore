@interface NHOIntentsUtilities
+ (id)pickableAccessoryIntentsWithHome:(id)a3 room:(id)a4;
+ (id)pickableActionSetIntentsWithHome:(id)a3;
+ (void)pickableElectricityRatesIntentsWithHome:(HMHome *)a3 completionHandler:(id)a4;
+ (void)pickableElectricityUsageIntentsWithHome:(HMHome *)a3 completionHandler:(id)a4;
+ (void)pickableEnergyForecastIntentsWithHome:(HMHome *)a3 completionHandler:(id)a4;
- (NHOIntentsUtilities)init;
@end

@implementation NHOIntentsUtilities

+ (void)pickableEnergyForecastIntentsWithHome:(HMHome *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v7 - 8, v8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = a1;
  v14 = sub_22DCB62BC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22DCEC6A0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22DCEC6A8;
  v16[5] = v15;
  v17 = a3;
  sub_22DC9E89C(0, 0, v11, &unk_22DCEC6B0, v16);
}

+ (void)pickableElectricityUsageIntentsWithHome:(HMHome *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v7 - 8, v8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = a1;
  v14 = sub_22DCB62BC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22DCEC680;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22DCEC688;
  v16[5] = v15;
  v17 = a3;
  sub_22DC9E89C(0, 0, v11, &unk_22DCEC690, v16);
}

+ (void)pickableElectricityRatesIntentsWithHome:(HMHome *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v7 - 8, v8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = a1;
  v14 = sub_22DCB62BC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22DCEC660;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22DCEA300;
  v16[5] = v15;
  v17 = a3;
  sub_22DC9E89C(0, 0, v11, &unk_22DCEC670, v16);
}

+ (id)pickableActionSetIntentsWithHome:(id)a3
{
  v3 = a3;
  sub_22DCB643C();

  sub_22DCB5BBC();
  v4 = sub_22DCB61EC();

  return v4;
}

+ (id)pickableAccessoryIntentsWithHome:(id)a3 room:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_22DCB642C();

  sub_22DCB5B9C();
  v7 = sub_22DCB61EC();

  return v7;
}

- (NHOIntentsUtilities)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(NHOIntentsUtilities *)&v3 init];
}

@end