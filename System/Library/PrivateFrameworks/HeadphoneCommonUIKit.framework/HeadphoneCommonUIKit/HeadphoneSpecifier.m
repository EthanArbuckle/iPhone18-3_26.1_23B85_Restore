@interface HeadphoneSpecifier
- (_TtC20HeadphoneCommonUIKit18HeadphoneSpecifier)initWithName:(id)a3 target:(id)a4 set:(SEL)a5 get:(SEL)a6 detail:(Class)a7 cell:(int64_t)a8 edit:(Class)a9;
- (id)specifierEnabledWithSpecifier:(id)a3;
- (void)buttonTappedWithSender:(id)a3;
- (void)setSepcifierEnabledWithEnabled:(id)a3 sepcifier:(id)a4;
@end

@implementation HeadphoneSpecifier

- (void)buttonTappedWithSender:(id)a3
{
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](self);
  sub_1AC3B8384();
  sub_1AC3A1B1C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](self);
}

- (id)specifierEnabledWithSpecifier:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  v7 = sub_1AC3A1C34(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);

  return v7;
}

- (void)setSepcifierEnabledWithEnabled:(id)a3 sepcifier:(id)a4
{
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](self);
  sub_1AC3A1DAC(a3, a4);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a4);
  swift_unknownObjectRelease();
}

- (_TtC20HeadphoneCommonUIKit18HeadphoneSpecifier)initWithName:(id)a3 target:(id)a4 set:(SEL)a5 get:(SEL)a6 detail:(Class)a7 cell:(int64_t)a8 edit:(Class)a9
{
  MEMORY[0x1E69E5928](a3);
  swift_unknownObjectRetain();
  if (a3)
  {
    sub_1AC3B7EF4();
    MEMORY[0x1E69E5920](a3);
  }

  if (a4)
  {
    sub_1AC3B8384();
    sub_1AC377D20(v13, v14);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  if (a7)
  {
    swift_getObjCClassMetadata();
  }

  if (a9)
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