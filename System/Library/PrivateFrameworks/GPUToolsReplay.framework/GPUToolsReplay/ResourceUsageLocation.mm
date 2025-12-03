@interface ResourceUsageLocation
- (BOOL)isEqualTo:(id)to;
- (ResourceUsageLocation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ResourceUsageLocation

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ResourceUsageLocation);
  [(ResourceUsageLocation *)v4 setFunctionIndex:self->_functionIndex];
  [(ResourceUsageLocation *)v4 setSubCommandIndex:self->_subCommandIndex];
  return v4;
}

- (BOOL)isEqualTo:(id)to
{
  toCopy = to;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = toCopy;
    functionIndex = [(ResourceUsageLocation *)self functionIndex];
    if (functionIndex == [v5 functionIndex])
    {
      subCommandIndex = [(ResourceUsageLocation *)self subCommandIndex];
      v8 = subCommandIndex == [v5 subCommandIndex];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_functionIndex forKey:@"functionIndex"];
  [coderCopy encodeInt64:self->_subCommandIndex forKey:@"subCommandIndex"];
}

- (ResourceUsageLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = ResourceUsageLocation;
  v5 = [(ResourceUsageLocation *)&v7 init];
  if (v5)
  {
    v5->_functionIndex = [coderCopy decodeInt64ForKey:@"functionIndex"];
    v5->_subCommandIndex = [coderCopy decodeInt64ForKey:@"subCommandIndex"];
  }

  return v5;
}

@end