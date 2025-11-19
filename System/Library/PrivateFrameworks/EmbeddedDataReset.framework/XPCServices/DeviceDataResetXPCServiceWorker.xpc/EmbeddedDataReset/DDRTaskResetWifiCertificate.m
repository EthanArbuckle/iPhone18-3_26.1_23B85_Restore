@interface DDRTaskResetWifiCertificate
- (void)run;
@end

@implementation DDRTaskResetWifiCertificate

- (void)run
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassInternetPassword);
  CFDictionaryAddValue(Mutable, kSecAttrProtocol, kSecAttrProtocolHTTPS);
  CFDictionaryAddValue(Mutable, kSecAttrAuthenticationType, kSecAttrAuthenticationTypeHTMLForm);
  CFDictionaryAddValue(Mutable, kSecAttrSecurityDomain, @"WISPr");
  v3 = SecItemDelete(Mutable);
  if (v3)
  {
    v4 = v3;
    v5 = DDRLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100009250(v4, v5);
    }
  }

  CFRelease(Mutable);
}

@end