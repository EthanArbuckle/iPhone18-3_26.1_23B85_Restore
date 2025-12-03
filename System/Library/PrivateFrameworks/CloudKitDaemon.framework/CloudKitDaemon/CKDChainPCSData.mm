@interface CKDChainPCSData
- (CKDChainPCSData)initWithCoder:(id)coder;
- (CKDChainPCSData)initWithPCSData:(id)data encryptedPrivateKey:(id)key;
- (id)CKPropertiesDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKDChainPCSData

- (CKDChainPCSData)initWithPCSData:(id)data encryptedPrivateKey:(id)key
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = CKDChainPCSData;
  v8 = [(CKDPCSData *)&v11 initWithPCSData:data];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_encryptedChainPCSPrivateKey, key);
  }

  return v9;
}

- (id)CKPropertiesDescription
{
  v3 = objc_autoreleasePoolPush();
  v16.receiver = self;
  v16.super_class = CKDChainPCSData;
  cKPropertiesDescription = [(CKDPCSData *)&v16 CKPropertiesDescription];
  v7 = objc_msgSend_mutableCopy(cKPropertiesDescription, v5, v6);

  v10 = objc_msgSend_encryptedChainPCSPrivateKey(self, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_encryptedChainPCSPrivateKey(self, v11, v12);
    objc_msgSend_appendFormat_(v7, v14, @", encryptedChainPCSPrivateKey=%@", v13);
  }

  objc_autoreleasePoolPop(v3);

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = CKDChainPCSData;
  v4 = [(CKDPCSData *)&v13 copyWithZone:zone];
  v7 = objc_msgSend_encryptedChainPCSPrivateKey(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  objc_msgSend_setEncryptedChainPCSPrivateKey_(v4, v11, v10);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v7.receiver = self;
  v7.super_class = CKDChainPCSData;
  [(CKDPCSData *)&v7 encodeWithCoder:coderCopy];
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->_encryptedChainPCSPrivateKey, @"ChainPrivateKey");
  objc_autoreleasePoolPop(v5);
}

- (CKDChainPCSData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CKDChainPCSData;
  v5 = [(CKDPCSData *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"ChainPrivateKey");
    encryptedChainPCSPrivateKey = v5->_encryptedChainPCSPrivateKey;
    v5->_encryptedChainPCSPrivateKey = v9;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end