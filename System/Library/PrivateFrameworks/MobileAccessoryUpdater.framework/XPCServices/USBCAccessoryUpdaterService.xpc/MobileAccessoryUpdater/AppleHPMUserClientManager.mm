@interface AppleHPMUserClientManager
+ (id)sharedInstance;
- (AppleHPMUserClientManager)init;
- (id)userClientForRouterID:(unsigned __int8)d andRoute:(unint64_t)route;
- (int)findUserClients;
- (void)dealloc;
@end

@implementation AppleHPMUserClientManager

+ (id)sharedInstance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!qword_10002B450)
  {
    v3 = objc_alloc_init(selfCopy);
    v4 = qword_10002B450;
    qword_10002B450 = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = qword_10002B450;

  return v5;
}

- (AppleHPMUserClientManager)init
{
  v5.receiver = self;
  v5.super_class = AppleHPMUserClientManager;
  v2 = [(AppleHPMUserClientManager *)&v5 init];
  if (v2)
  {
    v3 = +[NSMutableOrderedSet orderedSet];
    [(AppleHPMUserClientManager *)v2 setUserClientSet:v3];

    [(AppleHPMUserClientManager *)v2 findUserClients];
  }

  return v2;
}

- (void)dealloc
{
  [(AppleHPMUserClientManager *)self setUserClientSet:0];
  v3.receiver = self;
  v3.super_class = AppleHPMUserClientManager;
  [(AppleHPMUserClientManager *)&v3 dealloc];
}

- (id)userClientForRouterID:(unsigned __int8)d andRoute:(unint64_t)route
{
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  userClientSet = [(AppleHPMUserClientManager *)self userClientSet];
  v7 = [userClientSet countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(userClientSet);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 routerID] == dCopy && objc_msgSend(v11, "routeString") == route)
        {
          v12 = v11;
          goto LABEL_12;
        }
      }

      v8 = [userClientSet countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (int)findUserClients
{
  v3 = IOServiceMatching("AppleHPM");
  existing = 0;
  if (!v3)
  {
    return -536870212;
  }

  MatchingServices = IOServiceGetMatchingServices(kIOMasterPortDefault, v3, &existing);
  if (!existing)
  {
    return -536870160;
  }

  if (!MatchingServices)
  {
    IOIteratorReset(existing);
    v5 = IOIteratorNext(existing);
    if (v5)
    {
      v6 = v5;
      do
      {
        [(AppleHPMUserClientManager *)self createUserClientForService:v6];
        v6 = IOIteratorNext(existing);
      }

      while (v6);
    }
  }

  if (existing)
  {
    IOObjectRelease(existing);
  }

  return MatchingServices;
}

@end