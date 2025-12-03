@interface CKUnborderedBackdropMaterialView
+ (Class)layerClass;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (_TtC7ChatKit32CKUnborderedBackdropMaterialView)initWithCoder:(id)coder;
- (_TtC7ChatKit32CKUnborderedBackdropMaterialView)initWithFrame:(CGRect)frame;
@end

@implementation CKUnborderedBackdropMaterialView

+ (Class)layerClass
{
  sub_1902188FC(0, &qword_1EAD46698);

  return swift_getObjCClassFromMetadata();
}

- (_TtC7ChatKit32CKUnborderedBackdropMaterialView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = objc_allocWithZone(type metadata accessor for CKUnborderedBackdropMaterialView());
  v8 = sub_1908F0230(0, x, y, width, height);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (_TtC7ChatKit32CKUnborderedBackdropMaterialView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit32CKUnborderedBackdropMaterialView_enableBlur) = 0;
  v3 = OBJC_IVAR____TtC7ChatKit32CKUnborderedBackdropMaterialView_color;
  *(&self->super.super.super.isa + v3) = [objc_opt_self() grayColor];
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if (key)
  {
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_1908F088C(v4, v6);

  return v8 & 1;
}

@end