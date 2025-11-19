@interface CLSSummaryClustering
+ (double)maximumScoreForItems:(id)a3;
+ (double)meanScoreForItems:(id)a3;
+ (double)scoreForItems:(id)a3;
- (CLSSummaryClustering)init;
- (id)_densityClustersWithItems:(id)a3 progressBlock:(id)a4;
- (id)adaptiveElection:(id)a3 identifiersOfEligibleItems:(id)a4 maximumNumberOfItemsToElect:(unint64_t)a5 debugInfo:(id)a6 progressBlock:(id)a7;
- (id)densityClusteringDistanceBlock;
- (id)densityClustersWithItems:(id)a3 progressBlock:(id)a4;
- (id)performWithItems:(id)a3 identifiersOfEligibleItems:(id)a4 maximumNumberOfItemsToElect:(unint64_t)a5 debugInfo:(id)a6 progressBlock:(id)a7;
@end

@implementation CLSSummaryClustering

- (id)densityClusteringDistanceBlock
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__CLSSummaryClustering_Performance__densityClusteringDistanceBlock__block_invoke;
  v3[3] = &unk_2788A7018;
  v3[4] = self;
  return [v3 copy];
}

uint64_t __67__CLSSummaryClustering_Performance__densityClusteringDistanceBlock__block_invoke(uint64_t a1, void *a2, void *a3)
{
  [objc_msgSend(a2 "cls_universalDate")];
  result = [*(a1 + 32) enableDensityClusteringLocationsDistance];
  if (result)
  {
    result = [a2 clsLocation];
    if (result)
    {
      v7 = result;
      result = [MEMORY[0x277CBEB68] null];
      if (v7 != result)
      {
        [v7 coordinate];
        result = CLLocationCoordinate2DIsValid(v9);
        if (result)
        {
          result = [a3 clsLocation];
          if (result)
          {
            v8 = result;
            result = [MEMORY[0x277CBEB68] null];
            if (v8 != result)
            {
              [v8 coordinate];
              result = CLLocationCoordinate2DIsValid(v10);
              if (result)
              {
                [v7 distanceFromLocation:v8];
                return [*(a1 + 32) densityClusteringLocationsDistanceUnit];
              }
            }
          }
        }
      }
    }
  }

  return result;
}

