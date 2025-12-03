@interface CRXCPrescriptionRecord
- (BOOL)isEqual:(id)equal;
- (CRXCPrescriptionRecord)init;
- (NSData)accPayload;
- (NSDate)enrollmentDate;
- (NSString)enrollmentName;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRXCPrescriptionRecord

- (NSData)accPayload
{
  v2 = *(self + OBJC_IVAR___CRXCPrescriptionRecord_accPayload);
  v3 = *(self + OBJC_IVAR___CRXCPrescriptionRecord_accPayload + 8);
  sub_24734782C(v2, v3);
  v4 = sub_247365B24();
  sub_247347880(v2, v3);

  return v4;
}

- (NSString)enrollmentName
{
  if (*(self + OBJC_IVAR___CRXCPrescriptionRecord_enrollmentName + 8))
  {
    v2 = *(self + OBJC_IVAR___CRXCPrescriptionRecord_enrollmentName);
    v3 = *(self + OBJC_IVAR___CRXCPrescriptionRecord_enrollmentName + 8);

    v4 = sub_247365C44();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)enrollmentDate
{
  v3 = sub_247365B94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___CRXCPrescriptionRecord_enrollmentDate, v3);
  v8 = sub_247365B54();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_247365DC4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = CRXCPrescriptionRecord.isEqual(_:)(v8);

  sub_247347038(v8);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CRXCPrescriptionRecord.encode(with:)(coderCopy);
}

- (CRXCPrescriptionRecord)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end