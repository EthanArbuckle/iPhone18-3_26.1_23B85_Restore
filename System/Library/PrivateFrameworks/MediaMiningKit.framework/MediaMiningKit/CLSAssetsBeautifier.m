@interface CLSAssetsBeautifier
+ (id)beautifier;
- (BOOL)itemIsRequired:(id)a3;
- (CLSAssetsBeautifier)initWithSimilarityModelClass:(Class)a3;
- (id)_clustersBySplittingZeroDiameterClustersInClusters:(id)a3 targetingNumberOfClusters:(unint64_t)a4;
- (id)_naturalClusteringBestItemInItems:(id)a3;
- (id)_naturalClusteringWithItems:(id)a3 withSimilarity:(int64_t)a4 timestampSupport:(BOOL)a5 debugInfo:(id)a6;
- (id)bestItemInItems:(id)a3;
- (id)deduplicateItems:(id)a3 withDuration:(double)a4 andSimilarity:(int64_t)a5 debugInfo:(id)a6;
- (id)performWithItems:(id)a3 maximumNumberOfItemsToChoose:(unint64_t)a4 debugInfo:(id)a5 progressBlock:(id)a6;
- (id)requiredItemsInItems:(id)a3;
- (id)sampledItemsInSortedItems:(id)a3 maximumNumberOfItemsToChoose:(unint64_t)a4 debugInfo:(id)a5 progressBlock:(id)a6;
- (id)sortedItemsWithItems:(id)a3;
@end

@implementation CLSAssetsBeautifier

double __63__CLSAssetsBeautifier_Performance__timeClusteringDistanceBlock__block_invoke(uint64_t a1, void *a2, void *a3)
{
  [objc_msgSend(a2 "cls_universalDate")];
  if (result < 0.0)
  {
    return -result;
  }

  return result;
}

double __71__CLSAssetsBeautifier_Performance__hierarchicalClusteringDistanceBlock__block_invoke(uint64_t a1, void *a2, void *a3)
{
  [objc_msgSend(a2 "cls_universalDate")];
  if (result < 0.0)
  {
    return -result;
  }

  return result;
}

- (id)requiredItemsInItems:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  identifiersOfRequiredItems = self->_identifiersOfRequiredItems;
  if (identifiersOfRequiredItems && [(NSSet *)identifiersOfRequiredItems count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = self->_identifiersOfRequiredItems;
          v14 = [v12 clsIdentifier];
          LODWORD(v13) = [(NSSet *)v13 containsObject:v14];

          if (v13)
          {
            if (!v9)
            {
              v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v9 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v4 = v16;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)itemIsRequired:(id)a3
{
  identifiersOfRequiredItems = self->_identifiersOfRequiredItems;
  if (!identifiersOfRequiredItems)
  {
    return 0;
  }

  v4 = [a3 clsIdentifier];
  v5 = [(NSSet *)identifiersOfRequiredItems containsObject:v4];

  return v5;
}

uint64_t __40__CLSAssetsBeautifier_rankSimilarItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 clsIsAestheticallyPrettyGood];
  v7 = [v5 clsIsAestheticallyPrettyGood];
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_12;
  }

  [v4 clsAestheticScore];
  v9 = v8;
  [v5 clsAestheticScore];
  if (v9 > v10)
  {
LABEL_6:
    v11 = -1;
    goto LABEL_13;
  }

  if (v10 > v9)
  {
    goto LABEL_12;
  }

  v12 = [v4 clsIsInterestingSDOF];
  v13 = [v5 clsIsInterestingSDOF];
  if (v12 && !v13)
  {
    goto LABEL_6;
  }

  if (!(v12 & 1 | ((v13 & 1) == 0)) || ([v4 clsSharpnessScore], v15 = v14, objc_msgSend(v5, "clsSharpnessScore"), v16 > v15))
  {
LABEL_12:
    v11 = 1;
    goto LABEL_13;
  }

  if (v16 < v15)
  {
    goto LABEL_6;
  }

  v18 = [v4 cls_universalDate];
  v19 = [v5 cls_universalDate];
  v11 = [v18 compare:v19];

  if (!v11)
  {
    v20 = [v4 clsIdentifier];
    v21 = [v5 clsIdentifier];
    v11 = [v20 compare:v21];
  }

LABEL_13:

  return v11;
}

- (id)_naturalClusteringWithItems:(id)a3 withSimilarity:(int64_t)a4 timestampSupport:(BOOL)a5 debugInfo:(id)a6
{
  v7 = a5;
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = objc_opt_new();
  v31 = v10;
  v13 = [(CLSSimilarStacker *)self->_similarStacker stackSimilarItems:v10 withSimilarity:a4 timestampSupport:v7 progressBlock:0];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        if ([v18 count] < 2)
        {
          v20 = [v18 firstObject];
          v19 = v20;
          if (v20)
          {
            identifiersOfEligibleItems = self->_identifiersOfEligibleItems;
            if (!identifiersOfEligibleItems || ([v20 clsIdentifier], v22 = objc_claimAutoreleasedReturnValue(), v23 = -[NSSet containsObject:](identifiersOfEligibleItems, "containsObject:", v22), v22, v23))
            {
              [v12 addObject:v19];
              if (v11)
              {
                if ([(CLSAssetsBeautifier *)self itemIsRequired:v19])
                {
                  v24 = v11;
                  v25 = 4;
                  v26 = v19;
                  v27 = @"Item is required";
                }

                else
                {
                  v24 = v11;
                  v25 = 1;
                  v26 = v19;
                  v27 = @"Alone in Natural Clustering";
                }

                [v24 setState:v25 ofItem:v26 withReason:v27];
              }
            }
          }
        }

        else
        {
          v19 = [(CLSAssetsBeautifier *)self requiredItemsInItems:v18];
          if ([v19 count])
          {
            [v12 addObjectsFromArray:v19];
            if (v11)
            {
              [v11 dedupItems:v18 toRequiredItems:v19 withDedupingType:1];
            }
          }

          else
          {
            v28 = [(CLSAssetsBeautifier *)self _naturalClusteringBestItemInItems:v18];
            if (v28)
            {
              [v12 addObject:v28];
              [v11 dedupItems:v18 toItem:v28 withDedupingType:1];
            }

            else if (v11)
            {
              v29 = [MEMORY[0x277CBEB98] setWithArray:v18];
              [v11 setState:2 ofItems:v29 withReason:@"Failed to find a best item in Natural Clustering"];
            }
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v15);
  }

  return v12;
}

