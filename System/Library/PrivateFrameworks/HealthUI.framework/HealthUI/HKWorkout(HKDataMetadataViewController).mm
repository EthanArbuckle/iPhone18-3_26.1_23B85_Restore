@interface HKWorkout(HKDataMetadataViewController)
- (void)fetchSubSampleTypesWithHealthStore:()HKDataMetadataViewController completion:;
@end

@implementation HKWorkout(HKDataMetadataViewController)

- (void)fetchSubSampleTypesWithHealthStore:()HKDataMetadataViewController completion:
{
  v6 = a4;
  v7 = MEMORY[0x1E696C378];
  v8 = a3;
  v9 = [v7 predicateForObjectsFromWorkout:a1];
  v10 = objc_alloc(MEMORY[0x1E696C668]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__HKWorkout_HKDataMetadataViewController__fetchSubSampleTypesWithHealthStore_completion___block_invoke;
  v13[3] = &unk_1E81BAA00;
  v14 = v6;
  v11 = v6;
  v12 = [v10 initWithPredicate:v9 resultsHandler:v13];
  [v8 executeQuery:v12];
}

@end