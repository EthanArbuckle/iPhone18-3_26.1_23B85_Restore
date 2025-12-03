@interface OSLogEventLiveStream
- (OSLogEventLiveStream)initWithLiveSource:(id)source;
- (void)_activateLiveStream;
- (void)_handleStreamedObject:(id)object usingProxy:(id)proxy;
- (void)activate;
- (void)invalidate;
- (void)setDroppedEventHandler:(id)handler;
- (void)setFilterPredicate:(id)predicate;
@end

@implementation OSLogEventLiveStream

void __43__OSLogEventLiveStream__activateLiveStream__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x2318E23F0]() == MEMORY[0x277D86480])
  {
    v5 = *(a1 + 32);
    if (v3 != MEMORY[0x277D863F8])
    {
      v6 = v5[11];
LABEL_16:
      xpc_connection_cancel(v6);
      goto LABEL_17;
    }

    if (![v5 invalidated])
    {
      [*(a1 + 32) invalidate];
      *(*(a1 + 32) + 80) = 1;
    }

    [*(*(*(a1 + 40) + 8) + 24) _unmake];
    v12 = [*(a1 + 32) invalidationHandler];

    if (v12)
    {
      v13 = [*(a1 + 32) invalidationHandler];
      v14 = *(*(a1 + 32) + 80);
      v15 = [OSLogEventStreamPosition alloc];
      (v13)[2](v13, v14, v15);

      [*(a1 + 32) setInvalidationHandler:0];
    }
  }

  else
  {
    v20 = 0;
    v4 = v3;
    if (MEMORY[0x2318E23F0]() != MEMORY[0x277D86468])
    {
      asprintf(&v20, "Not a dictionary\n");
      goto LABEL_9;
    }

    v7 = xpc_dictionary_get_value(v4, "action");
    if (MEMORY[0x2318E23F0]() != MEMORY[0x277D864C8])
    {
      v8 = xpc_copy_short_description();
      asprintf(&v20, "Action is %s (not uint64, which was expected)\n", v8);
      free(v8);
LABEL_8:

LABEL_9:
      v9 = v20;
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v9)
      {
        if (v10)
        {
          *buf = 136446210;
          v22 = v9;
          _os_log_error_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error with received event: %{public}s", buf, 0xCu);
          v9 = v20;
        }

        free(v9);
      }

      else if (v10)
      {
        *buf = 0;
        _os_log_error_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unspecified error with received event", buf, 2u);
      }

      goto LABEL_15;
    }

    value = xpc_uint64_get_value(v7);
    v17 = value;
    if (value != 6 && value != 12)
    {
      asprintf(&v20, "Action is %llu (not %llu or %llu, which was expected)\n", value, 6, 12);
      goto LABEL_8;
    }

    [*(*(*(a1 + 40) + 8) + 24) _setThreadCrumb];
    v18 = *(a1 + 32);
    if (v17 == 6)
    {
      [v18 _handleStreamedObject:v4 usingProxy:*(*(*(a1 + 40) + 8) + 24)];
    }

    else
    {
      v19 = v18[13];
      if (v19)
      {
        (*(v19 + 16))(v19, 0);
      }
    }

    if ([*(a1 + 32) invalidated])
    {
      *(*(a1 + 32) + 80) = 4;
LABEL_15:
      v6 = *(*(a1 + 32) + 88);
      goto LABEL_16;
    }
  }

LABEL_17:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v5.receiver = self;
  v5.super_class = OSLogEventLiveStream;
  [(OSLogEventStreamBase *)&v5 invalidate];
  queue = [(OSLogEventStreamBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__OSLogEventLiveStream_invalidate__block_invoke;
  block[3] = &unk_2787AE2F0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __34__OSLogEventLiveStream_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 88);
  if (v1)
  {
    xpc_connection_cancel(v1);
  }
}

