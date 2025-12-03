@interface HDIDSMessageOptions
+ (id)defaultOptionsWithPriority:(unint64_t)priority;
- (BOOL)isEqual:(id)equal;
- (HDIDSMessageOptions)initWithPriority:(unint64_t)priority timeoutInterval:(double)interval;
- (unint64_t)hash;
@end

@implementation HDIDSMessageOptions

- (HDIDSMessageOptions)initWithPriority:(unint64_t)priority timeoutInterval:(double)interval
{
  v7.receiver = self;
  v7.super_class = HDIDSMessageOptions;
  result = [(HDIDSMessageOptions *)&v7 init];
  if (result)
  {
    result->_priority = priority;
    result->_timeoutInterval = interval;
  }

  return result;
}

+ (id)defaultOptionsWithPriority:(unint64_t)priority
{
  v3 = [objc_alloc(objc_opt_class()) initWithPriority:priority timeoutInterval:0.0];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_priority == equalCopy->_priority && self->_timeoutInterval == equalCopy->_timeoutInterval;
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