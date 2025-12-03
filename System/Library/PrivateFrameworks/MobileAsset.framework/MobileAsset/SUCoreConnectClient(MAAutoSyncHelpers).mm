@interface SUCoreConnectClient(MAAutoSyncHelpers)
- (void)connectClientSendServerMessage:()MAAutoSyncHelpers proxyObject:replyQueue:isSynchronous:withReply:;
@end

@implementation SUCoreConnectClient(MAAutoSyncHelpers)

- (void)connectClientSendServerMessage:()MAAutoSyncHelpers proxyObject:replyQueue:isSynchronous:withReply:
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  dispatch_assert_queue_not_V2(v14);
  v16 = mach_absolute_time();
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __120__SUCoreConnectClient_MAAutoSyncHelpers__connectClientSendServerMessage_proxyObject_replyQueue_isSynchronous_withReply___block_invoke;
  v26[3] = &unk_1E74CA478;
  v17 = v14;
  v27 = v17;
  v18 = v15;
  v28 = v18;
  v29 = v16;
  v19 = MEMORY[0x19A8EC5D0](v26);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  if (a6)
  {
    v20 = _os_activity_create(&dword_197AD5000, "Client:SendSync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v20, &state);

    v24 = 0;
    v21 = [self connectClientSendSynchronousServerMessage:v12 proxyObject:v13 errorPtr:&v24];
    v22 = v24;
    (v19)[2](v19, v21, v22);
  }

  else
  {
    v23 = _os_activity_create(&dword_197AD5000, "Client:SendAsync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v23, &state);

    [self connectClientSendServerMessage:v12 proxyObject:v13 withReply:v19];
  }

  os_activity_scope_leave(&state);
}

@end