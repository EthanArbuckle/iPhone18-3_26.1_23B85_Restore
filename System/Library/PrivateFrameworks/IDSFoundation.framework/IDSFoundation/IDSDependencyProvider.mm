@interface IDSDependencyProvider
+ (id)XPCAdapter;
+ (id)keychainAdapter;
+ (id)pushAdapter;
+ (id)registeredObjectForProtocol:(id)protocol;
+ (id)serviceLoader;
+ (id)sharedProvider;
+ (id)systemMonitorAdapter;
+ (id)userDefaults;
+ (void)registerObject:(id)object forProtocol:(id)protocol;
- (id)_init;
- (id)apsConnectionWithEnvironmentName:(id)name namedDelegatePort:(id)port enablePushDuringSleep:(BOOL)sleep queue:(id)queue;
- (id)createServiceConnectionWithServiceName:(const char *)name invalidationHandler:(id)handler terminationHandler:(id)terminationHandler peerEventHandler:(id)eventHandler peerQueue:(id)queue;
- (id)createSim2HostServiceConnectionWithServiceName:(const char *)name invalidationHandler:(id)handler terminationHandler:(id)terminationHandler peerEventHandler:(id)eventHandler peerQueue:(id)queue;
- (id)placeholderMachPort;
- (id)registeredObjectForProtocol:(id)protocol;
- (void)registerObject:(id)object forProtocol:(id)protocol;
@end

@implementation IDSDependencyProvider

+ (id)XPCAdapter
{
  v3 = [self registeredObjectForProtocol:&unk_1F1B4B988];
  v4 = v3;
  if (v3)
  {
    sharedProvider = v3;
  }

  else
  {
    sharedProvider = [self sharedProvider];
  }

  v6 = sharedProvider;

  return v6;
}

+ (id)sharedProvider
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A7ADB0CC;
  block[3] = &unk_1E77DD328;
  block[4] = self;
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
  v2 = [self registeredObjectForProtocol:&unk_1F1B56F20];
  v3 = v2;
  if (v2)
  {
    mEMORY[0x1E69A6160] = v2;
  }

  else
  {
    mEMORY[0x1E69A6160] = [MEMORY[0x1E69A6160] sharedInstance];
  }

  v5 = mEMORY[0x1E69A6160];

  return v5;
}

+ (id)keychainAdapter
{
  v3 = [self registeredObjectForProtocol:&unk_1F1B4BB80];
  v4 = v3;
  if (v3)
  {
    sharedProvider = v3;
  }

  else
  {
    sharedProvider = [self sharedProvider];
  }

  v6 = sharedProvider;

  return v6;
}

- (id)registeredObjectForProtocol:(id)protocol
{
  protocolCopy = protocol;
  os_unfair_lock_lock(&self->_lock);
  registeredAdapters = self->_registeredAdapters;
  if (registeredAdapters)
  {
    v6 = NSStringFromProtocol(protocolCopy);
    registeredAdapters = [registeredAdapters objectForKey:v6];
  }

  os_unfair_lock_unlock(&self->_lock);

  return registeredAdapters;
}

- (void)registerObject:(id)object forProtocol:(id)protocol
{
  protocolCopy = protocol;
  if (object && protocolCopy)
  {
    proto = protocolCopy;
    objectCopy = object;
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
    [(NSMutableDictionary *)registeredAdapters setObject:objectCopy forKey:v11];

    os_unfair_lock_unlock(&self->_lock);
    protocolCopy = proto;
  }
}

+ (id)pushAdapter
{
  v3 = [self registeredObjectForProtocol:&unk_1F1B4BA60];
  v4 = v3;
  if (v3)
  {
    sharedProvider = v3;
  }

  else
  {
    sharedProvider = [self sharedProvider];
  }

  v6 = sharedProvider;

  return v6;
}

+ (id)serviceLoader
{
  v3 = [self registeredObjectForProtocol:&unk_1F1B4BC00];
  v4 = v3;
  if (v3)
  {
    sharedProvider = v3;
  }

  else
  {
    sharedProvider = [self sharedProvider];
  }

  v6 = sharedProvider;

  return v6;
}

+ (id)userDefaults
{
  v2 = [self registeredObjectForProtocol:&unk_1F1B53B50];
  v3 = v2;
  if (v2)
  {
    mEMORY[0x1E69A6180] = v2;
  }

  else
  {
    mEMORY[0x1E69A6180] = [MEMORY[0x1E69A6180] sharedDefaults];
  }

  v5 = mEMORY[0x1E69A6180];

  return v5;
}

+ (id)registeredObjectForProtocol:(id)protocol
{
  protocolCopy = protocol;
  sharedProvider = [self sharedProvider];
  v6 = [sharedProvider registeredObjectForProtocol:protocolCopy];

  return v6;
}

+ (void)registerObject:(id)object forProtocol:(id)protocol
{
  protocolCopy = protocol;
  objectCopy = object;
  sharedProvider = [self sharedProvider];
  [sharedProvider registerObject:objectCopy forProtocol:protocolCopy];
}

- (id)placeholderMachPort
{
  v2 = *MEMORY[0x1AC5631C0]("APSConnectionOverrideNamedDelegatePort", @"ApplePushService");

  return v2;
}

- (id)apsConnectionWithEnvironmentName:(id)name namedDelegatePort:(id)port enablePushDuringSleep:(BOOL)sleep queue:(id)queue
{
  queueCopy = queue;
  portCopy = port;
  nameCopy = name;
  v11 = [objc_alloc(CUTWeakLinkClass()) initWithEnvironmentName:nameCopy namedDelegatePort:portCopy queue:queueCopy];

  return v11;
}

- (id)createServiceConnectionWithServiceName:(const char *)name invalidationHandler:(id)handler terminationHandler:(id)terminationHandler peerEventHandler:(id)eventHandler peerQueue:(id)queue
{
  v7 = IMXPCCreateServerConnection();
  v8 = [[IDSXPCConnectionWrapper alloc] initWithConnection:v7];

  return v8;
}

- (id)createSim2HostServiceConnectionWithServiceName:(const char *)name invalidationHandler:(id)handler terminationHandler:(id)terminationHandler peerEventHandler:(id)eventHandler peerQueue:(id)queue
{
  v7 = IMXPCCreateSim2HostServerConnection();
  v8 = [[IDSXPCConnectionWrapper alloc] initWithConnection:v7];

  return v8;
}

@end