@interface CNMobileKeyBag
+ (BOOL)isDevicePasscodeProtected;
@end

@implementation CNMobileKeyBag

+ (BOOL)isDevicePasscodeProtected
{
  v2 = softLinkMGCopyAnswer(@"yNesiJuidlesNpI/K5Ri4A", 0);
  v3 = v2;
  v4 = *MEMORY[0x1E695E4D0];
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 == v4;
}

@end