@interface MXMSysmonRequest
+ (id)requestWithType:(unint64_t)a3 handler:(id)a4;
- (void)addAttributes:(unsigned int)a3;
- (void)cancel;
- (void)execute;
- (void)logTopUsageProcesses:(id)a3;
- (void)setInterval:(double)a3;
- (void)wait;
@end

@implementation MXMSysmonRequest

+ (id)requestWithType:(unint64_t)a3 handler:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(a1);
  if (v6)
  {
    v19 = 0;
    v18 = 4;
    if (sysctlbyname("hw.logicalcpu", &v19, &v18, 0, 0) < 0)
    {
      v20 = NSLocalizedDescriptionKey;
      v21 = @"Error while deterimining number of logical CPU cores.";
      v8 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v7 = [NSError errorWithDomain:@"InstrumentErrorDomain" code:0 userInfo:v8];
    }

    else
    {
      v7 = 0;
    }

    objc_initWeak(&location, v6);
    v12 = v6;
    v16 = v19;
    v14 = v5;
    objc_copyWeak(&v15, &location);
    v13 = v7;
    v9 = sysmon_request_create();
    [v12 setRequest:v9];

    [v12 setInterval:0.0];
    objc_destroyWeak(&v15);

    objc_destroyWeak(&location);
    v10 = v12;
  }

  return v6;
}

- (void)logTopUsageProcesses:(id)a3
{
  v3 = a3;
  v4 = [v3 keysSortedByValueUsingComparator:&stru_10000C5A0];
  if ([v4 count] > 4)
  {
    v5 = 5;
  }

  else
  {
    v5 = [v4 count];
  }

  v6 = [v4 subarrayWithRange:{0, v5}];

  v7 = +[NSMutableDictionary dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [v3 objectForKeyedSubscript:{v13, v16}];
        [v7 setValue:v14 forKey:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v10);
  }

  v15 = _MXMGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Top five processes: %@", buf, 0xCu);
  }
}

- (void)addAttributes:(unsigned int)a3
{
  v6 = &v7;
  if (a3)
  {
    do
    {
      v4 = [(MXMSysmonRequest *)self request];
      sysmon_request_add_attribute();

      v5 = v6++;
    }

    while (*v5);
  }
}

- (void)execute
{
  v3 = dispatch_semaphore_create(0);
  [(MXMSysmonRequest *)self setWait_sema:v3];

  v4 = [(MXMSysmonRequest *)self request];
  sysmon_request_execute();
}

- (void)wait
{
  v2 = [(MXMSysmonRequest *)self wait_sema];
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)cancel
{
  v3 = [(MXMSysmonRequest *)self request];
  sysmon_request_cancel();

  v4 = [(MXMSysmonRequest *)self wait_sema];
  dispatch_semaphore_signal(v4);
}

- (void)setInterval:(double)a3
{
  self->_interval = round(a3 + a3) * 0.5;
  v5 = [(MXMSysmonRequest *)self request];
  v4 = self->_interval * 1000.0;
  sysmon_request_set_interval();
}

@end