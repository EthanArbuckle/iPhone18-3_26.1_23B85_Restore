@interface VCPDatabaseBatchIterator
+ (id)iteratorForAssets:(id)a3 withDatabaseReader:(id)a4 resultTypes:(id)a5 batchSize:(int)a6;
- (BOOL)next;
- (VCPDatabaseBatchIterator)initWithDatabaseReader:(id)a3 forAssets:(id)a4 resultsTypes:(id)a5 batchSize:(int)a6;
- (void)nextBatch;
@end

@implementation VCPDatabaseBatchIterator

+ (id)iteratorForAssets:(id)a3 withDatabaseReader:(id)a4 resultTypes:(id)a5 batchSize:(int)a6
{
  v6 = *&a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [[VCPDatabaseBatchIterator alloc] initWithDatabaseReader:v10 forAssets:v9 resultsTypes:v11 batchSize:v6];

  return v12;
}

- (VCPDatabaseBatchIterator)initWithDatabaseReader:(id)a3 forAssets:(id)a4 resultsTypes:(id)a5 batchSize:(int)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v20.receiver = self;
  v20.super_class = VCPDatabaseBatchIterator;
  v14 = [(VCPDatabaseBatchIterator *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_reader, a3);
    objc_storeStrong(&v15->_assets, a4);
    objc_storeStrong(&v15->_resultsTypes, a5);
    v15->_idxLast = 0;
    v15->_idxCurrent = 0;
    if (a6 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = a6;
    }

    v15->_batchSize = v16;
  }

  if (v15->_reader)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  return v18;
}

- (BOOL)next
{
  asset = self->_asset;
  self->_asset = 0;

  analysis = self->_analysis;
  self->_analysis = 0;

  idxCurrent = self->_idxCurrent;
  v6 = [(NSArray *)self->_assets count];
  if (v6 > idxCurrent)
  {
    v7 = self->_idxCurrent;
    if (v7 >= self->_idxLast)
    {
      [(VCPDatabaseBatchIterator *)self nextBatch];
      v7 = self->_idxCurrent;
    }

    v8 = [(NSArray *)self->_assets objectAtIndexedSubscript:v7];
    v9 = self->_asset;
    self->_asset = v8;

    v10 = [(PHAsset *)self->_asset localIdentifier];

    if (v10)
    {
      batchAnalyses = self->_batchAnalyses;
      v12 = [(PHAsset *)self->_asset localIdentifier];
      v13 = [(NSDictionary *)batchAnalyses objectForKeyedSubscript:v12];
      v14 = self->_analysis;
      self->_analysis = v13;
    }

    ++self->_idxCurrent;
  }

  return v6 > idxCurrent;
}

- (void)nextBatch
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSArray *)self->_assets count];
  if (v4 - self->_idxLast >= self->_batchSize)
  {
    batchSize = self->_batchSize;
  }

  else
  {
    batchSize = v4 - self->_idxLast;
  }

  v21 = [(NSArray *)self->_assets subarrayWithRange:?];
  v6 = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v21;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v11 localIdentifier];
        v13 = v12 == 0;

        if (!v13)
        {
          v14 = [v11 localIdentifier];
          [v6 addObject:v14];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  if (+[MADManagedPhotosAsset isMACDReadEnabled])
  {
    v15 = [v7 firstObject];
    v16 = [v15 photoLibrary];

    v17 = [v16 mad_fetchRequest];
    v18 = [v17 fetchAnalysesWithLocalIdentifiers:v6 predicate:0 resultTypes:self->_resultsTypes];
    batchAnalyses = self->_batchAnalyses;
    self->_batchAnalyses = v18;
  }

  else
  {
    v20 = [(VCPDatabaseReader *)self->_reader queryAnalysesForAssets:v6 withTypes:self->_resultsTypes];
    v16 = self->_batchAnalyses;
    self->_batchAnalyses = v20;
  }

  self->_idxLast += batchSize;
  objc_autoreleasePoolPop(v3);
}

@end