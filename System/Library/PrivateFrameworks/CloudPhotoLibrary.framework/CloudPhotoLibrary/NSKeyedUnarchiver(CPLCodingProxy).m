@interface NSKeyedUnarchiver(CPLCodingProxy)
- (uint64_t)_cplDecodeBoolForKey:()CPLCodingProxy;
- (uint64_t)_cplDecodeCharForKey:()CPLCodingProxy;
@end

@implementation NSKeyedUnarchiver(CPLCodingProxy)

- (uint64_t)_cplDecodeCharForKey:()CPLCodingProxy
{
  v4 = a3;
  v5 = [a1 error];

  if (v5)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [a1 decodeIntForKey:v4];
    v7 = [a1 error];

    if (v7)
    {
      [a1 __setError:0];
      LOBYTE(v6) = [a1 decodeBoolForKey:v4];
    }
  }

  return v6;
}

- (uint64_t)_cplDecodeBoolForKey:()CPLCodingProxy
{
  v4 = a3;
  v5 = [a1 error];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [a1 decodeBoolForKey:v4];
    v7 = [a1 error];

    if (v7)
    {
      [a1 __setError:0];
      v6 = [a1 decodeIntForKey:v4] != 0;
    }
  }

  return v6;
}

@end