@interface IPXPCEventStateUpdateStreamSource
- (IPStateUpdateStreamSourceDelegate)delegate;
- (IPXPCEventStateUpdateStreamSource)initWithQueue:(id)queue streamName:(id)name;
- (void)_queue_handleEvent:(id)event;
- (void)resume;
@end

@implementation IPXPCEventStateUpdateStreamSource

- (IPXPCEventStateUpdateStreamSource)initWithQueue:(id)queue streamName:(id)name
{
  queueCopy = queue;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = IPXPCEventStateUpdateStreamSource;
  v9 = [(IPXPCEventStateUpdateStreamSource *)&v13 init];
  if (v9)
  {
    v10 = [nameCopy copy];
    streamName = v9->_streamName;
    v9->_streamName = v10;

    objc_storeStrong(&v9->_queue, queue);
  }

  return v9;
}

- (void)resume
{
  v13 = *MEMORY[0x277D85DE8];
  self->_resumed = 1;
  v3 = _IPServerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    streamName = self->_streamName;
    *buf = 138412290;
    v12 = streamName;
    _os_log_impl(&dword_254C69000, v3, OS_LOG_TYPE_DEFAULT, "Resuming event source for %@, setting handlers", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v5 = xpc_dictionary_create(0, 0, 0);
  [(NSString *)self->_streamName UTF8String];
  xpc_set_event();
  uTF8String = [(NSString *)self->_streamName UTF8String];
  queue = self->_queue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __43__IPXPCEventStateUpdateStreamSource_resume__block_invoke;
  handler[3] = &unk_2797B2008;
  objc_copyWeak(&v10, buf);
  xpc_set_event_stream_handler(uTF8String, queue, handler);
  objc_destroyWeak(&v10);

  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __43__IPXPCEventStateUpdateStreamSource_resume__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_handleEvent:v3];
}

- (void)_queue_handleEvent:(id)event
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dispatch_assert_queue_V2(self->_queue);
  v5 = _IPClientLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = IPXPCCopyDescription(eventCopy);
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_254C69000, v5, OS_LOG_TYPE_DEFAULT, "event: %@", buf, 0xCu);
  }

  if (MEMORY[0x259C29850](eventCopy) == MEMORY[0x277D86468])
  {
    if (xpc_dictionary_get_uint64(eventCopy, [@"type" UTF8String]) == -1)
    {
      reply = xpc_dictionary_create_reply(eventCopy);
      xpc_dictionary_send_reply();
      v11 = _IPClientLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254C69000, v11, OS_LOG_TYPE_DEFAULT, "Sent reply message to ping event.", buf, 2u);
      }
    }

    else
    {
      v13 = 0;
      v8 = [[IPStateUpdateMessage alloc] initWithXPCDictionaryRepresentation:eventCopy error:&v13];
      reply = v13;
      v9 = _IPClientLog();
      WeakRetained = v9;
      if (v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v15 = v8;
          _os_log_impl(&dword_254C69000, WeakRetained, OS_LOG_TYPE_DEFAULT, "handling: %@", buf, 0xCu);
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained stateUpdateStreamSource:self updateMessageReceived:v8];
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [IPXPCEventStateUpdateStreamSource _queue_handleEvent:];
      }
    }
  }

  else
  {
    reply = _IPClientLog();
    if (os_log_type_enabled(reply, OS_LOG_TYPE_ERROR))
    {
      [IPXPCEventStateUpdateStreamSource _queue_handleEvent:];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (IPStateUpdateStreamSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_queue_handleEvent:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end