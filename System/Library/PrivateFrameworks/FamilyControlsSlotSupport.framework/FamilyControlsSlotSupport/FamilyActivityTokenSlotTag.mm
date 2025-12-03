@interface FamilyActivityTokenSlotTag
- (_TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag)init;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FamilyActivityTokenSlotTag

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_29EB388C0(coderCopy);
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_29EB38AD8();

  return v3;
}

- (_TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end