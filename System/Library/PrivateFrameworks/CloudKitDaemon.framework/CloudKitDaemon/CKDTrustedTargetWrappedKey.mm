@interface CKDTrustedTargetWrappedKey
- (CKDTrustedTargetWrappedKey)initWithWrappedKey:(id)key publicKey:(id)publicKey;
@end

@implementation CKDTrustedTargetWrappedKey

- (CKDTrustedTargetWrappedKey)initWithWrappedKey:(id)key publicKey:(id)publicKey
{
  keyCopy = key;
  publicKeyCopy = publicKey;
  v14.receiver = self;
  v14.super_class = CKDTrustedTargetWrappedKey;
  v10 = [(CKDTrustedTargetWrappedKey *)&v14 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(keyCopy, v8, v9);
    wrappedKey = v10->_wrappedKey;
    v10->_wrappedKey = v11;

    objc_storeStrong(&v10->_publicKey, publicKey);
  }

  return v10;
}

@end