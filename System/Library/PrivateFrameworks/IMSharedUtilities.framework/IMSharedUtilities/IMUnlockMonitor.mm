@interface IMUnlockMonitor
+ (id)sharedInstance;
- (BOOL)hasReceivedFirstUnlockNotification;
- (BOOL)isSystemLocked;
- (BOOL)isUnderFirstDataProtectionLock;
@end

@implementation IMUnlockMonitor

+ (id)sharedInstance
{
  if (qword_1ED8C9310 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED8C9318;

  return v3;
}

- (BOOL)isUnderFirstDataProtectionLock
{
  v2 = self;
  v3 = sub_1A85F5C04();

  return v3;
}

- (BOOL)hasReceivedFirstUnlockNotification
{
  v2 = self;
  v3 = sub_1A8820F7C();

  return v3 & 1;
}

- (BOOL)isSystemLocked
{
  v2 = self;
  v3 = sub_1A882105C();

  return v3 & 1;
}

@end