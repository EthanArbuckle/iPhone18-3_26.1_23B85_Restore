@interface BigramKey
- (BOOL)isEqual:(id)a3;
- (BigramKey)initWithTokenA:(id)a3 tokenB:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)recycle;
@end

@implementation BigramKey

- (BigramKey)initWithTokenA:(id)a3 tokenB:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BigramKey;
  v9 = [(BigramKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tokenA, a3);
    objc_storeStrong(&v10->_tokenB, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
      tokenA = self->_tokenA;
      v9 = [(BigramKey *)v7 tokenA];
      if ([(NSString *)tokenA isEqualToString:v9])
      {
        tokenB = self->_tokenB;
        v11 = [(BigramKey *)v7 tokenB];
        v6 = [(NSString *)tokenB isEqualToString:v11];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BigramKey allocWithZone:a3];
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