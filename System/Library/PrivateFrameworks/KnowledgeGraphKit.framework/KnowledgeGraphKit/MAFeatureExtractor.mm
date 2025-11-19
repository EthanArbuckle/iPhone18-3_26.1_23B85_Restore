@interface MAFeatureExtractor
- (NSArray)featureNames;
- (NSString)name;
- (id)defaultFloatVectorWithError:(id *)a3;
- (id)featureVectorWithEntity:(id)a3 error:(id *)a4;
- (id)featureVectorsWithEntities:(id)a3 entityLabels:(id)a4 progressReporter:(id)a5 error:(id *)a6;
- (id)floatMatrixWithEntities:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
- (id)floatVectorWithRetryForEntity:(id)a3 error:(id *)a4;
@end

@implementation MAFeatureExtractor

- (id)featureVectorsWithEntities:(id)a3 entityLabels:(id)a4 progressReporter:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = [(MAFeatureExtractor *)self floatMatrixWithEntities:a3 progressReporter:a5 error:a6];
  v12 = [MADataFrame alloc];
  v13 = [(MAFeatureExtractor *)self name];
  v14 = [(MAFeatureExtractor *)self featureNames];
  v15 = [(MADataFrame *)v12 initWithName:v13 rowLabels:v10 columnLabels:v14 matrix:v11];

  return v15;
}

- (id)floatVectorWithRetryForEntity:(id)a3 error:(id *)a4
{
  v7 = 3;
  while (1)
  {
    v8 = [(MAFeatureExtractor *)self floatVectorWithEntity:a3 error:a4];
    if (v8)
    {
      break;
    }

    if (!--v7)
    {
      v8 = 0;
      goto LABEL_7;
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

LABEL_7:

  return v8;
}

- (id)floatMatrixWithEntities:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MAMutableFloatMatrix);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v24 = v9;
    v25 = a5;
    v13 = 0;
    v14 = *v30;
    while (2)
    {
      v15 = 0;
      v16 = v13;
      do
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v29 + 1) + 8 * v15);
        v18 = objc_autoreleasePoolPush();
        if ([objc_opt_class() shouldRetryFailures])
        {
          v28 = v16;
          v19 = &v28;
          [(MAFeatureExtractor *)self floatVectorWithRetryForEntity:v17 error:&v28];
        }

        else
        {
          v27 = v16;
          v19 = &v27;
          [(MAFeatureExtractor *)self floatVectorWithEntity:v17 error:&v27];
        }
        v20 = ;
        v13 = *v19;

        if (!v20)
        {

          objc_autoreleasePoolPop(v18);
          v10 = 0;
          goto LABEL_14;
        }

        [(MAMutableFloatMatrix *)v10 appendRow:v20];

        objc_autoreleasePoolPop(v18);
        ++v15;
        v16 = v13;
      }

      while (v12 != v15);
      v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

LABEL_14:
    v9 = v24;
    a5 = v25;
  }

  else
  {
    v13 = 0;
  }

  if (a5 && !v10)
  {
    v21 = v13;
    *a5 = v13;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)featureVectorWithEntity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MAFeatureExtractor *)self name];
  v8 = [(MAFeatureExtractor *)self featureNames];
  v9 = [(MAFeatureExtractor *)self floatVectorWithEntity:v6 error:a4];

  v10 = [[MASeries alloc] initWithName:v7 labels:v8 vector:v9];

  return v10;
}

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a3;
  v8 = [v6 arrayWithObjects:&v14 count:1];
  v9 = [MAProgressReporter ignoreProgress:v14];

  v10 = [(MAFeatureExtractor *)self floatMatrixWithEntities:v8 progressReporter:v9 error:a4];
  v11 = [v10 row:0];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)defaultFloatVectorWithError:(id *)a3
{
  v3 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v3);
}

- (NSArray)featureNames
{
  v2 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (NSString)name
{
  v2 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

@end