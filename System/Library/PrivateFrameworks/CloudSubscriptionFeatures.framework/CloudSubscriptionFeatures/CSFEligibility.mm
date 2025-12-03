@interface CSFEligibility
- (BOOL)isEqual:(id)equal;
- (CSFEligibility)init;
- (NSString)description;
@end

@implementation CSFEligibility

- (NSString)description
{
  selfCopy = self;
  sub_1DF54975C();

  v3 = sub_1DF564914();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1DF564D24();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1DF5498CC(v8);

  sub_1DF4A7D80(v8);
  return v6 & 1;
}

- (CSFEligibility)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end