- (id)_naturalClusteringBestItemInItems:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CLSAssetsBeautifier *)self requiredItemsInItems:v4];
  if ([v5 count])
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "_naturalClusteringBestItemInItems should not be called on items containing required items", buf, 2u);
    }
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (!v8)
  {
    v11 = 0;
    v32 = v7;
    goto LABEL_37;
  }

  v9 = v8;
  v35 = v5;
  v10 = 0;
  v11 = 0;
  v12 = *v37;
  v13 = *MEMORY[0x277D3C758];
  v14 = -1.79769313e308;
  v15 = 1.79769313e308;
  v16 = -1.79769313e308;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v37 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v18 = *(*(&v36 + 1) + 8 * i);
      identifiersOfEligibleItems = self->_identifiersOfEligibleItems;
      if (identifiersOfEligibleItems)
      {
        v20 = [*(*(&v36 + 1) + 8 * i) clsIdentifier];
        v21 = [(NSSet *)identifiersOfEligibleItems containsObject:v20];

        if (!v21)
        {
          continue;
        }
      }

      [v18 clsContentScore];
      v23 = v22;
      if (v15 >= v22)
      {
        v15 = v22;
      }

      if ([v18 isFavorite])
      {
        v24 = v13;
      }

      else
      {
        v24 = v23;
      }

      v25 = [v18 clsIsAestheticallyPrettyGood];
      if (v24 <= v16)
      {
        if (v24 != v16 || (v25 & 1) == 0)
        {
          continue;
        }
      }

      else if (v25)
      {
        [v18 clsAestheticScore];
        v27 = v26;
        v10 = 1;
LABEL_28:
        v30 = v18;

        v14 = v27;
        v16 = v24;
        v11 = v30;
        continue;
      }

      if (v24 == v16)
      {
        v10 = [v11 clsIsAestheticallyPrettyGood] ^ 1;
      }

      else
      {
        v10 = 0;
      }

      [v18 clsAestheticScore];
      v27 = v28;
      if (v24 > v16 || v28 > v14)
      {
        goto LABEL_28;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
  }

  while (v9);

  if (v11)
  {
    v5 = v35;
    if ((([v11 isFavorite] | v10) & 1) == 0)
    {
      [v11 clsContentScore];
      if (v31 == v15)
      {
        v32 = [(CLSAssetsBeautifier *)self rankSimilarItems:v7];
        if ([v32 count])
        {
          v33 = [v32 firstObject];

          v11 = v33;
        }

LABEL_37:
      }
    }
  }

  else
  {
    v5 = v35;
  }

  return v11;
}

