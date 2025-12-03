@interface CLSAssetsBeautifier
+ (id)beautifier;
- (BOOL)itemIsRequired:(id)required;
- (CLSAssetsBeautifier)initWithSimilarityModelClass:(Class)class;
- (id)_clustersBySplittingZeroDiameterClustersInClusters:(id)clusters targetingNumberOfClusters:(unint64_t)ofClusters;
- (id)_naturalClusteringBestItemInItems:(id)items;
- (id)_naturalClusteringWithItems:(id)items withSimilarity:(int64_t)similarity timestampSupport:(BOOL)support debugInfo:(id)info;
- (id)bestItemInItems:(id)items;
- (id)deduplicateItems:(id)items withDuration:(double)duration andSimilarity:(int64_t)similarity debugInfo:(id)info;
- (id)performWithItems:(id)items maximumNumberOfItemsToChoose:(unint64_t)choose debugInfo:(id)info progressBlock:(id)block;
- (id)requiredItemsInItems:(id)items;
- (id)sampledItemsInSortedItems:(id)items maximumNumberOfItemsToChoose:(unint64_t)choose debugInfo:(id)info progressBlock:(id)block;
- (id)sortedItemsWithItems:(id)items;
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

- (id)requiredItemsInItems:(id)items
{
  v22 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  identifiersOfRequiredItems = self->_identifiersOfRequiredItems;
  if (identifiersOfRequiredItems && [(NSSet *)identifiersOfRequiredItems count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = itemsCopy;
    v6 = itemsCopy;
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
          clsIdentifier = [v12 clsIdentifier];
          LODWORD(v13) = [(NSSet *)v13 containsObject:clsIdentifier];

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

    itemsCopy = v16;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)itemIsRequired:(id)required
{
  identifiersOfRequiredItems = self->_identifiersOfRequiredItems;
  if (!identifiersOfRequiredItems)
  {
    return 0;
  }

  clsIdentifier = [required clsIdentifier];
  v5 = [(NSSet *)identifiersOfRequiredItems containsObject:clsIdentifier];

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

- (id)_naturalClusteringWithItems:(id)items withSimilarity:(int64_t)similarity timestampSupport:(BOOL)support debugInfo:(id)info
{
  supportCopy = support;
  v37 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  infoCopy = info;
  v12 = objc_opt_new();
  v31 = itemsCopy;
  v13 = [(CLSSimilarStacker *)self->_similarStacker stackSimilarItems:itemsCopy withSimilarity:similarity timestampSupport:supportCopy progressBlock:0];
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
          firstObject = [v18 firstObject];
          v19 = firstObject;
          if (firstObject)
          {
            identifiersOfEligibleItems = self->_identifiersOfEligibleItems;
            if (!identifiersOfEligibleItems || ([firstObject clsIdentifier], v22 = objc_claimAutoreleasedReturnValue(), v23 = -[NSSet containsObject:](identifiersOfEligibleItems, "containsObject:", v22), v22, v23))
            {
              [v12 addObject:v19];
              if (infoCopy)
              {
                if ([(CLSAssetsBeautifier *)self itemIsRequired:v19])
                {
                  v24 = infoCopy;
                  v25 = 4;
                  v26 = v19;
                  v27 = @"Item is required";
                }

                else
                {
                  v24 = infoCopy;
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
            if (infoCopy)
            {
              [infoCopy dedupItems:v18 toRequiredItems:v19 withDedupingType:1];
            }
          }

          else
          {
            v28 = [(CLSAssetsBeautifier *)self _naturalClusteringBestItemInItems:v18];
            if (v28)
            {
              [v12 addObject:v28];
              [infoCopy dedupItems:v18 toItem:v28 withDedupingType:1];
            }

            else if (infoCopy)
            {
              v29 = [MEMORY[0x277CBEB98] setWithArray:v18];
              [infoCopy setState:2 ofItems:v29 withReason:@"Failed to find a best item in Natural Clustering"];
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

- (id)_naturalClusteringBestItemInItems:(id)items
{
  v42 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = [(CLSAssetsBeautifier *)self requiredItemsInItems:itemsCopy];
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
  v7 = itemsCopy;
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
        clsIdentifier = [*(*(&v36 + 1) + 8 * i) clsIdentifier];
        v21 = [(NSSet *)identifiersOfEligibleItems containsObject:clsIdentifier];

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

      clsIsAestheticallyPrettyGood = [v18 clsIsAestheticallyPrettyGood];
      if (v24 <= v16)
      {
        if (v24 != v16 || (clsIsAestheticallyPrettyGood & 1) == 0)
        {
          continue;
        }
      }

      else if (clsIsAestheticallyPrettyGood)
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
          firstObject = [v32 firstObject];

          v11 = firstObject;
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

- (id)bestItemInItems:(id)items
{
  v60 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = [itemsCopy count];
  if (!v5)
  {
    goto LABEL_60;
  }

  v6 = [(CLSAssetsBeautifier *)self requiredItemsInItems:itemsCopy];
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
    firstObject = [itemsCopy firstObject];
    v5 = firstObject;
    identifiersOfEligibleItems = self->_identifiersOfEligibleItems;
    if (identifiersOfEligibleItems && ([firstObject clsIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSSet containsObject:](identifiersOfEligibleItems, "containsObject:", v10), v10, !v11) || (objc_msgSend(v5, "clsContentScore"), v12 < *MEMORY[0x277D3C768]))
    {
      v44 = v6;
      v45 = itemsCopy;
      v13 = 0;
      goto LABEL_58;
    }

    goto LABEL_59;
  }

  v44 = v6;
  v45 = itemsCopy;
  v5 = [(CLSAssetsBeautifier *)self sortedItemsWithItems:itemsCopy];
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
  itemsCopy = v45;
LABEL_59:

LABEL_60:

  return v5;
}

- (id)sortedItemsWithItems:(id)items
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC98];
  itemsCopy = items;
  v5 = [v3 sortDescriptorWithKey:@"cls_universalDate" ascending:1];
  v10[0] = v5;
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"clsIdentifier" ascending:1];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  v8 = [itemsCopy sortedArrayUsingDescriptors:v7];

  return v8;
}

- (id)_clustersBySplittingZeroDiameterClustersInClusters:(id)clusters targetingNumberOfClusters:(unint64_t)ofClusters
{
  v52 = *MEMORY[0x277D85DE8];
  clustersCopy = clusters;
  v6 = ofClusters - [clustersCopy count];
  if (v6 <= 0)
  {
    v38 = clustersCopy;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v9 = clustersCopy;
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
          objects = [v14 objects];
          if ([objects count] <= 1)
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

        firstObject = [v41 firstObject];
        objects2 = [firstObject objects];
        v22 = [objects2 count];
        v23 = v22;
        v45 = v22;
        if ([v41 count] >= 2)
        {
          v24 = [v41 objectAtIndexedSubscript:1];
          objects3 = [v24 objects];
          v26 = [objects3 count];

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
            v35 = [objects2 subarrayWithRange:?];
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

- (id)deduplicateItems:(id)items withDuration:(double)duration andSimilarity:(int64_t)similarity debugInfo:(id)info
{
  v40 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  infoCopy = info;
  [infoCopy setAgent:@"Beautifier"];
  [infoCopy setStage:@"Deduplicate"];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v12 = objc_alloc(MEMORY[0x277D3AC30]);
  timeClusteringDistanceBlock = [(CLSAssetsBeautifier *)self timeClusteringDistanceBlock];
  v14 = [v12 initWithDistanceBlock:timeClusteringDistanceBlock];

  [v14 setMaximumDistance:duration];
  [v14 setMinimumNumberOfObjects:1];
  v32 = v14;
  v33 = itemsCopy;
  v15 = [v14 performWithDataset:itemsCopy progressBlock:0];
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

        objects = [*(*(&v35 + 1) + 8 * i) objects];
        if ([objects count] < 2)
        {
          firstObject = [objects firstObject];
          if ([(CLSAssetsBeautifier *)self itemIsRequired:firstObject])
          {
            v24 = [MEMORY[0x277CBEB98] setWithArray:objects];
            v25 = infoCopy;
            v26 = 4;
            v27 = v24;
            v28 = @"Item is required";
          }

          else
          {
            [firstObject clsContentScore];
            v30 = v29;
            v24 = [MEMORY[0x277CBEB98] setWithArray:objects];
            v25 = infoCopy;
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

        v22 = [(CLSAssetsBeautifier *)self _naturalClusteringWithItems:objects withSimilarity:similarity timestampSupport:0 debugInfo:infoCopy];
        firstObject = v22;
        if (v22 && [v22 count])
        {
          firstObject = firstObject;
          v24 = objects;
          objects = firstObject;
LABEL_16:
        }

        [v11 addObjectsFromArray:objects];
      }

      v17 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v17);
  }

  return v11;
}

- (id)performWithItems:(id)items maximumNumberOfItemsToChoose:(unint64_t)choose debugInfo:(id)info progressBlock:(id)block
{
  chooseCopy = choose;
  v101 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  infoCopy = info;
  blockCopy = block;
  v12 = _Block_copy(blockCopy);
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
    v56 = [itemsCopy count];
    *buf = 67109376;
    v98 = chooseCopy;
    v99 = 1024;
    v100 = v56;
    _os_log_debug_impl(&dword_22F907000, v16, OS_LOG_TYPE_DEBUG, "Beautifier: Beautifying %d items out of %d", buf, 0xEu);
  }

  selfCopy = self;
  v83 = v13;

  [infoCopy setAgent:@"Beautifier"];
  selfCopy3 = self;
  [(CLSAssetsBeautifier *)self sortedItemsWithItems:itemsCopy];
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
    [infoCopy setStage:@"Final Natural Clustering"];
    [infoCopy beginTentativeSection];
    v21 = [(CLSAssetsBeautifier *)self _naturalClusteringWithItems:v78 withSimilarity:0 timestampSupport:0 debugInfo:infoCopy];
    v22 = [v21 count];
    [infoCopy endTentativeSectionWithSuccess:v22 != 0];
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

    selfCopy3 = self;
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

  if (!selfCopy3->_enableFinalTimeClustering || [v78 count] < 2)
  {
LABEL_84:
    v59 = selfCopy3->_loggingConnection;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      v63 = [v78 count];
      v64 = [itemsCopy count];
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

  [infoCopy setStage:@"Final Time Clustering"];
  v27 = objc_alloc(MEMORY[0x277D3AC30]);
  timeClusteringDistanceBlock = [(CLSAssetsBeautifier *)selfCopy3 timeClusteringDistanceBlock];
  v71 = [v27 initWithDistanceBlock:timeClusteringDistanceBlock];

  [v71 setMaximumDistance:3.0];
  selfCopy4 = self;
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

  array = [MEMORY[0x277CBEB18] array];
  v30 = 0;
  v31 = *MEMORY[0x277D3C758];
  v69 = infoCopy;
  v70 = itemsCopy;
  while (1)
  {
    v32 = [v79 count];
    v75 = v30 >= v32;
    if (v30 >= v32)
    {
      break;
    }

    v33 = objc_autoreleasePoolPush();
    selfCopy4 = selfCopy;
    if (!v83 || (v91 = 0, (*(v74 + 2))(v74, &v91, 0.5), v34 = *(v93 + 24) | v91, *(v93 + 24) = v34, (v34 & 1) == 0))
    {
      v36 = [v79 objectAtIndexedSubscript:v30];
      objects = [v36 objects];
      if (([objects count] - 2) > 2)
      {
        [array addObjectsFromArray:objects];
        v35 = 0;
        goto LABEL_75;
      }

      v38 = [(CLSAssetsBeautifier *)selfCopy requiredItemsInItems:objects];
      v72 = v38;
      if ([v38 count])
      {
        [array addObjectsFromArray:v38];
        if (infoCopy)
        {
          [infoCopy dedupItems:objects toRequiredItems:v38 withDedupingType:5];
        }

        v35 = 4;
LABEL_74:

LABEL_75:
        selfCopy4 = selfCopy;
        goto LABEL_76;
      }

      v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v40 = objects;
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

      infoCopy = v69;
      itemsCopy = v70;
      v45 = [(CLSAssetsBeautifier *)selfCopy bestItemInItems:v40];
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

      v46 = [(CLSAssetsBeautifier *)selfCopy bestItemInItems:v39];
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
      isFavorite = [v46 isFavorite];
      v53 = v31 + v51;
      if (!isFavorite)
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
        [array addObject:v45];
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

  v57 = selfCopy4->_loggingConnection;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
  {
    v67 = [v78 count];
    v68 = [array count];
    *buf = 67109376;
    v98 = v67;
    v99 = 1024;
    v100 = v68;
    _os_log_debug_impl(&dword_22F907000, v57, OS_LOG_TYPE_DEBUG, "Final Time Clustering filtered from %d to %d items", buf, 0xEu);
  }

  v58 = array;
  v78 = v58;
LABEL_81:

LABEL_82:
  if (v75)
  {
    selfCopy3 = selfCopy;
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

- (id)sampledItemsInSortedItems:(id)items maximumNumberOfItemsToChoose:(unint64_t)choose debugInfo:(id)info progressBlock:(id)block
{
  v123 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  infoCopy = info;
  blockCopy = block;
  v115 = 0;
  v116 = &v115;
  v117 = 0x2020000000;
  v118 = 0;
  v88 = _Block_copy(blockCopy);
  v82 = blockCopy;
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
    v52 = [itemsCopy count];
    *buf = 67109376;
    *v122 = choose;
    *&v122[4] = 1024;
    *&v122[6] = v52;
    _os_log_debug_impl(&dword_22F907000, v12, OS_LOG_TYPE_DEBUG, "Beautifier: Sampling %d items out of %d", buf, 0xEu);
  }

  [infoCopy setStage:@"Sampling"];
  v84 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:choose];
  context = objc_autoreleasePoolPush();
  if (self->_enableStatisticalSampling)
  {
    if (self->_usesKMeans)
    {
      v13 = [objc_alloc(MEMORY[0x277D3AC98]) initWithNumericValueKeypaths:&unk_28449B2F8];
      [v13 setK:choose];
      v86 = v13;
      if (self->_discardNonEligibleClustersInSampling)
      {
        v14 = itemsCopy;
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
                objects = [v20 objects];
                v22 = [objects countByEnumeratingWithState:&v103 objects:v119 count:16];
                if (v22)
                {
                  v23 = *v104;
                  while (2)
                  {
                    for (j = 0; j != v22; ++j)
                    {
                      if (*v104 != v23)
                      {
                        objc_enumerationMutation(objects);
                      }

                      v25 = *(*(&v103 + 1) + 8 * j);
                      identifiersOfEligibleItems = self->_identifiersOfEligibleItems;
                      if (identifiersOfEligibleItems)
                      {
                        clsIdentifier = [*(*(&v103 + 1) + 8 * j) clsIdentifier];
                        v28 = [(NSSet *)identifiersOfEligibleItems containsObject:clsIdentifier];

                        if (!v28)
                        {
                          continue;
                        }
                      }

                      [v25 clsContentScore];
                      if (v29 >= v15)
                      {

                        objects2 = [v20 objects];
                        [v91 addObjectsFromArray:objects2];
                        ++v96;
                        goto LABEL_32;
                      }
                    }

                    v22 = [objects countByEnumeratingWithState:&v103 objects:v119 count:16];
                    if (v22)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v30 = MEMORY[0x277CBEB98];
                objects2 = [v20 objects];
                v32 = [v30 setWithArray:objects2];
                [infoCopy setState:2 ofItems:v32 withReason:@"Non-eligible cluster"];

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

          if (v81 < choose || (v33 = [v91 count], v81 <= v96) || v33 <= v96)
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
      v16 = [v13 performWithDataset:itemsCopy progressBlock:v100];
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
      hierarchicalClusteringDistanceBlock = [(CLSAssetsBeautifier *)self hierarchicalClusteringDistanceBlock];
      v86 = [v43 initWithDistanceBlock:hierarchicalClusteringDistanceBlock];

      [v86 setUsesSortedDataRelativeDistanceCache:1];
      [v86 setLinkage:0];
      [v86 setK:choose];
      lastObject = [itemsCopy lastObject];
      cls_universalDate = [lastObject cls_universalDate];
      firstObject = [itemsCopy firstObject];
      cls_universalDate2 = [firstObject cls_universalDate];
      [cls_universalDate timeIntervalSinceDate:cls_universalDate2];
      [v86 setThreshold:?];

      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = __102__CLSAssetsBeautifier_sampledItemsInSortedItems_maximumNumberOfItemsToChoose_debugInfo_progressBlock___block_invoke_46;
      v97[3] = &unk_2788A8AA8;
      v98 = v88;
      v99 = &v115;
      v16 = [v86 performWithDataset:itemsCopy progressBlock:v97];
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

    if ((choose - [obj count]) >= 1)
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
    v86 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:choose];
    v36 = [itemsCopy count];
    if (choose)
    {
      v37 = vcvtad_u64_f64(v36 / choose);
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

        v39 = [itemsCopy subarrayWithRange:{0, v37}];
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

  [infoCopy setClusters:obj withReason:v95];
  v53 = 0;
  v54 = *MEMORY[0x277D3C758];
  v55 = *MEMORY[0x277D3C760];
  while (v53 < [obj count])
  {
    v56 = objc_autoreleasePoolPush();
    v57 = [obj objectAtIndexedSubscript:v53];
    if (!v88 || (v114 = 0, v88[2](v88, &v114, 0.5), v58 = *(v116 + 24) | v114, *(v116 + 24) = v58, (v58 & 1) == 0))
    {
      objects3 = [v57 objects];
      v61 = [(CLSAssetsBeautifier *)self requiredItemsInItems:objects3];
      if ([v61 count])
      {
        [v84 addObjectsFromArray:v61];
        if (infoCopy)
        {
          v62 = [MEMORY[0x277CBEB98] setWithArray:v61];
          [infoCopy requireItems:v62 inCluster:v57];
          v59 = 12;
          goto LABEL_103;
        }

        v59 = 12;
LABEL_105:

        goto LABEL_106;
      }

      v62 = [(CLSAssetsBeautifier *)self bestItemInItems:objects3];
      isFavorite = [v62 isFavorite];
      v64 = v54;
      if ((isFavorite & 1) == 0)
      {
        [v62 clsContentScore];
      }

      if (v64 < v55 && self->_enableIntermediateNaturalClustering && [objects3 count] >= 2)
      {
        [infoCopy beginTentativeSection];
        v65 = [(CLSAssetsBeautifier *)self _naturalClusteringWithItems:objects3 withSimilarity:0 timestampSupport:1 debugInfo:infoCopy];
        v92 = [v65 count];
        [infoCopy endTentativeSectionWithSuccess:v92 != 0];
        if (v92)
        {
          v87 = [(CLSAssetsBeautifier *)self bestItemInItems:v65];

          if (infoCopy)
          {
            v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"Intermediate Natural Clustering, chose %lu items out of %lu", objc_msgSend(v65, "count"), objc_msgSend(objects3, "count")];

            v67 = self->_loggingConnection;
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v122 = v66;
              _os_log_debug_impl(&dword_22F907000, v67, OS_LOG_TYPE_DEBUG, "Beautifier: %@", buf, 0xCu);
            }

            v68 = [MEMORY[0x277CBEB98] setWithArray:v65];
            [infoCopy chooseItems:v68 inCluster:v57 withReason:v66];

            v95 = [MEMORY[0x277CCACA8] stringWithFormat:@"Best Item, chose %d item out of %lu", v87 != 0, objc_msgSend(v65, "count")];

            v69 = self->_loggingConnection;
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v122 = v95;
              _os_log_debug_impl(&dword_22F907000, v69, OS_LOG_TYPE_DEBUG, "Beautifier: %@", buf, 0xCu);
            }

            [infoCopy chooseItem:v87 inItems:v65 withReason:v95];
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
            v70 = [MEMORY[0x277CCACA8] stringWithFormat:@"Best Item, chose %d items out of %lu", v62 != 0, objc_msgSend(objects3, "count")];

            v71 = v53;
            v72 = self->_loggingConnection;
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v122 = v70;
              _os_log_debug_impl(&dword_22F907000, v72, OS_LOG_TYPE_DEBUG, "Beautifier: %@", buf, 0xCu);
            }

            [infoCopy chooseItem:v62 inCluster:v57 withReason:v70];
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
    v76 = [itemsCopy count];
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

- (CLSAssetsBeautifier)initWithSimilarityModelClass:(Class)class
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
    v6 = [[CLSSimilarStacker alloc] initWithSimilarityModelClass:class];
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