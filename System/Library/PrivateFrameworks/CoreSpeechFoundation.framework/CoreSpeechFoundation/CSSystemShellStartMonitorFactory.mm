@interface CSSystemShellStartMonitorFactory
+ (id)defaultShellStartMonitor;
@end

@implementation CSSystemShellStartMonitorFactory

+ (id)defaultShellStartMonitor
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v2 = getCLFSystemShellSwitcherClass_softClass;
  v13 = getCLFSystemShellSwitcherClass_softClass;
  if (!getCLFSystemShellSwitcherClass_softClass)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getCLFSystemShellSwitcherClass_block_invoke;
    v9[3] = &unk_1E865C120;
    v9[4] = &v10;
    __getCLFSystemShellSwitcherClass_block_invoke(v9);
    v2 = v11[3];
  }

  v3 = v2;
  _Block_object_dispose(&v10, 8);
  v4 = objc_opt_new();
  isClarityBoardEnabled = [v4 isClarityBoardEnabled];

  v6 = off_1E86597B8;
  if (!isClarityBoardEnabled)
  {
    v6 = off_1E8659A98;
  }

  sharedInstance = [(__objc2_class *)*v6 sharedInstance];

  return sharedInstance;
}

@end