- (id)adaptiveElection:(id)a3 identifiersOfEligibleItems:(id)a4 maximumNumberOfItemsToElect:(unint64_t)a5 debugInfo:(id)a6 progressBlock:(id)a7
{
  v147[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v99 = a7;
  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:1];
  v147[0] = v14;
  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"objects.@count" ascending:1];
  v147[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:2];

  v100 = v11;
  v98 = v16;
  v17 = [v11 sortedArrayUsingDescriptors:v16];
  v103 = [v17 mutableCopy];
  [v13 setStage:@"Adaptive Election"];
  v112 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  obj = v17;
  v107 = [obj countByEnumeratingWithState:&v133 objects:v146 count:16];
  v109 = self;
  v102 = v13;
  if (v107)
  {
    v18 = 0;
    v105 = *v134;
    do
    {
      for (i = 0; i != v107; ++i)
      {
        if (*v134 != v105)
        {
          objc_enumerationMutation(obj);
        }

        v110 = *(*(&v133 + 1) + 8 * i);
        v20 = [v110 objects];
        v21 = v20;
        if (v12)
        {
          v131 = 0u;
          v132 = 0u;
          v129 = 0u;
          v130 = 0u;
          v22 = [v20 countByEnumeratingWithState:&v129 objects:v145 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = 0;
            v25 = *v130;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v130 != v25)
                {
                  objc_enumerationMutation(v21);
                }

                v27 = [*(*(&v129 + 1) + 8 * j) clsIdentifier];
                v28 = [v12 containsObject:v27];

                v24 += v28;
              }

              v23 = [v21 countByEnumeratingWithState:&v129 objects:v145 count:16];
            }

            while (v23);
          }

          else
          {
            v24 = 0;
          }
        }

        else
        {
          v24 = [v20 count];
        }

        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
        [v112 setObject:v29 forKey:v110];

        if (v18 <= v24)
        {
          v18 = v24;
        }

        self = v109;
      }

      v107 = [obj countByEnumeratingWithState:&v133 objects:v146 count:16];
    }

    while (v107);
    v30 = v18;
    v13 = v102;
  }

  else
  {
    v30 = 0.0;
  }

  v31 = [obj count];
  v32 = v31;
  adaptiveElectionSmootherMaximumLimit = self->_adaptiveElectionSmootherMaximumLimit;
  if (self->_enableAdaptiveElectionSmoother && self->_enableAdaptiveElectionSmootherAutomaticLimit)
  {
    adaptiveElectionSmootherMinimumLimit = v30 / v31;
    if (adaptiveElectionSmootherMinimumLimit >= adaptiveElectionSmootherMaximumLimit)
    {
      adaptiveElectionSmootherMinimumLimit = self->_adaptiveElectionSmootherMaximumLimit;
    }

    if (adaptiveElectionSmootherMinimumLimit < self->_adaptiveElectionSmootherMinimumLimit)
    {
      adaptiveElectionSmootherMinimumLimit = self->_adaptiveElectionSmootherMinimumLimit;
    }

    adaptiveElectionSmootherMaximumLimit = adaptiveElectionSmootherMinimumLimit;
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v34 = obj;
  v35 = [v34 countByEnumeratingWithState:&v125 objects:v144 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v126;
    v38 = 0.0;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v126 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v40 = [v112 objectForKey:*(*(&v125 + 1) + 8 * k)];
        v41 = [v40 unsignedIntegerValue];

        if (v109->_enableAdaptiveElectionSmoother)
        {
          if (v41)
          {
            v42 = adaptiveElectionSmootherMaximumLimit / 1.57079633 * atan(v41 / (adaptiveElectionSmootherMaximumLimit / 1.57079633));
            if (v42 > v41)
            {
              __assert_rtn("[CLSSummaryClustering adaptiveElection:identifiersOfEligibleItems:maximumNumberOfItemsToElect:debugInfo:progressBlock:]", "CLSSummaryClustering.m", 416, "numberOfItemsFromThisCluster <= numberOfEligibleItemsInThisCluster");
            }
          }

          else
          {
            v42 = 0.0;
          }
        }

        else
        {
          v42 = v41;
        }

        v38 = v38 + v42;
      }

      v36 = [v34 countByEnumeratingWithState:&v125 objects:v144 count:16];
    }

    while (v36);
  }

  else
  {
    v38 = 0.0;
  }

  v108 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v32];
  v43 = v103;
  v44 = v109;
  if ([v103 count])
  {
    v45 = 0;
    v46 = 0.0;
    v47 = 0.0;
    do
    {
      v48 = [v43 objectAtIndexedSubscript:v45];
      v49 = [v112 objectForKey:v48];
      v50 = [v49 unsignedIntegerValue];

      if (v44->_enableAdaptiveElectionSmoother)
      {
        if (!v50)
        {
          v51 = 0.0;
          v52 = 0.0;
          goto LABEL_52;
        }

        v51 = v50;
        v52 = adaptiveElectionSmootherMaximumLimit / 1.57079633 * atan(v50 / (adaptiveElectionSmootherMaximumLimit / 1.57079633));
      }

      else
      {
        v51 = v50;
        v52 = v50;
      }

      if (v52 > v51)
      {
        __assert_rtn("[CLSSummaryClustering adaptiveElection:identifiersOfEligibleItems:maximumNumberOfItemsToElect:debugInfo:progressBlock:]", "CLSSummaryClustering.m", 436, "targetNumberOfItemsFromThisCluster <= numberOfEligibleItemsInThisCluster");
      }

LABEL_52:
      v111 = v48;
      v53 = (a5 - v46) * (v52 / (v38 - v47));
      v54 = v53;
      if (v50 < v53)
      {
        v55 = +[CLSLogging sharedLogging];
        v56 = [v55 loggingConnection];

        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v141 = v54;
          v142 = 2048;
          v143 = v50;
          _os_log_impl(&dword_22F907000, v56, OS_LOG_TYPE_INFO, "Election wants %lu items from cluster that only contains %lu", buf, 0x16u);
        }

        v53 = v51;
      }

      v57 = v53 + 0.0000001;
      adaptiveElectionMaximumNumberOfItemsByCluster = v44->_adaptiveElectionMaximumNumberOfItemsByCluster;
      if (adaptiveElectionMaximumNumberOfItemsByCluster >= v57)
      {
        v59 = v57;
      }

      else
      {
        v59 = v44->_adaptiveElectionMaximumNumberOfItemsByCluster;
      }

      if (adaptiveElectionMaximumNumberOfItemsByCluster)
      {
        v60 = v59;
      }

      else
      {
        v60 = v57;
      }

      v46 = v46 + v60;
      v61 = v111;
      if (v46 >= a5 + 1.0 || v45 == [v43 count] - 1 && !objc_msgSend(v108, "count") && objc_msgSend(v43, "count"))
      {
        if (v13)
        {
          v65 = [v43 firstObject];
          [v13 setState:2 ofCluster:v65 withReason:@"Election Failure"];
        }

        [v43 removeObjectAtIndex:0];
        [v108 removeAllObjects];
        v66 = [v43 count];
        if (!v66)
        {

          break;
        }

        if (v44->_enableAdaptiveElectionSmoother)
        {
          v67 = v66;
          v123 = 0u;
          v124 = 0u;
          v121 = 0u;
          v122 = 0u;
          v68 = v43;
          v69 = [v68 countByEnumeratingWithState:&v121 objects:v139 count:16];
          if (v69)
          {
            v70 = v69;
            v71 = 0;
            v72 = *v122;
            do
            {
              for (m = 0; m != v70; ++m)
              {
                if (*v122 != v72)
                {
                  objc_enumerationMutation(v68);
                }

                v74 = [v112 objectForKey:*(*(&v121 + 1) + 8 * m)];
                v75 = [v74 unsignedIntegerValue];

                if (v71 <= v75)
                {
                  v71 = v75;
                }
              }

              v70 = [v68 countByEnumeratingWithState:&v121 objects:v139 count:16];
            }

            while (v70);
            v76 = v71;
            v13 = v102;
            v43 = v103;
            v44 = v109;
          }

          else
          {
            v76 = 0.0;
          }

          if (v44->_enableAdaptiveElectionSmootherAutomaticLimit)
          {
            v77 = v76 / v67;
            v78 = v44->_adaptiveElectionSmootherMinimumLimit;
            if (v77 >= v44->_adaptiveElectionSmootherMaximumLimit)
            {
              v77 = v44->_adaptiveElectionSmootherMaximumLimit;
            }

            if (v77 < v78)
            {
              v77 = v78;
            }

            adaptiveElectionSmootherMaximumLimit = v77;
          }
        }

        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v62 = v43;
        v45 = [(__CFString *)v62 countByEnumeratingWithState:&v117 objects:v138 count:16];
        if (v45)
        {
          v79 = *v118;
          v38 = 0.0;
          do
          {
            for (n = 0; n != v45; ++n)
            {
              if (*v118 != v79)
              {
                objc_enumerationMutation(v62);
              }

              v81 = [v112 objectForKey:*(*(&v117 + 1) + 8 * n)];
              v82 = [v81 unsignedIntegerValue];

              if (v44->_enableAdaptiveElectionSmoother)
              {
                if (v82)
                {
                  v83 = adaptiveElectionSmootherMaximumLimit / 1.57079633 * atan(v82 / (adaptiveElectionSmootherMaximumLimit / 1.57079633));
                  if (v83 > v82)
                  {
                    __assert_rtn("[CLSSummaryClustering adaptiveElection:identifiersOfEligibleItems:maximumNumberOfItemsToElect:debugInfo:progressBlock:]", "CLSSummaryClustering.m", 504, "numberOfItemsFromOtherCluster <= numberOfEligibleItemsInOtherCluster");
                  }
                }

                else
                {
                  v83 = 0.0;
                }
              }

              else
              {
                v83 = v82;
              }

              v38 = v38 + v83;
            }

            v45 = [(__CFString *)v62 countByEnumeratingWithState:&v117 objects:v138 count:16];
          }

          while (v45);
          v47 = 0.0;
          v46 = 0.0;
          v43 = v103;
        }

        else
        {
          v47 = 0.0;
          v46 = 0.0;
          v38 = 0.0;
        }

        v61 = v111;
      }

      else
      {
        if (v60)
        {
          if (v60 >= v44->_adaptiveElectionMinimumNumberOfItemsByCluster)
          {
            v64 = [[CLSSummaryClusteringItem alloc] initWithCluster:v111 numberOfItemsToElect:v60];
            [v108 addObject:v64];
            v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Electing %lu items out of %lu", v60, v50];

            v63 = 1;
          }

          else
          {
            v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Number of elected items less than threshold, electing 0 items out of %lu", v50];
            v63 = 2;
          }
        }

        else
        {
          v63 = 2;
          v62 = @"Electing 0 items, cluster is too small";
        }

        v47 = v47 + v52;
        ++v45;
        [v13 setState:v63 ofCluster:v111 withReason:v62];
      }
    }

    while (v45 < [v43 count]);
  }

  v84 = v108;
  if (![v108 count])
  {
    v85 = [v34 lastObject];
    if (v85)
    {
      v86 = [v112 objectForKey:v85];
      v87 = [v86 unsignedIntegerValue];

      if (v87 >= a5)
      {
        v88 = a5;
      }

      else
      {
        v88 = v87;
      }

      v89 = [[CLSSummaryClusteringItem alloc] initWithCluster:v85 numberOfItemsToElect:v88];
      [v108 addObject:v89];
    }

    if (v13)
    {
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v90 = v34;
      v91 = [v90 countByEnumeratingWithState:&v113 objects:v137 count:16];
      if (v91)
      {
        v92 = v91;
        v93 = *v114;
        do
        {
          for (ii = 0; ii != v92; ++ii)
          {
            if (*v114 != v93)
            {
              objc_enumerationMutation(v90);
            }

            if (*(*(&v113 + 1) + 8 * ii) == v85)
            {
              v95 = 3;
            }

            else
            {
              v95 = 2;
            }

            [v13 setState:v95 ofCluster:? withReason:?];
          }

          v92 = [v90 countByEnumeratingWithState:&v113 objects:v137 count:16];
        }

        while (v92);
      }

      v43 = v103;
      v84 = v108;
    }
  }

  v96 = [v84 sortedArrayUsingComparator:&__block_literal_global_93];

  return v96;
}

