@interface NSString(DAKeychainAdditions)
- (__CFString)stringByURLQuoting;
@end

@implementation NSString(DAKeychainAdditions)

- (__CFString)stringByURLQuoting
{
  v1 = originalString;
  v2 = CFURLCreateStringByAddingPercentEscapes(0, originalString, &stru_285AA6518, @"?", 0x8000100u);
  v3 = v2;
  if (v2)
  {
    v1 = v2;
  }

  v4 = v1;

  return v1;
}

@end