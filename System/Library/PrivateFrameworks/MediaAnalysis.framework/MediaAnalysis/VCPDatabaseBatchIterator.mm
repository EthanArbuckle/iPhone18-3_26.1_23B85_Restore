@interface VCPDatabaseBatchIterator
+ (id)iteratorForAssets:(id)assets withDatabaseReader:(id)reader resultTypes:(id)types batchSize:(int)size;
- (BOOL)next;
- (VCPDatabaseBatchIterator)initWithDatabaseReader:(id)reader forAssets:(id)assets resultsTypes:(id)types batchSize:(int)size;
- (void)nextBatch;
@end

@implementation VCPDatabaseBatchIterator

+ (id)iteratorForAssets:(id)assets withDatabaseReader:(id)reader resultTypes:(id)types batchSize:(int)size
{
  v6 = *&size;
  assetsCopy = assets;
  readerCopy = reader;
  typesCopy = types;
  v12 = [[VCPDatabaseBatchIterator alloc] initWithDatabaseReader:readerCopy forAssets:assetsCopy resultsTypes:typesCopy batchSize:v6];

  return v12;
}

- (VCPDatabaseBatchIterator)initWithDatabaseReader:(id)reader forAssets:(id)assets resultsTypes:(id)types batchSize:(int)size
{
  readerCopy = reader;
  assetsCopy = assets;
  typesCopy = types;
  v20.receiver = self;
  v20.super_class = VCPDatabaseBatchIterator;
  v14 = [(VCPDatabaseBatchIterator *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_reader, reader);
    objc_storeStrong(&v15->_assets, assets);
    objc_storeStrong(&v15->_resultsTypes, types);
    v15->_idxLast = 0;
    v15->_idxCurrent = 0;
    if (size <= 1)
    {
      sizeCopy = 1;
    }

    else
    {
      sizeCopy = size;
    }

    v15->_batchSize = sizeCopy;
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

    localIdentifier = [(PHAsset *)self->_asset localIdentifier];

    if (localIdentifier)
    {
      batchAnalyses = self->_batchAnalyses;
      localIdentifier2 = [(PHAsset *)self->_asset localIdentifier];
      v13 = [(NSDictionary *)batchAnalyses objectForKeyedSubscript:localIdentifier2];
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
  array = [MEMORY[0x1E695DF70] array];
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
        localIdentifier = [v11 localIdentifier];
        v13 = localIdentifier == 0;

        if (!v13)
        {
          localIdentifier2 = [v11 localIdentifier];
          [array addObject:localIdentifier2];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  if (+[MADManagedPhotosAsset isMACDReadEnabled])
  {
    firstObject = [v7 firstObject];
    photoLibrary = [firstObject photoLibrary];

    mad_fetchRequest = [photoLibrary mad_fetchRequest];
    v18 = [mad_fetchRequest fetchAnalysesWithLocalIdentifiers:array predicate:0 resultTypes:self->_resultsTypes];
    batchAnalyses = self->_batchAnalyses;
    self->_batchAnalyses = v18;
  }

  else
  {
    v20 = [(VCPDatabaseReader *)self->_reader queryAnalysesForAssets:array withTypes:self->_resultsTypes];
    photoLibrary = self->_batchAnalyses;
    self->_batchAnalyses = v20;
  }

  self->_idxLast += batchSize;
  objc_autoreleasePoolPop(v3);
}

@end