@interface CDPPredictionResult
@end

@implementation CDPPredictionResult

uint64_t __38___CDPPredictionResult_rankedMembers___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 8);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v6];

  if (v8 | v7)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (v8)
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v10 = [v8 compare:v7];
  }

  return v10;
}

BOOL __54___CDPPredictionResult_rankedMembersPassingThreshold___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:a2];
  [v3 doubleValue];
  v5 = v4 >= *(a1 + 40);

  return v5;
}

@end