@interface CSFlashlightQuickAction
- (CSFlashlightQuickAction)init;
- (CSFlashlightQuickAction)initWithFlashlightController:(id)controller;
- (CSFlashlightQuickAction)initWithLockoutController:(id)controller;
- (int64_t)appearance;
- (void)_deviceBlockStateDidChangeNotification:(id)notification;
- (void)_featureLockStateDidChangeNotification:(id)notification;
- (void)_setupIfNecessary;
- (void)buttonVisibilityChangedTo:(BOOL)to;
- (void)fireAction;
- (void)flashlightAvailabilityDidChange:(BOOL)change;
- (void)flashlightLevelDidChange:(unint64_t)change;
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D66030] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 removeObserver:self name:*MEMORY[0x277D67A50] object:0];

    flashlightController = self->_flashlightController;
    self->_flashlightController = 0;

    delegate = [(CSQuickAction *)self delegate];
    [delegate allowsInteractionDidChangeForAction:self];
  }
}

- (void)_setupIfNecessary
{
  if ([MEMORY[0x277D679B8] deviceSupportsFlashlight] && !self->_flashlightController)
  {
    mEMORY[0x277D679B8] = [MEMORY[0x277D679B8] sharedInstance];
    flashlightController = self->_flashlightController;
    self->_flashlightController = mEMORY[0x277D679B8];

    [(SBUIFlashlightController *)self->_flashlightController addObserver:self];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__deviceBlockStateDidChangeNotification_ name:*MEMORY[0x277D66030] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__featureLockStateDidChangeNotification_ name:*MEMORY[0x277D67A50] object:0];

    [(CSQuickAction *)self setSelected:[(CSFlashlightQuickAction *)self isSelected]];
    delegate = [(CSQuickAction *)self delegate];
    [delegate allowsInteractionDidChangeForAction:self];
  }
}

- (CSFlashlightQuickAction)init
{
  mEMORY[0x277D679B8] = [MEMORY[0x277D679B8] sharedInstance];
  v4 = [(CSFlashlightQuickAction *)self initWithFlashlightController:mEMORY[0x277D679B8]];

  return v4;
}

- (CSFlashlightQuickAction)initWithFlashlightController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = CSFlashlightQuickAction;
  v6 = [(CSFlashlightQuickAction *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_flashlightController, controller);
    [(SBUIFlashlightController *)v7->_flashlightController addObserver:v7];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__deviceBlockStateDidChangeNotification_ name:*MEMORY[0x277D66030] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel__featureLockStateDidChangeNotification_ name:*MEMORY[0x277D67A50] object:0];
  }

  return v7;
}

- (CSFlashlightQuickAction)initWithLockoutController:(id)controller
{
  controllerCopy = controller;
  v6 = [(CSFlashlightQuickAction *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lockoutController, controller);
  }

  return v7;
}

- (void)fireAction
{
  _isFlashlightOn = [(CSFlashlightQuickAction *)self _isFlashlightOn];
  flashlightController = self->_flashlightController;
  if (_isFlashlightOn)
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

- (void)buttonVisibilityChangedTo:(BOOL)to
{
  if (to)
  {
    [(CSFlashlightQuickAction *)self _setupIfNecessary];
  }

  else
  {
    [(CSFlashlightQuickAction *)self tearDown];
  }
}

- (void)_deviceBlockStateDidChangeNotification:(id)notification
{
  if ([(CSFlashlightQuickAction *)self _isFlashlightOn]&& [(SBFLockOutStatusProvider *)self->_lockoutController isBlocked])
  {
    flashlightController = self->_flashlightController;

    [(SBUIFlashlightController *)flashlightController turnFlashlightOffForReason:@"Lock Screen Buttons"];
  }
}

- (void)_featureLockStateDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277D67B30]];
  bOOLValue = [v5 BOOLValue];

  if ([(CSFlashlightQuickAction *)self _isFlashlightOn]&& bOOLValue)
  {
    flashlightController = self->_flashlightController;

    [(SBUIFlashlightController *)flashlightController turnFlashlightOffForReason:@"Lock Screen Buttons"];
  }
}

- (void)flashlightLevelDidChange:(unint64_t)change
{
  delegate = [(CSQuickAction *)self delegate];
  [delegate isSelectedDidChangeForAction:self];
}

- (void)flashlightAvailabilityDidChange:(BOOL)change
{
  delegate = [(CSQuickAction *)self delegate];
  [delegate allowsInteractionDidChangeForAction:self];
}

@end