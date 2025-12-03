@interface ICDeviceManagementRestrictionsManager
+ (ICDeviceManagementRestrictionsManager)sharedManager;
- (ICDeviceManagementRestrictionsManager)init;
- (void)dealloc;
- (void)registerObserver;
- (void)set_isCalculatorModeScientificAllowed:(BOOL)allowed;
- (void)set_isKeyboardMathSolvingAllowed:(BOOL)allowed;
- (void)set_isMathPaperSolvingAllowed:(BOOL)allowed;
- (void)updateRestrictions;
@end

@implementation ICDeviceManagementRestrictionsManager

+ (ICDeviceManagementRestrictionsManager)sharedManager
{
  if (qword_280C24228 != -1)
  {
    swift_once();
  }

  v3 = qword_280C24230;

  return v3;
}

- (ICDeviceManagementRestrictionsManager)init
{
  *(&self->super.isa + OBJC_IVAR___ICDeviceManagementRestrictionsManager____lazy_storage___connection) = 0;
  *(&self->super.isa + OBJC_IVAR___ICDeviceManagementRestrictionsManager__isMathPaperSolvingAllowed) = 1;
  *(&self->super.isa + OBJC_IVAR___ICDeviceManagementRestrictionsManager__isKeyboardMathSolvingAllowed) = 1;
  *(&self->super.isa + OBJC_IVAR___ICDeviceManagementRestrictionsManager__isCalculatorModeScientificAllowed) = 1;
  v3.receiver = self;
  v3.super_class = ICDeviceManagementRestrictionsManager;
  return [(ICDeviceManagementRestrictionsManager *)&v3 init];
}

- (void)registerObserver
{
  selfCopy = self;
  v2 = sub_214D6A6C8();
  [v2 registerObserver_];

  [(ICDeviceManagementRestrictionsManager *)selfCopy updateRestrictions];
}

- (void)updateRestrictions
{
  selfCopy = self;
  ICDeviceManagementRestrictionsManager.updateRestrictions()();
}

- (void)set_isMathPaperSolvingAllowed:(BOOL)allowed
{
  v3 = *(&self->super.isa + OBJC_IVAR___ICDeviceManagementRestrictionsManager__isMathPaperSolvingAllowed);
  *(&self->super.isa + OBJC_IVAR___ICDeviceManagementRestrictionsManager__isMathPaperSolvingAllowed) = allowed;
  selfCopy = self;
  sub_214D6A8B4(v3, &OBJC_IVAR___ICDeviceManagementRestrictionsManager__isMathPaperSolvingAllowed, "Device restriction for Math Paper solving did change {allowed: %{BOOL}d}");
}

- (void)set_isKeyboardMathSolvingAllowed:(BOOL)allowed
{
  v3 = *(&self->super.isa + OBJC_IVAR___ICDeviceManagementRestrictionsManager__isKeyboardMathSolvingAllowed);
  *(&self->super.isa + OBJC_IVAR___ICDeviceManagementRestrictionsManager__isKeyboardMathSolvingAllowed) = allowed;
  selfCopy = self;
  sub_214D6A8B4(v3, &OBJC_IVAR___ICDeviceManagementRestrictionsManager__isKeyboardMathSolvingAllowed, "Device restriction for keyboard math solving did change {allowed: %{BOOL}d}");
}

- (void)set_isCalculatorModeScientificAllowed:(BOOL)allowed
{
  v3 = *(&self->super.isa + OBJC_IVAR___ICDeviceManagementRestrictionsManager__isCalculatorModeScientificAllowed);
  *(&self->super.isa + OBJC_IVAR___ICDeviceManagementRestrictionsManager__isCalculatorModeScientificAllowed) = allowed;
  selfCopy = self;
  sub_214D6A8B4(v3, &OBJC_IVAR___ICDeviceManagementRestrictionsManager__isCalculatorModeScientificAllowed, "Device restriction for scientific calculator mode did change {allowed: %{BOOL}d}");
}

- (void)dealloc
{
  selfCopy = self;
  v3 = sub_214D6A6C8();
  [v3 unregisterObserver_];

  v4.receiver = selfCopy;
  v4.super_class = ICDeviceManagementRestrictionsManager;
  [(ICDeviceManagementRestrictionsManager *)&v4 dealloc];
}

@end