- (id)bestItemInItems:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 count];
  if (!v5)
  {
    goto LABEL_60;
  }

  v6 = [(CLSAssetsBeautifier *)self requiredItemsInItems:v4];
  if ([v6 count])
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "bestItemInItems should not be called on items containing required items", buf, 2u);
    }
  }

  if (v5 == 1)
  {
    v8 = [v4 firstObject];
    v5 = v8;
    identifiersOfEligibleItems = self->_identifiersOfEligibleItems;
    if (identifiersOfEligibleItems && ([v8 clsIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSSet containsObject:](identifiersOfEligibleItems, "containsObject:", v10), v10, !v11) || (objc_msgSend(v5, "clsContentScore"), v12 < *MEMORY[0x277D3C768]))
    {
      v44 = v6;
      v45 = v4;
      v13 = 0;
      goto LABEL_58;
    }

    goto LABEL_59;
  }

  v44 = v6;
  v45 = v4;
  v5 = [(CLSAssetsBeautifier *)self sortedItemsWithItems:v4];
  v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v15 = [v5 count];
  v52 = *MEMORY[0x277D3C758];
  v53 = *MEMORY[0x277D3C768];
  v47 = v15 >> 1;
  v48 = v15;
  v49 = v5;
  v46 = vcvtd_n_f64_u64(v15, 1uLL);
  do
  {
    if ([v14 count] >= v15)
    {
      goto LABEL_55;
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v16 = v5;
    v17 = [v16 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (!v17)
    {

LABEL_55:
      v13 = 0;
      break;
    }

    v18 = v17;
    v13 = 0;
    v19 = *v55;
    v20 = -1.79769313e308;
    v21 = 1.79769313e308;
    v22 = -1.79769313e308;
    v23 = -1.79769313e308;
    v50 = -1.79769313e308;
    v51 = 1.79769313e308;
    do
    {
      v24 = 0;
      do
      {
        if (*v55 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v25 = *(*(&v54 + 1) + 8 * v24);
        if (([v14 containsObject:v25] & 1) == 0)
        {
          [v25 clsContentScore];
          v27 = v26;
          v28 = self->_identifiersOfEligibleItems;
          if (v28 && ([v25 clsIdentifier], v29 = objc_claimAutoreleasedReturnValue(), v30 = -[NSSet containsObject:](v28, "containsObject:", v29), v29, !v30) || v27 < v53)
          {
            [v14 addObject:v25];
            goto LABEL_35;
          }

          if (v21 >= v27)
          {
            v21 = v27;
          }

          if ([v25 isFavorite])
          {
            v31 = v27 + v52;
          }

          else
          {
            v31 = v27;
          }

          [v25 clsAestheticScore];
          v33 = v32;
          [v25 clsFaceScore];
          v35 = v34;
          if (v31 > v23)
          {
            v51 = 1.79769313e308;
LABEL_34:
            v36 = v25;

            v20 = v35;
            v22 = v33;
            v23 = v31;
            v50 = v27;
            v13 = v36;
            goto LABEL_35;
          }

          if (v31 != v23)
          {
            goto LABEL_35;
          }

          if (v34 > v20)
          {
            goto LABEL_33;
          }

          if (v34 != v20)
          {
            goto LABEL_35;
          }

          if (v33 > v22)
          {
LABEL_33:
            v51 = v33 - v22;
            goto LABEL_34;
          }

          v37 = v51;
          if (v51 >= v22 - v33)
          {
            v37 = v22 - v33;
          }

          v51 = v37;
        }

LABEL_35:
        ++v24;
      }

      while (v18 != v24);
      v38 = [v16 countByEnumeratingWithState:&v54 objects:v59 count:16];
      v18 = v38;
    }

    while (v38);

    if (!v13)
    {
      v5 = v49;
      break;
    }

    v5 = v49;
    if (v50 != v21)
    {
      break;
    }

    v15 = v48;
    if (v48 < 2)
    {
      break;
    }

    if ([v13 isFavorite])
    {
      break;
    }

    if ([v13 clsIsAestheticallyPrettyGood])
    {
      break;
    }

    v39 = v51;
    if (v51 > 0.0)
    {
      break;
    }

    v40 = v47;
    do
    {
      v41 = v13;
      v13 = [v16 objectAtIndexedSubscript:{v40, v39}];

      if (![v14 containsObject:v13])
      {
        break;
      }

      v39 = v40;
      v42 = -v40;
      if (v46 <= v40)
      {
        v42 = ~v40;
      }

      v40 = v42 + v48;
    }

    while (__CFADD__(v42, v48));
  }

  while (!v13);

LABEL_58:
  v5 = v13;
  v6 = v44;
  v4 = v45;
LABEL_59:

LABEL_60:

  return v5;
}

- (id)sortedItemsWithItems:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC98];
  v4 = a3;
  v5 = [v3 sortDescriptorWithKey:@"cls_universalDate" ascending:1];
  v10[0] = v5;
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"clsIdentifier" ascending:1];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  v8 = [v4 sortedArrayUsingDescriptors:v7];

  return v8;
}

- (id)_clustersBySplittingZeroDiameterClustersInClusters:(id)a3 targetingNumberOfClusters:(unint64_t)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4 - [v5 count];
  if (v6 <= 0)
  {
    v38 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v47;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v47 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v46 + 1) + 8 * i);
          v15 = [v14 objects];
          if ([v15 count] <= 1)
          {
            v16 = v7;
          }

          else
          {
            v16 = v8;
          }

          [v16 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v11);
    }

    if ([v8 count])
    {
      v40 = v9;
      v41 = v8;
      v42 = v7;
      v17 = 0x277D3A000;
      v18 = v6;
      do
      {
        v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"objects.@count" ascending:{0, v40}];
        v50 = v19;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
        [v41 sortUsingDescriptors:v20];

        v44 = [v41 firstObject];
        v21 = [v44 objects];
        v22 = [v21 count];
        v23 = v22;
        v45 = v22;
        if ([v41 count] >= 2)
        {
          v24 = [v41 objectAtIndexedSubscript:1];
          v25 = [v24 objects];
          v26 = [v25 count];

          v22 = v45;
          v27 = v45 / v26;
          v17 = 0x277D3A000uLL;
          v23 = v27 + 1;
        }

        v43 = v18 + 1;
        if (v23 >= v18 + 1)
        {
          v28 = v18 + 1;
        }

        else
        {
          v28 = v23;
        }

        [v41 removeObjectAtIndex:0];
        if (v23)
        {
          v29 = 0;
          if (v28 <= 1)
          {
            v30 = 1;
          }

          else
          {
            v30 = v28;
          }

          v31 = v22;
          do
          {
            v32 = v31 / v28;
            v33 = v31 / v28 - v29;
            v34 = *(v17 + 3128);
            v35 = [v21 subarrayWithRange:?];
            v36 = [v34 clusterWithObjects:v35];

            v17 = 0x277D3A000;
            if (v33 <= 1)
            {
              v37 = v42;
            }

            else
            {
              v37 = v41;
            }

            [v37 addObject:v36];

            v31 += v45;
            v29 = v32;
            --v30;
          }

          while (v30);
        }

        v18 = v43 - v28;
      }

      while ((v43 - v28) > 0);
      v8 = v41;
      v7 = v42;
      v9 = [v42 arrayByAddingObjectsFromArray:v41];
    }

    v38 = v9;
  }

  return v38;
}

