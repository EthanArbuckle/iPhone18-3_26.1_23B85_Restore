@interface MUISearchRequestID
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToID:(id)d;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(MUISearchRequestID *)self isEqualToID:equalCopy];

  return v5;
}

- (BOOL)isEqualToID:(id)d
{
  if (!d)
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

  return underlying == *(d + 2);
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