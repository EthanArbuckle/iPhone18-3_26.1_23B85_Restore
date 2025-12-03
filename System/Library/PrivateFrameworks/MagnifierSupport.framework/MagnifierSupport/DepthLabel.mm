@interface DepthLabel
- (NSAttributedString)attributedText;
- (void)drawTextInRect:(CGRect)rect;
- (void)rotateIfPossibleTo:(int64_t)to;
- (void)setAttributedText:(id)text;
@end

@implementation DepthLabel

- (NSAttributedString)attributedText
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  attributedText = [(DepthLabel *)&v4 attributedText];

  return attributedText;
}

- (void)setAttributedText:(id)text
{
  ObjectType = swift_getObjectType();
  v10.receiver = self;
  v10.super_class = ObjectType;
  textCopy = text;
  selfCopy = self;
  attributedText = [(DepthLabel *)&v10 attributedText];
  v9.receiver = selfCopy;
  v9.super_class = ObjectType;
  [(DepthLabel *)&v9 setAttributedText:textCopy];
  sub_257E85410(attributedText);
}

- (void)drawTextInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  ObjectType = swift_getObjectType();
  v9 = UIEdgeInsetsInsetRect_1(x, y, width, height, *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport10DepthLabel__topInset), 0.0);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17.receiver = self;
  v17.super_class = ObjectType;
  selfCopy = self;
  [(DepthLabel *)&v17 drawTextInRect:v9, v11, v13, v15];
}

- (void)rotateIfPossibleTo:(int64_t)to
{
  selfCopy = self;
  sub_257E85D30(to);
}

@end