- (id)deduplicateItems:(id)a3 withDuration:(double)a4 andSimilarity:(int64_t)a5 debugInfo:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  [v10 setAgent:@"Beautifier"];
  [v10 setStage:@"Deduplicate"];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v12 = objc_alloc(MEMORY[0x277D3AC30]);
  v13 = [(CLSAssetsBeautifier *)self timeClusteringDistanceBlock];
  v14 = [v12 initWithDistanceBlock:v13];

  [v14 setMaximumDistance:a4];
  [v14 setMinimumNumberOfObjects:1];
  v32 = v14;
  v33 = v9;
  v15 = [v14 performWithDataset:v9 progressBlock:0];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v36;
    v19 = *MEMORY[0x277D3C778];
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v21 = [*(*(&v35 + 1) + 8 * i) objects];
        if ([v21 count] < 2)
        {
          v23 = [v21 firstObject];
          if ([(CLSAssetsBeautifier *)self itemIsRequired:v23])
          {
            v24 = [MEMORY[0x277CBEB98] setWithArray:v21];
            v25 = v10;
            v26 = 4;
            v27 = v24;
            v28 = @"Item is required";
          }

          else
          {
            [v23 clsContentScore];
            v30 = v29;
            v24 = [MEMORY[0x277CBEB98] setWithArray:v21];
            v25 = v10;
            if (v30 <= v19)
            {
              v26 = 2;
              v27 = v24;
              v28 = @"Asset is Junk";
            }

            else
            {
              v26 = 1;
              v27 = v24;
              v28 = @"Unique asset";
            }
          }

          [v25 setState:v26 ofItems:v27 withReason:v28];
          goto LABEL_16;
        }

        v22 = [(CLSAssetsBeautifier *)self _naturalClusteringWithItems:v21 withSimilarity:a5 timestampSupport:0 debugInfo:v10];
        v23 = v22;
        if (v22 && [v22 count])
        {
          v23 = v23;
          v24 = v21;
          v21 = v23;
LABEL_16:
        }

        [v11 addObjectsFromArray:v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v17);
  }

  return v11;
}

- (id)performWithItems:(id)a3 maximumNumberOfItemsToChoose:(unint64_t)a4 debugInfo:(id)a5 progressBlock:(id)a6
{
  v8 = a4;
  v101 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v81 = a6;
  v12 = _Block_copy(v81);
  v13 = v12;
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 0;
  if (v12)
  {
    v91 = 0;
    (*(v12 + 2))(v12, &v91, 0.0);
    v14 = *(v93 + 24) | v91;
    *(v93 + 24) = v14;
    if (v14)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v98 = 317;
        _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
      }

      v15 = MEMORY[0x277CBEBF8];
      goto LABEL_95;
    }
  }

  v16 = self->_loggingConnection;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v56 = [v10 count];
    *buf = 67109376;
    v98 = v8;
    v99 = 1024;
    v100 = v56;
    _os_log_debug_impl(&dword_22F907000, v16, OS_LOG_TYPE_DEBUG, "Beautifier: Beautifying %d items out of %d", buf, 0xEu);
  }

  v82 = self;
  v83 = v13;

  [v11 setAgent:@"Beautifier"];
  v17 = self;
  [(CLSAssetsBeautifier *)self sortedItemsWithItems:v10];
  v77 = v18 = v83;
  v76 = [CLSAssetsBeautifier sampledItemsInSortedItems:"sampledItemsInSortedItems:maximumNumberOfItemsToChoose:debugInfo:progressBlock:" maximumNumberOfItemsToChoose:? debugInfo:? progressBlock:?];
  v80 = [(CLSAssetsBeautifier *)self sortedItemsWithItems:?];
  if (v83)
  {
    v91 = 0;
    (v83)[2](v83, &v91, 0.5);
    v19 = *(v93 + 24) | v91;
    *(v93 + 24) = v19;
    if (v19)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v98 = 334;
        _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
      }

      v15 = MEMORY[0x277CBEBF8];
      goto LABEL_94;
    }
  }

  v20 = v80;
  v78 = v20;
  if (self->_enableFinalNaturalClustering && [v20 count] >= 2)
  {
    [v11 setStage:@"Final Natural Clustering"];
    [v11 beginTentativeSection];
    v21 = [(CLSAssetsBeautifier *)self _naturalClusteringWithItems:v78 withSimilarity:0 timestampSupport:0 debugInfo:v11];
    v22 = [v21 count];
    [v11 endTentativeSectionWithSuccess:v22 != 0];
    if (v22)
    {
      v23 = self->_loggingConnection;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v65 = [v78 count];
        v66 = [v21 count];
        *buf = 67109376;
        v98 = v65;
        v99 = 1024;
        v100 = v66;
        _os_log_debug_impl(&dword_22F907000, v23, OS_LOG_TYPE_DEBUG, "Final Natural Clustering filtered from %d to %d items", buf, 0xEu);
      }

      v24 = v21;
      v78 = v24;
    }

    v17 = self;
    v18 = v83;
  }

  if (v18)
  {
    v91 = 0;
    (v18)[2](v18, &v91, 0.5);
    v25 = *(v93 + 24) | v91;
    *(v93 + 24) = v25;
    if (v25)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_91;
      }

      *buf = 67109120;
      v98 = 354;
      v26 = MEMORY[0x277D86220];
      goto LABEL_90;
    }
  }

  if (!v17->_enableFinalTimeClustering || [v78 count] < 2)
  {
LABEL_84:
    v59 = v17->_loggingConnection;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      v63 = [v78 count];
      v64 = [v10 count];
      *buf = 67109376;
      v98 = v63;
      v99 = 1024;
      v100 = v64;
      _os_log_debug_impl(&dword_22F907000, v59, OS_LOG_TYPE_DEBUG, "Beautifier: Beautified %d items out of %d", buf, 0xEu);
    }

    if (!v18 || (v91 = 0, (v83)[2](v83, &v91, 1.0), v60 = *(v93 + 24) | v91, *(v93 + 24) = v60, (v60 & 1) == 0))
    {
      v61 = v78;
      v15 = v61;
      goto LABEL_93;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_91;
    }

    *buf = 67109120;
    v98 = 452;
    v26 = MEMORY[0x277D86220];
