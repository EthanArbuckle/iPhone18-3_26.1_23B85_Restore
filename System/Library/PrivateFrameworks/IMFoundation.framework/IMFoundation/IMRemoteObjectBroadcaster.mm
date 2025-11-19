@interface IMRemoteObjectBroadcaster
+ (id)defaultBroadcaster;
- (IMRemoteObjectBroadcaster)init;
- (id)broadcastProxyForTargets:(id)a3 messageContext:(id)a4 protocol:(id)a5;
- (void)blockUntilSendQueueIsEmpty;
- (void)dealloc;
- (void)flushProxy:(id)a3;
@end

@implementation IMRemoteObjectBroadcaster

+ (id)defaultBroadcaster
{
  if (qword_1ED517520 != -1)
  {
    sub_19598F74C();
  }

  return qword_1ED517518;
}

- (IMRemoteObjectBroadcaster)init
{
  v5.receiver = self;
  v5.super_class = IMRemoteObjectBroadcaster;
  v2 = [(IMRemoteObjectBroadcaster *)&v5 init];
  if (v2)
  {
    if (qword_1ED517528 != -1)
    {
      sub_1959D57C0();
    }

    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_queue = dispatch_queue_create("com.apple.IMRemoteObjectBroadcasterQueue", v3);
  }

  return v2;
}

- (void)blockUntilSendQueueIsEmpty
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend__remoteObjects(IMRemoteObject, a2, v2);
  v6 = objc_msgSend__copyForEnumerating(v3, v4, v5);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if (objc_msgSend__queue(v14, v9, v10))
        {
          v15 = objc_msgSend__queue(v14, v9, v10);
          dispatch_sync(v15, &unk_1F09D23C0);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v21, v25, 16);
    }

    while (v11);
  }

  v16 = objc_msgSend_defaultBroadcaster(IMRemoteObjectBroadcaster, v9, v10);
  v19 = objc_msgSend__queue(v16, v17, v18);
  dispatch_sync(v19, &unk_1F09D23E0);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  v4.receiver = self;
  v4.super_class = IMRemoteObjectBroadcaster;
  [(IMRemoteObjectBroadcaster *)&v4 dealloc];
}

- (id)broadcastProxyForTargets:(id)a3 messageContext:(id)a4 protocol:(id)a5
{
  result = objc_msgSend_count(a3, a2, a3);
  if (result)
  {
    v10 = [Broadcaster alloc];
    v12 = objc_msgSend_initWithNotifier_messageContext_protocol_targets_(v10, v11, self, a4, a5, a3);

    return v12;
  }

  return result;
}

- (void)flushProxy:(id)a3
{
  v3 = a3;
  objc_msgSend__cleanupMachBitsCanPost_locked_(a3, v4, 1, 0);
}

@end