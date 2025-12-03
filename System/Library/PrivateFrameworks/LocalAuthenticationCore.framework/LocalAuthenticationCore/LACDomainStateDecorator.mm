@interface LACDomainStateDecorator
+ (id)_hashData:(id)data;
+ (id)saltHash:(id)hash withBundleID:(id)d;
@end

@implementation LACDomainStateDecorator

+ (id)saltHash:(id)hash withBundleID:(id)d
{
  hashCopy = hash;
  dCopy = d;
  if ([dCopy length])
  {
    v8 = [hashCopy mutableCopy];
    v9 = [dCopy dataUsingEncoding:4];
    [v8 appendData:v9];

    v10 = [self _hashData:v8];
  }

  else
  {
    v10 = hashCopy;
  }

  return v10;
}

+ (id)_hashData:(id)data
{
  dataCopy = data;
  if ([dataCopy length])
  {
    v4 = [MEMORY[0x1E695DF88] dataWithLength:32];
    ccsha256_di();
    [dataCopy length];
    [dataCopy bytes];
    [v4 mutableBytes];
    ccdigest();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end