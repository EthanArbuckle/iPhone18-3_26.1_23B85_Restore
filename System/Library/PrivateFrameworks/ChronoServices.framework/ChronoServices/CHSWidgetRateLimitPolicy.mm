@interface CHSWidgetRateLimitPolicy
- (BOOL)isEqual:(id)a3;
- (CHSWidgetRateLimitPolicy)initWithCoder:(id)a3;
- (CHSWidgetRateLimitPolicy)initWithIdentifier:(id)a3 rateLimits:(id)a4;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSWidgetRateLimitPolicy

- (CHSWidgetRateLimitPolicy)initWithIdentifier:(id)a3 rateLimits:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"CHSWidgetRateLimitPolicy.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];
  }

  if (![v8 count])
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"CHSWidgetRateLimitPolicy.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"[rateLimits count] > 0"}];
  }

  v17.receiver = self;
  v17.super_class = CHSWidgetRateLimitPolicy;
  v9 = [(CHSWidgetRateLimitPolicy *)&v17 init];
  if (v9)
  {
    v10 = [v7 copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    v12 = [v8 copy];
    rateLimits = v9->_rateLimits;
    v9->_rateLimits = v12;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__CHSWidgetRateLimitPolicy_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E7453000;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:0 block:v6];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  v4 = [(NSSet *)self->_rateLimits allObjects];
  [v5 encodeObject:v4 forKey:@"rateLimits"];
}

- (CHSWidgetRateLimitPolicy)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = MEMORY[0x1E695DFD8];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"rateLimits"];

  if ([v9 count])
  {
    v10 = [MEMORY[0x1E695DFD8] setWithArray:v9];
    self = [(CHSWidgetRateLimitPolicy *)self initWithIdentifier:v5 rateLimits:v10];

    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

@end