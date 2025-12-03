@interface BigramKey
- (BOOL)isEqual:(id)equal;
- (BigramKey)initWithTokenA:(id)a tokenB:(id)b;
- (id)copyWithZone:(_NSZone *)zone;
- (void)recycle;
@end

@implementation BigramKey

- (BigramKey)initWithTokenA:(id)a tokenB:(id)b
{
  aCopy = a;
  bCopy = b;
  v12.receiver = self;
  v12.super_class = BigramKey;
  v9 = [(BigramKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tokenA, a);
    objc_storeStrong(&v10->_tokenB, b);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
      tokenA = self->_tokenA;
      tokenA = [(BigramKey *)v7 tokenA];
      if ([(NSString *)tokenA isEqualToString:tokenA])
      {
        tokenB = self->_tokenB;
        tokenB = [(BigramKey *)v7 tokenB];
        v6 = [(NSString *)tokenB isEqualToString:tokenB];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BigramKey allocWithZone:zone];
  tokenA = self->_tokenA;
  tokenB = self->_tokenB;

  return [(BigramKey *)v4 initWithTokenA:tokenA tokenB:tokenB];
}

- (void)recycle
{
  tokenA = self->_tokenA;
  self->_tokenA = 0;

  tokenB = self->_tokenB;
  self->_tokenB = 0;
}

@end