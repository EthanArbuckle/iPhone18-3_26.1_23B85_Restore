@interface DTAssertionManager
+ (id)sharedInstance;
+ (void)defaultAssertionFactories:(id *)factories andDisableKeys:(id *)keys;
- (DTAssertionManager)init;
- (DTAssertionManager)initWithAssertionFactories:(id)factories andDisableKeys:(id)keys;
- (void)removeAssertionsForPid:(int)pid onBehalfOfClient:(id)client;
- (void)removeClaimsHeldByClient:(id)client;
- (void)takeAssertionsForPid:(int)pid onBehalfOfClient:(id)client withOptions:(id)options;
@end

@implementation DTAssertionManager

+ (void)defaultAssertionFactories:(id *)factories andDisableKeys:(id *)keys
{
  if (qword_27EE84418 == -1)
  {
    if (!factories)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_24802F8DC();
  if (factories)
  {
LABEL_3:
    *factories = qword_27EE84420;
  }

LABEL_4:
  if (keys)
  {
    *keys = qword_27EE84428;
  }
}

+ (id)sharedInstance
{
  if (qword_27EE84430 != -1)
  {
    sub_24802F8F0();
  }

  v3 = qword_27EE84438;

  return v3;
}

- (DTAssertionManager)init
{
  v7 = 0;
  v8 = 0;
  [DTAssertionManager defaultAssertionFactories:&v8 andDisableKeys:&v7];
  v3 = v8;
  v4 = v7;
  v5 = [(DTAssertionManager *)self initWithAssertionFactories:v3 andDisableKeys:v4];

  return v5;
}

- (DTAssertionManager)initWithAssertionFactories:(id)factories andDisableKeys:(id)keys
{
  factoriesCopy = factories;
  keysCopy = keys;
  v18.receiver = self;
  v18.super_class = DTAssertionManager;
  v8 = [(DTAssertionManager *)&v18 init];
  if (v8)
  {
    v9 = [factoriesCopy copy];
    assertionFactories = v8->_assertionFactories;
    v8->_assertionFactories = v9;

    v11 = [keysCopy copy];
    disableKeys = v8->_disableKeys;
    v8->_disableKeys = v11;

    v13 = dispatch_queue_create("DTAssertionManager", 0);
    guard = v8->_guard;
    v8->_guard = v13;

    v15 = objc_opt_new();
    pidInfosByPid = v8->_pidInfosByPid;
    v8->_pidInfosByPid = v15;
  }

  return v8;
}

- (void)takeAssertionsForPid:(int)pid onBehalfOfClient:(id)client withOptions:(id)options
{
  clientCopy = client;
  optionsCopy = options;
  if (clientCopy)
  {
    guard = self->_guard;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_247FD6ECC;
    v11[3] = &unk_278EF28C0;
    pidCopy = pid;
    v11[4] = self;
    v12 = clientCopy;
    v13 = optionsCopy;
    dispatch_sync(guard, v11);
  }
}

- (void)removeAssertionsForPid:(int)pid onBehalfOfClient:(id)client
{
  clientCopy = client;
  v7 = clientCopy;
  if (clientCopy)
  {
    guard = self->_guard;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247FD7380;
    block[3] = &unk_278EF2898;
    pidCopy = pid;
    block[4] = self;
    v10 = clientCopy;
    dispatch_sync(guard, block);
  }
}

- (void)removeClaimsHeldByClient:(id)client
{
  clientCopy = client;
  v5 = clientCopy;
  if (clientCopy)
  {
    guard = self->_guard;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_247FD74D0;
    v7[3] = &unk_278EF1550;
    v7[4] = self;
    v8 = clientCopy;
    dispatch_sync(guard, v7);
  }
}

@end