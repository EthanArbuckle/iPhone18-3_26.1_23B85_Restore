@interface CRKClassroomLockScreenMonitor_iOS
- (CRKClassroomLockScreenMonitor_iOS)init;
- (void)dealloc;
- (void)dismissClassroomLockScreen;
- (void)displayClassroomLockScreenWithLabel:(id)label passcode:(id)passcode;
- (void)endObserving;
- (void)startObserving;
@end

@implementation CRKClassroomLockScreenMonitor_iOS

- (void)dealloc
{
  [(CRKClassroomLockScreenMonitor_iOS *)self endObserving];
  v3.receiver = self;
  v3.super_class = CRKClassroomLockScreenMonitor_iOS;
  [(CRKClassroomLockScreenMonitor_iOS *)&v3 dealloc];
}

- (CRKClassroomLockScreenMonitor_iOS)init
{
  v5.receiver = self;
  v5.super_class = CRKClassroomLockScreenMonitor_iOS;
  v2 = [(CRKClassroomLockScreenMonitor_iOS *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CRKClassroomLockScreenMonitor_iOS *)v2 startObserving];
  }

  return v3;
}

- (void)displayClassroomLockScreenWithLabel:(id)label passcode:(id)passcode
{
  labelCopy = label;
  passcodeCopy = passcode;
  v6 = objc_opt_new();
  v7 = MEMORY[0x277CCABB0];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  v9 = [v7 numberWithInt:{objc_msgSend(processInfo, "processIdentifier")}];
  [v6 setObject:v9 forKeyedSubscript:@"studentdPID"];

  if ([labelCopy length])
  {
    [v6 setObject:labelCopy forKeyedSubscript:@"lockedByLabel"];
  }

  if ([passcodeCopy length])
  {
    [v6 setObject:passcodeCopy forKeyedSubscript:@"passcode"];
  }

  v10 = objc_opt_new();
  [v10 enableLockScreenBundle:@"ClassroomLockScreen" withContext:v6];

  v11 = SBSSpringBoardServerPort();
  MEMORY[0x245D3A1E0](v11, 1);
  SBSUndimScreen();
}

- (void)dismissClassroomLockScreen
{
  v2 = objc_opt_new();
  [v2 disableLockScreenBundle:@"ClassroomLockScreen" withContext:0];
}

- (void)startObserving
{
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __51__CRKClassroomLockScreenMonitor_iOS_startObserving__block_invoke;
  handler[3] = &unk_278DC1EF8;
  handler[4] = self;
  v3 = MEMORY[0x277D85CD0];
  notify_register_dispatch("com.apple.studentd.lockScreenPluginDidAppear", &self->mDidAppearObserver, MEMORY[0x277D85CD0], handler);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__CRKClassroomLockScreenMonitor_iOS_startObserving__block_invoke_2;
  v4[3] = &unk_278DC1EF8;
  v4[4] = self;
  notify_register_dispatch("com.apple.studentd.lockScreenPluginWantsDismissal", &self->mDidDismissObserver, v3, v4);
}

- (void)endObserving
{
  notify_cancel(self->mDidAppearObserver);
  mDidDismissObserver = self->mDidDismissObserver;

  notify_cancel(mDidDismissObserver);
}

@end