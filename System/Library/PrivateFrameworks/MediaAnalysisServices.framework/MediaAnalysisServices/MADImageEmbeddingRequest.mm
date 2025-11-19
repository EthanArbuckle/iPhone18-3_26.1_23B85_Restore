@interface MADImageEmbeddingRequest
- (MADImageEmbeddingRequest)init;
- (MADImageEmbeddingRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADImageEmbeddingRequest

- (MADImageEmbeddingRequest)init
{
  v6.receiver = self;
  v6.super_class = MADImageEmbeddingRequest;
  v2 = [(MADImageEmbeddingRequest *)&v6 init];
  if (v2)
  {
    v3 = _os_feature_enabled_impl();
    v4 = 7;
    if (v3)
    {
      v4 = 9;
    }

    v2->_version = v4;
  }

  return v2;
}

- (MADImageEmbeddingRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MADImageEmbeddingRequest;
  v5 = [(MADRequest *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_version = [v4 decodeIntegerForKey:@"Version"];
    v5->_bypassNormalizaton = [v4 decodeBoolForKey:@"bypassNormalizaton"];
    v5->_embeddingRequestType = [v4 decodeIntegerForKey:@"embeddingRequestType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MADImageEmbeddingRequest;
  [(MADRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_version forKey:@"Version"];
  [v4 encodeBool:self->_bypassNormalizaton forKey:@"bypassNormalizaton"];
  [v4 encodeInteger:self->_embeddingRequestType forKey:@"embeddingRequestType"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"version: %d, ", self->_version];
  [v3 appendFormat:@"bypassNormalizaton: %d, ", self->_bypassNormalizaton];
  [v3 appendFormat:@"requestedEmbeddingType: %d, ", self->_embeddingRequestType];
  v6 = [(MADImageEmbeddingRequest *)self embeddingResults];
  [v3 appendFormat:@"results: %@, ", v6];

  v7 = [(MADRequest *)self error];
  [v3 appendFormat:@"error: %@>", v7];

  return v3;
}

@end