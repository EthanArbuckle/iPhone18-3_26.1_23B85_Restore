@interface HostResolver
- (HostResolver)initWithQueue:(id)a3;
- (void)resolveHostname:(id)a3 withCompletion:(id)a4;
@end

@implementation HostResolver

- (HostResolver)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HostResolver;
  v6 = [(HostResolver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->queue, a3);
  }

  return v7;
}

- (void)resolveHostname:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_semaphore_create(0);
  host = nw_endpoint_create_host([v6 cStringUsingEncoding:4], "0");
  v10 = nw_resolver_create_with_endpoint();
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  queue = self->queue;
  v14 = v10;
  v15 = v8;
  nw_resolver_set_update_handler();
  v12 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v15, v12);
  v13 = [v17[5] count] != 0;
  v7[2](v7, v13, v17[5]);

  _Block_object_dispose(&v16, 8);
}

void __47__HostResolver_resolveHostname_withCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  count = nw_array_get_count();
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:count];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      v11 = nw_array_get_object_at_index();
      address = nw_endpoint_get_address(v11);
      if (getnameinfo(address, address->sa_len, v27, 0x401u, 0, 0, 10))
      {
        netqual_log_init();
        v13 = os_log_netqual;
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
        {
          v14 = v13;
          v15 = *__error();
          *buf = 136315906;
          v20 = "[HostResolver resolveHostname:withCompletion:]_block_invoke";
          v21 = 1024;
          v22 = 52;
          v23 = 2048;
          v24 = address;
          v25 = 1024;
          v26 = v15;
          _os_log_error_impl(&dword_25B859000, v14, OS_LOG_TYPE_ERROR, "%s:%u - Could not getnameinfo %p: errno=%d", buf, 0x22u);
        }
      }

      else
      {
        v16 = [MEMORY[0x277CCACA8] stringWithCString:v27 encoding:4];
        [*(*(*(a1 + 48) + 8) + 40) addObject:v16];
      }
    }
  }

  if (a2 == 2)
  {
    v17 = *(a1 + 32);
    nw_resolver_cancel();
    dispatch_semaphore_signal(*(a1 + 40));
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end