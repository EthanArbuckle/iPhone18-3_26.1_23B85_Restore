@interface CRXCDiopterRange
- (BOOL)isEqual:(id)equal;
- (CRXCDiopterRange)init;
- (CRXCDiopterRange)initWithCoder:(id)coder;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRXCDiopterRange

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

  v6 = sub_24734C168(v8);

  sub_247347038(v8);
  return v6;
}

- (NSString)description
{
  selfCopy = self;
  sub_24734C330();

  v3 = sub_247365C44();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_24734C46C(coderCopy);
}

- (CRXCDiopterRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_24734C73C(coderCopy);

  return v4;
}

- (CRXCDiopterRange)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end