@interface MADEmbeddingSearchOptions
+ (id)defaultOptions;
- (MADEmbeddingSearchOptions)init;
- (MADEmbeddingSearchOptions)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADEmbeddingSearchOptions

- (MADEmbeddingSearchOptions)init
{
  v3.receiver = self;
  v3.super_class = MADEmbeddingSearchOptions;
  result = [(MADEmbeddingSearchOptions *)&v3 init];
  if (result)
  {
    result->_resultLimit = 10;
    *&result->_fullScan = 0;
  }

  return result;
}

+ (id)defaultOptions
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (MADEmbeddingSearchOptions)initWithCoder:(id)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = MADEmbeddingSearchOptions;
  v5 = [(MADEmbeddingSearchOptions *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"AssetUUIDs"];
    assetUUIDs = v5->_assetUUIDs;
    v5->_assetUUIDs = v9;

    v5->_resultLimit = [v4 decodeIntForKey:@"ResultLimit"];
    v5->_fullScan = [v4 decodeBoolForKey:@"FullScan"];
    v5->_includePayload = [v4 decodeBoolForKey:@"IncludePayload"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NumberOfProbes"];
    numberOfProbes = v5->_numberOfProbes;
    v5->_numberOfProbes = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BatchSize"];
    batchSize = v5->_batchSize;
    v5->_batchSize = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NumConcurrentReaders"];
    numConcurrentReaders = v5->_numConcurrentReaders;
    v5->_numConcurrentReaders = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  assetUUIDs = self->_assetUUIDs;
  v5 = a3;
  [v5 encodeObject:assetUUIDs forKey:@"AssetUUIDs"];
  [v5 encodeInt:self->_resultLimit forKey:@"ResultLimit"];
  [v5 encodeBool:self->_fullScan forKey:@"FullScan"];
  [v5 encodeBool:self->_includePayload forKey:@"IncludePayload"];
  [v5 encodeObject:self->_numberOfProbes forKey:@"NumberOfProbes"];
  [v5 encodeObject:self->_batchSize forKey:@"BatchSize"];
  [v5 encodeObject:self->_numConcurrentReaders forKey:@"NumConcurrentReaders"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"%@: %@, ", @"AssetUUIDs", self->_assetUUIDs];
  [v3 appendFormat:@"%@: %d, ", @"ResultLimit", self->_resultLimit];
  if (self->_fullScan)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@"%@: %@, ", @"FullScan", v6];
  if (self->_includePayload)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"%@: %@, ", @"IncludePayload", v7];
  [v3 appendFormat:@"%@: %@, ", @"NumberOfProbes", self->_numberOfProbes];
  [v3 appendFormat:@"%@: %@, ", @"BatchSize", self->_batchSize];
  [v3 appendFormat:@"%@: %@>", @"NumConcurrentReaders", self->_numConcurrentReaders];

  return v3;
}

@end