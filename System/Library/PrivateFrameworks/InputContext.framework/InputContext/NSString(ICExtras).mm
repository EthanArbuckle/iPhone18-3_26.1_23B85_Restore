@interface NSString(ICExtras)
- (BOOL)_ICEnumerateLongCharactersInRange:()ICExtras usingBlock:;
@end

@implementation NSString(ICExtras)

- (BOOL)_ICEnumerateLongCharactersInRange:()ICExtras usingBlock:
{
  v8 = a5;
  v16 = 0;
  v9 = a3 + a4;
  if (a3 >= a3 + a4)
  {
    v14 = 1;
    goto LABEL_15;
  }

  v10 = 0;
  do
  {
    v11 = [self characterAtIndex:a3];
    v12 = v11;
    if (!v10 && (v11 & 0xF800) != 0xD800)
    {
      goto LABEL_10;
    }

    v13 = v11 & 0xFC00;
    if (v10 || v13 != 55296)
    {
      v14 = 0;
      if (!v10 || v13 != 56320)
      {
        goto LABEL_15;
      }

      v12 = (v11 + (v10 << 10) - 56613888);
LABEL_10:
      v8[2](v8, v12, &v16);
      LODWORD(v12) = 0;
    }

    if (v16)
    {
      break;
    }

    ++a3;
    v10 = v12;
  }

  while (a3 < v9);
  v14 = v12 == 0;
LABEL_15:

  return v14;
}

@end