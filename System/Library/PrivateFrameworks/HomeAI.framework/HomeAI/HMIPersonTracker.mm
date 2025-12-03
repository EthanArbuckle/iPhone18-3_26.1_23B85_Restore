@interface HMIPersonTracker
- (HMIPersonTracker)init;
- (id)getBlobIDAtIndex:(unint64_t)index;
- (void)trackNewPersons:(id)persons knownPersons:(id)knownPersons regionOfInterest:(CGRect)interest timeStamp:(id *)stamp;
@end

@implementation HMIPersonTracker

- (HMIPersonTracker)init
{
  v6.receiver = self;
  v6.super_class = HMIPersonTracker;
  v2 = [(HMIPersonTracker *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    previousPersons = v2->_previousPersons;
    v2->_previousPersons = array;
  }

  return v2;
}

- (void)trackNewPersons:(id)persons knownPersons:(id)knownPersons regionOfInterest:(CGRect)interest timeStamp:(id *)stamp
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke;
  v83[3] = &__block_descriptor_56_e52___HMIPersonBlob_16__0__HMIVideoAnalyzerEventPerson_8l;
  v84 = *stamp;
  knownPersonsCopy = knownPersons;
  personsCopy = persons;
  v50 = [knownPersonsCopy na_map:v83];
  v15 = [MEMORY[0x277CBEB98] setWithArray:knownPersonsCopy];

  v16 = [v15 na_map:&__block_literal_global_12];

  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_3;
  v81[3] = &__block_descriptor_56_e52___HMIPersonBlob_16__0__HMIVideoAnalyzerEventPerson_8l;
  v82 = *stamp;
  v17 = [personsCopy na_map:v81];

  previousPersons = [(HMIPersonTracker *)self previousPersons];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_4;
  v77[3] = &unk_278753440;
  v79 = *&stamp->var0;
  var3 = stamp->var3;
  v78 = v16;
  v80 = var3;
  v51 = v16;
  v20 = [previousPersons na_map:v77];

  array = [MEMORY[0x277CBEB18] array];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_5;
  v74[3] = &unk_278753490;
  v22 = v17;
  v75 = v22;
  v76 = array;
  v48 = array;
  [v20 enumerateObjectsUsingBlock:v74];
  v23 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, objc_msgSend(v20, "count")}];
  v24 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, objc_msgSend(v22, "count")}];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  indexSet2 = [MEMORY[0x277CCAB58] indexSet];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_7;
  v67[3] = &unk_2787534B8;
  v68 = v23;
  v69 = v24;
  v29 = indexSet;
  v70 = v29;
  v30 = indexSet2;
  v71 = v30;
  v72 = dictionary;
  v73 = dictionary2;
  v31 = dictionary2;
  v32 = dictionary;
  v47 = v24;
  v33 = v23;
  [v48 na_each:v67];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_8;
  v64[3] = &unk_2787534E0;
  v34 = v22;
  v65 = v34;
  v35 = v20;
  v66 = v35;
  [v32 na_each:v64];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_9;
  v59[3] = &unk_278753508;
  v60 = v34;
  v36 = v35;
  v61 = v36;
  v62 = v30;
  v63 = v29;
  v46 = v29;
  v37 = v30;
  v38 = v34;
  [v31 na_each:v59];
  array2 = [MEMORY[0x277CBEB18] array];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_10;
  v52[3] = &unk_278753530;
  v55 = x;
  v56 = y;
  v57 = width;
  v58 = height;
  v53 = v36;
  v54 = array2;
  v40 = array2;
  v41 = v36;
  [v33 enumerateIndexesUsingBlock:v52];
  previousPersons2 = [(HMIPersonTracker *)self previousPersons];
  [previousPersons2 removeAllObjects];

  previousPersons3 = [(HMIPersonTracker *)self previousPersons];
  [previousPersons3 addObjectsFromArray:v38];

  previousPersons4 = [(HMIPersonTracker *)self previousPersons];
  [previousPersons4 addObjectsFromArray:v50];

  previousPersons5 = [(HMIPersonTracker *)self previousPersons];
  [previousPersons5 addObjectsFromArray:v40];
}

HMIPersonBlob *__76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HMIPersonBlob alloc];
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v5 = [(HMIPersonBlob *)v4 initWithNewPersonEvent:v3 timeStamp:&v7];

  return v5;
}

HMIPersonBlob *__76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HMIPersonBlob alloc];
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v5 = [(HMIPersonBlob *)v4 initWithNewPersonEvent:v3 timeStamp:&v7];

  return v5;
}

void *__76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 personIndices];
  [v4 removeAllIndexes];

  v5 = *(a1 + 32);
  v6 = [v3 blobID];
  if ([v5 containsObject:v6])
  {
    v7 = 0;
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    if ([v3 isExpiredAtTimeStamp:&v10])
    {
      v7 = 0;
    }

    else
    {
      v7 = v3;
    }
  }

  v8 = v7;

  return v7;
}

