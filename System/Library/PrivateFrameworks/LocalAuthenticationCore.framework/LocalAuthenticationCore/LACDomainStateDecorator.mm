@interface LACDomainStateDecorator
+ (id)_hashData:(id)a3;
+ (id)saltHash:(id)a3 withBundleID:(id)a4;
@end

@implementation LACDomainStateDecorator

+ (id)saltHash:(id)a3 withBundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    v8 = [v6 mutableCopy];
    v9 = [v7 dataUsingEncoding:4];
    [v8 appendData:v9];

    v10 = [a1 _hashData:v8];
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

+ (id)_hashData:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E695DF88] dataWithLength:32];
    ccsha256_di();
    [v3 length];
    [v3 bytes];
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