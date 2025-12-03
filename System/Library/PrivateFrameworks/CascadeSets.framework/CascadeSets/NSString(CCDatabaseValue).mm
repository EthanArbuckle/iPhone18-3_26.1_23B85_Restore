@interface NSString(CCDatabaseValue)
- (id)databaseValue_toNumber;
- (uint64_t)databaseValue_textRepresentation;
@end

@implementation NSString(CCDatabaseValue)

- (uint64_t)databaseValue_textRepresentation
{
  selfCopy = self;

  return [selfCopy UTF8String];
}

- (id)databaseValue_toNumber
{
  v2 = [self length];
  v3 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:self];
  v15 = 0;
  if ([v3 scanUnsignedLongLong:&v15] && objc_msgSend(v3, "scanLocation") == v2)
  {
    v4 = v15;
    if (v15 != -1)
    {
LABEL_6:
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
      goto LABEL_25;
    }

    if ([self isEqualToString:@"18446744073709551615"])
    {
      v4 = v15;
      goto LABEL_6;
    }

LABEL_23:
    v5 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:self];
    goto LABEL_25;
  }

  [v3 setScanLocation:0];
  v14 = 0;
  if ([v3 scanLongLong:&v14] && objc_msgSend(v3, "scanLocation") == v2)
  {
    v6 = v14;
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (([self isEqualToString:@"+9223372036854775807"] & 1) == 0)
      {
        goto LABEL_23;
      }

      v6 = v14;
    }

    if (v6 == 0x8000000000000000)
    {
      if (![self isEqualToString:@"-9223372036854775808"])
      {
        goto LABEL_23;
      }

      v6 = v14;
    }

    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:v6];
    goto LABEL_25;
  }

  [v3 setScanLocation:0];
  v12 = 0uLL;
  v13 = 0;
  if (![v3 scanDecimal:&v12] || objc_msgSend(v3, "scanLocation") != v2)
  {
    v7 = 0;
    goto LABEL_26;
  }

  if ((BYTE1(v12) & 0xC) == 0 && ([v3 setScanLocation:0], *&v10 = 0, objc_msgSend(v3, "scanDouble:", &v10)) && objc_msgSend(v3, "scanLocation") == v2)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:*&v10];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E696AB90]);
    v10 = v12;
    v11 = v13;
    v5 = [v8 initWithDecimal:&v10];
  }

LABEL_25:
  v7 = v5;
LABEL_26:

  return v7;
}

@end