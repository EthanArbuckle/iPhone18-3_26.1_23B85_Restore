@interface GDTrafficBucketValue
- (GDTrafficBucketValue)initWithBucket:(int64_t)bucket bucketValue:(double)value;
- (GDTrafficBucketValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDTrafficBucketValue

- (id)description
{
  bucket = self->_bucket;
  if (bucket > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E7961FE0[bucket];
  }

  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"GDTrafficBucketValue<bucket: %@, bucketValue: %lf>", v3, *&self->_bucketValue];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GDTrafficBucketValue allocWithZone:zone];
  bucket = self->_bucket;
  bucketValue = self->_bucketValue;

  return MEMORY[0x1EEE66B58](v4, sel_initWithBucket_bucketValue_);
}

- (GDTrafficBucketValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_bucket);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];
  [v7 intValue];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_bucketValue);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  [v10 doubleValue];

  return MEMORY[0x1EEE66B58](self, sel_initWithBucket_bucketValue_);
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  bucket = self->_bucket;
  coderCopy = coder;
  v7 = [v4 numberWithInteger:bucket];
  v8 = NSStringFromSelector(sel_bucket);
  [coderCopy encodeObject:v7 forKey:v8];

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bucketValue];
  v9 = NSStringFromSelector(sel_bucketValue);
  [coderCopy encodeObject:v10 forKey:v9];
}

- (GDTrafficBucketValue)initWithBucket:(int64_t)bucket bucketValue:(double)value
{
  v7.receiver = self;
  v7.super_class = GDTrafficBucketValue;
  result = [(GDTrafficBucketValue *)&v7 init];
  if (result)
  {
    result->_bucket = bucket;
    result->_bucketValue = value;
  }

  return result;
}

@end