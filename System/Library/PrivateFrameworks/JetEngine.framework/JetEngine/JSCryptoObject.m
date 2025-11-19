@interface JSCryptoObject
- (_TtC9JetEngine14JSCryptoObject)init;
- (id)base64Decode:(id)a3;
- (id)base64Encode:(id)a3;
- (id)hash:(id)a3 :(id)a4;
@end

@implementation JSCryptoObject

- (_TtC9JetEngine14JSCryptoObject)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(JSCryptoObject *)&v3 init];
}

- (id)hash:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1AB3FE914(v6, v7);

  return v9;
}

- (id)base64Encode:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1AB3FEA80(v4);

  return v6;
}

- (id)base64Decode:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1AB3FED00(v4);

  return v6;
}

@end