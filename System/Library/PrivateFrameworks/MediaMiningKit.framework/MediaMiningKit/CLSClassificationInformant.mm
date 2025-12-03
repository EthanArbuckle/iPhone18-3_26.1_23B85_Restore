@interface CLSClassificationInformant
- (double)_confidenceForCount:(unint64_t)count mu:(double)mu sigma:(double)sigma;
- (id)_gatherSceneCluesForInvestigation:(id)investigation signalModelProviderBlock:(id)block informantKey:(id)key progressBlock:(id)progressBlock;
- (id)gatherCluesForInvestigation:(id)investigation progressBlock:(id)block;
@end

@implementation CLSClassificationInformant

- (id)gatherCluesForInvestigation:(id)investigation progressBlock:(id)block
{
  v30 = *MEMORY[0x277D85DE8];
  investigationCopy = investigation;
  blockCopy = block;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = _Block_copy(blockCopy);
  v10 = v8;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __72__CLSClassificationInformant_gatherCluesForInvestigation_progressBlock___block_invoke_2;
  v21[3] = &unk_2788A8AA8;
  v11 = v9;
  v22 = v11;
  v23 = &v24;
  v12 = [(CLSClassificationInformant *)self _gatherSceneCluesForInvestigation:investigationCopy signalModelProviderBlock:&__block_literal_global_7717 informantKey:@"kCLSClassificationInformantKey" progressBlock:v21];
  [v10 addObjectsFromArray:v12];
  if (*(v25 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v29 = 243;
      _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
    }
  }

  else
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __72__CLSClassificationInformant_gatherCluesForInvestigation_progressBlock___block_invoke_2_51;
    v18 = &unk_2788A8AA8;
    v19 = v11;
    v20 = &v24;
    v13 = [(CLSClassificationInformant *)self _gatherSceneCluesForInvestigation:investigationCopy signalModelProviderBlock:&__block_literal_global_50 informantKey:@"kCLSClassificationEntityNetInformantKey" progressBlock:&v15];
    [v10 addObjectsFromArray:{v13, v15, v16, v17, v18}];
    if (*(v25 + 24) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v29 = 253;
      _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
    }
  }

  _Block_object_dispose(&v24, 8);

  return v10;
}

uint64_t __72__CLSClassificationInformant_gatherCluesForInvestigation_progressBlock___block_invoke_2(uint64_t a1, _BYTE *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v5 = 0;
    result = (*(result + 16))(result, &v5, 0.2);
    *(*(*(a1 + 40) + 8) + 24) |= v5;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a2 = 1;
    }
  }

  return result;
}

uint64_t __72__CLSClassificationInformant_gatherCluesForInvestigation_progressBlock___block_invoke_2_51(uint64_t a1, _BYTE *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v5 = 0;
    result = (*(result + 16))(result, &v5, 0.4);
    *(*(*(a1 + 40) + 8) + 24) |= v5;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a2 = 1;
    }
  }

  return result;
}

id __72__CLSClassificationInformant_gatherCluesForInvestigation_progressBlock___block_invoke_47(uint64_t a1, void *a2)
{
  v2 = [a2 curationModel];
  v3 = [v2 entityNetModel];

  return v3;
}

id __72__CLSClassificationInformant_gatherCluesForInvestigation_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 curationModel];
  v3 = [v2 sceneModel];

  return v3;
}

