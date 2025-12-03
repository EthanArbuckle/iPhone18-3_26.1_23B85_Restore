@interface UITextViewWithPlaceholder
- (NSString)text;
- (_TtC19HealthMedicationsUI25UITextViewWithPlaceholder)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI25UITextViewWithPlaceholder)initWithFrame:(CGRect)frame textContainer:(id)container;
- (void)layoutSubviews;
- (void)setText:(id)text;
@end

@implementation UITextViewWithPlaceholder

- (NSString)text
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  text = [(UITextViewWithPlaceholder *)&v7 text];
  if (text)
  {
    v4 = text;
    sub_228392000();

    v5 = sub_228391FC0();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setText:(id)text
{
  ObjectType = swift_getObjectType();
  if (text)
  {
    sub_228392000();
    selfCopy = self;
    text = sub_228391FC0();
  }

  else
  {
    selfCopy2 = self;
  }

  v11.receiver = self;
  v11.super_class = ObjectType;
  [(UITextViewWithPlaceholder *)&v11 setText:text];

  v10.receiver = self;
  v10.super_class = ObjectType;
  text = [(UITextViewWithPlaceholder *)&v10 text];
  v9.receiver = self;
  v9.super_class = ObjectType;
  [(UITextViewWithPlaceholder *)&v9 setText:text];

  sub_2283255A4();
}

- (_TtC19HealthMedicationsUI25UITextViewWithPlaceholder)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder____lazy_storage___placeholderLabel) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder_textDidChangeSubscription) = 0;
  v15.receiver = self;
  v15.super_class = ObjectType;
  containerCopy = container;
  height = [(UITextViewWithPlaceholder *)&v15 initWithFrame:containerCopy textContainer:x, y, width, height];
  v13 = sub_2283251B8();
  [(UITextViewWithPlaceholder *)height addSubview:v13, v15.receiver, v15.super_class];

  sub_228325AE0();
  return height;
}

- (_TtC19HealthMedicationsUI25UITextViewWithPlaceholder)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder____lazy_storage___placeholderLabel) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder_textDidChangeSubscription) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  UITextViewWithPlaceholder.layoutSubviews()();
}

@end