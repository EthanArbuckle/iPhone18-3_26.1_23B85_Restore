@interface TextFieldCollectionViewCell.TextFieldCollectionViewCellInner
- (BOOL)respondsToSelector:(SEL)selector;
- (_TtCC18HealthExperienceUI27TextFieldCollectionViewCellP33_CA6334EB88576D7E5F1F357E76DAEE2F32TextFieldCollectionViewCellInner)init;
- (id)forwardingTargetForSelector:(SEL)selector;
@end

@implementation TextFieldCollectionViewCell.TextFieldCollectionViewCellInner

- (BOOL)respondsToSelector:(SEL)selector
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    respondsToSelector_ = [Strong respondsToSelector_];
    swift_unknownObjectRelease();
    return respondsToSelector_;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = type metadata accessor for TextFieldCollectionViewCell.TextFieldCollectionViewCellInner();
    return [(TextFieldCollectionViewCell.TextFieldCollectionViewCellInner *)&v8 respondsToSelector:selector];
  }
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v7[3] = swift_getObjectType();
    v7[0] = v4;
    v5 = sub_1BA4A8328();
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_TtCC18HealthExperienceUI27TextFieldCollectionViewCellP33_CA6334EB88576D7E5F1F357E76DAEE2F32TextFieldCollectionViewCellInner)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end