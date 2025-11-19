@interface IDSDependencyProvider
+ (id)XPCAdapter;
+ (id)keychainAdapter;
+ (id)pushAdapter;
+ (id)registeredObjectForProtocol:(id)a3;
+ (id)serviceLoader;
+ (id)sharedProvider;
+ (id)systemMonitorAdapter;
+ (id)userDefaults;
+ (void)registerObject:(id)a3 forProtocol:(id)a4;
- (id)_init;
- (id)apsConnectionWithEnvironmentName:(id)a3 namedDelegatePort:(id)a4 enablePushDuringSleep:(BOOL)a5 queue:(id)a6;
- (id)createServiceConnectionWithServiceName:(const char *)a3 invalidationHandler:(id)a4 terminationHandler:(id)a5 peerEventHandler:(id)a6 peerQueue:(id)a7;
- (id)createSim2HostServiceConnectionWithServiceName:(const char *)a3 invalidationHandler:(id)a4 terminationHandler:(id)a5 peerEventHandler:(id)a6 peerQueue:(id)a7;
- (id)placeholderMachPort;
- (id)registeredObjectForProtocol:(id)a3;
- (void)registerObject:(id)a3 forProtocol:(id)a4;
@end

@implementation IDSDependencyProvider

+ (id)XPCAdapter
{
  v3 = [a1 registeredObjectForProtocol:&unk_1F1B4B988];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [a1 sharedProvider];
  }

  v6 = v5;

  return v6;
}

+ (id)sharedProvider
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A7ADB0CC;
  block[3] = &unk_1E77DD328;
  block[4] = a1;
  if (qword_1ED5DF840 != -1)
  {
    dispatch_once(&qword_1ED5DF840, block);
  }

  v2 = qword_1ED5DF838;

  return v2;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = IDSDependencyProvider;
  result = [(IDSDependencyProvider *)&v3 init];
  if (result)
  {
    *(result + 4) = 0;
  }

  return result;
}

+ (id)systemMonitorAdapter
{
  v2 = [a1 registeredObjectForProtocol:&unk_1F1B56F20];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E69A6160] sharedInstance];
  }

  v5 = v4;

  return v5;
}

+ (id)keychainAdapter
{
  v3 = [a1 registeredObjectForProtocol:&unk_1F1B4BB80];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [a1 sharedProvider];
  }

  v6 = v5;

  return v6;
}

- (id)registeredObjectForProtocol:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  registeredAdapters = self->_registeredAdapters;
  if (registeredAdapters)
  {
    v6 = NSStringFromProtocol(v4);
    registeredAdapters = [registeredAdapters objectForKey:v6];
  }

  os_unfair_lock_unlock(&self->_lock);

  return registeredAdapters;
}

- (void)registerObject:(id)a3 forProtocol:(id)a4
{
  v6 = a4;
  if (a3 && v6)
  {
    proto = v6;
    v7 = a3;
    os_unfair_lock_lock(&self->_lock);
    registeredAdapters = self->_registeredAdapters;
    if (!registeredAdapters)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = self->_registeredAdapters;
      self->_registeredAdapters = v9;

      registeredAdapters = self->_registeredAdapters;
    }

    v11 = NSStringFromProtocol(proto);
    [(NSMutableDictionary *)registeredAdapters setObject:v7 forKey:v11];

    os_unfair_lock_unlock(&self->_lock);
    v6 = proto;
  }
}

+ (id)pushAdapter
{
  v3 = [a1 registeredObjectForProtocol:&unk_1F1B4BA60];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [a1 sharedProvider];
  }

  v6 = v5;

  return v6;
}

+ (id)serviceLoader
{
  v3 = [a1 registeredObjectForProtocol:&unk_1F1B4BC00];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [a1 sharedProvider];
  }

  v6 = v5;

  return v6;
}

+ (id)userDefaults
{
  v2 = [a1 registeredObjectForProtocol:&unk_1F1B53B50];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E69A6180] sharedDefaults];
  }

  v5 = v4;

  return v5;
}

+ (id)registeredObjectForProtocol:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedProvider];
  v6 = [v5 registeredObjectForProtocol:v4];

  return v6;
}

+ (void)registerObject:(id)a3 forProtocol:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 sharedProvider];
  [v8 registerObject:v7 forProtocol:v6];
}

- (id)placeholderMachPort
{
  v2 = *MEMORY[0x1AC5631C0]("APSConnectionOverrideNamedDelegatePort", @"ApplePushService");

  return v2;
}

- (id)apsConnectionWithEnvironmentName:(id)a3 namedDelegatePort:(id)a4 enablePushDuringSleep:(BOOL)a5 queue:(id)a6
{
  v8 = a6;
  v9 = a4;
  v10 = a3;
  v11 = [objc_alloc(CUTWeakLinkClass()) initWithEnvironmentName:v10 namedDelegatePort:v9 queue:v8];

  return v11;
}

- (id)createServiceConnectionWithServiceName:(const char *)a3 invalidationHandler:(id)a4 terminationHandler:(id)a5 peerEventHandler:(id)a6 peerQueue:(id)a7
{
  v7 = IMXPCCreateServerConnection();
  v8 = [[IDSXPCConnectionWrapper alloc] initWithConnection:v7];

  return v8;
}

- (id)createSim2HostServiceConnectionWithServiceName:(const char *)a3 invalidationHandler:(id)a4 terminationHandler:(id)a5 peerEventHandler:(id)a6 peerQueue:(id)a7
{
  v7 = IMXPCCreateSim2HostServerConnection();
  v8 = [[IDSXPCConnectionWrapper alloc] initWithConnection:v7];

  return v8;
}

@end