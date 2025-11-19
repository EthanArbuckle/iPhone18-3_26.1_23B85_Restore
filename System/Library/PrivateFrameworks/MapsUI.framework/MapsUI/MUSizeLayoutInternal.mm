@interface MUSizeLayoutInternal
- (CGSize)size;
- (MULayoutItem)item;
- (MUSizeLayoutInternal)initWithItem:(id)a3 size:(CGSize)a4 priority:(float)a5;
- (float)priority;
- (void)setItem:(id)a3;
- (void)setPriority:(float)a3;
- (void)setSize:(CGSize)a3;
@end

@implementation MUSizeLayoutInternal

- (MUSizeLayoutInternal)initWithItem:(id)a3 size:(CGSize)a4 priority:(float)a5
{
  v6 = a4.width == -1.0;
  if (a4.width == -1.0)
  {
    width = 0.0;
  }

  else
  {
    width = a4.width;
  }

  v8 = a4.height == -1.0;
  if (a4.height == -1.0)
  {
    height = 0.0;
  }

  else
  {
    height = a4.height;
  }

  v10 = *(swift_getObjectType() + 104);
  v11 = swift_unknownObjectRetain();
  v12 = v10(v11, *&width, v6, *&height, v8, a5);
  swift_deallocPartialClassInstance();
  return v12;
}

- (MULayoutItem)item
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUSizeLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v6);
  Strong = swift_unknownObjectWeakLoadStrong();

  sub_1C56772C8(v6);

  return Strong;
}

- (void)setItem:(id)a3
{
  v4 = self;
  if (a3)
  {
    [swift_unknownObjectRetain() _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
  }

  v5 = *(&v4->super.super.isa + OBJC_IVAR___MUSizeLayoutInternal_builder);
  sub_1C5623A68(v8);
  swift_unknownObjectWeakAssign();
  sub_1C5677410(v8, v7);
  sub_1C5623B40(v7, v6);
  swift_unknownObjectRelease();
  sub_1C56772C8(v8);
}

- (CGSize)size
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.super.isa) + 0x88);
  v4 = self;
  v5 = COERCE_DOUBLE(v3());
  if (v6)
  {
    v7 = -1.0;
  }

  else
  {
    v7 = v5;
  }

  v8 = COERCE_DOUBLE((*((*v2 & v4->super.super.isa) + 0xA0))());
  v10 = v9;

  if (v10)
  {
    v11 = -1.0;
  }

  else
  {
    v11 = v8;
  }

  v12 = v7;
  result.height = v11;
  result.width = v12;
  return result;
}

- (void)setSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1C5677C04(width, height);
}

- (float)priority
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUSizeLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v6);

  v4 = v7;
  sub_1C56772C8(v6);
  return v4;
}

- (void)setPriority:(float)a3
{
  v5 = OBJC_IVAR___MUSizeLayoutInternal_builder;
  v6 = *(&self->super.super.isa + OBJC_IVAR___MUSizeLayoutInternal_builder);
  v7 = self;
  sub_1C5623A68(v11);
  v12 = a3;
  v8 = *(&self->super.super.isa + v5);
  sub_1C5677410(v11, v10);
  sub_1C5623B40(v10, v9);
  sub_1C56772C8(v11);
}

@end