@interface FamilyActivityIdentifierSlotTag
- (_TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag)init;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FamilyActivityIdentifierSlotTag

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_29EB39254(coderCopy);
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_29EB39468();

  return v3;
}

- (_TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end