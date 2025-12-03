@interface MADEmbeddingSearchResult
- (MADEmbeddingSearchResult)initWithAssetUUID:(id)d distance:(id)distance metric:(int64_t)metric;
- (MADEmbeddingSearchResult)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADEmbeddingSearchResult

- (MADEmbeddingSearchResult)initWithAssetUUID:(id)d distance:(id)distance metric:(int64_t)metric
{
  dCopy = d;
  distanceCopy = distance;
  v14.receiver = self;
  v14.super_class = MADEmbeddingSearchResult;
  v11 = [(MADEmbeddingSearchResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_assetUUID, d);
    objc_storeStrong(&v12->_distance, distance);
    v12->_metric = metric;
  }

  return v12;
}

- (MADEmbeddingSearchResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MADEmbeddingSearchResult;
  v5 = [(MADEmbeddingSearchResult *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AssetUUID"];
    assetUUID = v5->_assetUUID;
    v5->_assetUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Distance"];
    distance = v5->_distance;
    v5->_distance = v8;

    v5->_metric = [coderCopy decodeIntegerForKey:@"Metric"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  assetUUID = self->_assetUUID;
  coderCopy = coder;
  [coderCopy encodeObject:assetUUID forKey:@"AssetUUID"];
  [coderCopy encodeObject:self->_distance forKey:@"Distance"];
  [coderCopy encodeInteger:self->_metric forKey:@"Metric"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"assetUUID: %@, ", self->_assetUUID];
  [string appendFormat:@"distance: %@, ", self->_distance];
  [string appendFormat:@"metric: %d>", self->_metric];

  return string;
}

@end