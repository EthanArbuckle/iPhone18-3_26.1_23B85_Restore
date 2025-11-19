@interface CDPModelTuning
@end

@implementation CDPModelTuning

uint64_t __43___CDPModelTuning__testModelWithThreshold___block_invoke_2(uint64_t a1, float a2)
{
  v2 = vcvtms_s32_f32((a2 - *(a1 + 40)) / *(a1 + 44));
  if (*(a1 + 32) - 1 >= v2)
  {
    return v2;
  }

  else
  {
    return *(a1 + 32) - 1;
  }
}

void __43___CDPModelTuning__testModelWithThreshold___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v22 = 0;
  v23 = 0;
  [*(*(a1 + 32) + 40) getEmail:&v23 emailLength:&v22 atIndex:a2];
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v7 = v22;
  v6 = v23;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43___CDPModelTuning__testModelWithThreshold___block_invoke_4;
  v12[3] = &unk_1E73685A0;
  v8 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v15 = a2;
  v16 = v22;
  v9 = *(a1 + 56);
  v17 = v23;
  v18 = v9;
  v10 = v8;
  v19 = *(a1 + 64);
  v21 = *(a1 + 88);
  v20 = *(a1 + 80);
  v11 = *(a1 + 48);
  v13 = v10;
  v14 = v11;
  [v5 _enumerateSubsetsOfSet:v6 setLength:v7 withSize:2 callback:v12];
}

void __43___CDPModelTuning__testModelWithThreshold___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(*(a1 + 32) + 40) _newPredictionResultWithSeed:a2 seedLength:a3 realSeedLength:a3 maxTrainingEmailID:(*(a1 + 56) - 1)];
  v7 = *(a1 + 64) - a3;
  v8 = *(a1 + 32);
  v9 = [objc_opt_class() _newSetDifference:*(a1 + 72) setLength:*(a1 + 64) subset:a2 subsetLength:a3];
  v10 = malloc_type_calloc(*(a1 + 80), 4uLL, 0x100004052888210uLL);
  if (v7 >= 1)
  {
    v11 = v9;
    do
    {
      v12 = *v11++;
      v13 = (*(*(a1 + 40) + 16))(v6[4 * v12 + 1]);
      v10[v13] = v10[v13] + 1.0;
    }

    while (v11 < &v9[v7]);
  }

  v14 = *(a1 + 32);
  [objc_opt_class() _cumulativeSumOfArray:v10 size:*(a1 + 80) reverse:1];
  v15 = *(a1 + 32);
  [objc_opt_class() _addArray:v10 size:*(a1 + 80) inArray:*(a1 + 88)];
  free(v10);
  free(v9);
  v16 = malloc_type_calloc(*(a1 + 80), 4uLL, 0x100004052888210uLL);
  v17 = *(a1 + 96);
  if (v17)
  {
    v18 = 0;
    v19 = v6 + 1;
    do
    {
      if (*v19 >= 0.0)
      {
        if (*v19 >= *(a1 + 112))
        {
          v20 = (*(*(a1 + 40) + 16))();
          v16[v20] = v16[v20] + 1.0;
          v17 = *(a1 + 96);
        }

        else
        {
          *v16 = *v16 + 1.0;
        }
      }

      ++v18;
      v19 += 4;
    }

    while (v17 > v18);
  }

  v21 = *(a1 + 32);
  [objc_opt_class() _cumulativeSumOfArray:v16 size:*(a1 + 80) reverse:1];
  v22 = *(a1 + 32);
  [objc_opt_class() _addArray:v16 size:*(a1 + 80) inArray:*(a1 + 104)];
  free(v16);
  free(v6);
  *(*(*(a1 + 48) + 8) + 24) += v7;
}

@end