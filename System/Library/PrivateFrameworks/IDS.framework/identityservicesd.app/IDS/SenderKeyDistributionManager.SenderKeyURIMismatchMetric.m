@interface SenderKeyDistributionManager.SenderKeyURIMismatchMetric
- (NSDictionary)dictionaryRepresentation;
- (NSString)name;
- (_TtCC17identityservicesd28SenderKeyDistributionManagerP33_E220278C37BF7A52CA212AA0DEF6BDED26SenderKeyURIMismatchMetric)init;
@end

@implementation SenderKeyDistributionManager.SenderKeyURIMismatchMetric

- (NSDictionary)dictionaryRepresentation
{
  sub_100706B30(&unk_100CB4F30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1009AC700;
  *(inited + 32) = 0x476567617373656DLL;
  *(inited + 40) = 0xEB00000000444955;
  v4 = self;

  v5 = sub_100936B28();

  *(inited + 48) = v5;
  sub_1000135E0(inited);
  swift_setDeallocating();
  sub_100013814(inited + 32, &qword_100CBA3F0);

  sub_100706B30(&qword_100CB4F40);
  v6.super.isa = sub_100936A58().super.isa;

  return v6.super.isa;
}

- (NSString)name
{
  v2 = sub_100936B28();

  return v2;
}

- (_TtCC17identityservicesd28SenderKeyDistributionManagerP33_E220278C37BF7A52CA212AA0DEF6BDED26SenderKeyURIMismatchMetric)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end