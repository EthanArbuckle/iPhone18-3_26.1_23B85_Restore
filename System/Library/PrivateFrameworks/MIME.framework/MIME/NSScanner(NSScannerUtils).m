@interface NSScanner(NSScannerUtils)
- (BOOL)mf_scanUpAndOverString:()NSScannerUtils;
- (id)mf_nextTokenWithPunctuation:()NSScannerUtils;
@end

@implementation NSScanner(NSScannerUtils)

- (id)mf_nextTokenWithPunctuation:()NSScannerUtils
{
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
  v6 = [a1 scanLocation];
  v7 = [a1 string];
  v8 = [v7 length];
  if (v6 >= v8)
  {
    goto LABEL_7;
  }

  while (CFCharacterSetIsCharacterMember(Predefined, [v7 characterAtIndex:v6]))
  {
    if (v8 == ++v6)
    {
      v6 = v8;
      goto LABEL_15;
    }
  }

  if (CFCharacterSetIsCharacterMember(a3, [v7 characterAtIndex:v6]))
  {
    v8 = v6 + 1;
  }

  else
  {
LABEL_7:
    if (v6 >= v8)
    {
      v8 = v6;
    }

    else
    {
      v9 = v6;
      while (!CFCharacterSetIsCharacterMember(Predefined, [v7 characterAtIndex:v9]) && !CFCharacterSetIsCharacterMember(a3, objc_msgSend(v7, "characterAtIndex:", v9)))
      {
        if (v8 == ++v9)
        {
          goto LABEL_15;
        }
      }

      v8 = v9;
    }
  }

LABEL_15:
  [a1 setScanLocation:v8];
  if (v8 == v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v7 substringWithRange:{v6, v8 - v6}];
  }

  return v10;
}

- (BOOL)mf_scanUpAndOverString:()NSScannerUtils
{
  v4 = a3;
  v5 = [a1 scanLocation];
  v6 = [a1 string];
  v7 = [a1 caseSensitive];
  v8 = [a1 string];
  v9 = [v6 rangeOfString:v4 options:v7 ^ 1u range:{v5, objc_msgSend(v8, "length") - v5}];
  v11 = v10;

  if (v11)
  {
    [a1 setScanLocation:v9 + v11];
  }

  return v11 != 0;
}

@end