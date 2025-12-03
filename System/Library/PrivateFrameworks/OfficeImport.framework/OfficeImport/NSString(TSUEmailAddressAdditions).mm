@interface NSString(TSUEmailAddressAdditions)
- (BOOL)tsu_isLegalEmailAddress;
- (id)tsu_uncommentedAddress;
- (id)tsu_uncommentedAddressRespectingGroups;
@end

@implementation NSString(TSUEmailAddressAdditions)

- (id)tsu_uncommentedAddress
{
  v2 = [self length];
  v3 = NSZoneMalloc(0, 2 * v2 + 2);
  v4 = v3;
  v5 = MEMORY[0x277D85DE0];
  v6 = v3;
  if (v2)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v19 = 0;
    v20 = 1;
    v6 = v3;
    do
    {
      v10 = [self characterAtIndex:v7];
      v11 = v10;
      if (v10 == 92)
      {
        if (v7 + 1 >= v2)
        {
          if ((v9 & 1) == 0)
          {
            if (v8 < 1)
            {
              goto LABEL_18;
            }

LABEL_15:
            v9 = 0;
            v8 -= v10 == 41;
            goto LABEL_24;
          }

LABEL_10:
          *v6 = v10;
          v6 += 2;
          v9 &= v10 != 34;
          goto LABEL_24;
        }

        *v6 = 92;
        *(v6 + 1) = [self characterAtIndex:v7 + 1];
        v6 += 4;
        ++v7;
      }

      else
      {
        if (v9)
        {
          goto LABEL_10;
        }

        if (v10 == 40)
        {
          v9 = 0;
          ++v8;
        }

        else
        {
          if (v8 > 0)
          {
            goto LABEL_15;
          }

          if (v10 != 60)
          {
            if ((v19 & (v10 == 62)) != 0)
            {
              break;
            }

            if (v10 > 0x7F)
            {
              if (__maskrune(v10, 0x4000uLL))
              {
LABEL_19:
                v9 = 0;
                if ((v20 & 1) == 0)
                {
                  *v6 = 32;
                  v6 += 2;
                }

                v20 = 1;
                goto LABEL_24;
              }
            }

            else
            {
LABEL_18:
              if ((*(v5 + 4 * v10 + 60) & 0x4000) != 0)
              {
                goto LABEL_19;
              }
            }

            v20 = 0;
            *v6 = v11;
            v6 += 2;
            v9 |= v11 == 34;
            goto LABEL_24;
          }

          v9 = 0;
          v19 = 1;
          v6 = v4;
        }
      }

LABEL_24:
      ++v7;
    }

    while (v7 < v2);
  }

  v12 = v6 - v4;
  do
  {
    v13 = v6;
    v14 = v12;
    if (v6 <= v4)
    {
      break;
    }

    v6 -= 2;
    v15 = *(v13 - 1);
    v16 = v15 > 0x7F ? __maskrune(v15, 0x4000uLL) : *(v5 + 4 * v15 + 60) & 0x4000;
    v12 = v14 - 2;
  }

  while (v16);
  *v13 = 0;
  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:v4 length:v14 >> 1];
  NSZoneFree(0, v4);

  return v17;
}

- (id)tsu_uncommentedAddressRespectingGroups
{
  v2 = [self rangeOfString:@"@"];
  v3 = [self rangeOfString:@"<"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL && v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self tsu_uncommentedAddress];
  }

  return selfCopy;
}

- (BOOL)tsu_isLegalEmailAddress
{
  tsu_uncommentedAddressRespectingGroups = [self tsu_uncommentedAddressRespectingGroups];
  v3 = tsu_isLegalEmailAddress_re;
  if (!tsu_isLegalEmailAddress_re)
  {
    v4 = [[OISFURegularExpression alloc] initWithExpressionString:@"^([^][:space:]()<>@, ;:\\.[]+(\\.[^][:space:]()<>@, ;:\\.[]+)*(@[[:alnum:]_+-]+(\\.[[:alnum:]_+-]+)*)?|([^]()<>@, ;:\\.[]|[^\\\r\n]*)*<[^][:space:]()<>@, ;:\\.[]+(\\.[^][:space:]()<>@, ;:\\.[]+)*(@[[:alnum:]_+-]+(\\.[[:alnum:]_+-]+)*)?>)$"];
    v5 = tsu_isLegalEmailAddress_re;
    tsu_isLegalEmailAddress_re = v4;

    v3 = tsu_isLegalEmailAddress_re;
  }

  v6 = [v3 getBytesForString:tsu_uncommentedAddressRespectingGroups lossByte:10];
  v7 = [tsu_uncommentedAddressRespectingGroups length];
  v8 = [tsu_isLegalEmailAddress_re matchedRangeForCString:v6 range:0 subexpressionRanges:v7 count:{0, 0}];
  v10 = v9;
  v11 = [self rangeOfString:@"@"];
  v12 = [self rangeOfString:@"." options:4];
  v13 = 0;
  if (!v8)
  {
    v13 = v11 != 0x7FFFFFFFFFFFFFFFLL && v12 != 0x7FFFFFFFFFFFFFFFLL && v10 == v7 && v12 > v11;
  }

  return v13;
}

@end