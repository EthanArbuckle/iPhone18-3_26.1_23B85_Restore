@interface MXRoutingPrewarmingChannel
- (MXRoutingPrewarmingChannel)initWithRoutingContextUUID:(id)a3 endpoint:(OpaqueFigEndpoint *)a4 previousRouteDescriptors:(id)a5;
- (void)closeChannel;
- (void)dealloc;
- (void)persistChannel;
@end

@implementation MXRoutingPrewarmingChannel

- (MXRoutingPrewarmingChannel)initWithRoutingContextUUID:(id)a3 endpoint:(OpaqueFigEndpoint *)a4 previousRouteDescriptors:(id)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = MXRoutingPrewarmingChannel;
  v8 = [(MXRoutingPrewarmingChannel *)&v13 init];
  if (a4)
  {
    v9 = CFRetain(a4);
  }

  else
  {
    v9 = 0;
  }

  v8->_endpoint = v9;
  v8->_routingContextUUID = a3;
  v8->_previousRouteDescriptors = a5;
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
  v2 = [(MXRoutingPrewarmingChannel *)self closeChannelBlock];
  if (v2)
  {
    v3 = v2[2];

    v3();
  }
}

- (void)persistChannel
{
  v2 = [(MXRoutingPrewarmingChannel *)self persistPrewarmingBlock];
  if (v2)
  {
    v3 = v2[2];

    v3();
  }
}

@end