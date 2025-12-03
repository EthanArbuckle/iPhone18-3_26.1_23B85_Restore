@interface MAFeatureExtractor
- (NSArray)featureNames;
- (NSString)name;
- (id)defaultFloatVectorWithError:(id *)error;
- (id)featureVectorWithEntity:(id)entity error:(id *)error;
- (id)featureVectorsWithEntities:(id)entities entityLabels:(id)labels progressReporter:(id)reporter error:(id *)error;
- (id)floatMatrixWithEntities:(id)entities progressReporter:(id)reporter error:(id *)error;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
- (id)floatVectorWithRetryForEntity:(id)entity error:(id *)error;
@end

@implementation MAFeatureExtractor

- (id)featureVectorsWithEntities:(id)entities entityLabels:(id)labels progressReporter:(id)reporter error:(id *)error
{
  labelsCopy = labels;
  v11 = [(MAFeatureExtractor *)self floatMatrixWithEntities:entities progressReporter:reporter error:error];
  v12 = [MADataFrame alloc];
  name = [(MAFeatureExtractor *)self name];
  featureNames = [(MAFeatureExtractor *)self featureNames];
  v15 = [(MADataFrame *)v12 initWithName:name rowLabels:labelsCopy columnLabels:featureNames matrix:v11];

  return v15;
}

- (id)floatVectorWithRetryForEntity:(id)entity error:(id *)error
{
  v7 = 3;
  while (1)
  {
    v8 = [(MAFeatureExtractor *)self floatVectorWithEntity:entity error:error];
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

  if (error)
  {
    *error = 0;
  }

LABEL_7:

  return v8;
}

- (id)floatMatrixWithEntities:(id)entities progressReporter:(id)reporter error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  reporterCopy = reporter;
  v10 = objc_alloc_init(MAMutableFloatMatrix);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = entitiesCopy;
  v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v24 = reporterCopy;
    errorCopy = error;
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
    reporterCopy = v24;
    error = errorCopy;
  }

  else
  {
    v13 = 0;
  }

  if (error && !v10)
  {
    v21 = v13;
    *error = v13;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)featureVectorWithEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  name = [(MAFeatureExtractor *)self name];
  featureNames = [(MAFeatureExtractor *)self featureNames];
  v9 = [(MAFeatureExtractor *)self floatVectorWithEntity:entityCopy error:error];

  v10 = [[MASeries alloc] initWithName:name labels:featureNames vector:v9];

  return v10;
}

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  v6 = MEMORY[0x277CBEA60];
  entityCopy2 = entity;
  v8 = [v6 arrayWithObjects:&entityCopy count:1];
  v9 = [MAProgressReporter ignoreProgress:entityCopy];

  v10 = [(MAFeatureExtractor *)self floatMatrixWithEntities:v8 progressReporter:v9 error:error];
  v11 = [v10 row:0];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)defaultFloatVectorWithError:(id *)error
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