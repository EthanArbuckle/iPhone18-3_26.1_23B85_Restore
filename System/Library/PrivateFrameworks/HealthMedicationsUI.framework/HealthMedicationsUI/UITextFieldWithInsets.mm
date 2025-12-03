@interface UITextFieldWithInsets
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (_TtC19HealthMedicationsUI21UITextFieldWithInsets)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI21UITextFieldWithInsets)initWithFrame:(CGRect)frame;
@end

@implementation UITextFieldWithInsets

- (CGRect)textRectForBounds:(CGRect)bounds
{
  sub_22828A5F8(self, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height, a2, &selRef_textRectForBounds_);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  sub_22828A5F8(self, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height, a2, &selRef_editingRectForBounds_);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (_TtC19HealthMedicationsUI21UITextFieldWithInsets)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = self + OBJC_IVAR____TtC19HealthMedicationsUI21UITextFieldWithInsets_insets;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(UITextFieldWithInsets *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC19HealthMedicationsUI21UITextFieldWithInsets)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC19HealthMedicationsUI21UITextFieldWithInsets_insets;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(UITextFieldWithInsets *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end