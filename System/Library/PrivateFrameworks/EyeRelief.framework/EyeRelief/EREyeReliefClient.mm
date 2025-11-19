@interface EREyeReliefClient
- (BOOL)isDistanceSamplingEnabledWithError:(id *)a3;
- (BOOL)toggleDistanceSampling:(id *)a3;
@end

@implementation EREyeReliefClient

- (BOOL)toggleDistanceSampling:(id *)a3
{
  v4 = +[EREyeReliefConnection sharedConnection];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__EREyeReliefClient_toggleDistanceSampling___block_invoke;
  v8[3] = &unk_278FD7CD8;
  v8[4] = &v15;
  v8[5] = &v9;
  [v4 toggleDistanceSampling:v8];
  if (a3)
  {
    v5 = v10[5];
    if (v5)
    {
      *a3 = v5;
    }
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6;
}

- (BOOL)isDistanceSamplingEnabledWithError:(id *)a3
{
  v4 = +[EREyeReliefConnection sharedConnection];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__EREyeReliefClient_isDistanceSamplingEnabledWithError___block_invoke;
  v8[3] = &unk_278FD7CD8;
  v8[4] = &v15;
  v8[5] = &v9;
  [v4 isDistanceSamplingEnabled:v8];
  if (a3)
  {
    v5 = v10[5];
    if (v5)
    {
      *a3 = v5;
    }
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6;
}

@end