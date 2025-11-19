@interface CLSSimilarStacker
+ (id)distanceBlockWithMetric:(unint64_t)a3 sceneprintGetterBlock:(id)a4;
- (CLSSimilarStacker)initWithSimilarityModelClass:(Class)a3;
- (double)distanceBetweenItem:(id)a3 andItem:(id)a4;
- (double)distanceThresholdForSimilarity:(int64_t)a3 similarityModel:(id)a4;
- (double)distanceThresholdForSimilarity:(int64_t)a3 withSimilarityModelVersion:(unint64_t)a4;
- (id)_similarityModelForVersion:(unint64_t)a3;
- (id)adaptiveStackSimilarItems:(id)a3 progressBlock:(id)a4;
- (id)stackSimilarItems:(id)a3 withSimilarity:(int64_t)a4 timestampSupport:(BOOL)a5 progressBlock:(id)a6;
- (void)overrideDistanceThreshold:(double)a3 forSimilarity:(int64_t)a4;
@end

@implementation CLSSimilarStacker

- (id)_similarityModelForVersion:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v6 = [(NSMutableDictionary *)self->_similarityModelByVersion objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = [objc_alloc(objc_opt_class()) initWithSceneAnalysisVersion:a3];
    [(NSMutableDictionary *)self->_similarityModelByVersion setObject:v6 forKeyedSubscript:v5];
  }

  return v6;
}

- (void)overrideDistanceThreshold:(double)a3 forSimilarity:(int64_t)a4
{
  if (a4 <= 4)
  {
    *(&self->_distanceThresholdForIdenticalSimilarity + a4) = a3;
  }
}

- (double)distanceThresholdForSimilarity:(int64_t)a3 withSimilarityModelVersion:(unint64_t)a4
{
  v6 = [(CLSSimilarStacker *)self _similarityModelForVersion:a4];
  [(CLSSimilarStacker *)self distanceThresholdForSimilarity:a3 similarityModel:v6];
  v8 = v7;

  return v8;
}

- (double)distanceThresholdForSimilarity:(int64_t)a3 similarityModel:(id)a4
{
  v6 = a4;
  v7 = v6;
  distanceThresholdForIdenticalSimilarityWithPeople = 0.0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        distanceThresholdForIdenticalSimilarityWithPeople = self->_distanceThresholdForIdenticalSimilarityWithPeople;
        if (distanceThresholdForIdenticalSimilarityWithPeople < 0.0)
        {
          [v6 identicalSimilarityWithPeopleDistanceThreshold];
          goto LABEL_17;
        }
      }
    }

    else
    {
      distanceThresholdForIdenticalSimilarityWithPeople = self->_distanceThresholdForIdenticalSimilarity;
      if (distanceThresholdForIdenticalSimilarityWithPeople < 0.0)
      {
        [v6 identicalSimilarityDistanceThreshold];
        goto LABEL_17;
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        distanceThresholdForIdenticalSimilarityWithPeople = self->_distanceThresholdForSemanticalSimilarity;
        if (distanceThresholdForIdenticalSimilarityWithPeople < 0.0)
        {
          [v6 semanticalSimilarityDistanceThreshold];
          goto LABEL_17;
        }

        break;
      case 3:
        distanceThresholdForIdenticalSimilarityWithPeople = self->_distanceThresholdForSemanticalSimilarityWithPeople;
        if (distanceThresholdForIdenticalSimilarityWithPeople < 0.0)
        {
          [v6 semanticalSimilarityWithPeopleDistanceThreshold];
          goto LABEL_17;
        }

        break;
      case 4:
        distanceThresholdForIdenticalSimilarityWithPeople = self->_distanceThresholdForSemanticalSimilarityWithPersons;
        if (distanceThresholdForIdenticalSimilarityWithPeople < 0.0)
        {
          [v6 semanticalSimilarityWithPersonDistanceThreshold];
LABEL_17:
          distanceThresholdForIdenticalSimilarityWithPeople = v9;
        }

        break;
    }
  }

  return distanceThresholdForIdenticalSimilarityWithPeople;
}

