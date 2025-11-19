@interface HKQuantitySample(SafeInit)
- (uint64_t)initWithType:()SafeInit startDate:endDate:quantity:error:;
@end

@implementation HKQuantitySample(SafeInit)

- (uint64_t)initWithType:()SafeInit startDate:endDate:quantity:error:
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E696C358] quantitySampleWithType:v10 quantity:v13 startDate:v11 endDate:v12];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

@end