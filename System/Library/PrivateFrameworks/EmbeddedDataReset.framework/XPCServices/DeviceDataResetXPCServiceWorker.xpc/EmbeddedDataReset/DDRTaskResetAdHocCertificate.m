@interface DDRTaskResetAdHocCertificate
- (void)run;
@end

@implementation DDRTaskResetAdHocCertificate

- (void)run
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecAttrService, @"com.apple.certui");
  v3 = SecItemDelete(Mutable);
  if (v3)
  {
    v4 = v3;
    v5 = DDRLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000091D4(v4, v5);
    }
  }

  CFRelease(Mutable);
}

@end