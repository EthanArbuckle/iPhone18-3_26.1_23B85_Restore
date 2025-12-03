@interface SIMStatusIndicator
- (SIMStatusIndicator)init;
- (void)createConnection;
- (void)simStatusDidChange:(id)change status:(id)status;
@end

@implementation SIMStatusIndicator

- (SIMStatusIndicator)init
{
  v7.receiver = self;
  v7.super_class = SIMStatusIndicator;
  v2 = [(SIMStatusIndicator *)&v7 init];
  if (v2)
  {
    v3 = EAPLogGetLogHandle();
    v4 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v3, v4))
    {
      *v6 = 0;
      _os_log_impl(&dword_249EFB000, v3, v4, "SIMStatusIndicator initialized.", v6, 2u);
    }
  }

  return v2;
}

- (void)createConnection
{
  v3 = dispatch_queue_create("SIM status indicator queue", 0);
  [(SIMStatusIndicator *)self setQueue:v3];

  v4 = objc_alloc(MEMORY[0x277CC37B0]);
  queue = [(SIMStatusIndicator *)self queue];
  v6 = [v4 initWithQueue:queue];
  [(SIMStatusIndicator *)self setCoreTelephonyClient:v6];

  coreTelephonyClient = [(SIMStatusIndicator *)self coreTelephonyClient];
  [coreTelephonyClient setDelegate:self];
}

- (void)simStatusDidChange:(id)change status:(id)status
{
  changeCopy = change;
  statusCopy = status;
  if (changeCopy)
  {
    userDataPreferred = [changeCopy userDataPreferred];
    if (userDataPreferred)
    {
      v8 = userDataPreferred;
      userDataPreferred2 = [changeCopy userDataPreferred];
      bOOLValue = [userDataPreferred2 BOOLValue];

      if (bOOLValue)
      {
        if (([statusCopy isEqualToString:simStatusDidChange_status__lastStatus] & 1) == 0)
        {
          objc_storeStrong(&simStatusDidChange_status__lastStatus, status);
          ([(SIMStatusIndicator *)self callback])(self, statusCopy, [(SIMStatusIndicator *)self applicationContext]);
        }
      }
    }
  }
}

@end