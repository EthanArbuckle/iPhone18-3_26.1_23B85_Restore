@interface NSData
- (unint64_t)cpd_readUInt64AtIndex:(unint64_t)index;
- (unsigned)cpd_twelveBitPrefix;
@end

@implementation NSData

- (unint64_t)cpd_readUInt64AtIndex:(unint64_t)index
{
  if (index + 8 > [(NSData *)self length])
  {
    v5 = [NSString stringWithFormat:@"start index (%tu) + 8  is out of range (%tu)", index, [(NSData *)self length]];
    v6 = [NSException exceptionWithName:NSRangeException reason:v5 userInfo:0];
    [v6 raise];
  }

  return bswap64(*([(NSData *)self bytes]+ index));
}

- (unsigned)cpd_twelveBitPrefix
{
  v3 = [(NSData *)self length];
  if (v3)
  {
    v4 = v3;
    bytes = [(NSData *)self bytes];
    LOWORD(v3) = *bytes;
    if (v4 != 1)
    {
      LOWORD(v3) = bytes[1] | (16 * v3);
    }
  }

  return v3;
}

@end