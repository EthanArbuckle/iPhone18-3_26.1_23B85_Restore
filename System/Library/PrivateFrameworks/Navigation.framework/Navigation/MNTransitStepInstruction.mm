@interface MNTransitStepInstruction
+ (id)instructionForStep:(id)step overrides:(id)overrides context:(int64_t)context;
- (MNTransitStepInstruction)initWithStep:(id)step overrides:(id)overrides context:(int64_t)context;
@end

@implementation MNTransitStepInstruction

- (MNTransitStepInstruction)initWithStep:(id)step overrides:(id)overrides context:(int64_t)context
{
  stepCopy = step;
  overridesCopy = overrides;
  v15.receiver = self;
  v15.super_class = MNTransitStepInstruction;
  v11 = [(MNTransitInstruction *)&v15 initWithContext:context];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_step, step);
    objc_storeStrong(&v12->_overridenInstructionsMapping, overrides);
    [(MNTransitInstruction *)v12 _fillInInstructions];
    v13 = v12;
  }

  return v12;
}

+ (id)instructionForStep:(id)step overrides:(id)overrides context:(int64_t)context
{
  overridesCopy = overrides;
  stepCopy = step;
  v10 = [[self alloc] initWithStep:stepCopy overrides:overridesCopy context:context];

  return v10;
}

@end