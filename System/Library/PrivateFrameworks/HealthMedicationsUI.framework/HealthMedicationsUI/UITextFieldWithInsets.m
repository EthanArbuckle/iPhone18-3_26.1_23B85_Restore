@interface UITextFieldWithInsets
- (CGRect)editingRectForBounds:(CGRect)a3;
- (CGRect)textRectForBounds:(CGRect)a3;
- (_TtC19HealthMedicationsUI21UITextFieldWithInsets)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI21UITextFieldWithInsets)initWithFrame:(CGRect)a3;
@end

@implementation UITextFieldWithInsets

- (CGRect)textRectForBounds:(CGRect)a3
{
  sub_22828A5F8(self, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a2, &selRef_textRectForBounds_);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)a3
{
  sub_22828A5F8(self, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a2, &selRef_editingRectForBounds_);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (_TtC19HealthMedicationsUI21UITextFieldWithInsets)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = self + OBJC_IVAR____TtC19HealthMedicationsUI21UITextFieldWithInsets_insets;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(UITextFieldWithInsets *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC19HealthMedicationsUI21UITextFieldWithInsets)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC19HealthMedicationsUI21UITextFieldWithInsets_insets;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(UITextFieldWithInsets *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end