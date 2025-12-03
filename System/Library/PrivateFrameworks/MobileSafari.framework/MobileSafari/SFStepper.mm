@interface SFStepper
- (BOOL)isFocusedInPageMenu;
- (BOOL)isUserInteractionEnabled;
- (BOOL)needsInitialBlink;
- (NSString)hintText;
- (double)_continuousCornerRadius;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)blink;
- (void)prepareForFocus;
- (void)pulse;
- (void)setDecrementButtonActionHandler:(id)handler;
- (void)setEnabled:(BOOL)enabled forButton:(int64_t)button;
- (void)setHintText:(id)text;
- (void)setIncrementButtonActionHandler:(id)handler;
- (void)setIsFocusedInPageMenu:(BOOL)menu;
- (void)setNeedsInitialBlink:(BOOL)blink;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation SFStepper

- (BOOL)isUserInteractionEnabled
{
  v3.receiver = self;
  v3.super_class = SFStepper;
  return [(SFStepper *)&v3 isUserInteractionEnabled];
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7.receiver = self;
  v7.super_class = SFStepper;
  selfCopy = self;
  isUserInteractionEnabled = [(SFStepper *)&v7 isUserInteractionEnabled];
  v6.receiver = selfCopy;
  v6.super_class = SFStepper;
  [(SFStepper *)&v6 setUserInteractionEnabled:enabledCopy];
  sub_18BA27818(isUserInteractionEnabled);
}

- (double)_continuousCornerRadius
{
  v3.receiver = self;
  v3.super_class = SFStepper;
  [(SFStepper *)&v3 _continuousCornerRadius];
  return result;
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = SFStepper;
  selfCopy = self;
  [(SFStepper *)&v5 _setContinuousCornerRadius:radius];
  [*(selfCopy + OBJC_IVAR___SFStepper_containerView) _setContinuousCornerRadius_];
  [*(selfCopy + OBJC_IVAR___SFStepper_shadowView) _setContinuousCornerRadius_];
}

- (void)setDecrementButtonActionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_18BA2A9D8;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SFStepper_decrementButtonActionHandler);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_18B7E0A10(v7);
}

- (void)setIncrementButtonActionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_18BA2A69C;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SFStepper_incrementButtonActionHandler);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_18B7E0A10(v7);
}

- (BOOL)isFocusedInPageMenu
{
  v3 = OBJC_IVAR___SFStepper_isFocusedInPageMenu;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsFocusedInPageMenu:(BOOL)menu
{
  v5 = OBJC_IVAR___SFStepper_isFocusedInPageMenu;
  swift_beginAccess();
  *(self + v5) = menu;
}

- (NSString)hintText
{
  v2 = self + OBJC_IVAR___SFStepper_hintText;
  swift_beginAccess();
  if (*(v2 + 1))
  {
    sub_18BC1E3F8();
    v3 = sub_18BC20B98();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHintText:(id)text
{
  if (text)
  {
    v4 = sub_18BC20BD8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  SFStepper.hintText.setter(v4, v6);
}

- (BOOL)needsInitialBlink
{
  v3 = OBJC_IVAR___SFStepper_needsInitialBlink;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNeedsInitialBlink:(BOOL)blink
{
  selfCopy = self;
  SFStepper.needsInitialBlink.setter(blink);
}

- (void)blink
{
  selfCopy = self;
  SFStepper.blink()();
}

- (void)pulse
{
  selfCopy = self;
  sub_18BA28A14();
}

- (void)prepareForFocus
{
  selfCopy = self;
  SFStepper.prepareForFocus()();
}

- (void)setEnabled:(BOOL)enabled forButton:(int64_t)button
{
  selfCopy = self;
  sub_18BA28FF8(enabled, button);
}

@end