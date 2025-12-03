@interface HKWorkout(HKMetadataDetail)
- (id)hk_additionalMetadataSectionsWithHealthStore:()HKMetadataDetail displayTypeController:unitController:subsampleDelegate:;
@end

@implementation HKWorkout(HKMetadataDetail)

- (id)hk_additionalMetadataSectionsWithHealthStore:()HKMetadataDetail displayTypeController:unitController:subsampleDelegate:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[HKDataMetadataWorkoutEventSection alloc] initWithSample:self];
  v12 = [[HKDataMetadataWorkoutActivitySection alloc] initWithSample:self displayTypeController:v9 unitController:v8 healthStore:v10];

  if (v11 | v12)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = v14;
    if (v12)
    {
      [v14 addObject:v12];
    }

    if (v11)
    {
      [v13 addObject:v11];
    }
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

@end