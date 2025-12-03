@interface PUKeyStore
- (BOOL)hasKeyWithLabel:(id)label isPublic:(BOOL)public;
- (BOOL)storePasscodeBlob:(id)blob withLabel:(id)label;
- (id)_attributesForPasscodeBlobWithLabel:(id)label;
- (id)getPasscodeBlobWithLabel:(id)label;
- (void)deletePasscodeBlobWithLabel:(id)label;
@end

@implementation PUKeyStore

- (BOOL)hasKeyWithLabel:(id)label isPublic:(BOOL)public
{
  v4 = sub_10000749C(label, public);
  v5 = v4;
  if (v4)
  {
    CFRelease(v4);
  }

  return v5 != 0;
}

- (id)_attributesForPasscodeBlobWithLabel:(id)label
{
  labelCopy = label;
  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:kSecClassGenericPassword forKeyedSubscript:kSecClass];
  [v4 setObject:labelCopy forKeyedSubscript:kSecAttrLabel];

  [v4 setObject:@"PairedUnlock" forKeyedSubscript:kSecAttrService];
  [v4 setObject:@"com.apple.paired-unlock" forKeyedSubscript:kSecAttrAccessGroup];

  return v4;
}

- (BOOL)storePasscodeBlob:(id)blob withLabel:(id)label
{
  blobCopy = blob;
  v7 = [(PUKeyStore *)self _attributesForPasscodeBlobWithLabel:label];
  SecItemDelete(v7);
  [(__CFDictionary *)v7 setObject:blobCopy forKeyedSubscript:kSecValueData];

  [(__CFDictionary *)v7 setObject:kSecAttrAccessibleWhenUnlockedThisDeviceOnly forKeyedSubscript:kSecAttrAccessible];
  LOBYTE(self) = SecItemAdd(v7, 0) == 0;

  return self;
}

- (id)getPasscodeBlobWithLabel:(id)label
{
  labelCopy = label;
  v6 = 0;
  v7[0] = kSecClass;
  v7[1] = kSecAttrLabel;
  v7[2] = kSecReturnData;
  v7[3] = kSecAttrService;
  v8[0] = kSecClassGenericPassword;
  v8[1] = labelCopy;
  v8[2] = &__kCFBooleanTrue;
  v8[3] = @"PairedUnlock";
  v7[4] = kSecAttrAccessGroup;
  v8[4] = @"com.apple.paired-unlock";
  v4 = 0;
  if (!SecItemCopyMatching([NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:5], &v6))
  {
    v4 = v6;
  }

  return v4;
}

- (void)deletePasscodeBlobWithLabel:(id)label
{
  v3 = [(PUKeyStore *)self _attributesForPasscodeBlobWithLabel:label];

  SecItemDelete(v3);
}

@end