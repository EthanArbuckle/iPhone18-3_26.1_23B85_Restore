@interface HMFNetworkService
+ (id)logCategory;
- (BOOL)_updateDeviceWithPath:(id)path;
- (BOOL)isEqual:(id)equal;
- (BOOL)lowPowerMode;
- (HMFNetworkService)initWithServiceInfo:(id)info port:(unsigned __int16)port queue:(id)queue;
- (HMFNetworkService)initWithTXTRecords:(id)records browseResult:(id)result queue:(id)queue;
- (NSArray)addresses;
- (NSString)host;
- (NSString)hostName;
- (id)_connectionWithPromise:(id)promise parameters:(id)parameters receivedDataHandler:(id)handler;
- (id)description;
- (id)resolveAddressWithAddressType:(unint64_t)type timeout:(double)timeout receivedDataHandler:(id)handler;
- (id)shortDescription;
- (void)dealloc;
- (void)invalidate;
- (void)updateWithService:(id)service;
@end

@implementation HMFNetworkService

- (HMFNetworkService)initWithTXTRecords:(id)records browseResult:(id)result queue:(id)queue
{
  queueCopy = queue;
  recordsCopy = records;
  v10 = nw_browse_result_copy_endpoint(result);
  v11 = [[HMFNetworkServiceInfo alloc] initWithEndpoint:v10 txtRecord:recordsCopy];

  v12 = [(HMFNetworkService *)self initWithServiceInfo:v11 port:nw_endpoint_get_port(v10) queue:queueCopy];
  return v12;
}

- (HMFNetworkService)initWithServiceInfo:(id)info port:(unsigned __int16)port queue:(id)queue
{
  infoCopy = info;
  queueCopy = queue;
  if (infoCopy)
  {
    v17.receiver = self;
    v17.super_class = HMFNetworkService;
    v11 = [(HMFNetworkService *)&v17 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_workQueue, queue);
      objc_storeStrong(&v12->_serviceInfo, info);
      v12->_port = port;
      v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
      ipAddresses = v12->_ipAddresses;
      v12->_ipAddresses = v13;
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6 && ([v6 host], v8 = objc_claimAutoreleasedReturnValue(), -[HMFNetworkService host](self, "host"), v9 = objc_claimAutoreleasedReturnValue(), v10 = HMFEqualObjects(v8, v9), v9, v8, v10))
  {
    serviceInfo = [v7 serviceInfo];
    serviceInfo2 = [(HMFNetworkService *)self serviceInfo];
    v13 = HMFEqualObjects(serviceInfo, serviceInfo2);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)invalidate
{
  nwConnection = [(HMFNetworkService *)self nwConnection];

  if (nwConnection)
  {
    nwConnection2 = [(HMFNetworkService *)self nwConnection];
    nw_connection_cancel(nwConnection2);

    [(HMFNetworkService *)self setNwConnection:0];
  }
}

- (void)dealloc
{
  [(HMFNetworkService *)self invalidate];
  v3.receiver = self;
  v3.super_class = HMFNetworkService;
  [(HMFNetworkService *)&v3 dealloc];
}

- (id)resolveAddressWithAddressType:(unint64_t)type timeout:(double)timeout receivedDataHandler:(id)handler
{
  handlerCopy = handler;
  if ([(HMFNetworkService *)self lowPowerMode])
  {
    v9 = _Block_copy(handlerCopy);
    if (v9)
    {
      v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
      v9[2](v9, 1, 0, v10);
    }

    v11 = +[HMFFuture futureWithNoValue];
  }

  else
  {
    v27 = 0;
    v12 = [HMFFuture futureWithPromise:&v27];
    serviceInfo = [(HMFNetworkService *)self serviceInfo];
    isUDP = [serviceInfo isUDP];
    v15 = *MEMORY[0x277CD9238];
    if (isUDP)
    {
      secure_udp = nw_parameters_create_secure_udp(v15, &__block_literal_global_88);
    }

    else
    {
      secure_udp = nw_parameters_create_secure_tcp(v15, *MEMORY[0x277CD9230]);
    }

    v17 = secure_udp;
    v18 = nw_parameters_copy_default_protocol_stack(secure_udp);
    v19 = nw_protocol_stack_copy_internet_protocol(v18);
    v20 = v19;
    if (type == 2)
    {
      v21 = 6;
    }

    else
    {
      v21 = 0;
    }

    if (type == 1)
    {
      v22 = 4;
    }

    else
    {
      v22 = v21;
    }

    MEMORY[0x231887520](v19, v22);
    v23 = nw_interface_create_with_name();
    nw_parameters_prohibit_interface(v17, v23);

    v24 = [(HMFNetworkService *)self _connectionWithPromise:v27 parameters:v17 receivedDataHandler:handlerCopy];
    v25 = v24;
    if (v24)
    {
      nw_connection_start(v24);
      [(HMFNetworkService *)self setNwConnection:v25];
      [v12 timeout:timeout];
    }

    else
    {
      +[HMFFuture futureWithNoValue];
    }
    v11 = ;
  }

  return v11;
}

- (void)updateWithService:(id)service
{
  serviceCopy = service;
  workQueue = [(HMFNetworkService *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__HMFNetworkService_updateWithService___block_invoke;
  v7[3] = &unk_2786E6D18;
  v7[4] = self;
  v8 = serviceCopy;
  v6 = serviceCopy;
  dispatch_async(workQueue, v7);
}

void __39__HMFNetworkService_updateWithService___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) serviceInfo];
  v2 = [*(a1 + 40) serviceInfo];
  [v3 updateWithServiceInfo:v2];
}