LABEL_90:
    _os_log_impl(&dword_22F907000, v26, OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
    goto LABEL_91;
  }

  [v11 setStage:@"Final Time Clustering"];
  v27 = objc_alloc(MEMORY[0x277D3AC30]);
  v28 = [(CLSAssetsBeautifier *)v17 timeClusteringDistanceBlock];
  v71 = [v27 initWithDistanceBlock:v28];

  [v71 setMaximumDistance:3.0];
  v29 = self;
  [v71 setMinimumNumberOfObjects:1];
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = __93__CLSAssetsBeautifier_performWithItems_maximumNumberOfItemsToChoose_debugInfo_progressBlock___block_invoke;
  v88[3] = &unk_2788A8AA8;
  v74 = v83;
  v89 = v74;
  v90 = &v92;
  v79 = [v71 performWithDataset:v78 progressBlock:v88];
  if (*(v93 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v98 = 367;
      _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
    }

    v75 = 0;
    goto LABEL_82;
  }

  v73 = [MEMORY[0x277CBEB18] array];
  v30 = 0;
  v31 = *MEMORY[0x277D3C758];
  v69 = v11;
  v70 = v10;
  while (1)
  {
    v32 = [v79 count];
    v75 = v30 >= v32;
    if (v30 >= v32)
    {
      break;
    }

    v33 = objc_autoreleasePoolPush();
    v29 = v82;
    if (!v83 || (v91 = 0, (*(v74 + 2))(v74, &v91, 0.5), v34 = *(v93 + 24) | v91, *(v93 + 24) = v34, (v34 & 1) == 0))
    {
      v36 = [v79 objectAtIndexedSubscript:v30];
      v37 = [v36 objects];
      if (([v37 count] - 2) > 2)
      {
        [v73 addObjectsFromArray:v37];
        v35 = 0;
        goto LABEL_75;
      }

      v38 = [(CLSAssetsBeautifier *)v82 requiredItemsInItems:v37];
      v72 = v38;
      if ([v38 count])
      {
        [v73 addObjectsFromArray:v38];
        if (v11)
        {
          [v11 dedupItems:v37 toRequiredItems:v38 withDedupingType:5];
        }

        v35 = 4;
LABEL_74:

LABEL_75:
        v29 = v82;
        goto LABEL_76;
      }

      v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v40 = v37;
      v41 = [v40 countByEnumeratingWithState:&v84 objects:v96 count:16];
      if (v41)
      {
        v42 = *v85;
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v85 != v42)
            {
              objc_enumerationMutation(v40);
            }

            v44 = *(*(&v84 + 1) + 8 * i);
            if (([v44 clsIsInterestingSDOF] & 1) != 0 || (objc_msgSend(v44, "clsIsInterestingHDR") & 1) != 0 || objc_msgSend(v44, "clsIsInterestingLivePhoto"))
            {
              [v39 addObject:v44];
            }
          }

          v41 = [v40 countByEnumeratingWithState:&v84 objects:v96 count:16];
        }

        while (v41);
      }

      v11 = v69;
      v10 = v70;
      v45 = [(CLSAssetsBeautifier *)v82 bestItemInItems:v40];
      if (!v45)
      {
        goto LABEL_70;
      }

      if (![v39 count] || (objc_msgSend(v45, "clsIsInterestingSDOF") & 1) != 0 || (objc_msgSend(v45, "clsIsInterestingHDR") & 1) != 0 || (objc_msgSend(v45, "clsIsInterestingLivePhoto") & 1) != 0)
      {
LABEL_66:
        v54 = 5;
        goto LABEL_67;
      }

      v46 = [(CLSAssetsBeautifier *)v82 bestItemInItems:v39];
      [v45 clsContentScore];
      v48 = v47;
      if ([v45 isFavorite])
      {
        v49 = v48 + v31;
      }

      else
      {
        v49 = v48;
      }

      [v46 clsContentScore];
      v51 = v50;
      v52 = [v46 isFavorite];
      v53 = v31 + v51;
      if (!v52)
      {
        v53 = v51;
      }

      if (v53 < v49)
      {

        goto LABEL_66;
      }

      if (v46)
      {
        v45 = v46;
        v54 = 4;
LABEL_67:
        [v73 addObject:v45];
        [v69 dedupItems:v40 toItem:v45 withDedupingType:v54];
      }

      else
      {
LABEL_70:
        if (v69)
        {
          v55 = [MEMORY[0x277CBEB98] setWithArray:v40];
          [v69 setState:2 ofItems:v55 withReason:@"No best item was found"];
        }

        v45 = 0;
      }

      v35 = 0;
      goto LABEL_74;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v98 = 372;
      _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
    }

    v35 = 1;
LABEL_76:
    objc_autoreleasePoolPop(v33);
    if ((v35 | 4) != 4)
    {
      goto LABEL_81;
    }

    ++v30;
  }

  v57 = v29->_loggingConnection;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
  {
    v67 = [v78 count];
    v68 = [v73 count];
    *buf = 67109376;
    v98 = v67;
    v99 = 1024;
    v100 = v68;
    _os_log_debug_impl(&dword_22F907000, v57, OS_LOG_TYPE_DEBUG, "Final Time Clustering filtered from %d to %d items", buf, 0xEu);
  }

  v58 = v73;
  v78 = v58;