- (double)distanceBetweenItem:(id)a3 andItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = -[CLSSimilarStacker _similarityModelForVersion:](self, "_similarityModelForVersion:", [v7 clsSimilarityModelVersion]);
  v9 = [objc_opt_class() distanceBlockWithMetric:objc_msgSend(v8 sceneprintGetterBlock:{"metric"), self->_sceneprintGetterBlock}];
  v10 = (v9)[2](v9, v7, v6);

  return v10;
}

- (id)adaptiveStackSimilarItems:(id)a3 progressBlock:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  v9 = [v6 firstObject];
  v10 = [v9 clsSimilarityModelVersion];

  v11 = [(CLSSimilarStacker *)self _similarityModelForVersion:v10];
  v33 = [objc_opt_class() distanceBlockWithMetric:objc_msgSend(v11 sceneprintGetterBlock:{"metric"), self->_sceneprintGetterBlock}];
  v12 = [objc_alloc(MEMORY[0x277D3AC30]) initWithDistanceBlock:v33];
  [v12 setMinimumNumberOfObjects:1];
  [(CLSSimilarStacker *)self distanceThresholdForSimilarity:2 similarityModel:v11];
  v14 = v13;
  v34 = v11;
  [(CLSSimilarStacker *)self distanceThresholdForSimilarity:0 similarityModel:v11];
  v16 = v15;
  v17 = 0;
  v18 = v8;
  v19 = v14 - v15;
  v20 = 0.0;
  v21 = 1.0;
  do
  {
    v22 = v17;
    v23 = (v20 + v21) * 0.5;
    [v12 setMaximumDistance:v16 + v23 * v19];
    v17 = [v12 performWithDataset:v6 progressBlock:v7];

    if ([v17 count] <= (v23 * v18) / 3)
    {
      v21 = (v20 + v21) * 0.5;
    }

    else
    {
      v20 = (v20 + v21) * 0.5;
      if ([v17 count] <= (v23 * v18) / 3 + 1)
      {
        break;
      }
    }
  }

  while (v21 - v20 > 0.0000001);
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v25 = v17;
  v26 = [v25 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v36;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v35 + 1) + 8 * i) objects];
        [v24 addObject:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v27);
  }

  v31 = [(CLSSimilarStacker *)self similarGroupComparator];
  [v24 sortWithOptions:16 usingComparator:v31];

  return v24;
}

- (id)stackSimilarItems:(id)a3 withSimilarity:(int64_t)a4 timestampSupport:(BOOL)a5 progressBlock:(id)a6
{
  v41[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  v11 = [v9 count];
  if (v11)
  {
    if (v11 == 1)
    {
      v41[0] = v9;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
    }

    else
    {
      v27 = a4;
      v28 = self;
      v29 = v10;
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v30 = v9;
      v14 = v9;
      v15 = [v14 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v37;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v37 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v36 + 1) + 8 * i);
            v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "clsSimilarityModelVersion", v27, v28, v29)}];
            v21 = [v13 objectForKeyedSubscript:v20];
            if (!v21)
            {
              v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v13 setObject:v21 forKeyedSubscript:v20];
            }

            [v21 addObject:v19];
          }

          v16 = [v14 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v16);
      }

      if ([v13 count] >= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[CLSSimilarStacker] Items with mixed sceneprint versions, deduping may not be optimal", buf, 2u);
      }

      v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __85__CLSSimilarStacker_stackSimilarItems_withSimilarity_timestampSupport_progressBlock___block_invoke;
      v31[3] = &unk_2788A79E8;
      v31[4] = v28;
      v34 = v27;
      v10 = v29;
      v33 = v29;
      v23 = v22;
      v32 = v23;
      [v13 enumerateKeysAndObjectsUsingBlock:v31];
      v24 = [(CLSSimilarStacker *)v28 similarGroupComparator];
      [v23 sortWithOptions:16 usingComparator:v24];

      v25 = v32;
      v12 = v23;

      v9 = v30;
    }
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

