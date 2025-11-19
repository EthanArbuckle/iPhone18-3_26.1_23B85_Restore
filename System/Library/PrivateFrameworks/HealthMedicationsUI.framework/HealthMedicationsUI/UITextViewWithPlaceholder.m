@interface UITextViewWithPlaceholder
- (NSString)text;
- (_TtC19HealthMedicationsUI25UITextViewWithPlaceholder)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI25UITextViewWithPlaceholder)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (void)layoutSubviews;
- (void)setText:(id)a3;
@end

@implementation UITextViewWithPlaceholder

- (NSString)text
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  v3 = [(UITextViewWithPlaceholder *)&v7 text];
  if (v3)
  {
    v4 = v3;
    sub_228392000();

    v5 = sub_228391FC0();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setText:(id)a3
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_228392000();
    v6 = self;
    a3 = sub_228391FC0();
  }

  else
  {
    v7 = self;
  }

  v11.receiver = self;
  v11.super_class = ObjectType;
  [(UITextViewWithPlaceholder *)&v11 setText:a3];

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(UITextViewWithPlaceholder *)&v10 text];
  v9.receiver = self;
  v9.super_class = ObjectType;
  [(UITextViewWithPlaceholder *)&v9 setText:v8];

  sub_2283255A4();
}

- (_TtC19HealthMedicationsUI25UITextViewWithPlaceholder)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder____lazy_storage___placeholderLabel) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder_textDidChangeSubscription) = 0;
  v15.receiver = self;
  v15.super_class = ObjectType;
  v11 = a4;
  v12 = [(UITextViewWithPlaceholder *)&v15 initWithFrame:v11 textContainer:x, y, width, height];
  v13 = sub_2283251B8();
  [(UITextViewWithPlaceholder *)v12 addSubview:v13, v15.receiver, v15.super_class];

  sub_228325AE0();
  return v12;
}

- (_TtC19HealthMedicationsUI25UITextViewWithPlaceholder)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder____lazy_storage___placeholderLabel) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder_textDidChangeSubscription) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  UITextViewWithPlaceholder.layoutSubviews()();
}

@end