@interface SFStepperContainer
- (SFStepper)stepper;
- (SFStepperContainer)initWithCoder:(id)coder;
- (SFStepperContainer)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)hideStepperWithCompletion:(id)completion;
- (void)setStepper:(id)stepper;
@end

@implementation SFStepperContainer

- (SFStepperContainer)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___SFStepperContainer_stepper) = 0;
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (SFStepperContainer)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = sub_18BC1F688();
  MEMORY[0x1EEE9AC00](v8);
  *(&self->super.super.super.isa + OBJC_IVAR___SFStepperContainer_stepper) = 0;
  v11.receiver = self;
  v11.super_class = SFStepperContainer;
  height = [(SFStepperContainer *)&v11 initWithFrame:x, y, width, height];
  sub_18BC21528();
  sub_18BC1F5B8();
  sub_18BC21538();

  return height;
}

- (SFStepper)stepper
{
  v3 = OBJC_IVAR___SFStepperContainer_stepper;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setStepper:(id)stepper
{
  stepperCopy = stepper;
  selfCopy = self;
  SFStepperContainer.stepper.setter(stepper);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  selfCopy = self;
  eventCopy = event;
  stepper = [(SFStepperContainer *)selfCopy stepper];
  if (!stepper)
  {
    goto LABEL_6;
  }

  v10 = stepper;
  v16.receiver = selfCopy;
  v16.super_class = SFStepperContainer;
  v11 = [(SFStepperContainer *)&v16 hitTest:eventCopy withEvent:x, y];
  if (!v11)
  {

LABEL_6:
    goto LABEL_8;
  }

  v12 = v11;
  isDescendantOfView_ = [v11 isDescendantOfView_];

  if (isDescendantOfView_)
  {
    v14 = v12;
    goto LABEL_9;
  }

LABEL_8:
  v14 = 0;
LABEL_9:

  return v14;
}

- (void)hideStepperWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  SFStepperContainer.hideStepper(completion:)(sub_18BA2A69C, v5);
}

@end