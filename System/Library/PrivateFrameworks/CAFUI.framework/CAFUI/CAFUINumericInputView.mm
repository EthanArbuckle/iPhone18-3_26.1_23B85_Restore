@interface CAFUINumericInputView
- (_TtC5CAFUI21CAFUINumericInputView)initWithCoder:(id)a3;
- (_TtC5CAFUI21CAFUINumericInputView)initWithFrame:(CGRect)a3;
- (id)focusItemsInRect:(CGRect)a3;
- (void)controlTouchCancelWithSender:(id)a3 forEvent:(id)a4;
- (void)controlTouchDownWithSender:(id)a3;
- (void)controlTouchUpWithSender:(id)a3;
- (void)sliderChangedWithSender:(id)a3;
- (void)stopTrackingControlWithSender:(id)a3;
@end

@implementation CAFUINumericInputView

- (_TtC5CAFUI21CAFUINumericInputView)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_cancellableTimer;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)controlTouchDownWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFUINumericInputView.controlTouchDown(sender:)(v4);
}

- (void)controlTouchUpWithSender:(id)a3
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = a3;
  v7 = self;
  if (v5)
  {
    CAFUINumericInputView.buttonValueChanged(sender:)(v5);
  }

  CAFUINumericInputView.stopTrackingControl(sender:)(v6);
}

- (void)controlTouchCancelWithSender:(id)a3 forEvent:(id)a4
{
  v5 = a3;
  v6 = self;
  CAFUINumericInputView.stopTrackingControl(sender:)(v5);
}

- (void)stopTrackingControlWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFUINumericInputView.stopTrackingControl(sender:)(v4);
}

- (void)sliderChangedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFUINumericInputView.sliderChanged(sender:)(v4);
}

- (id)focusItemsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  CAFUINumericInputView.focusItems(in:)(x, y, width, height);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11UIFocusItem_pMd);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (_TtC5CAFUI21CAFUINumericInputView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end