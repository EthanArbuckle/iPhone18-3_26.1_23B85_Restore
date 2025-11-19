@interface CRXCSystemStatus
- (BOOL)isEqual:(id)a3;
- (CRXCSystemStatus)init;
- (CRXCSystemStatus)initWithCoder:(id)a3;
- (NSString)description;
- (NSString)hardwareModel;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRXCSystemStatus

- (NSString)hardwareModel
{
  v2 = *(self + OBJC_IVAR___CRXCSystemStatus_hardwareModel);
  v3 = *(self + OBJC_IVAR___CRXCSystemStatus_hardwareModel + 8);

  v4 = sub_247365C44();

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_247365DC4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_247353B60(v8);

  sub_247347038(v8);
  return v6;
}

- (NSString)description
{
  v2 = self;
  sub_247353E88();

  v3 = sub_247365C44();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_247354270(v4);
}

- (CRXCSystemStatus)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_247354824(v3);

  return v4;
}

- (CRXCSystemStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end