@interface BrowsingAssistant.MainHeaderFooter
- (id)leadingButtonActionHandler;
- (void)setLeadingButtonActionHandler:(id)handler;
- (void)setStepper:(id)stepper;
@end

@implementation BrowsingAssistant.MainHeaderFooter

- (id)leadingButtonActionHandler
{
  if (*(self + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_leadingButtonActionHandler))
  {
    v2 = *(self + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_leadingButtonActionHandler + 8);
    v5[4] = *(self + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_leadingButtonActionHandler);
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_18B7B0DB0;
    v5[3] = &block_descriptor_71;
    v3 = _Block_copy(v5);
    sub_18BC1E1A8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLeadingButtonActionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_18BA93828;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_leadingButtonActionHandler);
  v8 = *(self + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_leadingButtonActionHandler);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_18B7E0A10(v8);
}

- (void)setStepper:(id)stepper
{
  v5 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_stepper;
  v6 = *(self + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_stepper);
  v7 = v6;
  stepperCopy = stepper;
  selfCopy = self;
  sub_18BC180E0(stepper);
  v9 = *(self + v5);
  *(self + v5) = stepper;
  v10 = stepperCopy;

  sub_18BC1810C(v6);
}

@end