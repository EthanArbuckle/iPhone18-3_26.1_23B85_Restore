@interface HKQuantitySample(HKMenstrualCycles)
+ (id)hkmc_quantitySampleWithBasalBodyTemperature:()HKMenstrualCycles date:;
+ (id)hkmc_quantitySampleWithWristTemperature:()HKMenstrualCycles startDate:endDate:;
@end

@implementation HKQuantitySample(HKMenstrualCycles)

+ (id)hkmc_quantitySampleWithBasalBodyTemperature:()HKMenstrualCycles date:
{
  v6 = MEMORY[0x277CCD800];
  v7 = MEMORY[0x277CCD830];
  v8 = a4;
  v9 = a3;
  v10 = [v7 _quantityTypeWithCode:90];
  hkmc_defaultMetadata = [self hkmc_defaultMetadata];
  v12 = [v6 quantitySampleWithType:v10 quantity:v9 startDate:v8 endDate:v8 metadata:hkmc_defaultMetadata];

  return v12;
}

+ (id)hkmc_quantitySampleWithWristTemperature:()HKMenstrualCycles startDate:endDate:
{
  v7 = MEMORY[0x277CCD800];
  v8 = MEMORY[0x277CCD830];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 _quantityTypeWithCode:256];
  v13 = [v7 quantitySampleWithType:v12 quantity:v11 startDate:v10 endDate:v9 metadata:0];

  return v13;
}

@end