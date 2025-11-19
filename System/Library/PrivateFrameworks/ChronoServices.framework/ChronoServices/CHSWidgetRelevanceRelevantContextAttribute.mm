@interface CHSWidgetRelevanceRelevantContextAttribute
- (BOOL)isEqual:(id)a3;
- (CHSWidgetRelevanceRelevantContextAttribute)initWithCoder:(id)a3;
- (CHSWidgetRelevanceRelevantContextAttribute)initWithRelevantContext:(id)a3;
- (id)description;
@end

@implementation CHSWidgetRelevanceRelevantContextAttribute

- (CHSWidgetRelevanceRelevantContextAttribute)initWithRelevantContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CHSWidgetRelevanceRelevantContextAttribute;
  v5 = [(CHSWidgetRelevanceAttribute *)&v9 _init];
  if (v5)
  {
    v6 = [v4 copy];
    context = v5->_context;
    v5->_context = v6;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_context withName:@"context"];
  v5 = [v3 build];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      context = v4->_context;
      v6 = self->_context;
      v7 = BSEqualObjects();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (CHSWidgetRelevanceRelevantContextAttribute)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CHSWidgetRelevanceRelevantContextAttribute;
  v5 = [(CHSWidgetRelevanceAttribute *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    context = v5->_context;
    v5->_context = v6;
  }

  return v5;
}

@end