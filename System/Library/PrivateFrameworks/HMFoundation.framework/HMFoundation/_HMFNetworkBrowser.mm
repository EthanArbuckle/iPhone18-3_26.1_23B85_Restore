@interface _HMFNetworkBrowser
+ (id)logCategory;
- (_HMFNetworkBrowser)initWithQueue:(id)queue domain:(id)domain serviceType:(id)type updateBlock:(id)block;
- (id)shortDescription;
- (id)startBrowsing;
- (id)stopBrowsing;
- (id)workContext;
- (void)stop;
@end

@implementation _HMFNetworkBrowser

- (_HMFNetworkBrowser)initWithQueue:(id)queue domain:(id)domain serviceType:(id)type updateBlock:(id)block
{
  queueCopy = queue;
  domainCopy = domain;
  typeCopy = type;
  blockCopy = block;
  v21.receiver = self;
  v21.super_class = _HMFNetworkBrowser;
  v14 = [(_HMFNetworkBrowser *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_domain, domain);
    objc_storeStrong(&v15->_serviceType, type);
    v16 = _Block_copy(blockCopy);
    updateBlock = v15->_updateBlock;
    v15->_updateBlock = v16;

    v18 = queueCopy;
    if (!queueCopy)
    {
      v19 = HMFDispatchQueueName(v15, 0);
      type = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v18 = dispatch_queue_create(v19, type);
    }

    objc_storeStrong(&v15->_workQueue, v18);
    if (!queueCopy)
    {
    }
  }

  return v15;
}

- (id)workContext
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33___HMFNetworkBrowser_workContext__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  if (_MergedGlobals_3_10 != -1)
  {
    dispatch_once(&_MergedGlobals_3_10, block);
  }

  return qword_280AFC3B0;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  serviceType = [(_HMFNetworkBrowser *)self serviceType];
  domain = [(_HMFNetworkBrowser *)self domain];
  v6 = [v3 stringWithFormat:@"Browser(%@.%@)", serviceType, domain];

  return v6;
}

- (id)startBrowsing
{
  v29[1] = *MEMORY[0x277D85DE8];
  nw_browser = [(_HMFNetworkBrowser *)self nw_browser];

  if (nw_browser)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier(selfCopy2);
      serviceType = [(_HMFNetworkBrowser *)selfCopy2 serviceType];
      *buf = 138543618;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = serviceType;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@Browser already started for %@", buf, 0x16u);

LABEL_7:
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  serviceType2 = [(_HMFNetworkBrowser *)self serviceType];
  domain = [(_HMFNetworkBrowser *)self domain];
  workQueue = [(_HMFNetworkBrowser *)self workQueue];
  objc_initWeak(&location, self);
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __browse_result_changed_handler_block_invoke;
  v28 = &unk_2786E7860;
  objc_copyWeak(v29, &location);
  v12 = _Block_copy(buf);
  objc_destroyWeak(v29);
  objc_destroyWeak(&location);
  v13 = serviceType2;
  v14 = domain;
  v15 = workQueue;
  v16 = v12;
  uTF8String = [serviceType2 UTF8String];
  uTF8String2 = [v14 UTF8String];

  bonjour_service = nw_browse_descriptor_create_bonjour_service(uTF8String, uTF8String2);
  nw_browse_descriptor_set_include_txt_record(bonjour_service, 1);
  v20 = nw_browser_create(bonjour_service, 0);
  nw_browser_set_queue(v20, v15);

  nw_browser_set_browse_results_changed_handler(v20, v16);
  nw_browser_start(v20);

  [(_HMFNetworkBrowser *)self setNw_browser:v20];
  nw_browser2 = [(_HMFNetworkBrowser *)self nw_browser];

  if (nw_browser2)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier(selfCopy2);
      *buf = 138543362;
      *&buf[4] = v7;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Browser started", buf, 0xCu);
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v4);
    v22 = +[HMFFuture futureWithNoValue];
    goto LABEL_9;
  }

  v25 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:6];
  v22 = [HMFFuture futureWithError:v25];

LABEL_9:
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)stop
{
  nw_browser = [(_HMFNetworkBrowser *)self nw_browser];

  if (nw_browser)
  {
    nw_browser2 = [(_HMFNetworkBrowser *)self nw_browser];
    nw_browser_cancel(nw_browser2);

    [(_HMFNetworkBrowser *)self setNw_browser:0];
  }
}

- (id)stopBrowsing
{
  v12 = *MEMORY[0x277D85DE8];
  [(_HMFNetworkBrowser *)self stop];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier(selfCopy);
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Browser stopped", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = +[HMFFuture futureWithNoValue];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)logCategory
{
  if (qword_280AFC3B8 != -1)
  {
    dispatch_once(&qword_280AFC3B8, &__block_literal_global_28);
  }

  v3 = qword_280AFC3C0;

  return v3;
}

@end