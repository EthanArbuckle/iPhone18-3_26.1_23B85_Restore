@interface CSFlashlightQuickAction
- (CSFlashlightQuickAction)init;
- (CSFlashlightQuickAction)initWithFlashlightController:(id)a3;
- (CSFlashlightQuickAction)initWithLockoutController:(id)a3;
- (int64_t)appearance;
- (void)_deviceBlockStateDidChangeNotification:(id)a3;
- (void)_featureLockStateDidChangeNotification:(id)a3;
- (void)_setupIfNecessary;
- (void)buttonVisibilityChangedTo:(BOOL)a3;
- (void)fireAction;
- (void)flashlightAvailabilityDidChange:(BOOL)a3;
- (void)flashlightLevelDidChange:(unint64_t)a3;
- (void)tearDown;
- (void)touchEnded;
@end

@implementation CSFlashlightQuickAction

- (int64_t)appearance
{
  if ([(SBUIFlashlightController *)self->_flashlightController isOverheated])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)tearDown
{
  if (![(CSFlashlightQuickAction *)self _isFlashlightOn])
  {
    [(SBUIFlashlightController *)self->_flashlightController coolDown];
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self name:*MEMORY[0x277D66030] object:0];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self name:*MEMORY[0x277D67A50] object:0];

    flashlightController = self->_flashlightController;
    self->_flashlightController = 0;

    v6 = [(CSQuickAction *)self delegate];
    [v6 allowsInteractionDidChangeForAction:self];
  }
}

- (void)_setupIfNecessary
{
  if ([MEMORY[0x277D679B8] deviceSupportsFlashlight] && !self->_flashlightController)
  {
    v3 = [MEMORY[0x277D679B8] sharedInstance];
    flashlightController = self->_flashlightController;
    self->_flashlightController = v3;

    [(SBUIFlashlightController *)self->_flashlightController addObserver:self];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:self selector:sel__deviceBlockStateDidChangeNotification_ name:*MEMORY[0x277D66030] object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:self selector:sel__featureLockStateDidChangeNotification_ name:*MEMORY[0x277D67A50] object:0];

    [(CSQuickAction *)self setSelected:[(CSFlashlightQuickAction *)self isSelected]];
    v7 = [(CSQuickAction *)self delegate];
    [v7 allowsInteractionDidChangeForAction:self];
  }
}

- (CSFlashlightQuickAction)init
{
  v3 = [MEMORY[0x277D679B8] sharedInstance];
  v4 = [(CSFlashlightQuickAction *)self initWithFlashlightController:v3];

  return v4;
}

- (CSFlashlightQuickAction)initWithFlashlightController:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CSFlashlightQuickAction;
  v6 = [(CSFlashlightQuickAction *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_flashlightController, a3);
    [(SBUIFlashlightController *)v7->_flashlightController addObserver:v7];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel__deviceBlockStateDidChangeNotification_ name:*MEMORY[0x277D66030] object:0];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v7 selector:sel__featureLockStateDidChangeNotification_ name:*MEMORY[0x277D67A50] object:0];
  }

  return v7;
}

- (CSFlashlightQuickAction)initWithLockoutController:(id)a3
{
  v5 = a3;
  v6 = [(CSFlashlightQuickAction *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lockoutController, a3);
  }

  return v7;
}

- (void)fireAction
{
  v3 = [(CSFlashlightQuickAction *)self _isFlashlightOn];
  flashlightController = self->_flashlightController;
  if (v3)
  {

    [(SBUIFlashlightController *)flashlightController turnFlashlightOffForReason:@"Lock Screen Buttons"];
  }

  else
  {

    [(SBUIFlashlightController *)flashlightController turnFlashlightOnForReason:@"Lock Screen Buttons"];
  }
}

- (void)touchEnded
{
  if (![(CSFlashlightQuickAction *)self _isFlashlightOn])
  {
    flashlightController = self->_flashlightController;

    [(SBUIFlashlightController *)flashlightController coolDown];
  }
}

- (void)buttonVisibilityChangedTo:(BOOL)a3
{
  if (a3)
  {
    [(CSFlashlightQuickAction *)self _setupIfNecessary];
  }

  else
  {
    [(CSFlashlightQuickAction *)self tearDown];
  }
}

- (void)_deviceBlockStateDidChangeNotification:(id)a3
{
  if ([(CSFlashlightQuickAction *)self _isFlashlightOn]&& [(SBFLockOutStatusProvider *)self->_lockoutController isBlocked])
  {
    flashlightController = self->_flashlightController;

    [(SBUIFlashlightController *)flashlightController turnFlashlightOffForReason:@"Lock Screen Buttons"];
  }
}

- (void)_featureLockStateDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277D67B30]];
  v6 = [v5 BOOLValue];

  if ([(CSFlashlightQuickAction *)self _isFlashlightOn]&& v6)
  {
    flashlightController = self->_flashlightController;

    [(SBUIFlashlightController *)flashlightController turnFlashlightOffForReason:@"Lock Screen Buttons"];
  }
}

- (void)flashlightLevelDidChange:(unint64_t)a3
{
  v4 = [(CSQuickAction *)self delegate];
  [v4 isSelectedDidChangeForAction:self];
}

- (void)flashlightAvailabilityDidChange:(BOOL)a3
{
  v4 = [(CSQuickAction *)self delegate];
  [v4 allowsInteractionDidChangeForAction:self];
}

@end