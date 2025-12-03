@interface CAFUINumericInputView
- (_TtC5CAFUI21CAFUINumericInputView)initWithCoder:(id)coder;
- (_TtC5CAFUI21CAFUINumericInputView)initWithFrame:(CGRect)frame;
- (id)focusItemsInRect:(CGRect)rect;
- (void)controlTouchCancelWithSender:(id)sender forEvent:(id)event;
- (void)controlTouchDownWithSender:(id)sender;
- (void)controlTouchUpWithSender:(id)sender;
- (void)sliderChangedWithSender:(id)sender;
- (void)stopTrackingControlWithSender:(id)sender;
@end

@implementation CAFUINumericInputView

- (_TtC5CAFUI21CAFUINumericInputView)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_cancellableTimer;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)controlTouchDownWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  CAFUINumericInputView.controlTouchDown(sender:)(senderCopy);
}

- (void)controlTouchUpWithSender:(id)sender
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  senderCopy = sender;
  selfCopy = self;
  if (v5)
  {
    CAFUINumericInputView.buttonValueChanged(sender:)(v5);
  }

  CAFUINumericInputView.stopTrackingControl(sender:)(senderCopy);
}

- (void)controlTouchCancelWithSender:(id)sender forEvent:(id)event
{
  senderCopy = sender;
  selfCopy = self;
  CAFUINumericInputView.stopTrackingControl(sender:)(senderCopy);
}

- (void)stopTrackingControlWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  CAFUINumericInputView.stopTrackingControl(sender:)(senderCopy);
}

- (void)sliderChangedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  CAFUINumericInputView.sliderChanged(sender:)(senderCopy);
}

- (id)focusItemsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  CAFUINumericInputView.focusItems(in:)(x, y, width, height);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11UIFocusItem_pMd);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (_TtC5CAFUI21CAFUINumericInputView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end