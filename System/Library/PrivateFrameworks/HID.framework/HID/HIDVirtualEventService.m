@interface HIDVirtualEventService
- (BOOL)dispatchEvent:(id)a3;
- (HIDVirtualEventService)init;
- (HIDVirtualEventServiceDelegate)delegate;
- (unint64_t)serviceID;
- (void)activate;
- (void)cancel;
- (void)dealloc;
- (void)setCancelHandler:(id)a3;
- (void)setDispatchQueue:(id)a3;
@end

@implementation HIDVirtualEventService

- (void)cancel
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

- (void)dealloc
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

- (HIDVirtualEventServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HIDVirtualEventService)init
{
  v11[2] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = HIDVirtualEventService;
  v2 = [(HIDVirtualEventService *)&v9 init];
  if (v2)
  {
    v3 = [[HIDEventSystemClient alloc] initWithType:4];
    [(HIDVirtualEventService *)v2 setClient:v3];

    v4 = [(HIDVirtualEventService *)v2 client];

    if (v4)
    {
      v5 = [(HIDVirtualEventService *)v2 client];
      v10[0] = @"PrimaryUsagePage";
      v10[1] = @"PrimaryUsage";
      v11[0] = &unk_284199F58;
      v11[1] = &unk_284199F58;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
      [v5 setMatching:v6];

      v4 = v2;
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)activate
{
  v4 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

- (void)setCancelHandler:(id)a3
{
  v4 = a3;
  v5 = [(HIDVirtualEventService *)self client];
  [v5 setCancelHandler:v4];
}

- (void)setDispatchQueue:(id)a3
{
  v5 = a3;
  v4 = [(HIDVirtualEventService *)self client];
  [v4 setDispatchQueue:v5];

  [(HIDVirtualEventService *)self setQueue:v5];
}

void __34__HIDVirtualEventService_activate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 notification:11 withProperty:0 forService:v3];

    WeakRetained = v3;
  }
}

- (BOOL)dispatchEvent:(id)a3
{
  v4 = a3;
  v5 = [(HIDVirtualEventService *)self serviceClient];

  if (v5)
  {
    v6 = [(HIDVirtualEventService *)self serviceClient];
    v7 = IOHIDVirtualServiceClientDispatchEvent() != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)serviceID
{
  v3 = [(HIDVirtualEventService *)self serviceClient];

  if (!v3)
  {
    return 0;
  }

  v4 = [(HIDVirtualEventService *)self serviceClient];
  v5 = IOHIDServiceClientGetRegistryID(v4);

  v6 = [v5 unsignedLongLongValue];
  return v6;
}

@end