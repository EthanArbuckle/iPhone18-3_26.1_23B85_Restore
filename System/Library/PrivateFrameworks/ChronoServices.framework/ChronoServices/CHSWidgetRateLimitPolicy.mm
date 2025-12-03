@interface CHSWidgetRateLimitPolicy
- (BOOL)isEqual:(id)equal;
- (CHSWidgetRateLimitPolicy)initWithCoder:(id)coder;
- (CHSWidgetRateLimitPolicy)initWithIdentifier:(id)identifier rateLimits:(id)limits;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSWidgetRateLimitPolicy

- (CHSWidgetRateLimitPolicy)initWithIdentifier:(id)identifier rateLimits:(id)limits
{
  identifierCopy = identifier;
  limitsCopy = limits;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CHSWidgetRateLimitPolicy.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];
  }

  if (![limitsCopy count])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"CHSWidgetRateLimitPolicy.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"[rateLimits count] > 0"}];
  }

  v17.receiver = self;
  v17.super_class = CHSWidgetRateLimitPolicy;
  v9 = [(CHSWidgetRateLimitPolicy *)&v17 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    v12 = [limitsCopy copy];
    rateLimits = v9->_rateLimits;
    v9->_rateLimits = v12;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = self->_identifier;
      v7 = v5->_identifier;
      if (BSEqualObjects())
      {
        rateLimits = self->_rateLimits;
        v9 = v5->_rateLimits;
        v10 = BSEqualObjects();
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__CHSWidgetRateLimitPolicy_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E7453000;
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:0 block:v6];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  allObjects = [(NSSet *)self->_rateLimits allObjects];
  [coderCopy encodeObject:allObjects forKey:@"rateLimits"];
}

- (CHSWidgetRateLimitPolicy)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = MEMORY[0x1E695DFD8];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"rateLimits"];

  if ([v9 count])
  {
    v10 = [MEMORY[0x1E695DFD8] setWithArray:v9];
    self = [(CHSWidgetRateLimitPolicy *)self initWithIdentifier:v5 rateLimits:v10];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end