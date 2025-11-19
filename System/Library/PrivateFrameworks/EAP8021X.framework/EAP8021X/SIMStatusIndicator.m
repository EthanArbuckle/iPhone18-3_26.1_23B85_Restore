@interface SIMStatusIndicator
- (SIMStatusIndicator)init;
- (void)createConnection;
- (void)simStatusDidChange:(id)a3 status:(id)a4;
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
  v5 = [(SIMStatusIndicator *)self queue];
  v6 = [v4 initWithQueue:v5];
  [(SIMStatusIndicator *)self setCoreTelephonyClient:v6];

  v7 = [(SIMStatusIndicator *)self coreTelephonyClient];
  [v7 setDelegate:self];
}

- (void)simStatusDidChange:(id)a3 status:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11)
  {
    v7 = [v11 userDataPreferred];
    if (v7)
    {
      v8 = v7;
      v9 = [v11 userDataPreferred];
      v10 = [v9 BOOLValue];

      if (v10)
      {
        if (([v6 isEqualToString:simStatusDidChange_status__lastStatus] & 1) == 0)
        {
          objc_storeStrong(&simStatusDidChange_status__lastStatus, a4);
          ([(SIMStatusIndicator *)self callback])(self, v6, [(SIMStatusIndicator *)self applicationContext]);
        }
      }
    }
  }
}

@end