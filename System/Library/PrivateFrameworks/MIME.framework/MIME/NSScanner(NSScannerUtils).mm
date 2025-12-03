@interface NSScanner(NSScannerUtils)
- (BOOL)mf_scanUpAndOverString:()NSScannerUtils;
- (id)mf_nextTokenWithPunctuation:()NSScannerUtils;
@end

@implementation NSScanner(NSScannerUtils)

- (id)mf_nextTokenWithPunctuation:()NSScannerUtils
{
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
  scanLocation = [self scanLocation];
  string = [self string];
  v8 = [string length];
  if (scanLocation >= v8)
  {
    goto LABEL_7;
  }

  while (CFCharacterSetIsCharacterMember(Predefined, [string characterAtIndex:scanLocation]))
  {
    if (v8 == ++scanLocation)
    {
      scanLocation = v8;
      goto LABEL_15;
    }
  }

  if (CFCharacterSetIsCharacterMember(a3, [string characterAtIndex:scanLocation]))
  {
    v8 = scanLocation + 1;
  }

  else
  {
LABEL_7:
    if (scanLocation >= v8)
    {
      v8 = scanLocation;
    }

    else
    {
      v9 = scanLocation;
      while (!CFCharacterSetIsCharacterMember(Predefined, [string characterAtIndex:v9]) && !CFCharacterSetIsCharacterMember(a3, objc_msgSend(string, "characterAtIndex:", v9)))
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
  [self setScanLocation:v8];
  if (v8 == scanLocation)
  {
    v10 = 0;
  }

  else
  {
    v10 = [string substringWithRange:{scanLocation, v8 - scanLocation}];
  }

  return v10;
}

- (BOOL)mf_scanUpAndOverString:()NSScannerUtils
{
  v4 = a3;
  scanLocation = [self scanLocation];
  string = [self string];
  caseSensitive = [self caseSensitive];
  string2 = [self string];
  v9 = [string rangeOfString:v4 options:caseSensitive ^ 1u range:{scanLocation, objc_msgSend(string2, "length") - scanLocation}];
  v11 = v10;

  if (v11)
  {
    [self setScanLocation:v9 + v11];
  }

  return v11 != 0;
}

@end