uint64_t __120__CLSSummaryClustering_adaptiveElection_identifiersOfEligibleItems_maximumNumberOfItemsToElect_debugInfo_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 cluster];
  v6 = [v5 objects];
  v7 = [v6 firstObject];
  v8 = [v7 cls_universalDate];
  v9 = [v4 cluster];

  v10 = [v9 objects];
  v11 = [v10 firstObject];
  v12 = [v11 cls_universalDate];
  v13 = [v8 compare:v12];

  return v13;
}

- (id)performWithItems:(id)a3 identifiersOfEligibleItems:(id)a4 maximumNumberOfItemsToElect:(unint64_t)a5 debugInfo:(id)a6 progressBlock:(id)a7
{
  v74 = *MEMORY[0x277D85DE8];
  v50 = a3;
  v49 = a4;
  v12 = a6;
  v13 = a7;
  v14 = _Block_copy(v13);
  v15 = v14;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v51 = v12;
  v48 = v13;
  if (!v14 || (v63 = 0, (*(v14 + 2))(v14, &v63, 0.0), v16 = *(v65 + 24) | v63, *(v65 + 24) = v16, (v16 & 1) == 0))
  {
    v46 = a5;
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __120__CLSSummaryClustering_performWithItems_identifiersOfEligibleItems_maximumNumberOfItemsToElect_debugInfo_progressBlock___block_invoke;
    v60[3] = &unk_2788A8AA8;
    v18 = v15;
    v61 = v18;
    v62 = &v64;
    v19 = [(CLSSummaryClustering *)self _densityClustersWithItems:v50 progressBlock:v60];
    if (v12)
    {
      [v12 setAgent:@"Summarizer"];
      [v12 setStage:@"Density Clustering"];
      [v12 setClusters:v19 withReason:@"Summarizer"];
    }

    v47 = self;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v19;
    v20 = [obj countByEnumeratingWithState:&v56 objects:v71 count:16];
    if (v20)
    {
      v21 = *v57;
LABEL_10:
      v22 = 0;
      while (1)
      {
        if (*v57 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v56 + 1) + 8 * v22);
        if (v15)
        {
          buf[0] = 0;
          (*(v18 + 2))(v18, buf, 0.5);
          v24 = *(v65 + 24) | buf[0];
          *(v65 + 24) = v24;
          if (v24)
          {
            break;
          }
        }

        v25 = [v23 objects];
        [CLSSummaryClustering scoreForItems:v25];
        [v23 setScore:?];

        if (v20 == ++v22)
        {
          v20 = [obj countByEnumeratingWithState:&v56 objects:v71 count:16];
          if (v20)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }

    if (*(v65 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v73 = 309;
        _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
      }

      v17 = MEMORY[0x277CBEBF8];
      goto LABEL_52;
    }

    if ([obj count] < 2)
    {
      if ([obj count] != 1)
      {
        v26 = 0;
        goto LABEL_40;
      }

      v27 = [obj firstObject];
      v28 = [v27 objects];
      v29 = [v28 count];

      if (v29 >= v46)
      {
        v30 = v46;
      }

      else
      {
        v30 = v29;
      }

      v31 = [[CLSSummaryClusteringItem alloc] initWithCluster:v27 numberOfItemsToElect:v30];
      v70 = v31;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
      if (v51)
      {
        v32 = MEMORY[0x277CCACA8];
        v33 = [v27 objects];
        v34 = [v32 stringWithFormat:@"Single density cluster, electing %lu items out of %lu", v30, objc_msgSend(v33, "count")];

        [v51 setState:1 ofCluster:v27 withReason:v34];
      }
    }

    else
    {
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __120__CLSSummaryClustering_performWithItems_identifiersOfEligibleItems_maximumNumberOfItemsToElect_debugInfo_progressBlock___block_invoke_39;
      v53[3] = &unk_2788A8AA8;
      v54 = v18;
      v55 = &v64;
      v26 = [(CLSSummaryClustering *)v47 adaptiveElection:obj identifiersOfEligibleItems:v49 maximumNumberOfItemsToElect:v46 debugInfo:v12 progressBlock:v53];
      if (*(v65 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v73 = 322;
          _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
        }

LABEL_49:
        v17 = MEMORY[0x277CBEBF8];
LABEL_51:

LABEL_52:
        goto LABEL_53;
      }

      v27 = v54;
    }

    if (v26)
    {
      v12 = v51;
      if ([v26 count])
      {
        [v51 setUnclusteredItemsState:2 withReason:@"Not Clustered"];
        if (!v15)
        {
          goto LABEL_50;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v12 = v51;
    }

LABEL_40:
    v35 = [MEMORY[0x277D3AC38] clusterWithObjects:v50];
    v36 = [v50 count];
    if (v36 >= v46)
    {
      v37 = v46;
    }

    else
    {
      v37 = v36;
    }

    v38 = [[CLSSummaryClusteringItem alloc] initWithCluster:v35 numberOfItemsToElect:v37];
    v69 = v38;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];

    if (v12)
    {
      [v51 resetWithReason:@"SummaryClustering didn't find any density cluster"];
      v68 = v35;
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
      [v51 setClusters:v40 withReason:@"No Density Clusters"];

      v41 = MEMORY[0x277CCACA8];
      v42 = [v35 objects];
      v43 = [v41 stringWithFormat:@"No density cluster, electing %lu items out of %lu", v37, objc_msgSend(v42, "count")];

      [v51 setState:1 ofCluster:v35 withReason:v43];
    }

    v26 = v39;
    if (!v15)
    {
      goto LABEL_50;
    }

LABEL_46:
    v63 = 0;
    (*(v18 + 2))(v18, &v63, 1.0);
    v44 = *(v65 + 24) | v63;
    *(v65 + 24) = v44;
    if (v44)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v73 = 360;
        _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
      }

      goto LABEL_49;
    }

LABEL_50:
    v26 = v26;
    v17 = v26;
    goto LABEL_51;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v73 = 283;
    _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
  }

  v17 = MEMORY[0x277CBEBF8];
LABEL_53:
  _Block_object_dispose(&v64, 8);

  return v17;
}

