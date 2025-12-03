@interface HeadphoneSpecifier
- (_TtC20HeadphoneCommonUIKit18HeadphoneSpecifier)initWithName:(id)name target:(id)target set:(SEL)set get:(SEL)get detail:(Class)detail cell:(int64_t)cell edit:(Class)edit;
- (id)specifierEnabledWithSpecifier:(id)specifier;
- (void)buttonTappedWithSender:(id)sender;
- (void)setSepcifierEnabledWithEnabled:(id)enabled sepcifier:(id)sepcifier;
@end

@implementation HeadphoneSpecifier

- (void)buttonTappedWithSender:(id)sender
{
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](self);
  sub_1AC3B8384();
  sub_1AC3A1B1C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](self);
}

- (id)specifierEnabledWithSpecifier:(id)specifier
{
  MEMORY[0x1E69E5928](specifier);
  MEMORY[0x1E69E5928](self);
  v7 = sub_1AC3A1C34(specifier);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](specifier);

  return v7;
}

- (void)setSepcifierEnabledWithEnabled:(id)enabled sepcifier:(id)sepcifier
{
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](sepcifier);
  MEMORY[0x1E69E5928](self);
  sub_1AC3A1DAC(enabled, sepcifier);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](sepcifier);
  swift_unknownObjectRelease();
}

- (_TtC20HeadphoneCommonUIKit18HeadphoneSpecifier)initWithName:(id)name target:(id)target set:(SEL)set get:(SEL)get detail:(Class)detail cell:(int64_t)cell edit:(Class)edit
{
  MEMORY[0x1E69E5928](name);
  swift_unknownObjectRetain();
  if (name)
  {
    sub_1AC3B7EF4();
    MEMORY[0x1E69E5920](name);
  }

  if (target)
  {
    sub_1AC3B8384();
    sub_1AC377D20(v13, v14);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  if (detail)
  {
    swift_getObjCClassMetadata();
  }

  if (edit)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

  else
  {
    ObjCClassMetadata = 0;
  }

  HeadphoneSpecifier.init(name:target:set:get:detail:cell:edit:)(ObjCClassMetadata);
}

@end