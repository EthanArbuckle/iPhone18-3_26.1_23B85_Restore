@interface WebTextIterator(DDExtensions_Private)
- (BOOL)dd_checkCurrentRangeAgainstString:()DDExtensions_Private;
@end

@implementation WebTextIterator(DDExtensions_Private)

- (BOOL)dd_checkCurrentRangeAgainstString:()DDExtensions_Private
{
  currentRange = [self currentRange];
  startContainer = [currentRange startContainer];
  endContainer = [currentRange endContainer];

  if (startContainer == endContainer)
  {
    startContainer2 = [currentRange startContainer];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = CFStringCreateWithCharacters(*MEMORY[0x277CBECE8], [self currentTextPointer], objc_msgSend(self, "currentTextLength"));
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