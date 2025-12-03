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
  v11 = sub_1001A40E0();
  v13 = v12;

  v14 = sub_1001A40E0();
  v16 = v15;

  v17 = sub_1001A40E0();
  v19 = v18;

  v20 = sub_1001A1FB0(v11, v13, v14, v16, v17, v19);
  v22 = v21;
  sub_1001A2DFC(v17, v19);
  sub_1001A2DFC(v14, v16);
  sub_1001A2DFC(v11, v13);
  v23.super.isa = sub_1001A40C0().super.isa;
  sub_1001A2DFC(v20, v22);

  return v23.super.isa;
}

+ (id)wrappedDataDictionaryWithCertWithPlainText:(id)text certificate:(__SecCertificate *)certificate error:(id *)error
{
  textCopy = text;
  certificateCopy = certificate;
  v8 = sub_1001A40E0();
  v10 = v9;

  sub_1001A25C8(v8, v10, certificateCopy);
  sub_1001A2DFC(v8, v10);
  v11.super.isa = sub_1001A41F0().super.isa;

  return v11.super.isa;
}

- (_TtC16FetchRestoreKeys16CryptoKitWrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CryptoKitWrapper();
  return [(CryptoKitWrapper *)&v3 init];
}

@end