@interface HDIDSMessageOptions
+ (id)defaultOptionsWithPriority:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (HDIDSMessageOptions)initWithPriority:(unint64_t)a3 timeoutInterval:(double)a4;
- (unint64_t)hash;
@end

@implementation HDIDSMessageOptions

- (HDIDSMessageOptions)initWithPriority:(unint64_t)a3 timeoutInterval:(double)a4
{
  v7.receiver = self;
  v7.super_class = HDIDSMessageOptions;
  result = [(HDIDSMessageOptions *)&v7 init];
  if (result)
  {
    result->_priority = a3;
    result->_timeoutInterval = a4;
  }

  return result;
}

+ (id)defaultOptionsWithPriority:(unint64_t)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithPriority:a3 timeoutInterval:0.0];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_priority == v4->_priority && self->_timeoutInterval == v4->_timeoutInterval;
  }

  return v5;
}

- (unint64_t)hash
{
  priority = self->_priority;
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeoutInterval];
  v4 = [v3 hash];

  return v4 ^ priority;
}

@end