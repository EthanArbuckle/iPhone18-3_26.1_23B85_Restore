@interface EACellBroadcastMessageListener
+ (id)sharedInstance;
- (EACellBroadcastMessageListener)init;
- (void)dealloc;
@end

@implementation EACellBroadcastMessageListener

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[EACellBroadcastMessageListener sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __48__EACellBroadcastMessageListener_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = objc_alloc_init(EACellBroadcastMessageListener);

  return MEMORY[0x2821F96F8]();
}

- (EACellBroadcastMessageListener)init
{
  EARegisterUserNotificationsLogging();
  v7.receiver = self;
  v7.super_class = EACellBroadcastMessageListener;
  v3 = [(EACellBroadcastMessageListener *)&v7 init];
  if (v3)
  {
    v4 = objc_alloc_init(EAEmergencyAlertCenter);
    emergencyAlertCenter = v3->_emergencyAlertCenter;
    v3->_emergencyAlertCenter = v4;
  }

  return v3;
}

- (void)dealloc
{
  v3 = *MEMORY[0x277CC4128];
  TURemoveTelephonyCenterObserver();
  v4.receiver = self;
  v4.super_class = EACellBroadcastMessageListener;
  [(EACellBroadcastMessageListener *)&v4 dealloc];
}

@end