@interface GTLoopbackServiceXPCDispatcher
- (GTLoopbackServiceXPCDispatcher)initWithService:(id)a3 properties:(id)a4;
- (void)echo_:(id)a3 replyConnection:(id)a4;
- (void)echo_completionHandler_:(id)a3 replyConnection:(id)a4;
- (void)echo_repeat_callback_:(id)a3 replyConnection:(id)a4;
- (void)echo_repeat_callback_complete_:(id)a3 replyConnection:(id)a4;
@end

@implementation GTLoopbackServiceXPCDispatcher

- (GTLoopbackServiceXPCDispatcher)initWithService:(id)a3 properties:(id)a4
{
  v7 = a3;
  v8 = [a4 protocolMethods];
  v11.receiver = self;
  v11.super_class = GTLoopbackServiceXPCDispatcher;
  v9 = [(GTXPCDispatcher *)&v11 initWithProtocolMethods:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_service, a3);
  }

  return v9;
}

- (void)echo_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  nsdictionary_any = xpc_dictionary_get_nsdictionary_any(v7, "data");
  v8 = [(GTLoopbackService *)self->_service echo:nsdictionary_any];
  v9 = gt_xpc_dictionary_create_reply(v7);

  xpc_dictionary_set_nsobject(v9, "data", v8);
  [v6 sendMessage:v9];
}

- (void)echo_completionHandler_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  nsdictionary_any = xpc_dictionary_get_nsdictionary_any(v7, "data");
  v9 = gt_xpc_dictionary_create_reply(v7);

  service = self->_service;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__GTLoopbackServiceXPCDispatcher_echo_completionHandler__replyConnection___block_invoke;
  v13[3] = &unk_279661B10;
  v14 = v9;
  v15 = v6;
  v11 = v6;
  v12 = v9;
  [(GTLoopbackService *)service echo:nsdictionary_any completionHandler:v13];
}

uint64_t __74__GTLoopbackServiceXPCDispatcher_echo_completionHandler__replyConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  xpc_dictionary_set_nsobject(*(a1 + 32), "data", a2);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 sendMessage:v4];
}

- (void)echo_repeat_callback_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  nsdictionary_any = xpc_dictionary_get_nsdictionary_any(v7, "data");
  uint64 = xpc_dictionary_get_uint64(v7, "repeat");
  v10 = xpc_dictionary_get_uint64(v7, "_replyStreamId");
  v11 = xpc_dictionary_get_array(v7, "_pathHistory");

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  service = self->_service;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__GTLoopbackServiceXPCDispatcher_echo_repeat_callback__replyConnection___block_invoke;
  v15[3] = &unk_279661B38;
  v18 = v21;
  v19 = v10;
  v20 = uint64;
  v16 = v11;
  v17 = v6;
  v13 = v6;
  v14 = v11;
  [(GTLoopbackService *)service echo:nsdictionary_any repeat:uint64 callback:v15];

  _Block_object_dispose(v21, 8);
}

void __72__GTLoopbackServiceXPCDispatcher_echo_repeat_callback__replyConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  xdict = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(xdict, "_port", *(a1 + 56));
  xpc_dictionary_set_value(xdict, "_replyPath", *(a1 + 32));
  xpc_dictionary_set_nsobject(xdict, "data", v3);

  if (++*(*(*(a1 + 48) + 8) + 24) == *(a1 + 64))
  {
    xpc_dictionary_set_BOOL(xdict, "_endOfStream", 1);
  }

  [*(a1 + 40) sendMessage:xdict];
}

- (void)echo_repeat_callback_complete_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  nsdictionary_any = xpc_dictionary_get_nsdictionary_any(v7, "data");
  uint64 = xpc_dictionary_get_uint64(v7, "repeat");
  v10 = xpc_dictionary_get_uint64(v7, "_replyStreamId");
  v11 = xpc_dictionary_get_array(v7, "_pathHistory");
  v12 = gt_xpc_dictionary_create_reply(v7);

  service = self->_service;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __81__GTLoopbackServiceXPCDispatcher_echo_repeat_callback_complete__replyConnection___block_invoke;
  v20[3] = &unk_279661B60;
  v23 = v10;
  v21 = v11;
  v22 = v6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __81__GTLoopbackServiceXPCDispatcher_echo_repeat_callback_complete__replyConnection___block_invoke_2;
  v17[3] = &unk_279661B10;
  v18 = v12;
  v19 = v22;
  v14 = v22;
  v15 = v12;
  v16 = v11;
  [(GTLoopbackService *)service echo:nsdictionary_any repeat:uint64 callback:v20 complete:v17];
}

void __81__GTLoopbackServiceXPCDispatcher_echo_repeat_callback_complete__replyConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  xdict = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(xdict, "_port", *(a1 + 48));
  xpc_dictionary_set_value(xdict, "_replyPath", *(a1 + 32));
  xpc_dictionary_set_nsobject(xdict, "data", v3);

  MessageSetHasReply(xdict);
  v4 = [*(a1 + 40) sendMessageWithReplySync:xdict error:0];
}

uint64_t __81__GTLoopbackServiceXPCDispatcher_echo_repeat_callback_complete__replyConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  xpc_dictionary_set_BOOL(v3, "_endOfStream", 1);
  xpc_dictionary_set_nsobject(*(a1 + 32), "result", v4);

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v5 sendMessage:v6];
}

@end