@interface CKDTrustedTargetWrappedKey
- (CKDTrustedTargetWrappedKey)initWithWrappedKey:(id)a3 publicKey:(id)a4;
@end

@implementation CKDTrustedTargetWrappedKey

- (CKDTrustedTargetWrappedKey)initWithWrappedKey:(id)a3 publicKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CKDTrustedTargetWrappedKey;
  v10 = [(CKDTrustedTargetWrappedKey *)&v14 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(v6, v8, v9);
    wrappedKey = v10->_wrappedKey;
    v10->_wrappedKey = v11;

    objc_storeStrong(&v10->_publicKey, a4);
  }

  return v10;
}

@end