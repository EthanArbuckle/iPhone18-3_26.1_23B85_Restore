@interface MADTextEmbeddingRequest
- (MADTextEmbeddingRequest)init;
- (MADTextEmbeddingRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (MADTextEmbeddingRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MADTextEmbeddingRequest;
  v5 = [(MADTextRequest *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_version = [v4 decodeIntegerForKey:@"Version"];
    v5->_calibrate = [v4 decodeBoolForKey:@"Calibrate"];
    v5->_computeThreshold = [v4 decodeBoolForKey:@"ComputeThreshold"];
    v5->_extendedContextLength = [v4 decodeBoolForKey:@"ExtendedContextLength"];
    v5->_computeSafety = [v4 decodeBoolForKey:@"ComputeSafety"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADTextEmbeddingRequest;
  v4 = a3;
  [(MADTextRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_version forKey:{@"Version", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_calibrate forKey:@"Calibrate"];
  [v4 encodeBool:self->_computeThreshold forKey:@"ComputeThreshold"];
  [v4 encodeBool:self->_extendedContextLength forKey:@"ExtendedContextLength"];
  [v4 encodeBool:self->_computeSafety forKey:@"ComputeSafety"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"version: %d, ", self->_version];
  if (self->_calibrate)
  {
    [v3 appendFormat:@"calibrate: %d, ", 1];
  }

  if (self->_computeThreshold)
  {
    [v3 appendFormat:@"computeThreshold: %d, ", 1];
  }

  if (self->_extendedContextLength)
  {
    [v3 appendFormat:@"extendedContextLength: %d, ", 1];
  }

  if (self->_computeSafety)
  {
    [v3 appendFormat:@"computeSafety: %d, ", 1];
  }

  v6 = [(MADTextRequest *)self results];
  [v3 appendFormat:@"results: %@, ", v6];

  v7 = [(MADTextRequest *)self error];
  [v3 appendFormat:@"error: %@>", v7];

  return v3;
}

@end