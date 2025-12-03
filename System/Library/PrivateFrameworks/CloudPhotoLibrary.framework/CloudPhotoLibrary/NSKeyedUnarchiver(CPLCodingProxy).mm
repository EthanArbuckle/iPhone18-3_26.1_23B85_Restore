@interface NSKeyedUnarchiver(CPLCodingProxy)
- (uint64_t)_cplDecodeBoolForKey:()CPLCodingProxy;
- (uint64_t)_cplDecodeCharForKey:()CPLCodingProxy;
@end

@implementation NSKeyedUnarchiver(CPLCodingProxy)

- (uint64_t)_cplDecodeCharForKey:()CPLCodingProxy
{
  v4 = a3;
  error = [self error];

  if (error)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [self decodeIntForKey:v4];
    error2 = [self error];

    if (error2)
    {
      [self __setError:0];
      LOBYTE(v6) = [self decodeBoolForKey:v4];
    }
  }

  return v6;
}

- (uint64_t)_cplDecodeBoolForKey:()CPLCodingProxy
{
  v4 = a3;
  error = [self error];

  if (error)
  {
    v6 = 0;
  }

  else
  {
    v6 = [self decodeBoolForKey:v4];
    error2 = [self error];

    if (error2)
    {
      [self __setError:0];
      v6 = [self decodeIntForKey:v4] != 0;
    }
  }

  return v6;
}

@end