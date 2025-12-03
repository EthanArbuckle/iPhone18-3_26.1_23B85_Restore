@interface MADTextEmbeddingRequest
- (MADTextEmbeddingRequest)init;
- (MADTextEmbeddingRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADTextEmbeddingRequest

- (MADTextEmbeddingRequest)init
{
  v6.receiver = self;
  v6.super_class = MADTextEmbeddingRequest;
  v2 = [(MADTextEmbeddingRequest *)&v6 init];
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

- (MADTextEmbeddingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MADTextEmbeddingRequest;
  v5 = [(MADTextRequest *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_version = [coderCopy decodeIntegerForKey:@"Version"];
    v5->_calibrate = [coderCopy decodeBoolForKey:@"Calibrate"];
    v5->_computeThreshold = [coderCopy decodeBoolForKey:@"ComputeThreshold"];
    v5->_extendedContextLength = [coderCopy decodeBoolForKey:@"ExtendedContextLength"];
    v5->_computeSafety = [coderCopy decodeBoolForKey:@"ComputeSafety"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADTextEmbeddingRequest;
  coderCopy = coder;
  [(MADTextRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_version forKey:{@"Version", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_calibrate forKey:@"Calibrate"];
  [coderCopy encodeBool:self->_computeThreshold forKey:@"ComputeThreshold"];
  [coderCopy encodeBool:self->_extendedContextLength forKey:@"ExtendedContextLength"];
  [coderCopy encodeBool:self->_computeSafety forKey:@"ComputeSafety"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"version: %d, ", self->_version];
  if (self->_calibrate)
  {
    [string appendFormat:@"calibrate: %d, ", 1];
  }

  if (self->_computeThreshold)
  {
    [string appendFormat:@"computeThreshold: %d, ", 1];
  }

  if (self->_extendedContextLength)
  {
    [string appendFormat:@"extendedContextLength: %d, ", 1];
  }

  if (self->_computeSafety)
  {
    [string appendFormat:@"computeSafety: %d, ", 1];
  }

  results = [(MADTextRequest *)self results];
  [string appendFormat:@"results: %@, ", results];

  error = [(MADTextRequest *)self error];
  [string appendFormat:@"error: %@>", error];

  return string;
}

@end