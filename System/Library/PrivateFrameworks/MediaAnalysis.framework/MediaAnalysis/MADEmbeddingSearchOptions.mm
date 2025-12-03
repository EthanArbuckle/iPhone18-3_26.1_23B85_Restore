@interface MADEmbeddingSearchOptions
+ (id)defaultOptions;
- (MADEmbeddingSearchOptions)init;
- (MADEmbeddingSearchOptions)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
  v2 = objc_alloc_init(self);

  return v2;
}

- (MADEmbeddingSearchOptions)initWithCoder:(id)coder
{
  v19[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
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

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"AssetUUIDs"];
    assetUUIDs = v5->_assetUUIDs;
    v5->_assetUUIDs = v9;

    v5->_resultLimit = [coderCopy decodeIntForKey:@"ResultLimit"];
    v5->_fullScan = [coderCopy decodeBoolForKey:@"FullScan"];
    v5->_includePayload = [coderCopy decodeBoolForKey:@"IncludePayload"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NumberOfProbes"];
    numberOfProbes = v5->_numberOfProbes;
    v5->_numberOfProbes = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BatchSize"];
    batchSize = v5->_batchSize;
    v5->_batchSize = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NumConcurrentReaders"];
    numConcurrentReaders = v5->_numConcurrentReaders;
    v5->_numConcurrentReaders = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  assetUUIDs = self->_assetUUIDs;
  coderCopy = coder;
  [coderCopy encodeObject:assetUUIDs forKey:@"AssetUUIDs"];
  [coderCopy encodeInt:self->_resultLimit forKey:@"ResultLimit"];
  [coderCopy encodeBool:self->_fullScan forKey:@"FullScan"];
  [coderCopy encodeBool:self->_includePayload forKey:@"IncludePayload"];
  [coderCopy encodeObject:self->_numberOfProbes forKey:@"NumberOfProbes"];
  [coderCopy encodeObject:self->_batchSize forKey:@"BatchSize"];
  [coderCopy encodeObject:self->_numConcurrentReaders forKey:@"NumConcurrentReaders"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"%@: %@, ", @"AssetUUIDs", self->_assetUUIDs];
  [string appendFormat:@"%@: %d, ", @"ResultLimit", self->_resultLimit];
  if (self->_fullScan)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [string appendFormat:@"%@: %@, ", @"FullScan", v6];
  if (self->_includePayload)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [string appendFormat:@"%@: %@, ", @"IncludePayload", v7];
  [string appendFormat:@"%@: %@, ", @"NumberOfProbes", self->_numberOfProbes];
  [string appendFormat:@"%@: %@, ", @"BatchSize", self->_batchSize];
  [string appendFormat:@"%@: %@>", @"NumConcurrentReaders", self->_numConcurrentReaders];

  return string;
}

@end