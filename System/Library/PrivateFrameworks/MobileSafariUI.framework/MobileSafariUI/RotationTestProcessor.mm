@interface RotationTestProcessor
- (BOOL)performActionForPage:(id)a3;
- (BOOL)startPageAction:(id)a3;
- (RotationTestProcessor)initWithTestName:(id)a3 browserController:(id)a4;
- (void)startRotation;
@end

@implementation RotationTestProcessor

- (RotationTestProcessor)initWithTestName:(id)a3 browserController:(id)a4
{
  v8.receiver = self;
  v8.super_class = RotationTestProcessor;
  v4 = [(ContentInteractionTestRunner *)&v8 initWithTestName:a3 browserController:a4];
  v5 = v4;
  if (v4)
  {
    [(RotationTestProcessor *)v4 setTestState:0];
    v6 = v5;
  }

  return v5;
}

- (BOOL)startPageAction:(id)a3
{
  v4 = a3;
  [(RotationTestProcessor *)self setIterationsRemaining:[(ContentInteractionTestRunner *)self iterations]];
  [(RotationTestProcessor *)self setTestState:1];
  v6.receiver = self;
  v6.super_class = RotationTestProcessor;
  LOBYTE(self) = [(ContentInteractionTestRunner *)&v6 startPageAction:v4];

  return self;
}

- (void)startRotation
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 statusBarOrientation];

  if (v4 == 3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  v6 = [MEMORY[0x277D75128] sharedApplication];
  v7[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__RotationTestProcessor_startRotation__block_invoke;
  v8[3] = &unk_2781D4B18;
  v8[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__RotationTestProcessor_startRotation__block_invoke_2;
  v7[3] = &unk_2781D4B18;
  [v6 rotateIfNeeded:v5 before:v8 after:v7];
  [(RotationTestProcessor *)self setTestState:2];
}

uint64_t __38__RotationTestProcessor_startRotation__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) endTrackingFrameRate];
  v2 = *(a1 + 32);

  return [v2 setTestState:4];
}

- (BOOL)performActionForPage:(id)a3
{
  if ([(RotationTestProcessor *)self testState]== 1)
  {
    [(RotationTestProcessor *)self startRotation];
  }

  return [(RotationTestProcessor *)self testState]!= 4;
}

@end