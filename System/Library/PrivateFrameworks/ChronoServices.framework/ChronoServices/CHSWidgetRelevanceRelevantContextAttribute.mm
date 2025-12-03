@interface CHSWidgetRelevanceRelevantContextAttribute
- (BOOL)isEqual:(id)equal;
- (CHSWidgetRelevanceRelevantContextAttribute)initWithCoder:(id)coder;
- (CHSWidgetRelevanceRelevantContextAttribute)initWithRelevantContext:(id)context;
- (id)description;
@end

@implementation CHSWidgetRelevanceRelevantContextAttribute

- (CHSWidgetRelevanceRelevantContextAttribute)initWithRelevantContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = CHSWidgetRelevanceRelevantContextAttribute;
  _init = [(CHSWidgetRelevanceAttribute *)&v9 _init];
  if (_init)
  {
    v6 = [contextCopy copy];
    context = _init->_context;
    _init->_context = v6;
  }

  return _init;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_context withName:@"context"];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      context = equalCopy->_context;
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

- (CHSWidgetRelevanceRelevantContextAttribute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CHSWidgetRelevanceRelevantContextAttribute;
  v5 = [(CHSWidgetRelevanceAttribute *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    context = v5->_context;
    v5->_context = v6;
  }

  return v5;
}

@end