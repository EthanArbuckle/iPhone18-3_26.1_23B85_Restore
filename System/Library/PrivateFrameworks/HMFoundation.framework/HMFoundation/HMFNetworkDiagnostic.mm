@interface HMFNetworkDiagnostic
+ (id)logCategory;
+ (id)runDiagnostics:(id)diagnostics timeout:(double)timeout;
- (HMFNetworkDiagnostic)initWithDevice:(id)device delegate:(id)delegate queue:(id)queue;
- (HMFNetworkDiagnosticDelegate)delegate;
- (id)shortDescription;
- (void)handleReceivedData:(id)data;
- (void)stop;
@end

@implementation HMFNetworkDiagnostic

- (HMFNetworkDiagnostic)initWithDevice:(id)device delegate:(id)delegate queue:(id)queue
{
  deviceCopy = device;
  delegateCopy = delegate;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = HMFNetworkDiagnostic;
  v12 = [(HMFNetworkDiagnostic *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_device, device);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    objc_storeStrong(&v13->_workQueue, queue);
  }

  return v13;
}

+ (id)runDiagnostics:(id)diagnostics timeout:(double)timeout
{
  diagnosticsCopy = diagnostics;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__HMFNetworkDiagnostic_runDiagnostics_timeout___block_invoke;
  v11[3] = &unk_2786E73F0;
  v11[4] = v12;
  v6 = [diagnosticsCopy na_map:v11];
  v7 = [HMFFuture allSettled:v6];
  ignoreResult = [v7 ignoreResult];
  v9 = [ignoreResult timeout:timeout];

  _Block_object_dispose(v12, 8);

  return v9;
}

double __47__HMFNetworkDiagnostic_runDiagnostics_timeout___block_invoke(uint64_t a1, void *a2)
{
  [a2 runWithDelay:*(*(*(a1 + 32) + 8) + 24)];
  v3 = *(*(a1 + 32) + 8);
  result = *(v3 + 24) + 1.0;
  *(v3 + 24) = result;
  return result;
}

- (void)stop
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  v5 = [v4 stringWithFormat:@"You must override %@ in a subclass", v7];
  v6 = [v2 exceptionWithName:v3 reason:v5 userInfo:0];
}

- (void)handleReceivedData:(id)data
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v6 = [v5 stringWithFormat:@"You must override %@ in a subclass", v8];
  v7 = [v3 exceptionWithName:v4 reason:v6 userInfo:0];
}

+ (id)logCategory
{
  if (_MergedGlobals_3_3 != -1)
  {
    dispatch_once(&_MergedGlobals_3_3, &__block_literal_global_14);
  }

  v3 = qword_280AFC320;

  return v3;
}

uint64_t __35__HMFNetworkDiagnostic_logCategory__block_invoke()
{
  qword_280AFC320 = HMFCreateOSLogHandle(@"HMFNetworkDiagnostic", @"com.apple.HomeKit");

  return MEMORY[0x2821F96F8]();
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  device = [(HMFNetworkDiagnostic *)self device];
  hostName = [device hostName];
  v7 = [v3 stringWithFormat:@"%@ (%@)", v4, hostName];

  return v7;
}

- (HMFNetworkDiagnosticDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end