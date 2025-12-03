@interface NHOIntentLocalization
+ (id)homeSpecificElectricityRatesWidgetNameWithHomeName:(id)name;
+ (id)homeSpecificElectricityUsageWidgetNameWithHomeName:(id)name;
+ (id)homeSpecificEnergyWidgetNameWithHomeName:(id)name;
- (NHOIntentLocalization)init;
@end

@implementation NHOIntentLocalization

+ (id)homeSpecificEnergyWidgetNameWithHomeName:(id)name
{
  v3 = sub_25B161B34();
  v5 = v4;
  _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD000000000000014, 0x800000025B1669B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39FE8, &qword_25B163A80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25B162FE0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_25B1224A8();
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  sub_25B161B44();

  v7 = sub_25B161B24();

  return v7;
}

+ (id)homeSpecificElectricityUsageWidgetNameWithHomeName:(id)name
{
  v3 = sub_25B161B34();
  v5 = v4;
  _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD000000000000020, 0x800000025B1669D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39FE8, &qword_25B163A80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25B162FE0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_25B1224A8();
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  sub_25B161B44();

  v7 = sub_25B161B24();

  return v7;
}

+ (id)homeSpecificElectricityRatesWidgetNameWithHomeName:(id)name
{
  v3 = sub_25B161B34();
  v5 = v4;
  _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD000000000000020, 0x800000025B166A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39FE8, &qword_25B163A80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25B162FE0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_25B1224A8();
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  sub_25B161B44();

  v7 = sub_25B161B24();

  return v7;
}

- (NHOIntentLocalization)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(NHOIntentLocalization *)&v3 init];
}

@end