uint64_t __120__CLSSummaryClustering_performWithItems_identifiersOfEligibleItems_maximumNumberOfItemsToElect_debugInfo_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

uint64_t __120__CLSSummaryClustering_performWithItems_identifiersOfEligibleItems_maximumNumberOfItemsToElect_debugInfo_progressBlock___block_invoke_39(uint64_t a1, _BYTE *a2, double a3)
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

- (id)_densityClustersWithItems:(id)a3 progressBlock:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v38 = a3;
  v37 = a4;
  v6 = _Block_copy(v37);
  v7 = v6;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  if (!v6 || (LOBYTE(v47) = 0, (*(v6 + 2))(v6, &v47, 0.0), v8 = *(v52 + 24) | v47, *(v52 + 24) = v8, (v8 & 1) == 0))
  {
    v10 = [v38 sortedArrayUsingComparator:{&__block_literal_global_6044, v37}];
    v11 = [v10 lastObject];
    v12 = [v11 cls_universalDate];
    v13 = [v10 firstObject];
    v14 = [v13 cls_universalDate];
    [v12 timeIntervalSinceDate:v14];
    v16 = v15;

    if (v16 <= 0.0)
    {
      v17 = 1.79769313e308;
    }

    else
    {
      v17 = [v10 count] / (v16 / 86400.0);
    }

    optimalDayDistributionThreshold = self->_optimalDayDistributionThreshold;
    v19 = 64;
    if (v17 < optimalDayDistributionThreshold)
    {
      v19 = 48;
    }

    v20 = 56;
    if (v17 < optimalDayDistributionThreshold)
    {
      v20 = 40;
    }

    v21 = *(&self->super.isa + v20);
    v22 = *(&self->super.isa + v19);
    v23 = objc_alloc_init(MEMORY[0x277D3AD88]);
    [v23 setAverageNumberOfObjects:self->_timeSpanDensityAverageNumberOfObjects];
    [v23 setMinimumSpan:v21 * 3.0];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __64__CLSSummaryClustering__densityClustersWithItems_progressBlock___block_invoke_2;
    v48[3] = &unk_2788A8AA8;
    v24 = v7;
    v49 = v24;
    v50 = &v51;
    v25 = [v23 performWithDataset:v10 progressBlock:v48];
    if (*(v52 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 67109120;
        v56 = 237;
        _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
      }

      v9 = MEMORY[0x277CBEBF8];
      goto LABEL_28;
    }

    v26 = objc_alloc(MEMORY[0x277D3AC30]);
    v27 = [(CLSSummaryClustering *)self densityClusteringDistanceBlock];
    v28 = [v26 initWithDistanceBlock:v27];

    [v28 setMaximumDistance:v21];
    [v28 setMinimumNumberOfObjects:v22];
    v29 = [MEMORY[0x277CBEB18] array];
    v47 = 0;
    v30 = [v25 count];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__CLSSummaryClustering__densityClustersWithItems_progressBlock___block_invoke_29;
    block[3] = &unk_2788A8638;
    v31 = v24;
    v46 = &v47;
    v44 = v31;
    v45 = &v51;
    v41 = v25;
    v32 = v28;
    v42 = v32;
    v33 = v29;
    v43 = v33;
    dispatch_apply(v30, 0, block);
    if (*(v52 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 67109120;
        v56 = 266;
        v34 = MEMORY[0x277D86220];
LABEL_24:
        _os_log_impl(&dword_22F907000, v34, OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
      }
    }

    else
    {
      if (!v7 || (v39 = 0, (*(v31 + 2))(v31, &v39, 1.0), v35 = *(v52 + 24) | v39, *(v52 + 24) = v35, (v35 & 1) == 0))
      {
        v9 = v33;
        goto LABEL_27;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 67109120;
        v56 = 269;
        v34 = MEMORY[0x277D86220];
        goto LABEL_24;
      }
    }

    v9 = MEMORY[0x277CBEBF8];
LABEL_27:

LABEL_28:
    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 67109120;
    v56 = 183;
    _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
  }

  v9 = MEMORY[0x277CBEBF8];
LABEL_29:
  _Block_object_dispose(&v51, 8);

  return v9;
}

