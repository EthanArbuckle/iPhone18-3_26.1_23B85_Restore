@interface NUAssertionInfo
- (SEL)selector;
- (id)description;
- (id)prettyMethodName;
- (void)setSelector:(SEL)selector;
@end

@implementation NUAssertionInfo

- (void)setSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_selector = selectorCopy;
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  prettyMethodName = [(NUAssertionInfo *)self prettyMethodName];
  message = [(NUAssertionInfo *)self message];
  currentlyExecutingJobName = [(NUAssertionInfo *)self currentlyExecutingJobName];
  v9 = [v3 stringWithFormat:@"<%@: %p> failure in %@: %@ %@", v5, self, prettyMethodName, message, currentlyExecutingJobName];

  return v9;
}

- (id)prettyMethodName
{
  functionName = [(NUAssertionInfo *)self functionName];

  if (functionName)
  {
    functionName2 = [(NUAssertionInfo *)self functionName];
  }

  else
  {
    isClassMethod = [(NUAssertionInfo *)self isClassMethod];
    v6 = MEMORY[0x1E696AEC0];
    v7 = NSStringFromClass([(NUAssertionInfo *)self objectClass]);
    v8 = NSStringFromSelector([(NUAssertionInfo *)self selector]);
    v9 = 45;
    if (isClassMethod)
    {
      v9 = 43;
    }

    functionName2 = [v6 stringWithFormat:@"%c[%@ %@]", v9, v7, v8];
  }

  return functionName2;
}

@end