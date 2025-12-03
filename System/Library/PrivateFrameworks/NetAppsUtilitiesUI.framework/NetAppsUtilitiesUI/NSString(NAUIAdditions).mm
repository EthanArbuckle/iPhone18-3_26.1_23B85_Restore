@interface NSString(NAUIAdditions)
- (BOOL)naui_containsCJKScripts;
@end

@implementation NSString(NAUIAdditions)

- (BOOL)naui_containsCJKScripts
{
  if (![self length])
  {
    return 0;
  }

  v2 = 0;
  do
  {
    [self characterAtIndex:v2];
    v3 = NAUIIsCJKCharacter();
    if (v3)
    {
      break;
    }

    ++v2;
  }

  while (v2 < [self length]);
  return v3;
}

@end