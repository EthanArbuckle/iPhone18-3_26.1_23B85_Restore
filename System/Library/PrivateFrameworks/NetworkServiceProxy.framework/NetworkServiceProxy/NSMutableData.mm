@interface NSMutableData
- (void)appendType:(unsigned __int16)type length:(uint64_t)length value:;
- (void)enumerateTLVsUsingBlock:(void *)block;
@end

@implementation NSMutableData

- (void)appendType:(unsigned __int16)type length:(uint64_t)length value:
{
  v7 = a2;
  typeCopy = type;
  if (result)
  {
    v5 = result;
    [result appendBytes:&v7 length:1];
    [v5 appendBytes:&typeCopy length:2];
    return [v5 appendBytes:length length:typeCopy];
  }

  return result;
}

- (void)enumerateTLVsUsingBlock:(void *)block
{
  v8 = a2;
  if (block)
  {
    v3 = 0;
    do
    {
      if (v3 + 3 > [block length])
      {
        break;
      }

      v4 = *([block bytes] + v3);
      v5 = *([block bytes] + v3 + 1);
      bytes = [block bytes];
      if (v3 + 3 + v5 > [block length])
      {
        break;
      }

      v7 = v8[2](v8, v4, v5, bytes + v3 + 3);
      v3 += 3 + v5;
    }

    while ((v7 & 1) != 0);
  }
}

@end