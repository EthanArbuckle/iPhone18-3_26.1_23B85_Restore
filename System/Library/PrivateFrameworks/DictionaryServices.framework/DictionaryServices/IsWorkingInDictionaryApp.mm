@interface IsWorkingInDictionaryApp
@end

@implementation IsWorkingInDictionaryApp

__CFBundle *__IsWorkingInDictionaryApp_block_invoke()
{
  result = CFBundleGetMainBundle();
  if (result)
  {
    result = CFBundleGetIdentifier(result);
    if (result)
    {
      result = CFStringCompare(result, @"com.apple.Dictionary", 0);
      v1 = result == 0;
    }

    else
    {
      v1 = 0;
    }

    IsWorkingInDictionaryApp__Flag = v1;
  }

  return result;
}

@end