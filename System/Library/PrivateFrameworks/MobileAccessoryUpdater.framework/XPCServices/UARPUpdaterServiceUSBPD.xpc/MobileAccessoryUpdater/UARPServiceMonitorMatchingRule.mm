@interface UARPServiceMonitorMatchingRule
- (UARPServiceMonitorMatchingRule)initWithMatchingRule:(id)rule delegate:(id)delegate;
- (void)dealloc;
- (void)matchingService:(unsigned int)service;
- (void)start;
- (void)stop;
@end

@implementation UARPServiceMonitorMatchingRule

- (UARPServiceMonitorMatchingRule)initWithMatchingRule:(id)rule delegate:(id)delegate
{
  ruleCopy = rule;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = UARPServiceMonitorMatchingRule;
  v8 = [(UARPServiceMonitorMatchingRule *)&v22 init];
  if (v8)
  {
    v9 = os_log_create("com.apple.accessoryupdater.uarp", "uarpMonitor");
    v10 = *(v8 + 1);
    *(v8 + 1) = v9;

    identifier = [ruleCopy identifier];
    v12 = [identifier copy];
    v13 = *(v8 + 2);
    *(v8 + 2) = v12;

    matchingDictionary = [ruleCopy matchingDictionary];
    v15 = [matchingDictionary copy];
    v16 = *(v8 + 3);
    *(v8 + 3) = v15;

    objc_storeStrong(v8 + 8, delegate);
    v17 = dispatch_queue_create("UARPUpdaterServiceMonitorMatchingRuleDelegate", 0);
    v18 = *(v8 + 6);
    *(v8 + 6) = v17;

    *(v8 + 4) = IONotificationPortCreate(kIOMasterPortDefault);
    v19 = dispatch_queue_create("UARPUpdaterServiceMonitorMatchingRule", 0);
    v20 = *(v8 + 5);
    *(v8 + 5) = v19;

    IONotificationPortSetDispatchQueue(*(v8 + 4), *(v8 + 5));
  }

  return v8;
}

- (void)dealloc
{
  notifyPort = self->_notifyPort;
  if (notifyPort)
  {
    IONotificationPortDestroy(notifyPort);
  }

  notifyIterator = self->_notifyIterator;
  if (notifyIterator)
  {
    IOObjectRelease(notifyIterator);
  }

  v5.receiver = self;
  v5.super_class = UARPServiceMonitorMatchingRule;
  [(UARPServiceMonitorMatchingRule *)&v5 dealloc];
}

- (void)start
{
  p_notifyIterator = &self->_notifyIterator;
  if (!self->_notifyIterator && !IOServiceAddMatchingNotification(self->_notifyPort, "IOServiceMatched", self->_matchingDictionary, sub_1000107C0, self, p_notifyIterator))
  {
    if (*p_notifyIterator)
    {
      notifyQueue = self->_notifyQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001082C;
      block[3] = &unk_100040610;
      block[4] = self;
      dispatch_async(notifyQueue, block);
    }
  }
}

- (void)stop
{
  notifyPort = self->_notifyPort;
  if (notifyPort)
  {
    IONotificationPortDestroy(notifyPort);
    self->_notifyPort = 0;
  }
}

- (void)matchingService:(unsigned int)service
{
  properties = 0;
  IORegistryEntryCreateCFProperties(service, &properties, kCFAllocatorDefault, 0);
  if (properties)
  {
    CFRelease(properties);
  }

  delegateQueue = self->_delegateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010918;
  block[3] = &unk_1000407B0;
  block[4] = self;
  serviceCopy = service;
  dispatch_async(delegateQueue, block);
}

@end