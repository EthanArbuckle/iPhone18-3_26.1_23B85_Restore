@interface DepthLabel
- (NSAttributedString)attributedText;
- (void)drawTextInRect:(CGRect)a3;
- (void)rotateIfPossibleTo:(int64_t)a3;
- (void)setAttributedText:(id)a3;
@end

@implementation DepthLabel

- (NSAttributedString)attributedText
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = [(DepthLabel *)&v4 attributedText];

  return v2;
}

- (void)setAttributedText:(id)a3
{
  ObjectType = swift_getObjectType();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v6 = a3;
  v7 = self;
  v8 = [(DepthLabel *)&v10 attributedText];
  v9.receiver = v7;
  v9.super_class = ObjectType;
  [(DepthLabel *)&v9 setAttributedText:v6];
  sub_257E85410(v8);
}

- (void)drawTextInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = UIEdgeInsetsInsetRect_1(x, y, width, height, *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport10DepthLabel__topInset), 0.0);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17.receiver = self;
  v17.super_class = ObjectType;
  v16 = self;
  [(DepthLabel *)&v17 drawTextInRect:v9, v11, v13, v15];
}

- (void)rotateIfPossibleTo:(int64_t)a3
{
  v4 = self;
  sub_257E85D30(a3);
}

@end