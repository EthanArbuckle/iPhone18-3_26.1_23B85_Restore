@interface AuthCodeTextField
- (_TtC9CoreIDVUI17AuthCodeTextField)init;
- (_TtC9CoreIDVUI17AuthCodeTextField)initWithCoder:(id)coder;
- (_TtC9CoreIDVUI17AuthCodeTextField)initWithFrame:(CGRect)frame;
- (void)configureTextFieldViewScheme;
@end

@implementation AuthCodeTextField

- (_TtC9CoreIDVUI17AuthCodeTextField)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC9CoreIDVUI17AuthCodeTextField_textFieldLabel;
  *(&self->super.super.super.isa + v4) = sub_2458B34CC();
  v5 = OBJC_IVAR____TtC9CoreIDVUI17AuthCodeTextField_textField;
  *(&self->super.super.super.isa + v5) = sub_2458B3614();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI17AuthCodeTextField____lazy_storage___stackView) = 0;
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(AuthCodeTextField *)&v8 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_2458B3A60();

  return v6;
}

- (_TtC9CoreIDVUI17AuthCodeTextField)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC9CoreIDVUI17AuthCodeTextField_textFieldLabel;
  *(&self->super.super.super.isa + v4) = sub_2458B34CC();
  v5 = OBJC_IVAR____TtC9CoreIDVUI17AuthCodeTextField_textField;
  *(&self->super.super.super.isa + v5) = sub_2458B3614();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI17AuthCodeTextField____lazy_storage___stackView) = 0;
  result = sub_2459115D4();
  __break(1u);
  return result;
}

- (void)configureTextFieldViewScheme
{
  selfCopy = self;
  sub_2458509F4();
}

- (_TtC9CoreIDVUI17AuthCodeTextField)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end