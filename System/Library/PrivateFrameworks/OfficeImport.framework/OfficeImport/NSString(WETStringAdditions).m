@interface NSString(WETStringAdditions)
- (uint64_t)fontTypeForCharacter:()WETStringAdditions isControl:;
- (uint64_t)tc_fontTypeAtIndex:()WETStringAdditions effectiveRange:forXML:;
@end

@implementation NSString(WETStringAdditions)

- (uint64_t)fontTypeForCharacter:()WETStringAdditions isControl:
{
  *a4 = a3 < 0x21;
  if (a3 < 0xA0)
  {
    return 0;
  }

  if (a3 < 0x590)
  {
    return 3;
  }

  if (a3 < 0x780)
  {
    return 2;
  }

  v5 = a3 >> 8;
  if (a3 >> 8 < 0x11)
  {
    return 0;
  }

  if (a3 >> 9 < 9)
  {
    return 1;
  }

  if (a3 >> 9 < 0xF)
  {
    return 0;
  }

  if (a3 >> 7 < 0x5D)
  {
    return 3;
  }

  if (a3 < 0xE000)
  {
    return 1;
  }

  if (v5 < 0xF9)
  {
    return 3;
  }

  if (v5 < 0xFB)
  {
    return 1;
  }

  if (a3 < 0xFB1D)
  {
    return 3;
  }

  v6 = a3 >> 4;
  if (a3 >> 4 < 0xFE3)
  {
    return 0;
  }

  if (v6 < 0xFE7)
  {
    return 1;
  }

  if (v5 < 0xFF)
  {
    return 0;
  }

  return v6 < 0xFFF;
}

- (uint64_t)tc_fontTypeAtIndex:()WETStringAdditions effectiveRange:forXML:
{
  if ([a1 length] <= a3)
  {
    return 0xFFFFFFFFLL;
  }

  v21 = 0;
  v9 = [a1 characterAtIndex:a3];
  if (a5)
  {
    v10 = [a1 fontTypeForCharacter:v9 isControl:&v21];
  }

  else
  {
    v10 = OCLanguageTypeForCharacter(v9, &v21);
  }

  v11 = v10;
  if (a4)
  {
    *a4 = a3;
    v12 = [a1 length];
    if (v12 >= a4[1])
    {
      v13 = a4[1];
    }

    else
    {
      v13 = v12;
    }

    v14 = [a1 length];
    if (v14 >= *a4 + v13)
    {
      v15 = *a4 + v13;
    }

    else
    {
      v15 = v14;
    }

    v16 = a3 + 1;
    if (v16 < v15)
    {
      do
      {
        v20 = 0;
        v17 = [a1 characterAtIndex:v16];
        if (a5)
        {
          v18 = [a1 fontTypeForCharacter:v17 isControl:&v20];
        }

        else
        {
          v18 = OCLanguageTypeForCharacter(v17, &v20);
        }

        if (!v20)
        {
          if (v21)
          {
            v21 = 0;
            v11 = v18;
          }

          else if (v11 != v18)
          {
            goto LABEL_23;
          }
        }

        ++v16;
      }

      while (v15 != v16);
      v16 = v15;
    }

LABEL_23:
    a4[1] = v16 - *a4;
  }

  return v11;
}

@end