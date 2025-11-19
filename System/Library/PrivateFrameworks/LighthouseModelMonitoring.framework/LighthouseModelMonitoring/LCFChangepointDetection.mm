@interface LCFChangepointDetection
+ (id)_generateFeatureDictionaryForFeatureStore:(id)a3 featureNames:(id)a4 labelName:(id)a5 timestampName:(id)a6;
+ (id)convertFeatureStoreToEvents:(id)a3 featureNames:(id)a4 labelName:(id)a5 valueName:(id)a6 timestampName:(id)a7;
@end

@implementation LCFChangepointDetection

+ (id)convertFeatureStoreToEvents:(id)a3 featureNames:(id)a4 labelName:(id)a5 valueName:(id)a6 timestampName:(id)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a6;
  v13 = a7;
  v26 = [LCFChangepointDetection _generateFeatureDictionaryForFeatureStore:a3 featureNames:v11 labelName:a5 timestampName:v13];
  v27 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v11;
  v28 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v28)
  {
    v25 = *v32;
    do
    {
      v14 = 0;
      do
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v14;
        v29 = *(*(&v31 + 1) + 8 * v14);
        v15 = [v26 objectForKeyedSubscript:?];
        v16 = [v26 objectForKeyedSubscript:v13];
        v17 = objc_opt_new();
        if ([v15 count])
        {
          v18 = 0;
          do
          {
            v35[0] = v12;
            v19 = [v15 objectAtIndexedSubscript:v18];
            v35[1] = v13;
            v36[0] = v19;
            v20 = [v16 objectAtIndexedSubscript:v18];
            v36[1] = v20;
            v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];

            [v17 addObject:v21];
            ++v18;
          }

          while ([v15 count] > v18);
        }

        [v27 setObject:v17 forKeyedSubscript:v29];

        v14 = v30 + 1;
      }

      while (v30 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v28);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)_generateFeatureDictionaryForFeatureStore:(id)a3 featureNames:(id)a4 labelName:(id)a5 timestampName:(id)a6
{
  v58 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v49 = a6;
  v12 = [v9 getMultiArrayFeatureVectors:v10 vectorName:@"vector" srcLabelName:v11 destLabelName:v11 option:0];
  v13 = [v9 getFeatureVectorTimestamps];
  if ([v12 count] && (v14 = objc_msgSend(v12, "count"), v14 == objc_msgSend(v13, "count")))
  {
    v47 = v11;
    v48 = v13;
    v15 = objc_opt_new();
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v45 = v10;
    v16 = v10;
    v17 = [v16 countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v54;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v54 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v53 + 1) + 8 * i);
          v22 = objc_opt_new();
          [v15 setObject:v22 forKeyedSubscript:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v18);
    }

    v23 = objc_opt_new();
    v11 = v47;
    [v15 setObject:v23 forKeyedSubscript:v47];

    v24 = objc_opt_new();
    [v15 setObject:v24 forKeyedSubscript:v49];

    if ([v12 count] < 1)
    {
LABEL_17:
      v42 = v15;
    }

    else
    {
      v25 = 0;
      v46 = v12;
      while (1)
      {
        v26 = [v12 featuresAtIndex:v25];
        v27 = [v26 featureValueForName:@"vector"];
        v28 = [v27 multiArrayValue];

        v51 = [v48 objectAtIndexedSubscript:v25];
        v52 = v26;
        v29 = [v26 featureValueForName:v11];
        v50 = [v29 int64Value];

        v30 = [v28 dataPointer];
        v31 = [v28 shape];
        v32 = [v31 objectAtIndexedSubscript:0];
        v33 = [v32 longLongValue];

        if (v33 != [v16 count])
        {
          break;
        }

        if ([v16 count])
        {
          v34 = 0;
          do
          {
            v35 = [v16 objectAtIndexedSubscript:v34];
            v36 = *(v30 + 8 * v34);
            v37 = [v15 objectForKeyedSubscript:v35];
            v38 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
            [v37 addObject:v38];

            ++v34;
          }

          while ([v16 count] > v34);
        }

        v11 = v47;
        v39 = [v15 objectForKeyedSubscript:v47];
        v40 = [MEMORY[0x277CCABB0] numberWithDouble:v50];
        [v39 addObject:v40];

        v41 = [v15 objectForKeyedSubscript:v49];
        [v41 addObject:v51];

        ++v25;
        v12 = v46;
        if ([v46 count] <= v25)
        {
          goto LABEL_17;
        }
      }

      v42 = 0;
      v12 = v46;
    }

    v13 = v48;

    v10 = v45;
  }

  else
  {
    v42 = 0;
  }

  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

@end