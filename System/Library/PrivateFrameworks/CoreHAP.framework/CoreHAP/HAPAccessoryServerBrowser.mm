@interface HAPAccessoryServerBrowser
- (BOOL)isPaired:(id)a3;
- (BOOL)remoteBrowsingEnabled;
- (HAPAccessoryServerBrowser)initWithQueue:(id)a3;
- (id)logIdentifier;
- (id)pairSetupSession:(id)a3 pairSetupType:(unint64_t)a4 features:(unsigned __int8)a5;
- (void)deRegisterAccessoryWithIdentifier:(id)a3;
- (void)discoverAccessoryServerWithIdentifier:(id)a3;
- (void)indicateNotificationFromServer:(id)a3 notifyType:(unint64_t)a4 withDictionary:(id)a5;
- (void)matchAccessoryServerWithSetupID:(id)a3 serverIdentifier:(id)a4 completionHandler:(id)a5;
- (void)registerPairedAccessoryWithIdentifier:(id)a3;
- (void)removeRecentlySeenPairedPeripheralWithIdentifier:(id)a3;
- (void)resetPairedAccessories;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)setRemoteBrowsingEnabled:(BOOL)a3;
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

- (void)indicateNotificationFromServer:(id)a3 notifyType:(unint64_t)a4 withDictionary:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v11 = MEMORY[0x277CCACA8];
  v12 = NSStringFromSelector(a2);
  v13 = [v11 stringWithFormat:@"You must override %@ in a subclass", v12];
  v14 = [v9 exceptionWithName:v10 reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (id)pairSetupSession:(id)a3 pairSetupType:(unint64_t)a4 features:(unsigned __int8)a5
{
  v7 = a3;
  os_unfair_lock_lock_with_options();
  v8 = [[HAPSRPPairSetupSession alloc] initWithRole:0 pairSetupType:a4 delegate:v7];
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (BOOL)isPaired:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HAPAccessoryServerBrowser *)self pairedAccessoryIdentifiers];
  v6 = [v5 containsObject:v4];

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (void)resetPairedAccessories
{
  os_unfair_lock_lock_with_options();
  v3 = [(HAPAccessoryServerBrowser *)self pairedAccessoryIdentifiers];
  [v3 removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)deRegisterAccessoryWithIdentifier:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HAPAccessoryServerBrowser *)self pairedAccessoryIdentifiers];
  [v4 removeObject:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)registerPairedAccessoryWithIdentifier:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HAPAccessoryServerBrowser *)self pairedAccessoryIdentifiers];
  [v4 addObject:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)matchAccessoryServerWithSetupID:(id)a3 serverIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"You must override %@ in a subclass", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)removeRecentlySeenPairedPeripheralWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)discoverAccessoryServerWithIdentifier:(id)a3
{
  v4 = a3;
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

- (void)setRemoteBrowsingEnabled:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_remoteBrowsingEnabled = a3;

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

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (HAPAccessoryServerBrowser)initWithQueue:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = HAPAccessoryServerBrowser;
  v6 = [(HAPAccessoryServerBrowser *)&v15 init];
  if (v6)
  {
    v7 = v5;
    if (!v5)
    {
      v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v7 = dispatch_queue_create("com.apple.HAPAccessoryBrowser", v3);
    }

    objc_storeStrong(&v6->_workQueue, v7);
    if (!v5)
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