- (NSString)host
{
  v3 = MEMORY[0x277CCACA8];
  serviceInfo = [(HMFNetworkService *)self serviceInfo];
  serviceName = [serviceInfo serviceName];
  serviceInfo2 = [(HMFNetworkService *)self serviceInfo];
  serviceType = [serviceInfo2 serviceType];
  serviceInfo3 = [(HMFNetworkService *)self serviceInfo];
  serviceDomain = [serviceInfo3 serviceDomain];
  v10 = [v3 stringWithFormat:@"%@.%@.%@", serviceName, serviceType, serviceDomain];

  return v10;
}

- (NSString)hostName
{
  serviceInfo = [(HMFNetworkService *)self serviceInfo];
  serviceName = [serviceInfo serviceName];

  return serviceName;
}

- (NSArray)addresses
{
  ipAddresses = [(HMFNetworkService *)self ipAddresses];
  v3 = [ipAddresses copy];

  return v3;
}

- (BOOL)lowPowerMode
{
  serviceInfo = [(HMFNetworkService *)self serviceInfo];
  serviceName = [serviceInfo serviceName];
  v4 = [serviceName containsString:@"_lpm"];

  return v4;
}

- (id)_connectionWithPromise:(id)promise parameters:(id)parameters receivedDataHandler:(id)handler
{
  promiseCopy = promise;
  parametersCopy = parameters;
  handlerCopy = handler;
  [(HMFNetworkService *)self invalidate];
  host = [(HMFNetworkService *)self host];
  [host UTF8String];
  srv = nw_endpoint_create_srv();
  v13 = nw_connection_create(srv, parametersCopy);

  workQueue = [(HMFNetworkService *)self workQueue];
  nw_connection_set_queue(v13, workQueue);

  objc_initWeak(&location, self);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __75__HMFNetworkService__connectionWithPromise_parameters_receivedDataHandler___block_invoke;
  handler[3] = &unk_2786E77A0;
  objc_copyWeak(&v25, &location);
  v15 = v13;
  v22 = v15;
  v16 = handlerCopy;
  v24 = v16;
  v17 = promiseCopy;
  v23 = v17;
  nw_connection_set_state_changed_handler(v15, handler);
  v18 = v23;
  v19 = v15;

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return v19;
}