uint64_t __64__CLSSummaryClustering__densityClustersWithItems_progressBlock___block_invoke_2(uint64_t a1, _BYTE *a2, double a3)
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

void __64__CLSSummaryClustering__densityClustersWithItems_progressBlock___block_invoke_29(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (!*(a1 + 56) || (v17 = 0, os_unfair_lock_lock(*(a1 + 72)), (*(*(a1 + 56) + 16))(0.5), v5 = *(a1 + 72), *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24), v17 = *(*(*(a1 + 64) + 8) + 24), os_unfair_lock_unlock(v5), (v17 & 1) == 0))
  {
    v6 = [*(a1 + 32) objectAtIndexedSubscript:a2];
    v7 = *(a1 + 40);
    v8 = [v6 objects];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __64__CLSSummaryClustering__densityClustersWithItems_progressBlock___block_invoke_2_30;
    v14 = &unk_2788A8610;
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v9 = [v7 performWithDataset:v8 progressBlock:&v11];

    os_unfair_lock_lock(*(a1 + 72));
    LOBYTE(v8) = *(*(*(a1 + 64) + 8) + 24);
    os_unfair_lock_unlock(*(a1 + 72));
    if ((v8 & 1) == 0)
    {
      v10 = *(a1 + 48);
      objc_sync_enter(v10);
      [*(a1 + 48) addObjectsFromArray:{v9, v11, v12, v13, v14}];
      objc_sync_exit(v10);
    }
  }

  objc_autoreleasePoolPop(v4);
}

