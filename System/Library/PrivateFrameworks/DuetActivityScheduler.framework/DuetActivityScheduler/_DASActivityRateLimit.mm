@interface _DASActivityRateLimit
+ (id)rateLimitWithMaximum:(unint64_t)maximum perWindow:(double)window;
- (BOOL)isEqual:(id)equal;
- (_DASActivityRateLimit)initWithCoder:(id)coder;
- (_DASActivityRateLimit)initWithMaximum:(unint64_t)maximum perWindow:(double)window;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DASActivityRateLimit

- (_DASActivityRateLimit)initWithMaximum:(unint64_t)maximum perWindow:(double)window
{
  v7.receiver = self;
  v7.super_class = _DASActivityRateLimit;
  result = [(_DASActivityRateLimit *)&v7 init];
  if (result)
  {
    result->_maximum = maximum;
    result->_window = window;
  }

  return result;
}

+ (id)rateLimitWithMaximum:(unint64_t)maximum perWindow:(double)window
{
  v4 = [objc_alloc(objc_opt_class()) initWithMaximum:maximum perWindow:window];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      maximum = self->_maximum;
      if (maximum == [(_DASActivityRateLimit *)v5 maximum])
      {
        window = self->_window;
        [(_DASActivityRateLimit *)v5 window];
        v9 = window == v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  maximum = self->_maximum;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedInteger:maximum];
  [coderCopy encodeObject:v7 forKey:@"maximum"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_window];
  [coderCopy encodeObject:v8 forKey:@"window"];
}

- (_DASActivityRateLimit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _DASActivityRateLimit;
  v5 = [(_DASActivityRateLimit *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maximum"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"window"];
    v8 = v7;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v5->_maximum = [v6 unsignedIntValue];
      [v8 doubleValue];
      v5->_window = v10;
      v11 = v5;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end