LABEL_81:

LABEL_82:
  if (v75)
  {
    v17 = v82;
    v18 = v83;
    goto LABEL_84;
  }

LABEL_91:
  v15 = MEMORY[0x277CBEBF8];
  v61 = v78;
LABEL_93:

LABEL_94:
  v13 = v83;
LABEL_95:
  _Block_object_dispose(&v92, 8);

  return v15;
}

uint64_t __93__CLSAssetsBeautifier_performWithItems_maximumNumberOfItemsToChoose_debugInfo_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  result = *(a1 + 32);
  if (result)
  {
    v6 = 0;
    result = (*(result + 16))(result, &v6, a3 * 0.0 + 0.5);
    *(*(*(a1 + 40) + 8) + 24) |= v6;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a2 = 1;
    }
  }

  return result;
}

- (id)sampledItemsInSortedItems:(id)a3 maximumNumberOfItemsToChoose:(unint64_t)a4 debugInfo:(id)a5 progressBlock:(id)a6
{
  v123 = *MEMORY[0x277D85DE8];
  v85 = a3;
  v89 = a5;
  v9 = a6;
  v115 = 0;
  v116 = &v115;
  v117 = 0x2020000000;
  v118 = 0;
  v88 = _Block_copy(v9);
  v82 = v9;
  if (v88)
  {
    v114 = 0;
    v88[2](v88, &v114, 0.0);
    v10 = *(v116 + 24) | v114;
    *(v116 + 24) = v10;
    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *v122 = 127;
        _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
      }

      v11 = MEMORY[0x277CBEBF8];
      goto LABEL_117;
    }
  }

  v12 = self->_loggingConnection;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v52 = [v85 count];
    *buf = 67109376;
    *v122 = a4;
    *&v122[4] = 1024;
    *&v122[6] = v52;
    _os_log_debug_impl(&dword_22F907000, v12, OS_LOG_TYPE_DEBUG, "Beautifier: Sampling %d items out of %d", buf, 0xEu);
  }

  [v89 setStage:@"Sampling"];
  v84 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a4];
  context = objc_autoreleasePoolPush();
  if (self->_enableStatisticalSampling)
  {
    if (self->_usesKMeans)
    {
      v13 = [objc_alloc(MEMORY[0x277D3AC98]) initWithNumericValueKeypaths:&unk_28449B2F8];
      [v13 setK:a4];
      v86 = v13;
      if (self->_discardNonEligibleClustersInSampling)
      {
        v14 = v85;
        obj = 0;
        v78 = MEMORY[0x277D85DD0];
        v15 = *MEMORY[0x277D3C768];
        while (1)
        {
          v111[0] = v78;
          v111[1] = 3221225472;
          v111[2] = __102__CLSAssetsBeautifier_sampledItemsInSortedItems_maximumNumberOfItemsToChoose_debugInfo_progressBlock___block_invoke;
          v111[3] = &unk_2788A8AA8;
          v112 = v88;
          v113 = &v115;
          v79 = v14;
          v16 = [v86 performWithDataset:v14 progressBlock:v111];

          if (*(v116 + 24) == 1)
          {
            break;
          }

          v81 = [v16 count];
          loggingConnection = self->_loggingConnection;
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            *v122 = v81;
            _os_log_debug_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_DEBUG, "Beautifier: got %d clusters", buf, 8u);
          }

          v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          obj = v16;
          v18 = [obj countByEnumeratingWithState:&v107 objects:v120 count:16];
          if (v18)
          {
            v96 = 0;
            v93 = *v108;
            do
            {
              v94 = v18;
              for (i = 0; i != v94; ++i)
              {
                if (*v108 != v93)
                {
                  objc_enumerationMutation(obj);
                }

                v20 = *(*(&v107 + 1) + 8 * i);
                v103 = 0u;
                v104 = 0u;
                v105 = 0u;
                v106 = 0u;
                v21 = [v20 objects];
                v22 = [v21 countByEnumeratingWithState:&v103 objects:v119 count:16];
                if (v22)
                {
                  v23 = *v104;
                  while (2)
                  {
                    for (j = 0; j != v22; ++j)
                    {
                      if (*v104 != v23)
                      {
                        objc_enumerationMutation(v21);
                      }

                      v25 = *(*(&v103 + 1) + 8 * j);
                      identifiersOfEligibleItems = self->_identifiersOfEligibleItems;
                      if (identifiersOfEligibleItems)
                      {
                        v27 = [*(*(&v103 + 1) + 8 * j) clsIdentifier];
                        v28 = [(NSSet *)identifiersOfEligibleItems containsObject:v27];

                        if (!v28)
                        {
                          continue;
                        }
                      }

                      [v25 clsContentScore];
                      if (v29 >= v15)
                      {

                        v31 = [v20 objects];
                        [v91 addObjectsFromArray:v31];
                        ++v96;
                        goto LABEL_32;
                      }
                    }

                    v22 = [v21 countByEnumeratingWithState:&v103 objects:v119 count:16];
                    if (v22)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v30 = MEMORY[0x277CBEB98];
                v31 = [v20 objects];
                v32 = [v30 setWithArray:v31];
                [v89 setState:2 ofItems:v32 withReason:@"Non-eligible cluster"];

LABEL_32:
              }

              v18 = [obj countByEnumeratingWithState:&v107 objects:v120 count:16];
            }

            while (v18);
          }

          else
          {
            v96 = 0;
          }

          if (v81 < a4 || (v33 = [v91 count], v81 <= v96) || v33 <= v96)
          {

            v95 = @"kMeans";
            v50 = v79;
            goto LABEL_65;
          }

          v34 = self->_loggingConnection;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v35 = [v91 count];
            *buf = 67109376;
            *v122 = v81 - v96;
            *&v122[4] = 1024;
            *&v122[6] = v35;
            _os_log_debug_impl(&dword_22F907000, v34, OS_LOG_TYPE_DEBUG, "Beautifier: found %d non-eligible clusters, iterating with %d items", buf, 0xEu);
          }

          v14 = [(CLSAssetsBeautifier *)self sortedItemsWithItems:v91];
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *v122 = 156;
          _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
        }

        v49 = v14;
        goto LABEL_71;
      }

      v100[0] = MEMORY[0x277D85DD0];
      v100[1] = 3221225472;
      v100[2] = __102__CLSAssetsBeautifier_sampledItemsInSortedItems_maximumNumberOfItemsToChoose_debugInfo_progressBlock___block_invoke_41;
      v100[3] = &unk_2788A8AA8;
      v101 = v88;
      v102 = &v115;
      v16 = [v13 performWithDataset:v85 progressBlock:v100];
      if (*(v116 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *v122 = 194;
          _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
        }

        v49 = v101;
LABEL_71:

        v41 = 0;
        v42 = @"kMeans";
LABEL_72:
        v95 = v42;

        goto LABEL_73;
      }

      v51 = self->_loggingConnection;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        v77 = [v16 count];
        *buf = 67109120;
        *v122 = v77;
        _os_log_debug_impl(&dword_22F907000, v51, OS_LOG_TYPE_DEBUG, "Beautifier: got %d clusters", buf, 8u);
      }

      v95 = @"kMeans";
      v50 = v101;
    }

    else
    {
      v43 = objc_alloc(MEMORY[0x277D3AC88]);
      v44 = [(CLSAssetsBeautifier *)self hierarchicalClusteringDistanceBlock];
      v86 = [v43 initWithDistanceBlock:v44];

      [v86 setUsesSortedDataRelativeDistanceCache:1];
      [v86 setLinkage:0];
      [v86 setK:a4];
      v45 = [v85 lastObject];
      v46 = [v45 cls_universalDate];
      v47 = [v85 firstObject];
      v48 = [v47 cls_universalDate];
      [v46 timeIntervalSinceDate:v48];
      [v86 setThreshold:?];

      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = __102__CLSAssetsBeautifier_sampledItemsInSortedItems_maximumNumberOfItemsToChoose_debugInfo_progressBlock___block_invoke_46;
      v97[3] = &unk_2788A8AA8;
      v98 = v88;
      v99 = &v115;
      v16 = [v86 performWithDataset:v85 progressBlock:v97];
      if (*(v116 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *v122 = 212;
          _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
        }

        v41 = 0;
        v42 = @"HAC";
        goto LABEL_72;
      }

      v95 = @"HAC";
      v50 = v98;
    }

    obj = v16;