void __64__CLSSummaryClustering__densityClustersWithItems_progressBlock___block_invoke_2_30(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    os_unfair_lock_lock(*(a1 + 48));
    (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
    v6 = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24);
    v7 = *(*(*(a1 + 40) + 8) + 24);
    os_unfair_lock_unlock(v6);
    if (v7 == 1)
    {
      *a2 = v7;
    }
  }
}

uint64_t __64__CLSSummaryClustering__densityClustersWithItems_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 cls_universalDate];
  v6 = [v4 cls_universalDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)densityClustersWithItems:(id)a3 progressBlock:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [(CLSSummaryClustering *)self _densityClustersWithItems:v6 progressBlock:v7];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * i) objects];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (CLSSummaryClustering)init
{
  v3.receiver = self;
  v3.super_class = CLSSummaryClustering;
  result = [(CLSSummaryClustering *)&v3 init];
  if (result)
  {
    result->_optimalDayDistributionThreshold = 30.0;
    result->_timeSpanDensityAverageNumberOfObjects = 300;
    result->_enableDensityClusteringLocationsDistance = 0;
    result->_densityClusteringLocationsDistanceUnit = 500;
    result->_diffuseDensityClusteringMaximumDistance = 10800.0;
    result->_diffuseDensityClusteringMinimumNumberOfObjects = 7;
    result->_conciseDensityClusteringMaximumDistance = 1800.0;
    *&result->_conciseDensityClusteringMinimumNumberOfObjects = xmmword_22F9925C0;
    *&result->_enableAdaptiveElectionSmoother = 257;
    *&result->_adaptiveElectionSmootherMaximumLimit = xmmword_22F9925D0;
  }

  return result;
}

+ (double)maximumScoreForItems:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * i) clsContentScore];
        if (v7 < v9)
        {
          v7 = v9;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

+ (double)meanScoreForItems:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v12 + 1) + 8 * i) clsContentScore];
        v7 = v7 + v9;
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v10 = [v3 count];

  return v7 / v10;
}

+ (double)scoreForItems:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 count];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v13 + 1) + 8 * i) clsContentScore];
        v9 = v9 + v11;
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  return v9 + v4 * -0.4;
}

@end