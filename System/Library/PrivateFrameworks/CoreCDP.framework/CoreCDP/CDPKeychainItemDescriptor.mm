@interface CDPKeychainItemDescriptor
+ (id)recoveryKeyDescriptor;
+ (id)recoveryKeyDescriptorForAltDSID:(id)d;
@end

@implementation CDPKeychainItemDescriptor

+ (id)recoveryKeyDescriptorForAltDSID:(id)d
{
  dCopy = d;
  v4 = +[CDPKeychainItemDescriptor recoveryKeyDescriptor];
  [v4 setAccount:dCopy];

  return v4;
}

+ (id)recoveryKeyDescriptor
{
  v2 = objc_alloc_init(CDPKeychainItemDescriptor);
  [(AAFKeychainItemDescriptor *)v2 setItemClass:1];
  [(AAFKeychainItemDescriptor *)v2 setService:@"com.apple.cdpd.rk.keychain_service"];
  [(AAFKeychainItemDescriptor *)v2 setAccessGroup:@"com.apple.cdp.rk"];
  [(AAFKeychainItemDescriptor *)v2 setItemAccessible:1];
  [(AAFKeychainItemDescriptor *)v2 setInvisible:1];
  [(AAFKeychainItemDescriptor *)v2 setSynchronizable:1];
  [(AAFKeychainItemDescriptor *)v2 setUseDataProtection:2];
  [(AAFKeychainItemDescriptor *)v2 setSysBound:2];

  return v2;
}

@end