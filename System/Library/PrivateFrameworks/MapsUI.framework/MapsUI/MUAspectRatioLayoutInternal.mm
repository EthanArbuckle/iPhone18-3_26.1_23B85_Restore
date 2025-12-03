@interface MUAspectRatioLayoutInternal
- (MUAspectRatioLayoutInternal)initWithItem:(id)item aspectRatio:(double)ratio;
- (MULayoutItem)item;
- (double)aspectRatio;
- (void)setAspectRatio:(double)ratio;
- (void)setItem:(id)item;
@end

@implementation MUAspectRatioLayoutInternal

- (MUAspectRatioLayoutInternal)initWithItem:(id)item aspectRatio:(double)ratio
{
  swift_unknownObjectRetain();
  [item _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1708A0, &unk_1C5878000);
  swift_unknownObjectRetain();
  sub_1C56236C4();
  *&v10[1] = ratio;
  *(&self->super.super.isa + OBJC_IVAR___MUAspectRatioLayoutInternal_builder) = sub_1C562370C(v10);

  v8 = sub_1C562389C(v7, &off_1F44C6BC0);
  swift_unknownObjectRelease();
  return v8;
}

- (MULayoutItem)item
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUAspectRatioLayoutInternal_builder);
  selfCopy = self;
  sub_1C5623A68(v6);
  Strong = swift_unknownObjectWeakLoadStrong();

  sub_1C5723500(v6);

  return Strong;
}

- (void)setItem:(id)item
{
  selfCopy = self;
  if (item)
  {
    [swift_unknownObjectRetain() _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
  }

  v5 = *(&selfCopy->super.super.isa + OBJC_IVAR___MUAspectRatioLayoutInternal_builder);
  sub_1C5623A68(v8);
  swift_unknownObjectWeakAssign();
  sub_1C5723648(v8, v7);
  sub_1C5623B40(v7, v6);
  swift_unknownObjectRelease();
  sub_1C5723500(v8);
}

- (double)aspectRatio
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUAspectRatioLayoutInternal_builder);
  selfCopy = self;
  sub_1C5623A68(v6);

  v4 = *&v6[1];
  sub_1C5723500(v6);
  return v4;
}

- (void)setAspectRatio:(double)ratio
{
  v5 = OBJC_IVAR___MUAspectRatioLayoutInternal_builder;
  v6 = *(&self->super.super.isa + OBJC_IVAR___MUAspectRatioLayoutInternal_builder);
  selfCopy = self;
  sub_1C5623A68(v11);
  ratioCopy = ratio;
  v8 = *(&self->super.super.isa + v5);
  sub_1C5723648(v11, v10);
  sub_1C5623B40(v10, v9);
  sub_1C5723500(v11);
}

@end