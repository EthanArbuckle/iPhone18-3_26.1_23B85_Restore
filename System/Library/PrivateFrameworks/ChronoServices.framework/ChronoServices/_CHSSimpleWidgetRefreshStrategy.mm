@interface _CHSSimpleWidgetRefreshStrategy
- (BOOL)isEqual:(id)a3;
- (_CHSSimpleWidgetRefreshStrategy)initWithCoder:(id)a3;
- (_CHSSimpleWidgetRefreshStrategy)initWithDefaultStrategy;
- (_CHSSimpleWidgetRefreshStrategy)initWithDisabledStrategy;
- (_CHSSimpleWidgetRefreshStrategy)initWithRateLimitIdentifier:(id)a3;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CHSSimpleWidgetRefreshStrategy

- (_CHSSimpleWidgetRefreshStrategy)initWithDefaultStrategy
{
  v6.receiver = self;
  v6.super_class = _CHSSimpleWidgetRefreshStrategy;
  v2 = [(_CHSSimpleWidgetRefreshStrategy *)&v6 init];
  v3 = v2;
  if (v2)
  {
    rateLimitIdentifier = v2->_rateLimitIdentifier;
    v2->_rateLimitIdentifier = 0;

    v3->_isDefaultStrategy = 1;
  }

  return v3;
}

- (_CHSSimpleWidgetRefreshStrategy)initWithRateLimitIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _CHSSimpleWidgetRefreshStrategy;
  v5 = [(_CHSSimpleWidgetRefreshStrategy *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    rateLimitIdentifier = v5->_rateLimitIdentifier;
    v5->_rateLimitIdentifier = v6;
  }

  return v5;
}

- (_CHSSimpleWidgetRefreshStrategy)initWithDisabledStrategy
{
  v6.receiver = self;
  v6.super_class = _CHSSimpleWidgetRefreshStrategy;
  v2 = [(_CHSSimpleWidgetRefreshStrategy *)&v6 init];
  v3 = v2;
  if (v2)
  {
    rateLimitIdentifier = v2->_rateLimitIdentifier;
    v2->_rateLimitIdentifier = 0;

    v3->_isDisabledStrategy = 1;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      rateLimitIdentifier = self->_rateLimitIdentifier;
      v7 = v5->_rateLimitIdentifier;
      v8 = BSEqualObjects() && self->_isDisabledStrategy == v5->_isDisabledStrategy && self->_isDefaultStrategy == v5->_isDefaultStrategy;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64___CHSSimpleWidgetRefreshStrategy_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E7453000;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [v5 appendProem:0 block:v6];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_rateLimitIdentifier forKey:@"rateLimitIdentifier"];
  [v4 encodeBool:self->_isDefaultStrategy forKey:@"isDefaultStrategy"];
  [v4 encodeBool:self->_isDisabledStrategy forKey:@"isDisabledStrategy"];
}

- (_CHSSimpleWidgetRefreshStrategy)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _CHSSimpleWidgetRefreshStrategy;
  v5 = [(_CHSSimpleWidgetRefreshStrategy *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rateLimitIdentifier"];
    rateLimitIdentifier = v5->_rateLimitIdentifier;
    v5->_rateLimitIdentifier = v6;

    v5->_isDefaultStrategy = [v4 decodeBoolForKey:@"isDefaultStrategy"];
    v5->_isDisabledStrategy = [v4 decodeBoolForKey:@"isDisabledStrategy"];
  }

  return v5;
}

@end