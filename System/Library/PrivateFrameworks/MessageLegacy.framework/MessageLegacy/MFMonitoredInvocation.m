@interface MFMonitoredInvocation
+ (MFMonitoredInvocation)invocationWithMethodSignature:(id)a3;
- (id)description;
- (void)dealloc;
- (void)invoke;
@end

@implementation MFMonitoredInvocation

+ (MFMonitoredInvocation)invocationWithMethodSignature:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MFMonitoredInvocation;
  v3 = objc_msgSendSuper2(&v5, sel_invocationWithMethodSignature_, a3);
  v3->_monitor = objc_alloc_init(MFActivityMonitor);
  return v3;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_shouldLogInvocation)
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v7 = self;
      v8 = 2112;
      v9 = self;
      _os_log_impl(&dword_258BDA000, v3, OS_LOG_TYPE_DEFAULT, "deallocating %p %@", buf, 0x16u);
    }
  }

  v5.receiver = self;
  v5.super_class = MFMonitoredInvocation;
  [(MFMonitoredInvocation *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)invoke
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_258BDA000, log, OS_LOG_TYPE_FAULT, "Exception raised during monitored invocation of %{public}@, exception: %{public}@", buf, 0x16u);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(EFPriorityDesignator *)self->_monitor priority];
  v7 = [(MFMonitoredInvocation *)self target];
  Name = sel_getName([(MFMonitoredInvocation *)self selector]);
  if (self->_isLowPriority)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@: %p priority: %lu target: %@ selector: %s lowPriority: %@>", v5, self, v6, v7, Name, v9];
}

@end