@interface ResourceUsageLocation
- (BOOL)isEqualTo:(id)a3;
- (ResourceUsageLocation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ResourceUsageLocation

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ResourceUsageLocation);
  [(ResourceUsageLocation *)v4 setFunctionIndex:self->_functionIndex];
  [(ResourceUsageLocation *)v4 setSubCommandIndex:self->_subCommandIndex];
  return v4;
}

- (BOOL)isEqualTo:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(ResourceUsageLocation *)self functionIndex];
    if (v6 == [v5 functionIndex])
    {
      v7 = [(ResourceUsageLocation *)self subCommandIndex];
      v8 = v7 == [v5 subCommandIndex];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:self->_functionIndex forKey:@"functionIndex"];
  [v4 encodeInt64:self->_subCommandIndex forKey:@"subCommandIndex"];
}

- (ResourceUsageLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ResourceUsageLocation;
  v5 = [(ResourceUsageLocation *)&v7 init];
  if (v5)
  {
    v5->_functionIndex = [v4 decodeInt64ForKey:@"functionIndex"];
    v5->_subCommandIndex = [v4 decodeInt64ForKey:@"subCommandIndex"];
  }

  return v5;
}

@end