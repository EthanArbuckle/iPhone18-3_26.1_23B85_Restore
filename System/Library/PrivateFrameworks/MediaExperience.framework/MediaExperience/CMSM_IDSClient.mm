@interface CMSM_IDSClient
- (CMSM_IDSClient)init;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
@end

@implementation CMSM_IDSClient

- (CMSM_IDSClient)init
{
  v6.receiver = self;
  v6.super_class = CMSM_IDSClient;
  v2 = [(CMSM_IDSClient *)&v6 init];
  v2->pIdsService = [objc_alloc(CMSM_GetIDSServiceClass()) initWithService:@"com.apple.private.alloy.cmsession"];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.cmsession.ids.client.dispatch", v3);
  v2->idsDispatchQueue = v4;
  [(IDSService *)v2->pIdsService addDelegate:v2 queue:v4];
  v2->_lastSentRemotePlayingInfoQueryGUID = 0;
  return v2;
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  v9 = *MEMORY[0x1E69E9840];
  if (!success)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end