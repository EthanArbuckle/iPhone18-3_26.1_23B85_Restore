@interface _DASActivityRateLimit
+ (id)rateLimitWithMaximum:(unint64_t)a3 perWindow:(double)a4;
- (BOOL)isEqual:(id)a3;
- (_DASActivityRateLimit)initWithCoder:(id)a3;
- (_DASActivityRateLimit)initWithMaximum:(unint64_t)a3 perWindow:(double)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DASActivityRateLimit

- (_DASActivityRateLimit)initWithMaximum:(unint64_t)a3 perWindow:(double)a4
{
  v7.receiver = self;
  v7.super_class = _DASActivityRateLimit;
  result = [(_DASActivityRateLimit *)&v7 init];
  if (result)
  {
    result->_maximum = a3;
    result->_window = a4;
  }

  return result;
}

+ (id)rateLimitWithMaximum:(unint64_t)a3 perWindow:(double)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithMaximum:a3 perWindow:a4];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  maximum = self->_maximum;
  v6 = a3;
  v7 = [v4 numberWithUnsignedInteger:maximum];
  [v6 encodeObject:v7 forKey:@"maximum"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_window];
  [v6 encodeObject:v8 forKey:@"window"];
}

- (_DASActivityRateLimit)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _DASActivityRateLimit;
  v5 = [(_DASActivityRateLimit *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maximum"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"window"];
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