void __76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_6;
  v8[3] = &unk_278753468;
  v9 = v5;
  v11 = a3;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = a2;
  [v26 similarityToPersonBlob:*(a1 + 32)];
  v6 = v5;
  if (v5 > 0.0)
  {
    v7 = [HMIPairwiseMatch alloc];
    *&v8 = v6;
    v9 = [(HMIPairwiseMatch *)v7 initWithFirstIndex:*(a1 + 48) secondIndex:a3 score:v8];
    [*(a1 + 40) insertObject:v9 atIndex:{objc_msgSend(*(a1 + 40), "indexOfObject:inSortedRange:options:usingComparator:", v9, 0, objc_msgSend(*(a1 + 40), "count"), 1024, &__block_literal_global_2)}];
  }

  [*(a1 + 32) boundingBox];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v26 boundingBox];
  v29.origin.x = v18;
  v29.origin.y = v19;
  v29.size.width = v20;
  v29.size.height = v21;
  v28.origin.x = v11;
  v28.origin.y = v13;
  v28.size.width = v15;
  v28.size.height = v17;
  v22 = CGRectIntersectsRect(v28, v29);
  if (v6 >= 0.0 && v22)
  {
    v24 = [*(a1 + 32) personIndices];
    [v24 addIndex:a3];

    v25 = [v26 personIndices];
    [v25 addIndex:*(a1 + 48)];
  }
}

void __76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_7(id *a1, void *a2)
{
  v8 = a2;
  if ([a1[4] containsIndex:{objc_msgSend(v8, "firstIndex")}] && objc_msgSend(a1[5], "containsIndex:", objc_msgSend(v8, "secondIndex")))
  {
    [a1[4] removeIndex:{objc_msgSend(v8, "firstIndex")}];
    [a1[5] removeIndex:{objc_msgSend(v8, "secondIndex")}];
    [v8 score];
    if (v3 <= 1.0)
    {
      v4 = 9;
    }

    else
    {
      [a1[6] addIndex:{objc_msgSend(v8, "firstIndex")}];
      [a1[7] addIndex:{objc_msgSend(v8, "secondIndex")}];
      v4 = 8;
    }

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "firstIndex")}];
    v6 = a1[v4];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "secondIndex")}];
    [v6 setObject:v5 forKeyedSubscript:v7];
  }
}

void __76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = a3;
  v9 = [v5 objectAtIndexedSubscript:{objc_msgSend(a2, "intValue")}];
  v7 = *(v4 + 40);
  LODWORD(v4) = [v6 intValue];

  v8 = [v7 objectAtIndexedSubscript:v4];
  [v9 trackPersonBlob:v8];
}

void __76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_9(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v14 = [v5 objectAtIndexedSubscript:{objc_msgSend(a2, "intValue")}];
  v7 = a1[5];
  LODWORD(v5) = [v6 intValue];

  v8 = [v7 objectAtIndexedSubscript:v5];
  v9 = [v14 personIndices];
  [v9 removeIndexes:a1[6]];

  v10 = [v8 personIndices];
  [v10 removeIndexes:a1[7]];

  v11 = [v14 personIndices];
  if ([v11 count] >= 2)
  {
  }

  else
  {
    v12 = [v8 personIndices];
    v13 = [v12 count];

    if (v13 <= 1)
    {
      [v14 trackPersonBlob:v8];
    }
  }
}

void __76__HMIPersonTracker_trackNewPersons_knownPersons_regionOfInterest_timeStamp___block_invoke_10(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  [v7 boundingBox];
  v9.origin.x = v3;
  v9.origin.y = v4;
  v9.size.width = v5;
  v9.size.height = v6;
  if (!CGRectIntersectsRect(*(a1 + 48), v9))
  {
    [*(a1 + 40) addObject:v7];
  }
}

- (id)getBlobIDAtIndex:(unint64_t)index
{
  v24 = *MEMORY[0x277D85DE8];
  previousPersons = [(HMIPersonTracker *)self previousPersons];
  v6 = [previousPersons count];

  if (v6 <= index)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      previousPersons2 = [(HMIPersonTracker *)selfCopy previousPersons];
      v16 = 138544130;
      v17 = v13;
      v18 = 2112;
      v19 = uUID;
      v20 = 2048;
      indexCopy = index;
      v22 = 2048;
      v23 = [previousPersons2 count];
      _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_ERROR, "%{public}@HMIPersonTracker: unable to get %@ at index %lu / %lu", &v16, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    previousPersons3 = [(HMIPersonTracker *)self previousPersons];
    v8 = [previousPersons3 objectAtIndexedSubscript:index];
    uUID = [v8 blobID];
  }

  return uUID;
}

@end