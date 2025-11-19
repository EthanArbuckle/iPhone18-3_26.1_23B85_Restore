@interface SFStepper
- (BOOL)isFocusedInPageMenu;
- (BOOL)isUserInteractionEnabled;
- (BOOL)needsInitialBlink;
- (NSString)hintText;
- (double)_continuousCornerRadius;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)blink;
- (void)prepareForFocus;
- (void)pulse;
- (void)setDecrementButtonActionHandler:(id)a3;
- (void)setEnabled:(BOOL)a3 forButton:(int64_t)a4;
- (void)setHintText:(id)a3;
- (void)setIncrementButtonActionHandler:(id)a3;
- (void)setIsFocusedInPageMenu:(BOOL)a3;
- (void)setNeedsInitialBlink:(BOOL)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
@end

@implementation SFStepper

- (BOOL)isUserInteractionEnabled
{
  v3.receiver = self;
  v3.super_class = SFStepper;
  return [(SFStepper *)&v3 isUserInteractionEnabled];
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = SFStepper;
  v4 = self;
  v5 = [(SFStepper *)&v7 isUserInteractionEnabled];
  v6.receiver = v4;
  v6.super_class = SFStepper;
  [(SFStepper *)&v6 setUserInteractionEnabled:v3];
  sub_18BA27818(v5);
}

- (double)_continuousCornerRadius
{
  v3.receiver = self;
  v3.super_class = SFStepper;
  [(SFStepper *)&v3 _continuousCornerRadius];
  return result;
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = SFStepper;
  v4 = self;
  [(SFStepper *)&v5 _setContinuousCornerRadius:a3];
  [*(v4 + OBJC_IVAR___SFStepper_containerView) _setContinuousCornerRadius_];
  [*(v4 + OBJC_IVAR___SFStepper_shadowView) _setContinuousCornerRadius_];
}

- (void)setDecrementButtonActionHandler:(id)a3
{
  v4 = _Block_copy(a3);
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
  v8 = self;
  sub_18B7E0A10(v7);
}

- (void)setIncrementButtonActionHandler:(id)a3
{
  v4 = _Block_copy(a3);
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
  v8 = self;
  sub_18B7E0A10(v7);
}

- (BOOL)isFocusedInPageMenu
{
  v3 = OBJC_IVAR___SFStepper_isFocusedInPageMenu;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsFocusedInPageMenu:(BOOL)a3
{
  v5 = OBJC_IVAR___SFStepper_isFocusedInPageMenu;
  swift_beginAccess();
  *(self + v5) = a3;
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

- (void)setHintText:(id)a3
{
  if (a3)
  {
    v4 = sub_18BC20BD8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  SFStepper.hintText.setter(v4, v6);
}

- (BOOL)needsInitialBlink
{
  v3 = OBJC_IVAR___SFStepper_needsInitialBlink;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNeedsInitialBlink:(BOOL)a3
{
  v4 = self;
  SFStepper.needsInitialBlink.setter(a3);
}

- (void)blink
{
  v2 = self;
  SFStepper.blink()();
}

- (void)pulse
{
  v2 = self;
  sub_18BA28A14();
}

- (void)prepareForFocus
{
  v2 = self;
  SFStepper.prepareForFocus()();
}

- (void)setEnabled:(BOOL)a3 forButton:(int64_t)a4
{
  v6 = self;
  sub_18BA28FF8(a3, a4);
}

@end