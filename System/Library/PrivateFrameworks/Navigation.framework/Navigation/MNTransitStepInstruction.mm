@interface MNTransitStepInstruction
+ (id)instructionForStep:(id)a3 overrides:(id)a4 context:(int64_t)a5;
- (MNTransitStepInstruction)initWithStep:(id)a3 overrides:(id)a4 context:(int64_t)a5;
@end

@implementation MNTransitStepInstruction

- (MNTransitStepInstruction)initWithStep:(id)a3 overrides:(id)a4 context:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = MNTransitStepInstruction;
  v11 = [(MNTransitInstruction *)&v15 initWithContext:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_step, a3);
    objc_storeStrong(&v12->_overridenInstructionsMapping, a4);
    [(MNTransitInstruction *)v12 _fillInInstructions];
    v13 = v12;
  }

  return v12;
}

+ (id)instructionForStep:(id)a3 overrides:(id)a4 context:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithStep:v9 overrides:v8 context:a5];

  return v10;
}

@end