@interface NSString(InsignificantCharacterFiltering)
- (CFIndex)_rangeWithoutInsignificantPrefix:()InsignificantCharacterFiltering andCharacters:;
- (CFStringRef)_copyWithoutInsignificantPrefix:()InsignificantCharacterFiltering andCharacters:;
- (id)MLSortString;
- (id)MLSortStringWithPrefix;
@end

@implementation NSString(InsignificantCharacterFiltering)

- (id)MLSortStringWithPrefix
{
  v2 = [a1 copyWithoutInsignificantCharacters];
  if ([v2 isEqualToString:a1])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (id)MLSortString
{
  v2 = [a1 copyWithoutInsignificantPrefixAndCharacters];
  if ([v2 isEqualToString:a1])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (CFStringRef)_copyWithoutInsignificantPrefix:()InsignificantCharacterFiltering andCharacters:
{
  v1 = [__CFString _rangeWithoutInsignificantPrefix:a1 andCharacters:"_rangeWithoutInsignificantPrefix:andCharacters:"];
  if (!v2 || (v3 = v1, v4 = v2, !v1) && v2 == CFStringGetLength(a1) || (v8.location = v3, v8.length = v4, (result = CFStringCreateWithSubstring(0, a1, v8)) == 0))
  {

    return a1;
  }

  return result;
}

- (CFIndex)_rangeWithoutInsignificantPrefix:()InsignificantCharacterFiltering andCharacters:
{
  Length = CFStringGetLength(a1);
  v8 = Length;
  if (!a3)
  {
    v15 = 0;
    v16 = Length;
    if (!a4)
    {
      return v15;
    }

    goto LABEL_15;
  }

  if (IgnorableArticles_onceToken != -1)
  {
    dispatch_once(&IgnorableArticles_onceToken, &__block_literal_global_113);
  }

  v9 = IgnorableArticles_articles;
  Count = CFArrayGetCount(v9);
  if (Count < 1)
  {
LABEL_10:
    v15 = 0;
    v16 = v8;
  }

  else
  {
    v11 = Count;
    v12 = 0;
    while (1)
    {
      v13 = CFArrayGetValueAtIndex(v9, v12);
      v14 = CFStringGetLength(v13);
      if (v8 >= v14)
      {
        v27.length = v14;
        v26.location = 0;
        v26.length = 0;
        v27.location = 0;
        if (CFStringFindWithOptions(a1, v13, v27, 9uLL, &v26))
        {
          if (!v26.location)
          {
            break;
          }
        }
      }

      if (v11 == ++v12)
      {
        goto LABEL_10;
      }
    }

    v15 = v26.length;
    v16 = v8 - v26.length;
  }

  if (a4)
  {
LABEL_15:
    v17 = ValidFirstCharacterSet_chars;
    if (!ValidFirstCharacterSet_chars)
    {
      v18 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
      v19 = [v18 mutableCopy];
      v20 = ValidFirstCharacterSet_chars;
      ValidFirstCharacterSet_chars = v19;

      [ValidFirstCharacterSet_chars removeCharactersInString:@" "];
      v17 = ValidFirstCharacterSet_chars;
    }

    v21 = v17;
    if (v16)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v15);
      if (CFCharacterSetIsCharacterMember(v21, CharacterAtIndex))
      {
        v23 = 1;
        v24 = v15;
      }

      else
      {
        v24 = [(__CFString *)a1 rangeOfCharacterFromSet:v21 options:0 range:v15, v16];
      }

      if (v24 != 0x7FFFFFFFFFFFFFFFLL && v23 != 0)
      {
        v15 = v24;
      }
    }
  }

  return v15;
}

@end