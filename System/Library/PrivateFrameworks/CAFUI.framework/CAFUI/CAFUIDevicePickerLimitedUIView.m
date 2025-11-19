@interface CAFUIDevicePickerLimitedUIView
- (_TtC5CAFUI30CAFUIDevicePickerLimitedUIView)initWithCoder:(id)a3;
- (_TtC5CAFUI30CAFUIDevicePickerLimitedUIView)initWithFrame:(CGRect)a3;
@end

@implementation CAFUIDevicePickerLimitedUIView

- (_TtC5CAFUI30CAFUIDevicePickerLimitedUIView)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC5CAFUI30CAFUIDevicePickerLimitedUIView_presentedAction);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC5CAFUI30CAFUIDevicePickerLimitedUIView_dismissAction);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC5CAFUI30CAFUIDevicePickerLimitedUIView_button;
  *(&self->super.super.super.isa + v6) = closure #1 in variable initialization expression of CAFUIDevicePickerLimitedUIView.button();
  v7 = OBJC_IVAR____TtC5CAFUI30CAFUIDevicePickerLimitedUIView_label;
  *(&self->super.super.super.isa + v7) = closure #1 in variable initialization expression of CAFUIDevicePickerLimitedUIView.label();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC5CAFUI30CAFUIDevicePickerLimitedUIView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end