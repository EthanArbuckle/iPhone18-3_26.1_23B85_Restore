@interface CRXCNewEnrollmentInfo
- (BOOL)isEqual:(id)a3;
- (CRXCNewEnrollmentInfo)init;
- (CRXCNewEnrollmentInfo)initWithUuid:(id)a3 lensCalibrationStatus:(int64_t)a4;
- (NSString)description;
- (NSString)uuid;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRXCNewEnrollmentInfo

- (NSString)uuid
{
  v2 = *(self + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid);
  v3 = *(self + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid + 8);

  v4 = sub_247365C44();

  return v4;
}

- (CRXCNewEnrollmentInfo)initWithUuid:(id)a3 lensCalibrationStatus:(int64_t)a4
{
  v6 = sub_247365C64();
  v7 = (self + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid);
  *v7 = v6;
  v7[1] = v8;
  *(self + OBJC_IVAR___CRXCNewEnrollmentInfo_lensCalibrationStatus) = a4;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CRXCNewEnrollmentInfo();
  return [(CRXCNewEnrollmentInfo *)&v10 init];
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

  v6 = sub_24735690C(v8);

  sub_247347038(v8);
  return v6;
}

- (NSString)description
{
  v2 = self;
  sub_247356AB8();

  v3 = sub_247365C44();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(self + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid);
  v5 = *(self + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid + 8);
  v6 = a3;
  v7 = self;
  v8 = sub_247365C44();
  v9 = sub_247365C44();
  [v6 encodeObject:v8 forKey:v9];

  v10 = *(v7 + OBJC_IVAR___CRXCNewEnrollmentInfo_lensCalibrationStatus);
  v11 = sub_247365C44();
  [v6 encodeInteger:v10 forKey:v11];
}

- (CRXCNewEnrollmentInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end