@interface HKHealthStore
@end

@implementation HKHealthStore

void __80__HKHealthStore_HAExtensions__averageQuantityForType_unit_predicate_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a4;
  v6 = [a3 averageQuantity];
  v7 = v6;
  v8 = *(a1 + 40);
  if (v6)
  {
    v9 = MEMORY[0x1E696AD98];
    [v6 doubleValueForUnit:*(a1 + 32)];
    v10 = [v9 numberWithDouble:?];
    (*(v8 + 16))(v8, v10, v11);
  }

  else
  {
    (*(v8 + 16))(*(a1 + 40), 0, v11);
  }
}

void __58__HKHealthStore_HAExtensions__calculateBMIWithCompletion___block_invoke(void *a1)
{
  if (++*(*(a1[5] + 8) + 24) >= 2uLL)
  {
    v3 = *(*(a1[6] + 8) + 24);
    if (v3 <= 0.0 || (v4 = *(*(a1[7] + 8) + 24), v4 <= 0.0))
    {
      v5 = 0;
    }

    else
    {
      v5 = [MEMORY[0x1E696AD98] numberWithDouble:v4 / (v3 * v3)];
    }

    v6 = v5;
    (*(a1[4] + 16))();
  }
}

void __58__HKHealthStore_HAExtensions__calculateBMIWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__HKHealthStore_HAExtensions__calculateBMIWithCompletion___block_invoke_3;
  block[3] = &unk_1E7EEB370;
  v8 = v3;
  v6 = *(a1 + 32);
  v4 = v6;
  v9 = v6;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __58__HKHealthStore_HAExtensions__calculateBMIWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) quantity];
  v3 = [MEMORY[0x1E696C510] meterUnit];
  [v2 doubleValueForUnit:v3];
  *(*(*(a1 + 48) + 8) + 24) = v4;

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void __58__HKHealthStore_HAExtensions__calculateBMIWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__HKHealthStore_HAExtensions__calculateBMIWithCompletion___block_invoke_5;
  block[3] = &unk_1E7EEB370;
  v8 = v3;
  v6 = *(a1 + 32);
  v4 = v6;
  v9 = v6;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __58__HKHealthStore_HAExtensions__calculateBMIWithCompletion___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) quantity];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"kg"];
  [v2 doubleValueForUnit:v3];
  *(*(*(a1 + 48) + 8) + 24) = v4;

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

@end