@interface HRERankConfidenceController
- (id)rankRecommendations:(id)a3;
- (id)rankRecommendationsFromSet:(id)a3;
- (void)calculateRankForRecommendations:(id)a3 fromTemplate:(id)a4;
@end

@implementation HRERankConfidenceController

- (id)rankRecommendationsFromSet:(id)a3
{
  v4 = [a3 allObjects];
  v5 = [(HRERankConfidenceController *)self rankRecommendations:v4];

  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_6];

  return v6;
}

uint64_t __58__HRERankConfidenceController_rankRecommendationsFromSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  [a3 rankingConfidenceScore];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 rankingConfidenceScore];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (id)rankRecommendations:(id)a3
{
  v4 = a3;
  v5 = [v4 na_dictionaryByBucketingObjectsUsingKeyGenerator:&__block_literal_global_3_6];
  v6 = [v5 allValues];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__HRERankConfidenceController_rankRecommendations___block_invoke_4;
  v8[3] = &unk_279776DC0;
  v8[4] = self;
  [v6 na_each:v8];

  return v4;
}

id __51__HRERankConfidenceController_rankRecommendations___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 sourceTemplate];
  v3 = [v2 identifier];
  v4 = v3;
  if (!v3)
  {
    if (_MergedGlobals_24 != -1)
    {
      dispatch_once(&_MergedGlobals_24, &__block_literal_global_9);
    }

    v4 = qword_27F5F9800;
  }

  v5 = v4;

  return v5;
}

void __51__HRERankConfidenceController_rankRecommendations___block_invoke_3()
{
  v0 = qword_27F5F9800;
  qword_27F5F9800 = @"none";
}

void __51__HRERankConfidenceController_rankRecommendations___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 firstObject];
  v5 = [v4 sourceTemplate];

  [*(a1 + 32) calculateRankForRecommendations:v3 fromTemplate:v5];
}

- (void)calculateRankForRecommendations:(id)a3 fromTemplate:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    [v6 starterRank];
    v9 = v8;
  }

  else
  {
    v9 = -1.0;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v48 objects:v53 count:16];
  obj = v10;
  if (v11)
  {
    v12 = v11;
    v36 = v7;
    v13 = *v49;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v48 + 1) + 8 * i);
        v16 = [v15 involvedObjects];
        v17 = [v15 changedInvolvedObjects];
        v18 = [v16 na_setByRemovingObjectsFromSet:v17];
        v19 = [v18 count];
        v20 = v19 / [v16 count];
        v21 = [v10 count];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __76__HRERankConfidenceController_calculateRankForRecommendations_fromTemplate___block_invoke_2;
        v42[3] = &unk_279776E08;
        v43 = v17;
        v44 = v15;
        v45 = &__block_literal_global_14_0;
        v46 = v20;
        v47 = v9;
        v22 = v17;
        v23 = __76__HRERankConfidenceController_calculateRankForRecommendations_fromTemplate___block_invoke_2(v42);
        [objc_opt_class() _limitRankToValidRange:v23];
        [v15 setRankingConfidenceScore:objc_msgSend(objc_opt_class() rankVersion:{"version"), v24}];
      }

      v12 = [v10 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v12);
    v25 = (v20 / v21 + -0.3) * 0.5;
    v7 = v36;
  }

  else
  {
    v25 = -0.15;
  }

  if (v7)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v26 = v10;
    v27 = [v26 countByEnumeratingWithState:&v38 objects:v52 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v39;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v39 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v38 + 1) + 8 * j);
          v32 = objc_opt_class();
          [v31 rankingConfidenceScore];
          [v32 _limitRankToValidRange:v25 + v33];
          [v31 setRankingConfidenceScore:objc_msgSend(objc_opt_class() rankVersion:{"version"), v34}];
        }

        v28 = [v26 countByEnumeratingWithState:&v38 objects:v52 count:16];
      }

      while (v28);
    }

    v10 = obj;
  }

  v35 = *MEMORY[0x277D85DE8];
}

double __76__HRERankConfidenceController_calculateRankForRecommendations_fromTemplate___block_invoke_2(uint64_t a1)
{
  v2 = -5.0;
  if ([*(a1 + 32) count] && objc_msgSend(*(a1 + 40), "containsMeaningfulChanges"))
  {
    v3 = (*(*(a1 + 48) + 16))(*(a1 + 56));
    v4 = [*(a1 + 40) numberOfEnabledRecommendationsForTemplate] * 0.2;
    v5 = *(a1 + 64);
    [*(a1 + 40) rankModifier];
    return v4 + v3 + v5 + v6;
  }

  return v2;
}

@end