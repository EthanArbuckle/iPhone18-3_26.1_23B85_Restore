@interface IDSNegativeInfo
- (IDSNegativeInfo)initWithTime:(double)time count:(int64_t)count;
- (id)description;
@end

@implementation IDSNegativeInfo

- (IDSNegativeInfo)initWithTime:(double)time count:(int64_t)count
{
  v7.receiver = self;
  v7.super_class = IDSNegativeInfo;
  result = [(IDSNegativeInfo *)&v7 init];
  if (result)
  {
    result->_time = time;
    result->_count = count;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  count = self->_count;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  return [v3 stringWithFormat:@"<%@: %p> count: %ld timeInCache: %f", v4, self, count, v6 - self->_time];
}

@end