void __85__CLSSimilarStacker_stackSimilarItems_withSimilarity_timestampSupport_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [*(a1 + 32) _similarityModelForVersion:{objc_msgSend(a2, "unsignedIntegerValue")}];
  v7 = [objc_opt_class() distanceBlockWithMetric:objc_msgSend(v6 sceneprintGetterBlock:{"metric"), *(*(a1 + 32) + 64)}];
  v8 = [objc_alloc(MEMORY[0x277D3AC30]) initWithDistanceBlock:v7];
  [v8 setMinimumNumberOfObjects:1];
  [*(a1 + 32) distanceThresholdForSimilarity:*(a1 + 56) similarityModel:v6];
  [v8 setMaximumDistance:?];
  v16 = v5;
  v9 = [v8 performWithDataset:v5 progressBlock:*(a1 + 48)];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(a1 + 40);
        v15 = [*(*(&v17 + 1) + 8 * v13) objects];
        [v14 addObject:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

uint64_t __43__CLSSimilarStacker_similarGroupComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 firstObject];
  v6 = [v4 firstObject];

  v7 = [v5 cls_universalDate];
  v8 = [v6 cls_universalDate];
  v9 = [v7 compare:v8];

  if (!v9)
  {
    v10 = [v5 clsIdentifier];
    v11 = [v6 clsIdentifier];
    v9 = [v10 compare:v11];
  }

  return v9;
}

- (CLSSimilarStacker)initWithSimilarityModelClass:(Class)a3
{
  v14.receiver = self;
  v14.super_class = CLSSimilarStacker;
  v4 = [(CLSSimilarStacker *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_similarityModelClass = a3;
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    similarityModelByVersion = v5->_similarityModelByVersion;
    v5->_similarityModelByVersion = v6;

    __asm { FMOV            V0.2D, #-1.0 }

    *&v5->_distanceThresholdForIdenticalSimilarity = _Q0;
    *&v5->_distanceThresholdForSemanticalSimilarity = _Q0;
    v5->_distanceThresholdForSemanticalSimilarityWithPersons = -1.0;
  }

  return v5;
}

+ (id)distanceBlockWithMetric:(unint64_t)a3 sceneprintGetterBlock:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 == 1)
  {
    v7 = v11;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v8 = __67__CLSSimilarStacker_distanceBlockWithMetric_sceneprintGetterBlock___block_invoke_2;
    goto LABEL_5;
  }

  if (!a3)
  {
    v7 = v12;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v8 = __67__CLSSimilarStacker_distanceBlockWithMetric_sceneprintGetterBlock___block_invoke;
LABEL_5:
    v7[2] = v8;
    v7[3] = &unk_2788A7A10;
    v7[4] = v5;
    v9 = _Block_copy(v7);

    goto LABEL_7;
  }

  v9 = &__block_literal_global_34;
LABEL_7:

  return v9;
}

double __67__CLSSimilarStacker_distanceBlockWithMetric_sceneprintGetterBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }

  else
  {
    [v5 clsSceneprint];
  }
  v8 = ;
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v6);
  }

  else
  {
    [v6 clsSceneprint];
  }
  v10 = ;
  v11 = v10;
  if (v8)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 1.79769313e308;
  }

  else
  {
    v13 = CLSEuclidianDistanceBetweenSceneprints(v8, v10);
  }

  return v13;
}

double __67__CLSSimilarStacker_distanceBlockWithMetric_sceneprintGetterBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }

  else
  {
    [v5 clsSceneprint];
  }
  v8 = ;
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v6);
  }

  else
  {
    [v6 clsSceneprint];
  }
  v10 = ;
  v11 = v10;
  if (v8)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || (v13 = [v8 requestRevision], v13 != objc_msgSend(v11, "requestRevision")) || (v14 = (CLSCosineSimilarityBetweenSceneprints(v8, v11) + 1.0) * 0.5, v14 <= 0.0))
  {
    v15 = 1.79769313e308;
  }

  else
  {
    v15 = (1.0 - v14) / v14;
  }

  return v15;
}

@end