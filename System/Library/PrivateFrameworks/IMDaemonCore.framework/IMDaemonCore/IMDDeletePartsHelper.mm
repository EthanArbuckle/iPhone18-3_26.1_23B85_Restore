@interface IMDDeletePartsHelper
+ (BOOL)_convertDeletedPartsDict:(id)a3 toIndexSet:(id *)a4 toMap:(id *)a5;
+ (id)_makeDeletePartsDictFor:(id)a3 withIndexes:(id)a4 withIndexToRangeMap:(id)a5 deleteDate:(id)a6;
+ (unint64_t)_unsignedIntegerFromString:(id)a3;
@end

@implementation IMDDeletePartsHelper

+ (id)_makeDeletePartsDictFor:(id)a3 withIndexes:(id)a4 withIndexToRangeMap:(id)a5 deleteDate:(id)a6
{
  v39[4] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_22B628224;
  v28[3] = &unk_2787068E0;
  v30 = &v31;
  v14 = v13;
  v29 = v14;
  [v10 enumerateIndexesUsingBlock:v28];
  v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = sub_22B6282A8;
  v26 = &unk_278706908;
  v16 = v15;
  v27 = v16;
  [v11 enumerateKeysAndObjectsUsingBlock:&v23];
  v38[0] = @"messageGuid";
  v38[1] = @"indexes";
  v39[0] = v9;
  v39[1] = v14;
  v39[2] = v16;
  v38[2] = @"indexToRange";
  v38[3] = @"deleteSubject";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{*(v32 + 24), v23, v24, v25, v26}];
  v39[3] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:4];

  v35 = v18;
  v36[0] = @"parts";
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  v37[0] = v19;
  v37[1] = MEMORY[0x277CBEC28];
  v36[1] = @"isPermanentDelete";
  v36[2] = @"recoverableDeleteDate";
  v37[2] = v12;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];

  _Block_object_dispose(&v31, 8);
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (unint64_t)_unsignedIntegerFromString:(id)a3
{
  v3 = [MEMORY[0x277CCAC80] scannerWithString:a3];
  v6 = 0;
  [v3 scanUnsignedLongLong:&v6];
  v4 = v6;

  return v4;
}

+ (BOOL)_convertDeletedPartsDict:(id)a3 toIndexSet:(id *)a4 toMap:(id *)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [v8 objectForKey:@"indexes"];
  v10 = [v8 objectForKey:@"indexToRange"];
  v11 = v10;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  v38 = v13;
  if (v12)
  {
    v23 = 0;
  }

  else
  {
    if (a4)
    {
      v14 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v26 = a5;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v15 = v9;
      v16 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v16)
      {
        v17 = *v32;
        do
        {
          v18 = 0;
          do
          {
            if (*v32 != v17)
            {
              objc_enumerationMutation(v15);
            }

            [v14 addIndex:{objc_msgSend(a1, "_unsignedIntegerFromString:", *(*(&v31 + 1) + 8 * v18++), v26)}];
          }

          while (v16 != v18);
          v16 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v16);
      }

      a5 = v26;
      v19 = v14;
      *a4 = v14;
    }

    if (a5)
    {
      v20 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v11, "count")}];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = sub_22B628780;
      v27[3] = &unk_278706930;
      v29 = &v35;
      v30 = a1;
      v21 = v20;
      v28 = v21;
      [v11 enumerateKeysAndObjectsUsingBlock:v27];
      if (*(v36 + 24) == 1)
      {
        v22 = v21;
        *a5 = v21;
      }
    }

    v23 = *(v36 + 24);
  }

  _Block_object_dispose(&v35, 8);

  v24 = *MEMORY[0x277D85DE8];
  return v23 & 1;
}

@end