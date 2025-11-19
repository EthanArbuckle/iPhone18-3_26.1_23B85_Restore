@interface CNUIContactPropertyRanker
+ (id)bestPropertyComparator;
@end

@implementation CNUIContactPropertyRanker

+ (id)bestPropertyComparator
{
  if (bestPropertyComparator_onceToken != -1)
  {
    +[CNUIContactPropertyRanker bestPropertyComparator];
  }

  v2 = _Block_copy(bestPropertyComparator_sIDSContactBestPropertyRanker);

  return v2;
}

void __51__CNUIContactPropertyRanker_bestPropertyComparator__block_invoke()
{
  v0 = bestPropertyComparator_sIDSContactBestPropertyRanker;
  bestPropertyComparator_sIDSContactBestPropertyRanker = &__block_literal_global_3_2;
}

uint64_t __51__CNUIContactPropertyRanker_bestPropertyComparator__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = __51__CNUIContactPropertyRanker_bestPropertyComparator__block_invoke_3(v4, a3);
  v6 = __51__CNUIContactPropertyRanker_bestPropertyComparator__block_invoke_3(v5, v4);

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __51__CNUIContactPropertyRanker_bestPropertyComparator__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 key];
  v4 = [v3 isEqual:*MEMORY[0x1E695C330]];

  if (_block_invoke_cn_once_token_1 != -1)
  {
    __51__CNUIContactPropertyRanker_bestPropertyComparator__block_invoke_3_cold_1();
  }

  if (v4)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = _block_invoke_cn_once_object_1;
  v7 = [v2 label];

  v8 = [v6 containsObject:v7];
  v9 = v5 + 0.5;
  if (!v8)
  {
    v9 = v5;
  }

  v10 = MEMORY[0x1E696AD98];

  return [v10 numberWithDouble:v9];
}

void __51__CNUIContactPropertyRanker_bestPropertyComparator__block_invoke_4()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695CB90];
  v4[0] = *MEMORY[0x1E695CBC0];
  v4[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = [v1 copy];
  v3 = _block_invoke_cn_once_object_1;
  _block_invoke_cn_once_object_1 = v2;
}

@end