@interface NSString
+ (id)uniqueIdentifier;
@end

@implementation NSString

+ (id)uniqueIdentifier
{
  v2 = CFUUIDCreate(0);
  if (v2)
  {
    v3 = v2;
    v4 = CFUUIDCreateString(0, v2);
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end