@interface MADEmbeddingSearchResult
- (MADEmbeddingSearchResult)initWithAssetUUID:(id)a3 distance:(id)a4 metric:(int64_t)a5;
- (MADEmbeddingSearchResult)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADEmbeddingSearchResult

- (MADEmbeddingSearchResult)initWithAssetUUID:(id)a3 distance:(id)a4 metric:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = MADEmbeddingSearchResult;
  v11 = [(MADEmbeddingSearchResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_assetUUID, a3);
    objc_storeStrong(&v12->_distance, a4);
    v12->_metric = a5;
  }

  return v12;
}

- (MADEmbeddingSearchResult)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MADEmbeddingSearchResult;
  v5 = [(MADEmbeddingSearchResult *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AssetUUID"];
    assetUUID = v5->_assetUUID;
    v5->_assetUUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Distance"];
    distance = v5->_distance;
    v5->_distance = v8;

    v5->_metric = [v4 decodeIntegerForKey:@"Metric"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  assetUUID = self->_assetUUID;
  v5 = a3;
  [v5 encodeObject:assetUUID forKey:@"AssetUUID"];
  [v5 encodeObject:self->_distance forKey:@"Distance"];
  [v5 encodeInteger:self->_metric forKey:@"Metric"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"assetUUID: %@, ", self->_assetUUID];
  [v3 appendFormat:@"distance: %@, ", self->_distance];
  [v3 appendFormat:@"metric: %d>", self->_metric];

  return v3;
}

@end