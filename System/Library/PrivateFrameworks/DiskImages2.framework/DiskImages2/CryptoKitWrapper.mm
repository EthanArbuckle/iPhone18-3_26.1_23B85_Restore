@interface CryptoKitWrapper
+ (id)unwrapEncryptionKeyWithWrappedKey:(id)key encapsulatedKey:(id)encapsulatedKey privateKey:(id)privateKey error:(id *)error;
+ (id)wrappedDataDictionaryWithCertWithPlainText:(id)text certificate:(__SecCertificate *)certificate error:(id *)error;
- (_TtC16FetchRestoreKeys16CryptoKitWrapper)init;
@end

@implementation CryptoKitWrapper

+ (id)unwrapEncryptionKeyWithWrappedKey:(id)key encapsulatedKey:(id)encapsulatedKey privateKey:(id)privateKey error:(id *)error
{
  keyCopy = key;
  encapsulatedKeyCopy = encapsulatedKey;
  privateKeyCopy = privateKey;
  v11 = sub_248F96D38();
  v13 = v12;

  v14 = sub_248F96D38();
  v16 = v15;

  v17 = sub_248F96D38();
  v19 = v18;

  v20 = sub_248F94CC8(v11, v13, v14, v16, v17, v19);
  v22 = v21;
  sub_248F95B14(v17, v19);
  sub_248F95B14(v14, v16);
  sub_248F95B14(v11, v13);
  v23 = sub_248F96D18();
  sub_248F95B14(v20, v22);

  return v23;
}

+ (id)wrappedDataDictionaryWithCertWithPlainText:(id)text certificate:(__SecCertificate *)certificate error:(id *)error
{
  textCopy = text;
  certificateCopy = certificate;
  v8 = sub_248F96D38();
  v10 = v9;

  sub_248F952E0(v8, v10, certificateCopy);
  sub_248F95B14(v8, v10);
  v11 = sub_248F96E48();

  return v11;
}

- (_TtC16FetchRestoreKeys16CryptoKitWrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CryptoKitWrapper();
  return [(CryptoKitWrapper *)&v3 init];
}

@end