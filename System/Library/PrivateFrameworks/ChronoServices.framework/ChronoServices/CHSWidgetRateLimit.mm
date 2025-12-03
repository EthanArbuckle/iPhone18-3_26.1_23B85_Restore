@interface CHSWidgetRateLimit
- (BOOL)isEqual:(id)equal;
- (CHSWidgetRateLimit)initWithCoder:(id)coder;
- (CHSWidgetRateLimit)initWithMaximumRefreshes:(unint64_t)refreshes perWindow:(double)window;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSWidgetRateLimit

- (CHSWidgetRateLimit)initWithMaximumRefreshes:(unint64_t)refreshes perWindow:(double)window
{
  if (!refreshes)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CHSWidgetRateLimit.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"maximum > 0"}];
  }

  if (window <= 0.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"CHSWidgetRateLimit.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"window > 0"}];
  }

  v11.receiver = self;
  v11.super_class = CHSWidgetRateLimit;
  result = [(CHSWidgetRateLimit *)&v11 init];
  if (result)
  {
    result->_maximum = refreshes;
    result->_windowInSeconds = window;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_maximum == equalCopy->_maximum && self->_windowInSeconds == equalCopy->_windowInSeconds;
  }

  return v5;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__CHSWidgetRateLimit_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E7453000;
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:LODWORD(self->_maximum) forKey:@"maximum"];
  [coderCopy encodeDouble:@"window" forKey:self->_windowInSeconds];
}

- (CHSWidgetRateLimit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt32ForKey:@"maximum"];
  [coderCopy decodeDoubleForKey:@"window"];
  v6 = [(CHSWidgetRateLimit *)self initWithMaximumRefreshes:v5 perWindow:?];

  return v6;
}

@end