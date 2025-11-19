@interface HKHealthStore(HAExtensions)
- (void)averageQuantityForType:()HAExtensions unit:predicate:completion:;
- (void)calculateBMIWithCompletion:()HAExtensions;
- (void)mostRecentCategorySampleOfType:()HAExtensions predicate:completion:;
- (void)mostRecentQuantitySampleOfType:()HAExtensions predicate:completion:;
- (void)mostRecentSampleOfType:()HAExtensions predicate:completion:;
@end

@implementation HKHealthStore(HAExtensions)

- (void)mostRecentSampleOfType:()HAExtensions predicate:completion:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() queryForMostRecentSampleOfType:v10 predicate:v9 completion:v8];

  [a1 executeQuery:v11];
}

- (void)mostRecentQuantitySampleOfType:()HAExtensions predicate:completion:
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__HKHealthStore_HAExtensions__mostRecentQuantitySampleOfType_predicate_completion___block_invoke;
  v10[3] = &unk_1E7EEB2F8;
  v11 = v8;
  v9 = v8;
  [a1 mostRecentSampleOfType:a3 predicate:a4 completion:v10];
}

- (void)mostRecentCategorySampleOfType:()HAExtensions predicate:completion:
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__HKHealthStore_HAExtensions__mostRecentCategorySampleOfType_predicate_completion___block_invoke;
  v10[3] = &unk_1E7EEB2F8;
  v11 = v8;
  v9 = v8;
  [a1 mostRecentSampleOfType:a3 predicate:a4 completion:v10];
}

- (void)averageQuantityForType:()HAExtensions unit:predicate:completion:
{
  v10 = a4;
  v11 = a6;
  v12 = MEMORY[0x1E696C4E0];
  v13 = a5;
  v14 = a3;
  v15 = [v12 alloc];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __80__HKHealthStore_HAExtensions__averageQuantityForType_unit_predicate_completion___block_invoke;
  v22 = &unk_1E7EEB320;
  v23 = v10;
  v24 = v11;
  v16 = v10;
  v17 = v11;
  v18 = [v15 initWithQuantityType:v14 quantitySamplePredicate:v13 options:2 completionHandler:&v19];

  [a1 executeQuery:{v18, v19, v20, v21, v22}];
}

- (void)calculateBMIWithCompletion:()HAExtensions
{
  v4 = a3;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__HKHealthStore_HAExtensions__calculateBMIWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7EEB348;
  v19 = v22;
  v20 = v24;
  v21 = v23;
  v5 = v4;
  v18 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BD40]];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__HKHealthStore_HAExtensions__calculateBMIWithCompletion___block_invoke_2;
  v14[3] = &unk_1E7EEB398;
  v16 = v24;
  v8 = v6;
  v15 = v8;
  [a1 mostRecentQuantitySampleOfType:v7 predicate:0 completion:v14];

  v9 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BC98]];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__HKHealthStore_HAExtensions__calculateBMIWithCompletion___block_invoke_4;
  v11[3] = &unk_1E7EEB398;
  v13 = v23;
  v10 = v8;
  v12 = v10;
  [a1 mostRecentQuantitySampleOfType:v9 predicate:0 completion:v11];

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v24, 8);
}

@end