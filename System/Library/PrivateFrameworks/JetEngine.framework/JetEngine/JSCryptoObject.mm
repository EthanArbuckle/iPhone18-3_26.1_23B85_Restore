@interface JSCryptoObject
- (_TtC9JetEngine14JSCryptoObject)init;
- (id)base64Decode:(id)decode;
- (id)base64Encode:(id)encode;
- (id)hash:(id)hash :(id)a4;
@end

@implementation JSCryptoObject

- (_TtC9JetEngine14JSCryptoObject)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(JSCryptoObject *)&v3 init];
}

- (id)hash:(id)hash :(id)a4
{
  hashCopy = hash;
  v7 = a4;
  selfCopy = self;
  v9 = sub_1AB3FE914(hashCopy, v7);

  return v9;
}

- (id)base64Encode:(id)encode
{
  encodeCopy = encode;
  selfCopy = self;
  v6 = sub_1AB3FEA80(encodeCopy);

  return v6;
}

- (id)base64Decode:(id)decode
{
  decodeCopy = decode;
  selfCopy = self;
  v6 = sub_1AB3FED00(decodeCopy);

  return v6;
}

@end