- (void)activate
{
  queue = [(OSLogEventStreamBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__OSLogEventLiveStream_activate__block_invoke;
  block[3] = &unk_2787AE2F0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_activateLiveStream
{
  queue = [(OSLogEventStreamBase *)self queue];
  dispatch_assert_queue_V2(queue);

  streamHandler = [(OSLogEventStreamBase *)self streamHandler];

  if (streamHandler)
  {
    if ([(OSLogEventStreamBase *)self invalidated])
    {
      self->_reason = 4;
      invalidationHandler = [(OSLogEventStreamBase *)self invalidationHandler];

      if (invalidationHandler)
      {
        invalidationHandler2 = [(OSLogEventStreamBase *)self invalidationHandler];
        reason = self->_reason;
        v8 = [OSLogEventStreamPosition alloc];
        (invalidationHandler2)[2](invalidationHandler2, reason, v8);

        [(OSLogEventStreamBase *)self setInvalidationHandler:0];
      }
    }

    else
    {
      queue2 = [(OSLogEventStreamBase *)self queue];
      mach_service = xpc_connection_create_mach_service("com.apple.diagnosticd", queue2, 2uLL);
      diagdconn = self->_diagdconn;
      self->_diagdconn = mach_service;

      v31 = 0;
      v32 = &v31;
      v33 = 0x2050000000;
      v34 = +[OSLogEventProxy _make];
      self->_reason = 0;
      v12 = self->_diagdconn;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __43__OSLogEventLiveStream__activateLiveStream__block_invoke;
      handler[3] = &unk_2787AE2A0;
      handler[4] = self;
      handler[5] = &v31;
      xpc_connection_set_event_handler(v12, handler);
      xpc_connection_activate(self->_diagdconn);
      v13 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v13, "action", 3uLL);
      [v32[3] _setIncludeSensitive:1];
      xpc_dictionary_set_uint64(v13, "flags", (16 * [(OSLogEventStreamBase *)self flags]) & 0x20 | (([(OSLogEventStreamBase *)self flags]& 1) << 8));
      flags = [(OSLogEventStreamBase *)self flags];
      flags2 = [(OSLogEventStreamBase *)self flags];
      flags3 = [(OSLogEventStreamBase *)self flags];
      flags4 = [(OSLogEventStreamBase *)self flags];
      flags5 = [(OSLogEventStreamBase *)self flags];
      v19 = 15;
      if ((flags & 0x20) == 0)
      {
        v19 = 7;
      }

      v20 = (flags2 >> 6) & 0x10 | v19;
      if (flags3 < 0)
      {
        v20 &= 0x1Eu;
      }

      if ((flags4 & 0x100) != 0)
      {
        v20 &= ~2uLL;
      }

      if ((flags5 & 0x200) != 0)
      {
        v21 = v20 & 0xFFFFFFFFFFFFFFFBLL;
      }

      else
      {
        v21 = v20;
      }

      xpc_dictionary_set_uint64(v13, "types", v21);
      xpc_dictionary_set_BOOL(v13, "all_procs", 1);
      streamFilter = self->_streamFilter;
      if (streamFilter)
      {
        data = [(_OSLogStreamFilter *)streamFilter data];
        bytes = [data bytes];
        data2 = [(_OSLogStreamFilter *)self->_streamFilter data];
        xpc_dictionary_set_data(v13, "stream_filter", bytes, [data2 length]);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Sending stream request to diagnosticd", buf, 2u);
      }

      v26 = self->_diagdconn;
      queue3 = [(OSLogEventStreamBase *)self queue];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __43__OSLogEventLiveStream__activateLiveStream__block_invoke_10;
      v28[3] = &unk_2787AE2C8;
      v28[4] = self;
      xpc_connection_send_message_with_reply(v26, v13, queue3, v28);

      _Block_object_dispose(&v31, 8);
    }
  }

  else
  {
    qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: OSLogEventLiveStream activated without stream handler";
    __break(1u);
  }
}

void __43__OSLogEventLiveStream__activateLiveStream__block_invoke_10(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  xdict = a2;
  if (MEMORY[0x2318E23F0]() == MEMORY[0x277D86480])
  {
    v4 = a1 + 32;
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(xdict, "error");
    if (!uint64)
    {
      goto LABEL_7;
    }

    if (uint64 != 1)
    {
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(a1 + 32);
    v4 = a1 + 32;
    [v5 invalidate];
    *(*v4 + 80) = 7;
  }

  xpc_connection_cancel(*(*v4 + 88));
LABEL_7:
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleStreamedObject:(id)object usingProxy:(id)proxy
{
  objectCopy = object;
  proxyCopy = proxy;
  [proxyCopy _fillFromOSLogMessage:objectCopy];
  filterPredicate = [(OSLogEventStreamBase *)self filterPredicate];

  if (!filterPredicate || (-[OSLogEventStreamBase filterPredicate](self, "filterPredicate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 evaluateWithObject:proxyCopy], v8, (v9 & 1) != 0))
  {
    streamHandler = [(OSLogEventStreamBase *)self streamHandler];
    (streamHandler)[2](streamHandler, proxyCopy);
  }
}

- (void)setFilterPredicate:(id)predicate
{
  v8.receiver = self;
  v8.super_class = OSLogEventLiveStream;
  [(OSLogEventStreamBase *)&v8 setFilterPredicate:predicate];
  v4 = [_OSLogStreamFilter alloc];
  filterPredicate = [(OSLogEventStreamBase *)self filterPredicate];
  v6 = [(_OSLogStreamFilter *)v4 initWithPredicate:filterPredicate];
  streamFilter = self->_streamFilter;
  self->_streamFilter = v6;
}

- (void)setDroppedEventHandler:(id)handler
{
  v4 = _Block_copy(handler);
  dropnoteHandler = self->_dropnoteHandler;
  self->_dropnoteHandler = v4;

  MEMORY[0x2821F96F8](v4, dropnoteHandler);
}

- (OSLogEventLiveStream)initWithLiveSource:(id)source
{
  sourceCopy = source;
  v6 = [(OSLogEventStreamBase *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_source, source);
  }

  return v7;
}

@end