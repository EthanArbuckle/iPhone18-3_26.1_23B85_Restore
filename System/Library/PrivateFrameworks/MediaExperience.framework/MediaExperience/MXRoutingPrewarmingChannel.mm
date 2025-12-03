@interface MXRoutingPrewarmingChannel
- (MXRoutingPrewarmingChannel)initWithRoutingContextUUID:(id)d endpoint:(OpaqueFigEndpoint *)endpoint previousRouteDescriptors:(id)descriptors;
- (void)closeChannel;
- (void)dealloc;
- (void)persistChannel;
@end

@implementation MXRoutingPrewarmingChannel

- (MXRoutingPrewarmingChannel)initWithRoutingContextUUID:(id)d endpoint:(OpaqueFigEndpoint *)endpoint previousRouteDescriptors:(id)descriptors
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = MXRoutingPrewarmingChannel;
  v8 = [(MXRoutingPrewarmingChannel *)&v13 init];
  if (endpoint)
  {
    v9 = CFRetain(endpoint);
  }

  else
  {
    v9 = 0;
  }

  v8->_endpoint = v9;
  v8->_routingContextUUID = d;
  v8->_previousRouteDescriptors = descriptors;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v8 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  endpoint = self->_endpoint;
  if (endpoint)
  {
    CFRelease(endpoint);
    self->_endpoint = 0;
  }

  v6.receiver = self;
  v6.super_class = MXRoutingPrewarmingChannel;
  [(MXRoutingPrewarmingChannel *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)closeChannel
{
  closeChannelBlock = [(MXRoutingPrewarmingChannel *)self closeChannelBlock];
  if (closeChannelBlock)
  {
    v3 = closeChannelBlock[2];

    v3();
  }
}

- (void)persistChannel
{
  persistPrewarmingBlock = [(MXRoutingPrewarmingChannel *)self persistPrewarmingBlock];
  if (persistPrewarmingBlock)
  {
    v3 = persistPrewarmingBlock[2];

    v3();
  }
}

@end