@interface HKSample(HKHRTestingSupport)
+ (id)hkhr_bloodPressureSampleForDate:()HKHRTestingSupport timeZone:;
+ (id)hkhr_hrvSampleForDate:()HKHRTestingSupport timeZone:;
@end

@implementation HKSample(HKHRTestingSupport)

+ (id)hkhr_bloodPressureSampleForDate:()HKHRTestingSupport timeZone:
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v6 || ![(__CFString *)v6 length])
  {

    v7 = @"America/Los_Angeles";
  }

  v8 = [MEMORY[0x277CBEBB0] timeZoneWithName:v7];
  v26 = *MEMORY[0x277CCC530];
  name = [v8 name];
  v27[0] = name;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];

  v11 = MEMORY[0x277CCD7E8];
  v12 = [MEMORY[0x277CCDAB0] unitFromString:@"mmHg"];
  v13 = [v11 quantityWithUnit:v12 doubleValue:100.0];

  v14 = MEMORY[0x277CCD800];
  v15 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC980]];
  v16 = [v14 quantitySampleWithType:v15 quantity:v13 startDate:v5 endDate:v5 metadata:v10];

  v17 = MEMORY[0x277CCD800];
  v18 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC978]];
  v19 = [v17 quantitySampleWithType:v18 quantity:v13 startDate:v5 endDate:v5 metadata:v10];

  v20 = MEMORY[0x277CCD240];
  v21 = [MEMORY[0x277CCD720] correlationTypeForIdentifier:*MEMORY[0x277CCBBA8]];
  v22 = [MEMORY[0x277CBEB98] setWithObjects:{v16, v19, 0}];
  v23 = [v20 correlationWithType:v21 startDate:v5 endDate:v5 objects:v22 metadata:v10];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)hkhr_hrvSampleForDate:()HKHRTestingSupport timeZone:
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v6 || ![(__CFString *)v6 length])
  {

    v7 = @"America/Los_Angeles";
  }

  v8 = [MEMORY[0x277CBEBB0] timeZoneWithName:v7];
  v19 = *MEMORY[0x277CCC530];
  name = [v8 name];
  v20[0] = name;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  v11 = MEMORY[0x277CCD7E8];
  v12 = [MEMORY[0x277CCDAB0] unitFromString:@"ms"];
  v13 = [v11 quantityWithUnit:v12 doubleValue:50.0];

  v14 = MEMORY[0x277CCD800];
  v15 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBA0]];
  v16 = [v14 quantitySampleWithType:v15 quantity:v13 startDate:v5 endDate:v5 metadata:v10];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end