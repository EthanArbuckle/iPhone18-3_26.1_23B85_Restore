@interface SFStepperContainer
- (SFStepper)stepper;
- (SFStepperContainer)initWithCoder:(id)a3;
- (SFStepperContainer)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)hideStepperWithCompletion:(id)a3;
- (void)setStepper:(id)a3;
@end

@implementation SFStepperContainer

- (SFStepperContainer)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___SFStepperContainer_stepper) = 0;
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (SFStepperContainer)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = sub_18BC1F688();
  MEMORY[0x1EEE9AC00](v8);
  *(&self->super.super.super.isa + OBJC_IVAR___SFStepperContainer_stepper) = 0;
  v11.receiver = self;
  v11.super_class = SFStepperContainer;
  v9 = [(SFStepperContainer *)&v11 initWithFrame:x, y, width, height];
  sub_18BC21528();
  sub_18BC1F5B8();
  sub_18BC21538();

  return v9;
}

- (SFStepper)stepper
{
  v3 = OBJC_IVAR___SFStepperContainer_stepper;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setStepper:(id)a3
{
  v5 = a3;
  v6 = self;
  SFStepperContainer.stepper.setter(a3);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = self;
  v8 = a4;
  v9 = [(SFStepperContainer *)v7 stepper];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = v9;
  v16.receiver = v7;
  v16.super_class = SFStepperContainer;
  v11 = [(SFStepperContainer *)&v16 hitTest:v8 withEvent:x, y];
  if (!v11)
  {

LABEL_6:
    goto LABEL_8;
  }

  v12 = v11;
  v13 = [v11 isDescendantOfView_];

  if (v13)
  {
    v14 = v12;
    goto LABEL_9;
  }

LABEL_8:
  v14 = 0;
LABEL_9:

  return v14;
}

- (void)hideStepperWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  SFStepperContainer.hideStepper(completion:)(sub_18BA2A69C, v5);
}

@end