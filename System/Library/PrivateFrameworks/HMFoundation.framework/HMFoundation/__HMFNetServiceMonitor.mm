@interface __HMFNetServiceMonitor
- (__HMFNetServiceMonitor)initWithNetAddress:(id)address;
- (__HMFNetServiceMonitor)initWithNetService:(id)service;
- (id)netAddress;
- (unint64_t)reachabilityPath;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation __HMFNetServiceMonitor

- (__HMFNetServiceMonitor)initWithNetAddress:(id)address
{
  addressCopy = address;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (__HMFNetServiceMonitor)initWithNetService:(id)service
{
  serviceCopy = service;
  v10.receiver = self;
  v10.super_class = __HMFNetServiceMonitor;
  v6 = [(HMFNetMonitor *)&v10 initWithNetService:serviceCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_service, service);
    v8 = NSStringFromSelector(sel_isPublishing);
    [serviceCopy addObserver:v7 forKeyPath:v8 options:3 context:0];

    v7->super._reachable = [serviceCopy isPublishing];
  }

  return v7;
}

- (void)dealloc
{
  service = self->_service;
  v4 = NSStringFromSelector(sel_isPublishing);
  [(HMFNetService *)service removeObserver:self forKeyPath:v4];

  v5.receiver = self;
  v5.super_class = __HMFNetServiceMonitor;
  [(__HMFNetServiceMonitor *)&v5 dealloc];
}

- (id)netAddress
{
  addresses = [(HMFNetService *)self->_service addresses];
  firstObject = [addresses firstObject];

  return firstObject;
}

- (unint64_t)reachabilityPath
{
  if ([(HMFNetMonitor *)self isReachable])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (self->_service == object)
  {
    v19 = changeCopy;
    pathCopy = path;
    v11 = NSStringFromSelector(sel_isPublishing);
    v12 = [pathCopy isEqualToString:v11];

    changeCopy = v19;
    if (v12)
    {
      v13 = [v19 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v14 = *MEMORY[0x277CCA2F0];
      v15 = [v19 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v16 = HMFEqualObjects(v13, v15);

      changeCopy = v19;
      if ((v16 & 1) == 0)
      {
        v17 = [v19 hmf_numberForKey:v14];
        v18 = v17;
        if (v17)
        {
          -[HMFNetMonitor setReachable:](self, "setReachable:", [v17 BOOLValue]);
        }

        changeCopy = v19;
      }
    }
  }
}

@end