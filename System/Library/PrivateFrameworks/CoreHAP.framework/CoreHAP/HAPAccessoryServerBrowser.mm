@interface HAPAccessoryServerBrowser
- (BOOL)isPaired:(id)paired;
- (BOOL)remoteBrowsingEnabled;
- (HAPAccessoryServerBrowser)initWithQueue:(id)queue;
- (id)logIdentifier;
- (id)pairSetupSession:(id)session pairSetupType:(unint64_t)type features:(unsigned __int8)features;
- (void)deRegisterAccessoryWithIdentifier:(id)identifier;
- (void)discoverAccessoryServerWithIdentifier:(id)identifier;
- (void)indicateNotificationFromServer:(id)server notifyType:(unint64_t)type withDictionary:(id)dictionary;
- (void)matchAccessoryServerWithSetupID:(id)d serverIdentifier:(id)identifier completionHandler:(id)handler;
- (void)registerPairedAccessoryWithIdentifier:(id)identifier;
- (void)removeRecentlySeenPairedPeripheralWithIdentifier:(id)identifier;
- (void)resetPairedAccessories;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)setRemoteBrowsingEnabled:(BOOL)enabled;
- (void)startConfirmingPairedAccessoryReachability;
- (void)startDiscoveringAccessoryServers;
- (void)stopConfirmingPairedAccessoryReachability;
- (void)stopDiscoveringAccessoryServers;
@end

@implementation HAPAccessoryServerBrowser

- (id)logIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)stopConfirmingPairedAccessoryReachability
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)startConfirmingPairedAccessoryReachability
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)indicateNotificationFromServer:(id)server notifyType:(unint64_t)type withDictionary:(id)dictionary
{
  serverCopy = server;
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v11 = MEMORY[0x277CCACA8];
  v12 = NSStringFromSelector(a2);
  v13 = [v11 stringWithFormat:@"You must override %@ in a subclass", v12];
  v14 = [v9 exceptionWithName:v10 reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (id)pairSetupSession:(id)session pairSetupType:(unint64_t)type features:(unsigned __int8)features
{
  sessionCopy = session;
  os_unfair_lock_lock_with_options();
  v8 = [[HAPSRPPairSetupSession alloc] initWithRole:0 pairSetupType:type delegate:sessionCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (BOOL)isPaired:(id)paired
{
  pairedCopy = paired;
  os_unfair_lock_lock_with_options();
  pairedAccessoryIdentifiers = [(HAPAccessoryServerBrowser *)self pairedAccessoryIdentifiers];
  v6 = [pairedAccessoryIdentifiers containsObject:pairedCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (void)resetPairedAccessories
{
  os_unfair_lock_lock_with_options();
  pairedAccessoryIdentifiers = [(HAPAccessoryServerBrowser *)self pairedAccessoryIdentifiers];
  [pairedAccessoryIdentifiers removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)deRegisterAccessoryWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  pairedAccessoryIdentifiers = [(HAPAccessoryServerBrowser *)self pairedAccessoryIdentifiers];
  [pairedAccessoryIdentifiers removeObject:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)registerPairedAccessoryWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  pairedAccessoryIdentifiers = [(HAPAccessoryServerBrowser *)self pairedAccessoryIdentifiers];
  [pairedAccessoryIdentifiers addObject:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)matchAccessoryServerWithSetupID:(id)d serverIdentifier:(id)identifier completionHandler:(id)handler
{
  dCopy = d;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"You must override %@ in a subclass", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)removeRecentlySeenPairedPeripheralWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)discoverAccessoryServerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (BOOL)remoteBrowsingEnabled
{
  os_unfair_lock_lock_with_options();
  remoteBrowsingEnabled = self->_remoteBrowsingEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return remoteBrowsingEnabled;
}

- (void)setRemoteBrowsingEnabled:(BOOL)enabled
{
  os_unfair_lock_lock_with_options();
  self->_remoteBrowsingEnabled = enabled;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)stopDiscoveringAccessoryServers
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)startDiscoveringAccessoryServers
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (HAPAccessoryServerBrowser)initWithQueue:(id)queue
{
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = HAPAccessoryServerBrowser;
  v6 = [(HAPAccessoryServerBrowser *)&v15 init];
  if (v6)
  {
    v7 = queueCopy;
    if (!queueCopy)
    {
      v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v7 = dispatch_queue_create("com.apple.HAPAccessoryBrowser", v3);
    }

    objc_storeStrong(&v6->_workQueue, v7);
    if (!queueCopy)
    {
    }

    v8 = +[HAPSystemKeychainStore systemStore];
    keyStore = v6->_keyStore;
    v6->_keyStore = v8;

    v10 = [MEMORY[0x277CBEB58] set];
    pairedAccessoryIdentifiers = v6->_pairedAccessoryIdentifiers;
    v6->_pairedAccessoryIdentifiers = v10;

    v6->_remoteBrowsingEnabled = 0;
    v12 = +[HAPMetricsDispatcher sharedInstance];
    logEvent = v6->_logEvent;
    v6->_logEvent = v12;
  }

  return v6;
}

@end