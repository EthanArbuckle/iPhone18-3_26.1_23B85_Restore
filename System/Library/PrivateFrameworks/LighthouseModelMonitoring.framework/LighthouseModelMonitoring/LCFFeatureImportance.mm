@interface LCFFeatureImportance
+ (id)_generateFeatureDictionaryForFeatureStore:(id)store featureNames:(id)names labelName:(id)name;
+ (id)analyzeFeatureImportanceWithFeatureStore:(id)store featureNames:(id)names labelName:(id)name;
+ (id)analyzeFeatureQuality:(id)quality featureNames:(id)names labelName:(id)name;
+ (id)computeCorrelationBetweenVector:(id)vector andOtherVector:(id)otherVector;
@end

@implementation LCFFeatureImportance

+ (id)analyzeFeatureQuality:(id)quality featureNames:(id)names labelName:(id)name
{
  v41 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  nameCopy = name;
  v27 = [quality getMultiArrayFeatureVectors:namesCopy vectorName:@"vector" srcLabelName:nameCopy destLabelName:nameCopy option:4];
  v28 = nameCopy;
  v9 = [LCFFeatureImportance _generateFeatureDictionaryForFeatureStore:"_generateFeatureDictionaryForFeatureStore:featureNames:labelName:" featureNames:? labelName:?];
  v30 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = namesCopy;
  v10 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v15 = [v9 objectForKeyedSubscript:v14];
        v16 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = 0;
          v19 = *v32;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v32 != v19)
              {
                objc_enumerationMutation(v15);
              }

              if (!*(*(&v31 + 1) + 8 * j))
              {
                ++v18;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v17);
          v21 = v18;
        }

        else
        {
          v21 = 0.0;
        }

        v22 = MEMORY[0x277CCABB0];
        v23 = [v9 objectForKeyedSubscript:v14];
        v24 = [v22 numberWithDouble:{v21 / objc_msgSend(v23, "count")}];

        [v30 setObject:v24 forKeyedSubscript:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v11);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (id)analyzeFeatureImportanceWithFeatureStore:(id)store featureNames:(id)names labelName:(id)name
{
  v56 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  namesCopy = names;
  nameCopy = name;
  v39 = [storeCopy getFeatureVectors:namesCopy option:4];
  v40 = storeCopy;
  v38 = [storeCopy getMultiArrayFeatureVectors:namesCopy vectorName:@"vector" srcLabelName:nameCopy destLabelName:nameCopy option:4];
  v45 = nameCopy;
  v10 = [LCFFeatureImportance _generateFeatureDictionaryForFeatureStore:"_generateFeatureDictionaryForFeatureStore:featureNames:labelName:" featureNames:? labelName:?];
  v11 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = namesCopy;
  v12 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v51;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v51 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v50 + 1) + 8 * i);
        v17 = [v10 objectForKeyedSubscript:v16];
        v18 = [v10 objectForKeyedSubscript:v45];
        v19 = [LCFFeatureImportance computeCorrelationBetweenVector:v17 andOtherVector:v18];

        [v11 setObject:v19 forKeyedSubscript:v16];
      }

      v13 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v13);
  }

  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  allKeys = [v11 allKeys];
  v20 = [allKeys countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v20)
  {
    v21 = v20;
    v43 = *v47;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v47 != v43)
        {
          objc_enumerationMutation(allKeys);
        }

        v23 = *(*(&v46 + 1) + 8 * j);
        v24 = objc_alloc(MEMORY[0x277D23480]);
        v25 = MEMORY[0x277CCABB0];
        v26 = [v10 objectForKeyedSubscript:v23];
        v27 = [v25 numberWithUnsignedInteger:{objc_msgSend(v26, "count")}];
        v28 = [v11 objectForKeyedSubscript:v23];
        v29 = [v11 objectForKeyedSubscript:v23];
        v30 = [v24 init:v23 featureCount:v27 correlationCoefficient:v28 featureImportance:v29];

        [v44 addObject:v30];
      }

      v21 = [allKeys countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v21);
  }

  v31 = objc_alloc(MEMORY[0x277D23488]);
  v32 = objc_alloc(MEMORY[0x277D23460]);
  v33 = [MEMORY[0x277D23450] fromMLProvider:v39];
  v34 = [v32 init:v33 labelFeatureName:v45];
  v35 = [v31 init:v34 targetLabelFeatureName:v45 results:v44 succeeded:&unk_286805F50 analysisError:0];

  [MEMORY[0x277D23478] emitFeatureImportanceEvent:v35];
  v36 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)_generateFeatureDictionaryForFeatureStore:(id)store featureNames:(id)names labelName:(id)name
{
  v48 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  namesCopy = names;
  nameCopy = name;
  if ([storeCopy count])
  {
    v40 = nameCopy;
    v10 = objc_opt_new();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v38 = namesCopy;
    v11 = namesCopy;
    v12 = [v11 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v44;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v44 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v43 + 1) + 8 * i);
          v17 = objc_opt_new();
          [v10 setObject:v17 forKeyedSubscript:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v13);
    }

    v18 = objc_opt_new();
    nameCopy = v40;
    [v10 setObject:v18 forKeyedSubscript:v40];

    if ([storeCopy count] < 1)
    {
LABEL_16:
      v35 = v10;
    }

    else
    {
      v19 = 0;
      v39 = storeCopy;
      while (1)
      {
        v20 = [storeCopy featuresAtIndex:v19];
        v21 = [v20 featureValueForName:@"vector"];
        multiArrayValue = [v21 multiArrayValue];

        v42 = v20;
        v23 = [v20 featureValueForName:nameCopy];
        int64Value = [v23 int64Value];

        dataPointer = [multiArrayValue dataPointer];
        shape = [multiArrayValue shape];
        v26 = [shape objectAtIndexedSubscript:0];
        longLongValue = [v26 longLongValue];

        if (longLongValue != [v11 count])
        {
          break;
        }

        if ([v11 count])
        {
          v28 = 0;
          do
          {
            v29 = [v11 objectAtIndexedSubscript:v28];
            v30 = *(dataPointer + 8 * v28);
            v31 = [v10 objectForKeyedSubscript:v29];
            v32 = [MEMORY[0x277CCABB0] numberWithDouble:v30];
            [v31 addObject:v32];

            ++v28;
          }

          while ([v11 count] > v28);
        }

        nameCopy = v40;
        v33 = [v10 objectForKeyedSubscript:v40];
        v34 = [MEMORY[0x277CCABB0] numberWithDouble:int64Value];
        [v33 addObject:v34];

        ++v19;
        storeCopy = v39;
        if ([v39 count] <= v19)
        {
          goto LABEL_16;
        }
      }

      v35 = 0;
      nameCopy = v40;
    }

    namesCopy = v38;
  }

  else
  {
    v35 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

+ (id)computeCorrelationBetweenVector:(id)vector andOtherVector:(id)otherVector
{
  v55 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  otherVectorCopy = otherVector;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v7 = [vectorCopy countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v50;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v50 != v9)
        {
          objc_enumerationMutation(vectorCopy);
        }

        v13 = *(*(&v49 + 1) + 8 * i);
        [v13 doubleValue];
        v11 = v11 + v14;
        [v13 doubleValue];
        v16 = v15;
        [v13 doubleValue];
        v10 = v10 + v16 * v17;
      }

      v8 = [vectorCopy countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
  }

  if ([vectorCopy count])
  {
    v18 = v11 / [vectorCopy count];
    v19 = sqrt((v10 - v11 * v11 / [vectorCopy count]) / (objc_msgSend(vectorCopy, "count") - 1));
  }

  else
  {
    v19 = -1.0;
    v18 = -1.0;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v20 = otherVectorCopy;
  v21 = [v20 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v46;
    v24 = 0.0;
    v25 = 0.0;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v46 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v27 = *(*(&v45 + 1) + 8 * j);
        [v27 doubleValue];
        v24 = v24 + v28;
        [v27 doubleValue];
        v30 = v29;
        [v27 doubleValue];
        v25 = v25 + v30 * v31;
      }

      v22 = [v20 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v22);
  }

  else
  {
    v24 = 0.0;
    v25 = 0.0;
  }

  if ([v20 count])
  {
    v32 = v24 / [v20 count];
    v33 = sqrt((v25 - v24 * v24 / [v20 count]) / (objc_msgSend(v20, "count") - 1));
  }

  else
  {
    v32 = -1.0;
    v33 = -1.0;
  }

  if ([vectorCopy count])
  {
    v34 = 0;
    v35 = 0.0;
    do
    {
      v36 = [vectorCopy objectAtIndexedSubscript:v34];
      v37 = [v20 objectAtIndexedSubscript:v34];
      [v36 doubleValue];
      v39 = (v38 - v18) / v19;
      [v37 doubleValue];
      v35 = v35 + v39 * ((v40 - v32) / v33);

      ++v34;
    }

    while ([vectorCopy count] > v34);
  }

  else
  {
    v35 = 0.0;
  }

  v41 = [vectorCopy count];
  v42 = [MEMORY[0x277CCABB0] numberWithDouble:v35 * (1.0 / (v41 + -1.0))];

  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

@end