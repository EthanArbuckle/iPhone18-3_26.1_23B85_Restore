@interface RTSource
- (BOOL)isEqual:(id)equal;
- (RTSource)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
@end

@implementation RTSource

- (RTSource)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = RTSource;
  return [(RTSource *)&v4 init];
}

- (id)description
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else if (equalCopy)
  {
    v6 = [(RTSource *)equalCopy isMemberOfClass:objc_opt_class()];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

@end