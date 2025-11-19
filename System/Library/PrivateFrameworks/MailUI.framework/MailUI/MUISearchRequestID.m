@interface MUISearchRequestID
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToID:(id)a3;
- (MUISearchRequestID)init;
- (id)description;
- (unint64_t)hash;
@end

@implementation MUISearchRequestID

- (MUISearchRequestID)init
{
  v3.receiver = self;
  v3.super_class = MUISearchRequestID;
  result = [(MUISearchRequestID *)&v3 init];
  if (result)
  {
    result->_underlying = atomic_fetch_add(init_next, 1u);
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(MUISearchRequestID *)self isEqualToID:v4];

  return v5;
}

- (BOOL)isEqualToID:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (self)
  {
    underlying = self->_underlying;
  }

  else
  {
    underlying = 0;
  }

  return underlying == *(a3 + 2);
}

- (unint64_t)hash
{
  if (self)
  {
    return *(self + 8);
  }

  return self;
}

- (id)description
{
  underlying = self;
  if (self)
  {
    underlying = self->_underlying;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%u", underlying];
}

@end