void __75__HMFNetworkService__connectionWithPromise_parameters_receivedDataHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (a2 == 5)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = WeakRetained;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier(v11);
      *buf = 138543362;
      v19 = v13;
      v14 = "%{public}@Connection is cancelled";
LABEL_9:
      _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_DEBUG, v14, buf, 0xCu);
    }

LABEL_10:

    objc_autoreleasePoolPop(v10);
    goto LABEL_11;
  }

  if (a2 == 3)
  {
    v7 = nw_connection_copy_current_path(*(a1 + 32));
    v8 = [WeakRetained _updateDeviceWithPath:v7];

    if (v8)
    {
      v9 = *(a1 + 32);
      completion[0] = MEMORY[0x277D85DD0];
      completion[1] = 3221225472;
      completion[2] = __75__HMFNetworkService__connectionWithPromise_parameters_receivedDataHandler___block_invoke_12;
      completion[3] = &unk_2786E7778;
      v17 = *(a1 + 48);
      nw_connection_receive(v9, 0, 0xFFFFFFFF, completion);
      [*(a1 + 40) fulfillWithNoValue];

      goto LABEL_11;
    }

    v10 = objc_autoreleasePoolPush();
    v11 = WeakRetained;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier(v11);
      *buf = 138543362;
      v19 = v13;
      v14 = "%{public}@Reported a network path that cannot be resolved to an IP address - skipping";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
}

void __75__HMFNetworkService__connectionWithPromise_parameters_receivedDataHandler___block_invoke_12(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = a2;
  v8 = a5;
  v9 = _Block_copy(*(a1 + 32));
  if (v9)
  {
    if (v8)
    {
      v10 = nw_error_copy_cf_error(v8);
    }

    else
    {
      v10 = 0;
    }

    v9[2](v9, a4, v11, v10);
  }
}

- (BOOL)_updateDeviceWithPath:(id)path
{
  v25 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  workQueue = [(HMFNetworkService *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (pathCopy)
  {
    v6 = nw_path_copy_endpoint();
    v7 = v6;
    if (v6 && (address = nw_endpoint_get_address(v6)) != 0)
    {
      v9 = [[HMFNetAddress alloc] initWithSocketAddress:address];
      [(NSMutableArray *)self->_ipAddresses addObject:v9];
      self->_port = nw_endpoint_get_port(v7);
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier(selfCopy);
        addressString = [(HMFNetAddress *)v9 addressString];
        port = self->_port;
        v19 = 138543874;
        v20 = v13;
        v21 = 2114;
        v22 = addressString;
        v23 = 1024;
        v24 = port;
        _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_INFO, "%{public}@Resolved: %{public}@ %hu", &v19, 0x1Cu);
      }

      objc_autoreleasePoolPop(v10);
      v16 = 1;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
    v7 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  host = [(HMFNetworkService *)self host];
  addresses = [(HMFNetworkService *)self addresses];
  lastObject = [addresses lastObject];
  v8 = [v3 stringWithFormat:@"%@ %@ %@ (%hu)", v4, host, lastObject, -[HMFNetworkService port](self, "port")];

  return v8;
}

- (id)shortDescription
{
  v2 = MEMORY[0x277CCACA8];
  host = [(HMFNetworkService *)self host];
  v4 = [v2 stringWithFormat:@"%@", host];

  return v4;
}

+ (id)logCategory
{
  if (_MergedGlobals_3_9 != -1)
  {
    dispatch_once(&_MergedGlobals_3_9, &__block_literal_global_27);
  }

  v3 = qword_280AFC3A0;

  return v3;
}

uint64_t __32__HMFNetworkService_logCategory__block_invoke()
{
  qword_280AFC3A0 = HMFCreateOSLogHandle(@"HMFNetworkService", @"com.apple.HMFoundation");

  return MEMORY[0x2821F96F8]();
}

@end