- (id)_gatherSceneCluesForInvestigation:(id)investigation signalModelProviderBlock:(id)block informantKey:(id)key progressBlock:(id)progressBlock
{
  v101 = *MEMORY[0x277D85DE8];
  investigationCopy = investigation;
  blockCopy = block;
  keyCopy = key;
  progressBlockCopy = progressBlock;
  v12 = _Block_copy(progressBlockCopy);
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 0;
  v13 = [MEMORY[0x277CCA940] set];
  v14 = [MEMORY[0x277CCA940] set];
  v15 = [MEMORY[0x277CCA940] set];
  v54 = progressBlockCopy;
  v16 = [MEMORY[0x277CCA940] set];
  v17 = [MEMORY[0x277CCA940] set];
  numberOfItems = [investigationCopy numberOfItems];
  v67 = v16;
  obja = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = v15;
  v71 = v12;
  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  helper = [investigationCopy helper];
  feeder = [investigationCopy feeder];
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __116__CLSClassificationInformant__gatherSceneCluesForInvestigation_signalModelProviderBlock_informantKey_progressBlock___block_invoke;
  v79[3] = &unk_2788A8A38;
  v53 = blockCopy;
  v89 = v53;
  v55 = helper;
  v80 = v55;
  v60 = v17;
  v81 = v60;
  v56 = v14;
  v82 = v56;
  v59 = v19;
  v83 = v59;
  v62 = v18;
  v84 = v62;
  v61 = v67;
  v85 = v61;
  v52 = investigationCopy;
  v86 = v52;
  v63 = obja;
  v87 = v63;
  v68 = v13;
  v88 = v68;
  v72 = v71;
  v90 = v72;
  v91 = &v92;
  [feeder enumerateItemsUsingBlock:v79];

  if (*(v93 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 67109120;
      v100 = 186;
      _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
    }

    v22 = MEMORY[0x277CBEBF8];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = v56;
    v24 = [obj countByEnumeratingWithState:&v75 objects:v98 count:16];
    v57 = array;
    if (v24)
    {
      v25 = vcvtd_n_f64_u64(numberOfItems, 1uLL);
      v26 = -(v25 - numberOfItems * 0.68);
      v64 = *v76;
      while (2)
      {
        v27 = 0;
        v66 = v24;
        do
        {
          if (*v76 != v64)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v75 + 1) + 8 * v27);
          v29 = [obj countForObject:v28];
          [(CLSClassificationInformant *)self _confidenceForCount:v29 mu:v25 sigma:v26];
          v31 = v30;
          -[CLSClassificationInformant _confidenceForCount:mu:sigma:](self, "_confidenceForCount:mu:sigma:", [v68 countForObject:v28], v25, v26);
          v33 = v32;
          if (v32 >= 0.3)
          {
            v34 = [v63 objectForKeyedSubscript:v28];
            [v34 weight];
            v36 = v35;
            v37 = [v62 countForObject:v28];
            v38 = [v61 countForObject:v28];
            v39 = [v60 countForObject:v28];
            level = [v34 level];
            v41 = [v59 objectForKeyedSubscript:v28];
            v42 = [CLSOutputClue clueWithValue:v41 forKey:keyCopy confidence:v33 * v36 relevance:level];
            v96[0] = @"numberOfAssetsd";
            v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
            v97[0] = v43;
            v96[1] = @"isReliable";
            v44 = [MEMORY[0x277CCABB0] numberWithBool:v31 >= 0.3];
            v97[1] = v44;
            v96[2] = @"numberOfHighConfidenceAssets";
            v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v37];
            v97[2] = v45;
            v96[3] = @"numberOfSearchConfidenceAssets";
            v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v38];
            v97[3] = v46;
            v96[4] = @"numberOfDominantSceneAssets";
            v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v39];
            v97[4] = v47;
            v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:5];
            [v42 setExtraParameters:v48];

            [v57 addObject:v42];
          }

          if (v72)
          {
            v74 = 0;
            (*(v72 + 2))(v72, &v74, 0.7);
            v49 = *(v93 + 24) | v74;
            *(v93 + 24) = v49;
            if (v49)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                buf = 67109120;
                v100 = 224;
                _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
              }

              v22 = MEMORY[0x277CBEBF8];
              v50 = v57;
              goto LABEL_20;
            }
          }

          ++v27;
        }

        while (v66 != v27);
        v24 = [obj countByEnumeratingWithState:&v75 objects:v98 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v50 = v57;
    v22 = v57;
LABEL_20:
  }

  _Block_object_dispose(&v92, 8);

  return v22;
}

