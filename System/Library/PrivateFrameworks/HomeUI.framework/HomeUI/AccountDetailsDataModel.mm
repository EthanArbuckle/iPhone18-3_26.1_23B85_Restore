@interface AccountDetailsDataModel
- (NSString)phoneNumberServer;
- (_TtC6HomeUI23AccountDetailsDataModel)init;
- (id)getInfoWithTafFieldKey:(id)a3;
- (void)deserializeWithResults:(id)a3;
@end

@implementation AccountDetailsDataModel

- (NSString)phoneNumberServer
{
  v2 = self;
  AccountDetailsDataModel.phoneNumberServer.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_20D5677F8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getInfoWithTafFieldKey:(id)a3
{
  v4 = sub_20D567838();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  object = AccountDetailsDataModel.getInfo(tafFieldKey:)(v8).value._object;

  if (object)
  {
    v10 = sub_20D5677F8();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)deserializeWithResults:(id)a3
{
  v4 = sub_20D567758();
  v5 = self;
  AccountDetailsDataModel.deserialize(results:)(v4);
}

- (_TtC6HomeUI23AccountDetailsDataModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end