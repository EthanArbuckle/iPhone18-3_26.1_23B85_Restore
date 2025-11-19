@interface GDRelativeFlowSpeedBucketValue
- (GDRelativeFlowSpeedBucketValue)initWithBucket:(int64_t)a3 bucketValue:(double)a4;
- (GDRelativeFlowSpeedBucketValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDRelativeFlowSpeedBucketValue

- (id)description
{
  bucket = self->_bucket;
  if (bucket > 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E7962048[bucket];
  }

  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"GDRelativeFlowSpeedBucketValue<bucket: %@, bucketValue: %lf>", v3, *&self->_bucketValue];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [GDRelativeFlowSpeedBucketValue allocWithZone:a3];
  bucket = self->_bucket;
  bucketValue = self->_bucketValue;

  return MEMORY[0x1EEE66B58](v4, sel_initWithBucket_bucketValue_);
}

- (GDRelativeFlowSpeedBucketValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_bucket);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];
  [v7 intValue];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_bucketValue);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  [v10 doubleValue];

  return MEMORY[0x1EEE66B58](self, sel_initWithBucket_bucketValue_);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  bucket = self->_bucket;
  v6 = a3;
  v7 = [v4 numberWithInteger:bucket];
  v8 = NSStringFromSelector(sel_bucket);
  [v6 encodeObject:v7 forKey:v8];

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bucketValue];
  v9 = NSStringFromSelector(sel_bucketValue);
  [v6 encodeObject:v10 forKey:v9];
}

- (GDRelativeFlowSpeedBucketValue)initWithBucket:(int64_t)a3 bucketValue:(double)a4
{
  v7.receiver = self;
  v7.super_class = GDRelativeFlowSpeedBucketValue;
  result = [(GDRelativeFlowSpeedBucketValue *)&v7 init];
  if (result)
  {
    result->_bucket = a3;
    result->_bucketValue = a4;
  }

  return result;
}

@end