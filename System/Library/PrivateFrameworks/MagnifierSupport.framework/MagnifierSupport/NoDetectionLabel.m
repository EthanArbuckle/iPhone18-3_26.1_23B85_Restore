@interface NoDetectionLabel
- (_TtC16MagnifierSupport16NoDetectionLabel)initWithFrame:(CGRect)a3;
- (void)drawTextInRect:(CGRect)a3;
@end

@implementation NoDetectionLabel

- (void)drawTextInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = self;
  [(NoDetectionLabel *)v9 bounds];
  v11 = UIEdgeInsetsInsetRect_1(x, y, width, height, v10 - *(&v9->super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport16NoDetectionLabel_kBottomInset), 20.0);
  v12.receiver = v9;
  v12.super_class = ObjectType;
  [(NoDetectionLabel *)&v12 drawTextInRect:v11];
}

- (_TtC16MagnifierSupport16NoDetectionLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  if (qword_27F8F4670 != -1)
  {
    v13 = ObjectType;
    swift_once();
    ObjectType = v13;
  }

  v9 = 118.0;
  if (byte_27F8F8D89)
  {
    v9 = 85.0;
  }

  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport16NoDetectionLabel_kBottomInset) = v9;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport16NoDetectionLabel_kSideInset) = 0x4034000000000000;
  v10 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport16NoDetectionLabel_peopleDetectionText);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport16NoDetectionLabel_doorDetectionText);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v14.receiver = self;
  v14.super_class = ObjectType;
  return [(NoDetectionLabel *)&v14 initWithFrame:x, y, width, height];
}

@end