@interface CRXCEnrollmentBriefRecord
- (BOOL)isEqual:(id)equal;
- (CRXCEnrollmentBriefRecord)init;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRXCEnrollmentBriefRecord

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_100081658();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = CRXCEnrollmentBriefRecord.isEqual(_:)(v8);

  sub_10000D014(v8);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  CRXCEnrollmentBriefRecord.description.getter();

  v3 = sub_100081288();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CRXCEnrollmentBriefRecord.encode(with:)(coderCopy);
}

- (CRXCEnrollmentBriefRecord)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end