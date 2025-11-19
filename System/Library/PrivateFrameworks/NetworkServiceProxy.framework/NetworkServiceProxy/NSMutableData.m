@interface NSMutableData
- (void)appendType:(unsigned __int16)a3 length:(uint64_t)a4 value:;
- (void)enumerateTLVsUsingBlock:(void *)a1;
@end

@implementation NSMutableData

- (void)appendType:(unsigned __int16)a3 length:(uint64_t)a4 value:
{
  v7 = a2;
  v6 = a3;
  if (result)
  {
    v5 = result;
    [result appendBytes:&v7 length:1];
    [v5 appendBytes:&v6 length:2];
    return [v5 appendBytes:a4 length:v6];
  }

  return result;
}

- (void)enumerateTLVsUsingBlock:(void *)a1
{
  v8 = a2;
  if (a1)
  {
    v3 = 0;
    do
    {
      if (v3 + 3 > [a1 length])
      {
        break;
      }

      v4 = *([a1 bytes] + v3);
      v5 = *([a1 bytes] + v3 + 1);
      v6 = [a1 bytes];
      if (v3 + 3 + v5 > [a1 length])
      {
        break;
      }

      v7 = v8[2](v8, v4, v5, v6 + v3 + 3);
      v3 += 3 + v5;
    }

    while ((v7 & 1) != 0);
  }
}

@end