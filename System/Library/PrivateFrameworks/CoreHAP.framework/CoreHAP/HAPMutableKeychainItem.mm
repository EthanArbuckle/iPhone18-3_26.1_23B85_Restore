@interface HAPMutableKeychainItem
- (HAPMutableKeychainItem)initWithPairingIdentity:(id)identity;
@end

@implementation HAPMutableKeychainItem

- (HAPMutableKeychainItem)initWithPairingIdentity:(id)identity
{
  identityCopy = identity;
  v17.receiver = self;
  v17.super_class = HAPMutableKeychainItem;
  v5 = [(HAPMutableKeychainItem *)&v17 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  identifier = [identityCopy identifier];
  [(HAPKeychainItem *)v5 setAccount:identifier];

  publicKey = [identityCopy publicKey];
  data = [publicKey data];

  privateKey = [identityCopy privateKey];
  data2 = [privateKey data];

  v16 = 0;
  v11 = _serializeKeyPairToData([data bytes], objc_msgSend(data2, "bytes"), &v16);
  v12 = v16;
  v13 = v12;
  if (!v11)
  {
    [(HAPKeychainItem *)v5 setValueData:v12];

LABEL_5:
    v14 = v5;
    goto LABEL_6;
  }

  v14 = 0;
LABEL_6:

  return v14;
}

@end