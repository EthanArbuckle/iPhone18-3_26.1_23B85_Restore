@interface NSData
- (unint64_t)cpd_readUInt64AtIndex:(unint64_t)a3;
- (unsigned)cpd_twelveBitPrefix;
@end

@implementation NSData

- (unint64_t)cpd_readUInt64AtIndex:(unint64_t)a3
{
  if (a3 + 8 > [(NSData *)self length])
  {
    v5 = [NSString stringWithFormat:@"start index (%tu) + 8  is out of range (%tu)", a3, [(NSData *)self length]];
    v6 = [NSException exceptionWithName:NSRangeException reason:v5 userInfo:0];
    [v6 raise];
  }

  return bswap64(*([(NSData *)self bytes]+ a3));
}

- (unsigned)cpd_twelveBitPrefix
{
  v3 = [(NSData *)self length];
  if (v3)
  {
    v4 = v3;
    v5 = [(NSData *)self bytes];
    LOWORD(v3) = *v5;
    if (v4 != 1)
    {
      LOWORD(v3) = v5[1] | (16 * v3);
    }
  }

  return v3;
}

@end