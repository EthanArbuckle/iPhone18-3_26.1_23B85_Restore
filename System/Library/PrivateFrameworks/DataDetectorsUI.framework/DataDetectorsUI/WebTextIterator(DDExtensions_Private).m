@interface WebTextIterator(DDExtensions_Private)
- (BOOL)dd_checkCurrentRangeAgainstString:()DDExtensions_Private;
@end

@implementation WebTextIterator(DDExtensions_Private)

- (BOOL)dd_checkCurrentRangeAgainstString:()DDExtensions_Private
{
  v5 = [a1 currentRange];
  v6 = [v5 startContainer];
  v7 = [v5 endContainer];

  if (v6 == v7)
  {
    v9 = [v5 startContainer];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = CFStringCreateWithCharacters(*MEMORY[0x277CBECE8], [a1 currentTextPointer], objc_msgSend(a1, "currentTextLength"));
      v12 = CFStringCompare(v11, a3, 0);
      v8 = v12 == kCFCompareEqualTo;
      if (v12)
      {
        DDLog();
      }

      CFRelease(v11);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    DDLog();
    v8 = 0;
  }

  return v8;
}

@end