LABEL_65:

    if ((a4 - [obj count]) >= 1)
    {
      v16 = [(CLSAssetsBeautifier *)self _clustersBySplittingZeroDiameterClustersInClusters:obj targetingNumberOfClusters:?];
      v41 = 1;

LABEL_73:
      obj = v16;
      goto LABEL_74;
    }

    v41 = 1;
  }

  else
  {
    v86 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a4];
    v36 = [v85 count];
    if (a4)
    {
      v37 = vcvtad_u64_f64(v36 / a4);
      while (1)
      {
        if (v88)
        {
          v114 = 0;
          v88[2](v88, &v114, 0.5);
          v38 = *(v116 + 24) | v114;
          *(v116 + 24) = v38;
          if (v38)
          {
            break;
          }
        }

        v39 = [v85 subarrayWithRange:{0, v37}];
        v40 = [MEMORY[0x277D3AC38] clusterWithObjects:v39];
        [v86 addObject:v40];
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *v122 = 230;
        _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
      }

      v16 = 0;
      v41 = 0;
      v42 = @"Bucketing";
      goto LABEL_72;
    }

    v41 = 1;
    v95 = @"Bucketing";
    obj = v86;
  }

LABEL_74:
  objc_autoreleasePoolPop(context);
  if (!v41)
  {
LABEL_112:
    v11 = MEMORY[0x277CBEBF8];
    goto LABEL_116;
  }

  [v89 setClusters:obj withReason:v95];
  v53 = 0;
  v54 = *MEMORY[0x277D3C758];
  v55 = *MEMORY[0x277D3C760];
  while (v53 < [obj count])
  {
    v56 = objc_autoreleasePoolPush();
    v57 = [obj objectAtIndexedSubscript:v53];
    if (!v88 || (v114 = 0, v88[2](v88, &v114, 0.5), v58 = *(v116 + 24) | v114, *(v116 + 24) = v58, (v58 & 1) == 0))
    {
      v60 = [v57 objects];
      v61 = [(CLSAssetsBeautifier *)self requiredItemsInItems:v60];
      if ([v61 count])
      {
        [v84 addObjectsFromArray:v61];
        if (v89)
        {
          v62 = [MEMORY[0x277CBEB98] setWithArray:v61];
          [v89 requireItems:v62 inCluster:v57];
          v59 = 12;
          goto LABEL_103;
        }

        v59 = 12;
LABEL_105:

        goto LABEL_106;
      }

      v62 = [(CLSAssetsBeautifier *)self bestItemInItems:v60];
      v63 = [v62 isFavorite];
      v64 = v54;
      if ((v63 & 1) == 0)
      {
        [v62 clsContentScore];
      }

      if (v64 < v55 && self->_enableIntermediateNaturalClustering && [v60 count] >= 2)
      {
        [v89 beginTentativeSection];
        v65 = [(CLSAssetsBeautifier *)self _naturalClusteringWithItems:v60 withSimilarity:0 timestampSupport:1 debugInfo:v89];
        v92 = [v65 count];
        [v89 endTentativeSectionWithSuccess:v92 != 0];
        if (v92)
        {
          v87 = [(CLSAssetsBeautifier *)self bestItemInItems:v65];

          if (v89)
          {
            v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"Intermediate Natural Clustering, chose %lu items out of %lu", objc_msgSend(v65, "count"), objc_msgSend(v60, "count")];

            v67 = self->_loggingConnection;
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v122 = v66;
              _os_log_debug_impl(&dword_22F907000, v67, OS_LOG_TYPE_DEBUG, "Beautifier: %@", buf, 0xCu);
            }

            v68 = [MEMORY[0x277CBEB98] setWithArray:v65];
            [v89 chooseItems:v68 inCluster:v57 withReason:v66];

            v95 = [MEMORY[0x277CCACA8] stringWithFormat:@"Best Item, chose %d item out of %lu", v87 != 0, objc_msgSend(v65, "count")];

            v69 = self->_loggingConnection;
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v122 = v95;
              _os_log_debug_impl(&dword_22F907000, v69, OS_LOG_TYPE_DEBUG, "Beautifier: %@", buf, 0xCu);
            }

            [v89 chooseItem:v87 inItems:v65 withReason:v95];
          }
        }

        else
        {
          v87 = v62;
        }

        v59 = v92 == 0;

        v62 = v87;
        if (!v87)
        {
LABEL_99:
          if (v59)
          {
            v70 = [MEMORY[0x277CCACA8] stringWithFormat:@"Best Item, chose %d items out of %lu", v62 != 0, objc_msgSend(v60, "count")];

            v71 = v53;
            v72 = self->_loggingConnection;
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v122 = v70;
              _os_log_debug_impl(&dword_22F907000, v72, OS_LOG_TYPE_DEBUG, "Beautifier: %@", buf, 0xCu);
            }

            [v89 chooseItem:v62 inCluster:v57 withReason:v70];
            v53 = v71;
            v59 = 0;
            v95 = v70;
          }

