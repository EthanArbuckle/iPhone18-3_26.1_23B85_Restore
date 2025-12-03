@interface MADImageEmbeddingRequest
- (MADImageEmbeddingRequest)init;
- (MADImageEmbeddingRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (MADImageEmbeddingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MADImageEmbeddingRequest;
  v5 = [(MADRequest *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_version = [coderCopy decodeIntegerForKey:@"Version"];
    v5->_bypassNormalizaton = [coderCopy decodeBoolForKey:@"bypassNormalizaton"];
    v5->_embeddingRequestType = [coderCopy decodeIntegerForKey:@"embeddingRequestType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = MADImageEmbeddingRequest;
  [(MADRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_version forKey:@"Version"];
  [coderCopy encodeBool:self->_bypassNormalizaton forKey:@"bypassNormalizaton"];
  [coderCopy encodeInteger:self->_embeddingRequestType forKey:@"embeddingRequestType"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"version: %d, ", self->_version];
  [string appendFormat:@"bypassNormalizaton: %d, ", self->_bypassNormalizaton];
  [string appendFormat:@"requestedEmbeddingType: %d, ", self->_embeddingRequestType];
  embeddingResults = [(MADImageEmbeddingRequest *)self embeddingResults];
  [string appendFormat:@"results: %@, ", embeddingResults];

  error = [(MADRequest *)self error];
  [string appendFormat:@"error: %@>", error];

  return string;
}

@end