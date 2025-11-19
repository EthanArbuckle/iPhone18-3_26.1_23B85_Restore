@interface CRKConcreteNetworkPathMonitor
- (CRKConcreteNetworkPathMonitor)initWithUnderlyingPathMonitor:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)resume;
- (void)updateWithPath:(id)a3;
@end

@implementation CRKConcreteNetworkPathMonitor

- (void)dealloc
{
  [(CRKConcreteNetworkPathMonitor *)self cancel];
  v3.receiver = self;
  v3.super_class = CRKConcreteNetworkPathMonitor;
  [(CRKConcreteNetworkPathMonitor *)&v3 dealloc];
}

- (CRKConcreteNetworkPathMonitor)initWithUnderlyingPathMonitor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRKConcreteNetworkPathMonitor;
  v6 = [(CRKConcreteNetworkPathMonitor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingPathMonitor, a3);
  }

  return v7;
}

- (void)cancel
{
  v2 = [(CRKConcreteNetworkPathMonitor *)self underlyingPathMonitor];
  nw_path_monitor_cancel(v2);
}

- (void)resume
{
  objc_initWeak(&location, self);
  underlyingPathMonitor = self->_underlyingPathMonitor;
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  nw_path_monitor_set_queue(underlyingPathMonitor, v4);

  v6 = self->_underlyingPathMonitor;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __39__CRKConcreteNetworkPathMonitor_resume__block_invoke;
  v11 = &unk_278DC2088;
  objc_copyWeak(&v12, &location);
  nw_path_monitor_set_update_handler(v6, &v8);
  v7 = [(CRKConcreteNetworkPathMonitor *)self underlyingPathMonitor:v8];
  nw_path_monitor_start(v7);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __39__CRKConcreteNetworkPathMonitor_resume__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateWithPath:v3];
}

- (void)updateWithPath:(id)a3
{
  v4 = a3;
  v5 = [[CRKConcreteNetworkPath alloc] initWithUnderlyingPath:v4];

  [(CRKConcreteNetworkPathMonitor *)self setPath:v5];
}

@end