LABEL_103:

          goto LABEL_105;
        }
      }

      else
      {
        v59 = 1;
        if (!v62)
        {
          goto LABEL_99;
        }
      }

      [v84 addObject:v62];
      goto LABEL_99;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v122 = 245;
      _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
    }

    v59 = 1;
LABEL_106:

    objc_autoreleasePoolPop(v56);
    if (v59 != 12 && v59)
    {
      goto LABEL_112;
    }

    ++v53;
  }

  v73 = self->_loggingConnection;
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
  {
    v75 = [v84 count];
    v76 = [v85 count];
    *buf = 67109376;
    *v122 = v75;
    *&v122[4] = 1024;
    *&v122[6] = v76;
    _os_log_debug_impl(&dword_22F907000, v73, OS_LOG_TYPE_DEBUG, "Beautifier: Sampled %d items out of %d", buf, 0xEu);
  }

  v11 = v84;
LABEL_116:

LABEL_117:
  _Block_object_dispose(&v115, 8);

  return v11;
}

uint64_t __102__CLSAssetsBeautifier_sampledItemsInSortedItems_maximumNumberOfItemsToChoose_debugInfo_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  result = *(a1 + 32);
  if (result)
  {
    v6 = 0;
    result = (*(result + 16))(result, &v6, a3 * 0.0 + 0.5);
    *(*(*(a1 + 40) + 8) + 24) |= v6;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a2 = 1;
    }
  }

  return result;
}

uint64_t __102__CLSAssetsBeautifier_sampledItemsInSortedItems_maximumNumberOfItemsToChoose_debugInfo_progressBlock___block_invoke_41(uint64_t a1, _BYTE *a2, double a3)
{
  result = *(a1 + 32);
  if (result)
  {
    v6 = 0;
    result = (*(result + 16))(result, &v6, a3 * 0.0 + 0.5);
    *(*(*(a1 + 40) + 8) + 24) |= v6;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a2 = 1;
    }
  }

  return result;
}

uint64_t __102__CLSAssetsBeautifier_sampledItemsInSortedItems_maximumNumberOfItemsToChoose_debugInfo_progressBlock___block_invoke_46(uint64_t a1, _BYTE *a2, double a3)
{
  result = *(a1 + 32);
  if (result)
  {
    v6 = 0;
    result = (*(result + 16))(result, &v6, a3 * 0.0 + 0.5);
    *(*(*(a1 + 40) + 8) + 24) |= v6;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a2 = 1;
    }
  }

  return result;
}

- (CLSAssetsBeautifier)initWithSimilarityModelClass:(Class)a3
{
  v9.receiver = self;
  v9.super_class = CLSAssetsBeautifier;
  v4 = [(CLSAssetsBeautifier *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4[8] = 1;
    *(v4 + 9) = 0;
    v4[24] = 1;
    v6 = [[CLSSimilarStacker alloc] initWithSimilarityModelClass:a3];
    similarStacker = v5->_similarStacker;
    v5->_similarStacker = v6;

    objc_storeStrong(&v5->_loggingConnection, MEMORY[0x277D86220]);
  }

  return v5;
}

+ (id)beautifier
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

@end