void __116__CLSClassificationInformant__gatherSceneCluesForInvestigation_signalModelProviderBlock_informantKey_progressBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v77 = *MEMORY[0x277D85DE8];
  v5 = a2;
  context = objc_autoreleasePoolPush();
  v6 = (*(*(a1 + 104) + 16))();
  v7 = [MEMORY[0x277CBEB58] set];
  v51 = v5;
  v8 = [v5 clsSceneClassifications];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v70 objects:v76 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v71;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v71 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v70 + 1) + 8 * i);
        [v13 confidence];
        v15 = v14;
        v16 = [v13 extendedSceneIdentifier];
        [v13 boundingBox];
        v18 = v17;
        v20 = v19;
        v21 = [*(a1 + 32) taxonomyNodeForSceneIdentifier:v16 sceneModel:v6];
        v22 = v21;
        if (v21)
        {
          [v21 searchThreshold];
          if (v15 >= v23 && v18 > 0.0 && v20 > 0.0)
          {
            v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v16];
            [*(a1 + 40) addObject:v24];
            [v7 addObject:v24];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v70 objects:v76 count:16];
    }

    while (v10);
  }

  v68 = 0u;
  v69 = 0u;
  v67 = 0u;
  v66 = 0u;
  v25 = v8;
  v26 = [v25 countByEnumeratingWithState:&v66 objects:v75 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v67;
    v53 = v25;
    v54 = v6;
    v52 = *v67;
    while (2)
    {
      v29 = 0;
      v55 = v27;
      do
      {
        if (*v67 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v66 + 1) + 8 * v29);
        [v30 confidence];
        v32 = v31;
        v33 = [v30 extendedSceneIdentifier];
        v34 = [*(a1 + 32) taxonomyNodeForSceneIdentifier:v33 sceneModel:v6];
        if (v34)
        {
          v57 = v34;
          [v34 graphHighRecallThreshold];
          v34 = v57;
          if (v32 >= v35)
          {
            v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v33];
            [*(a1 + 48) addObject:v36];
            v56 = [*(a1 + 56) objectForKeyedSubscript:v36];
            if (!v56)
            {
              v37 = [v57 name];
              [*(a1 + 56) setObject:v37 forKeyedSubscript:v36];
            }

            [v57 graphHighPrecisionThreshold];
            if (v32 >= v38)
            {
              [*(a1 + 64) addObject:v36];
            }

            [v57 searchThreshold];
            if (v32 >= v39)
            {
              [*(a1 + 72) addObject:v36];
              if ([v7 count])
              {
                v64 = 0u;
                v65 = 0u;
                v62 = 0u;
                v63 = 0u;
                v40 = [*(a1 + 80) helper];
                v41 = [v40 parentNodesOfTaxonomyNode:v57];

                v42 = [v41 countByEnumeratingWithState:&v62 objects:v74 count:16];
                if (v42)
                {
                  v43 = v42;
                  v44 = *v63;
                  do
                  {
                    for (j = 0; j != v43; ++j)
                    {
                      if (*v63 != v44)
                      {
                        objc_enumerationMutation(v41);
                      }

                      v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(*(&v62 + 1) + 8 * j), "extendedSceneClassId")}];
                      if ([v7 containsObject:v46] && (objc_msgSend(v7, "containsObject:", v36) & 1) == 0)
                      {
                        [*(a1 + 40) addObject:v36];
                      }
                    }

                    v43 = [v41 countByEnumeratingWithState:&v62 objects:v74 count:16];
                  }

                  while (v43);
                }

                v25 = v53;
                v6 = v54;
                v28 = v52;
              }
            }

            v47 = *(a1 + 32);
            v59[0] = MEMORY[0x277D85DD0];
            v59[1] = 3221225472;
            v59[2] = __116__CLSClassificationInformant__gatherSceneCluesForInvestigation_signalModelProviderBlock_informantKey_progressBlock___block_invoke_2;
            v59[3] = &unk_2788A8A10;
            v60 = *(a1 + 88);
            v61 = *(a1 + 96);
            [v47 enumerateTaxonomyNodesLevelsAndWeightsStartingWithNode:v57 usingBlock:v59];
            v48 = *(a1 + 112);
            if (v48)
            {
              v58 = 0;
              (*(v48 + 16))(v48, &v58, 0.5);
              *(*(*(a1 + 120) + 8) + 24) |= v58;
              if (*(*(*(a1 + 120) + 8) + 24))
              {
                *a4 = 1;

                goto LABEL_44;
              }
            }

            v27 = v55;
            v34 = v57;
          }
        }

        ++v29;
      }

      while (v29 != v27);
      v27 = [v25 countByEnumeratingWithState:&v66 objects:v75 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }
  }

LABEL_44:

  objc_autoreleasePoolPop(context);
}

void __116__CLSClassificationInformant__gatherSceneCluesForInvestigation_signalModelProviderBlock_informantKey_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CCABB0];
  v10 = v3;
  v5 = [v3 taxonomyNode];
  v6 = [v4 numberWithUnsignedLongLong:{objc_msgSend(v5, "extendedSceneClassId")}];

  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v8 = v7;
  if (!v7 || (v9 = [v7 level], v9 > objc_msgSend(v10, "level")))
  {
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v6];
  }

  [*(a1 + 40) addObject:v6];
}

- (double)_confidenceForCount:(unint64_t)count mu:(double)mu sigma:(double)sigma
{
  countCopy = count;
  if (mu != 0.0 && countCopy < mu)
  {
    return exp(-((countCopy - mu) * (countCopy - mu)) / (sigma * sigma + sigma * sigma));
  }

  else
  {
    return 1.0;
  }
}

@end