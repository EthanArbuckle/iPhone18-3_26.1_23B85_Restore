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
    sub_247365DC4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_24734CA64(v8);

  sub_247347038(v8);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  sub_24734CC98();

  v3 = sub_247365C44();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_24734CF08(coderCopy);
}

- (CRXCEnrollmentBriefRecord)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end