@interface HAPMutableKeychainItem
- (HAPMutableKeychainItem)initWithPairingIdentity:(id)a3;
@end

@implementation HAPMutableKeychainItem

- (HAPMutableKeychainItem)initWithPairingIdentity:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HAPMutableKeychainItem;
  v5 = [(HAPMutableKeychainItem *)&v17 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 identifier];
  [(HAPKeychainItem *)v5 setAccount:v6];

  v7 = [v4 publicKey];
  v8 = [v7 data];

  v9 = [v4 privateKey];
  v10 = [v9 data];

  v16 = 0;
  v11 = _serializeKeyPairToData([v8 bytes], objc_msgSend(v10, "bytes"), &v16);
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