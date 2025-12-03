@interface IPXPCEventSubscriptionBlackhole
- (IPXPCEventSubscriptionBlackhole)initWithStreamName:(id)name;
- (void)resume;
@end

@implementation IPXPCEventSubscriptionBlackhole

- (IPXPCEventSubscriptionBlackhole)initWithStreamName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = IPXPCEventSubscriptionBlackhole;
  v5 = [(IPXPCEventSubscriptionBlackhole *)&v12 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    streamName = v5->_streamName;
    v5->_streamName = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.InstallProgress.IPXPCEventSubscriptionBlackhole", v8);
    queue = v5->_queue;
    v5->_queue = v9;
  }

  return v5;
}

- (void)resume
{
  v3 = self->_streamName;
  [(NSString *)v3 UTF8String];
  queue = self->_queue;
  v5 = xpc_event_publisher_create();
  publisher = self->_publisher;
  self->_publisher = v5;

  v7 = self->_publisher;
  v11 = v3;
  v8 = v3;
  xpc_event_publisher_set_handler();
  v9 = self->_publisher;
  xpc_event_publisher_set_error_handler();
  v10 = self->_publisher;
  xpc_event_publisher_activate();
}

void __41__IPXPCEventSubscriptionBlackhole_resume__block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = IPXPCCopyDescription(a4);
  v8 = _IPServerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 134218754;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_254C69000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring event %lu %llu %@ on %@", &v11, 0x2Au);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __41__IPXPCEventSubscriptionBlackhole_resume__block_invoke_2()
{
  v0 = _IPServerLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __41__IPXPCEventSubscriptionBlackhole_resume__block_invoke_2_cold_1();
  }
}

void __41__IPXPCEventSubscriptionBlackhole_resume__block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

@end