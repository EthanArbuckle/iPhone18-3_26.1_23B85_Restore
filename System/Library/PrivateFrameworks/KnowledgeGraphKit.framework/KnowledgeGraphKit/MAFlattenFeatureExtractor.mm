@interface MAFlattenFeatureExtractor
- (MAFlattenFeatureExtractor)initWithName:(id)a3 featureExtractors:(id)a4;
- (id)defaultFloatVectorWithError:(id *)a3;
- (id)floatMatrixWithEntities:(id)a3 progressReporter:(id)a4 error:(id *)a5;
@end

@implementation MAFlattenFeatureExtractor

- (id)floatMatrixWithEntities:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v37;
    do
    {
      v13 = v10;
      do
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v8);
        }

        --v13;
      }

      while (v13);
      v11 += v10;
      v10 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v14 = [MAFloatMatrix zerosWithRows:v11 columns:0];
  v15 = [(MAFlattenFeatureExtractor *)self featureExtractors];
  v16 = [v15 count];

  v31 = v7;
  v33 = [v7 progressReportersForParallelOperationsWithCount:v16];
  v17 = 0;
  if (v16)
  {
    v18 = 0;
    v19 = v16 - 1;
    v20 = v14;
    do
    {
      v21 = v17;
      v22 = objc_autoreleasePoolPush();
      v23 = [(MAFlattenFeatureExtractor *)self featureExtractors];
      v24 = [v23 objectAtIndexedSubscript:v18];

      v25 = [v33 objectAtIndexedSubscript:v18];
      v35 = v17;
      v26 = [v24 floatMatrixWithEntities:v8 progressReporter:v25 error:&v35];
      v17 = v35;

      if (v26)
      {
        v14 = [v20 matrixByAppendingColumnsOfMatrix:v26];
      }

      else
      {
        v14 = 0;
      }

      objc_autoreleasePoolPop(v22);
      if (!v26)
      {
        break;
      }

      v20 = v14;
    }

    while (v19 != v18++);
  }

  if (a5)
  {
    v28 = v17;
    *a5 = v17;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)defaultFloatVectorWithError:(id *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MAMutableFloatVector);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [(MAFlattenFeatureExtractor *)self featureExtractors];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    while (2)
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v20 + 1) + 8 * v11);
        v14 = objc_autoreleasePoolPush();
        v19 = v12;
        v15 = [v13 defaultFloatVectorWithError:&v19];
        v9 = v19;

        if (!v15)
        {

          objc_autoreleasePoolPop(v14);
          v5 = 0;
          goto LABEL_12;
        }

        [(MAMutableFloatVector *)v5 appendVector:v15];

        objc_autoreleasePoolPop(v14);
        ++v11;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_12:

  if (a3)
  {
    v16 = v9;
    *a3 = v9;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (MAFlattenFeatureExtractor)initWithName:(id)a3 featureExtractors:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v38.receiver = self;
  v38.super_class = MAFlattenFeatureExtractor;
  v8 = [(MAFlattenFeatureExtractor *)&v38 init];
  if (v8)
  {
    if (v6)
    {
      v9 = [v6 copy];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"Flatten["];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v10 = v7;
      v11 = [v10 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v35;
        do
        {
          v14 = 0;
          do
          {
            if (*v35 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(*(&v34 + 1) + 8 * v14) name];
            [v9 appendFormat:@"...%@, ", v15];

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v12);
      }

      [v9 appendString:@"]"];
    }

    name = v8->_name;
    v8->_name = v9;

    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = v7;
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        v22 = 0;
        do
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v30 + 1) + 8 * v22) featureNames];
          [(NSArray *)v17 addObjectsFromArray:v23];

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v20);
    }

    featureNames = v8->_featureNames;
    v8->_featureNames = v17;
    v25 = v17;

    v26 = [v18 copy];
    featureExtractors = v8->_featureExtractors;
    v8->_featureExtractors = v26;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v8;
}

@end