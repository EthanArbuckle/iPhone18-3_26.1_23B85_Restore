@interface TetraMessageSignerFormatter
- (_TtC17MessageProtection27TetraMessageSignerFormatter)init;
- (id)signedData;
@end

@implementation TetraMessageSignerFormatter

- (id)signedData
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC17MessageProtection27TetraMessageSignerFormatter__signedData);
  v3 = *&self->_signedData[OBJC_IVAR____TtC17MessageProtection27TetraMessageSignerFormatter__signedData];
  outlined copy of Data._Representation(v2, v3);
  v4.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v2, v3);

  return v4.super.isa;
}

- (_TtC17MessageProtection27TetraMessageSignerFormatter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end