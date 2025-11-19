@interface CHSWidgetRateLimit
- (BOOL)isEqual:(id)a3;
- (CHSWidgetRateLimit)initWithCoder:(id)a3;
- (CHSWidgetRateLimit)initWithMaximumRefreshes:(unint64_t)a3 perWindow:(double)a4;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSWidgetRateLimit

- (CHSWidgetRateLimit)initWithMaximumRefreshes:(unint64_t)a3 perWindow:(double)a4
{
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"CHSWidgetRateLimit.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"maximum > 0"}];
  }

  if (a4 <= 0.0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"CHSWidgetRateLimit.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"window > 0"}];
  }

  v11.receiver = self;
  v11.super_class = CHSWidgetRateLimit;
  result = [(CHSWidgetRateLimit *)&v11 init];
  if (result)
  {
    result->_maximum = a3;
    result->_windowInSeconds = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_maximum == v4->_maximum && self->_windowInSeconds == v4->_windowInSeconds;
  }

  return v5;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__CHSWidgetRateLimit_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E7453000;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:0 block:v6];
}

void __51__CHSWidgetRateLimit_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(a1 + 40) + 8)];
  v3 = [v2 appendObject:? withName:?];

  v4 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(a1 + 40) + 16)];
  v5 = [v4 appendObject:? withName:?];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:LODWORD(self->_maximum) forKey:@"maximum"];
  [v4 encodeDouble:@"window" forKey:self->_windowInSeconds];
}

- (CHSWidgetRateLimit)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt32ForKey:@"maximum"];
  [v4 decodeDoubleForKey:@"window"];
  v6 = [(CHSWidgetRateLimit *)self initWithMaximumRefreshes:v5 perWindow:?];

  return v6;
}

@end