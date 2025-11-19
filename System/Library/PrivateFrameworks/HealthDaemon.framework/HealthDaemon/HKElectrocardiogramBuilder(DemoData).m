@interface HKElectrocardiogramBuilder(DemoData)
+ (id)builderFromDemoDataFile:()DemoData startDate:;
@end

@implementation HKElectrocardiogramBuilder(DemoData)

+ (id)builderFromDemoDataFile:()DemoData startDate:
{
  v5 = MEMORY[0x277CCD370];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithDataFileName:v7];

  v9 = [v8 newBuilderWithStartDate:v6];

  return v9;
}

@end