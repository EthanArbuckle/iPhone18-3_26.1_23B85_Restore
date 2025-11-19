@interface NUAssertionInfo
- (SEL)selector;
- (id)description;
- (id)prettyMethodName;
- (void)setSelector:(SEL)a3;
@end

@implementation NUAssertionInfo

- (void)setSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_selector = v3;
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
  v6 = [(NUAssertionInfo *)self prettyMethodName];
  v7 = [(NUAssertionInfo *)self message];
  v8 = [(NUAssertionInfo *)self currentlyExecutingJobName];
  v9 = [v3 stringWithFormat:@"<%@: %p> failure in %@: %@ %@", v5, self, v6, v7, v8];

  return v9;
}

- (id)prettyMethodName
{
  v3 = [(NUAssertionInfo *)self functionName];

  if (v3)
  {
    v4 = [(NUAssertionInfo *)self functionName];
  }

  else
  {
    v5 = [(NUAssertionInfo *)self isClassMethod];
    v6 = MEMORY[0x1E696AEC0];
    v7 = NSStringFromClass([(NUAssertionInfo *)self objectClass]);
    v8 = NSStringFromSelector([(NUAssertionInfo *)self selector]);
    v9 = 45;
    if (v5)
    {
      v9 = 43;
    }

    v4 = [v6 stringWithFormat:@"%c[%@ %@]", v9, v7, v8];
  }

  return v4;
}

@end