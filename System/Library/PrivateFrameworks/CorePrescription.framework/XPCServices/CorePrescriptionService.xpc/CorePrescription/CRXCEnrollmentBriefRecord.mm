@interface CRXCEnrollmentBriefRecord
- (BOOL)isEqual:(id)a3;
- (CRXCEnrollmentBriefRecord)init;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRXCEnrollmentBriefRecord

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_100081658();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = CRXCEnrollmentBriefRecord.isEqual(_:)(v8);

  sub_10000D014(v8);
  return v6 & 1;
}

- (NSString)description
{
  v2 = self;
  CRXCEnrollmentBriefRecord.description.getter();

  v3 = sub_100081288();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CRXCEnrollmentBriefRecord.encode(with:)(v4);
}

- (CRXCEnrollmentBriefRecord)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end