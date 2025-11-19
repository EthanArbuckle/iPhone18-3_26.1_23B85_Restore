@interface CKDChainPCSData
- (CKDChainPCSData)initWithCoder:(id)a3;
- (CKDChainPCSData)initWithPCSData:(id)a3 encryptedPrivateKey:(id)a4;
- (id)CKPropertiesDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKDChainPCSData

- (CKDChainPCSData)initWithPCSData:(id)a3 encryptedPrivateKey:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CKDChainPCSData;
  v8 = [(CKDPCSData *)&v11 initWithPCSData:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_encryptedChainPCSPrivateKey, a4);
  }

  return v9;
}

- (id)CKPropertiesDescription
{
  v3 = objc_autoreleasePoolPush();
  v16.receiver = self;
  v16.super_class = CKDChainPCSData;
  v4 = [(CKDPCSData *)&v16 CKPropertiesDescription];
  v7 = objc_msgSend_mutableCopy(v4, v5, v6);

  v10 = objc_msgSend_encryptedChainPCSPrivateKey(self, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_encryptedChainPCSPrivateKey(self, v11, v12);
    objc_msgSend_appendFormat_(v7, v14, @", encryptedChainPCSPrivateKey=%@", v13);
  }

  objc_autoreleasePoolPop(v3);

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = CKDChainPCSData;
  v4 = [(CKDPCSData *)&v13 copyWithZone:a3];
  v7 = objc_msgSend_encryptedChainPCSPrivateKey(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  objc_msgSend_setEncryptedChainPCSPrivateKey_(v4, v11, v10);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v7.receiver = self;
  v7.super_class = CKDChainPCSData;
  [(CKDPCSData *)&v7 encodeWithCoder:v4];
  objc_msgSend_encodeObject_forKey_(v4, v6, self->_encryptedChainPCSPrivateKey, @"ChainPrivateKey");
  objc_autoreleasePoolPop(v5);
}

- (CKDChainPCSData)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CKDChainPCSData;
  v5 = [(CKDPCSData *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"ChainPrivateKey");
    encryptedChainPCSPrivateKey = v5->_encryptedChainPCSPrivateKey;
    v5->_encryptedChainPCSPrivateKey = v9;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end