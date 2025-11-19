@interface IOGCFastPathProxyConnection
+ (id)connectTo:(unsigned int)a3 withProxyService:(id)a4 error:(int *)a5;
- (IOGCFastPathProxyConnection)init;
- (id)createInputQueueWithOptions:(id)a3 error:(int *)a4;
- (id)description;
- (id)getProperty:(id)a3;
- (int)close;
- (int)mapSharedMemoryAt:(unint64_t *)a3 ofSize:(unint64_t *)a4 options:(unsigned int)a5;
- (int)open;
- (void)close;
- (void)dealloc;
- (void)open;
- (xpc_connection_t)_initWithService:(void *)a3 withProxyService:(_DWORD *)a4 error:;
@end

@implementation IOGCFastPathProxyConnection

+ (id)connectTo:(unsigned int)a3 withProxyService:(id)a4 error:(int *)a5
{
  v8 = a4;
  v9 = [(IOGCFastPathProxyConnection *)[a1 alloc] _initWithService:a3 withProxyService:v8 error:a5];

  return v9;
}

void __71__IOGCFastPathProxyConnection__initWithService_withProxyService_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1D38AB9A0]();
  if (v4 == MEMORY[0x1E69E9E80])
  {
    v5 = _gc_log_iokit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__IOGCFastPathProxyConnection__initWithService_withProxyService_error___block_invoke_cold_4();
    }
  }

  else if (v4 == MEMORY[0x1E69E9E98])
  {
    v6 = MEMORY[0x1E69E9E20];
    v5 = _gc_log_iokit();
    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v3 == v6)
    {
      if (v7)
      {
        __71__IOGCFastPathProxyConnection__initWithService_withProxyService_error___block_invoke_cold_3(v5);
      }

      xpc_connection_set_event_handler(*(*(a1 + 32) + 16), &__block_literal_global_17);
      xpc_connection_cancel(*(*(a1 + 32) + 16));
      v8 = *(a1 + 32);
      v5 = *(v8 + 16);
      *(v8 + 16) = 0;
    }

    else if (v7)
    {
      __71__IOGCFastPathProxyConnection__initWithService_withProxyService_error___block_invoke_cold_2();
    }
  }

  else
  {
    v5 = _gc_log_iokit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__IOGCFastPathProxyConnection__initWithService_withProxyService_error___block_invoke_cold_1();
    }
  }
}

- (IOGCFastPathProxyConnection)init
{
  [(IOGCFastPathProxyConnection *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _gc_log_iokit();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = self;
    _os_log_impl(&dword_1D2C3B000, v3, OS_LOG_TYPE_DEFAULT, "%@::dealloc", buf, 0xCu);
  }

  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
    v5 = self->_connection;
    self->_connection = 0;
  }

  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
    self->_service = 0;
  }

  v8.receiver = self;
  v8.super_class = IOGCFastPathProxyConnection;
  [(IOGCFastPathProxyConnection *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (int)mapSharedMemoryAt:(unint64_t *)a3 ofSize:(unint64_t *)a4 options:(unsigned int)a5
{
  keys[1] = *MEMORY[0x1E69E9840];
  v8 = _gc_log_iokit();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [IOGCFastPathProxyConnection mapSharedMemoryAt:ofSize:options:];
  }

  keys[0] = "selector";
  Name = sel_getName(sel_mapSharedMemory);
  values = xpc_string_create(Name);
  v10 = xpc_dictionary_create(keys, &values, 1uLL);
  v11 = xpc_connection_send_message_with_reply_sync(self->_connection, v10);
  v12 = MEMORY[0x1D38AB9A0]();
  if (v12 == MEMORY[0x1E69E9E80])
  {
    v17 = xpc_dictionary_get_value(v11, "status");
    if (MEMORY[0x1D38AB9A0]() == MEMORY[0x1E69E9F18])
    {
      value = xpc_uint64_get_value(v17);
      v19 = _gc_log_iokit();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [IOGCFastPathProxyConnection mapSharedMemoryAt:ofSize:options:];
      }

      if (value)
      {
        goto LABEL_19;
      }

      v22 = xpc_dictionary_copy_mach_send();
      if (v22)
      {
        uint64 = xpc_dictionary_get_uint64(v11, "memory_size");
        if (uint64)
        {
          value = mach_vm_map(*MEMORY[0x1E69E9A60], a3, uint64, 0, 1, v22, 0, 0, 1, 1, 0);
          if (value)
          {
            v24 = _gc_log_iokit();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              LODWORD(v27) = value;
              _os_log_impl(&dword_1D2C3B000, v24, OS_LOG_TYPE_DEFAULT, "vm_map returns %{mach.errno}d", buf, 8u);
            }
          }

          *a4 = uint64;
          goto LABEL_19;
        }

        v25 = _gc_log_iokit();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v27 = self;
          _os_log_impl(&dword_1D2C3B000, v25, OS_LOG_TYPE_DEFAULT, "mapSharedMemory reply for %@ missing 'memory_size' argument", buf, 0xCu);
        }
      }

      else
      {
        v25 = _gc_log_iokit();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v27 = self;
          _os_log_impl(&dword_1D2C3B000, v25, OS_LOG_TYPE_DEFAULT, "mapSharedMemory reply for %@ missing 'memory' argument", buf, 0xCu);
        }
      }

      xpc_connection_cancel(self->_connection);
    }

    else
    {
      v18 = _gc_log_iokit();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [IOGCFastPathProxyConnection mapSharedMemoryAt:ofSize:options:];
      }
    }

    value = -536870209;
LABEL_19:

    goto LABEL_20;
  }

  v13 = v12 == MEMORY[0x1E69E9E98];
  v14 = _gc_log_iokit();
  value = -536870209;
  v16 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v16)
    {
      *buf = 138412546;
      v27 = self;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_1D2C3B000, v14, OS_LOG_TYPE_DEFAULT, "Handshake for %@ failed: %@", buf, 0x16u);
    }
  }

  else if (v16)
  {
    *buf = 138412546;
    v27 = self;
    v28 = 2112;
    v29 = v11;
    _os_log_impl(&dword_1D2C3B000, v14, OS_LOG_TYPE_DEFAULT, "Handshake for %@ unknown response: %@", buf, 0x16u);
  }

  xpc_connection_cancel(self->_connection);
LABEL_20:

  v20 = *MEMORY[0x1E69E9840];
  return value;
}

- (int)open
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = "selector";
  Name = sel_getName(sel_open);
  values = xpc_string_create(Name);
  v4 = xpc_dictionary_create(keys, &values, 1uLL);
  v5 = xpc_connection_send_message_with_reply_sync(self->_connection, v4);
  v6 = MEMORY[0x1D38AB9A0]();
  if (v6 == MEMORY[0x1E69E9E80])
  {
    v11 = xpc_dictionary_get_value(v5, "status");
    if (MEMORY[0x1D38AB9A0]() == MEMORY[0x1E69E9F18])
    {
      value = xpc_uint64_get_value(v11);
    }

    else
    {
      v12 = _gc_log_iokit();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [IOGCFastPathProxyConnection open];
      }

      value = -536870209;
    }
  }

  else
  {
    v7 = v6 == MEMORY[0x1E69E9E98];
    v8 = _gc_log_iokit();
    value = -536870209;
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v15 = 138412546;
        v16 = self;
        v17 = 2112;
        v18 = v5;
        _os_log_impl(&dword_1D2C3B000, v8, OS_LOG_TYPE_DEFAULT, "Open for %@ failed: %@", &v15, 0x16u);
      }
    }

    else if (v10)
    {
      v15 = 138412546;
      v16 = self;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_1D2C3B000, v8, OS_LOG_TYPE_DEFAULT, "Open for %@ unknown response: %@", &v15, 0x16u);
    }

    xpc_connection_cancel(self->_connection);
  }

  v13 = *MEMORY[0x1E69E9840];
  return value;
}

- (int)close
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = "selector";
  Name = sel_getName(sel_close);
  values = xpc_string_create(Name);
  v4 = xpc_dictionary_create(keys, &values, 1uLL);
  v5 = xpc_connection_send_message_with_reply_sync(self->_connection, v4);
  v6 = MEMORY[0x1D38AB9A0]();
  if (v6 == MEMORY[0x1E69E9E80])
  {
    v11 = xpc_dictionary_get_value(v5, "status");
    if (MEMORY[0x1D38AB9A0]() == MEMORY[0x1E69E9F18])
    {
      value = xpc_uint64_get_value(v11);
    }

    else
    {
      v12 = _gc_log_iokit();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [IOGCFastPathProxyConnection close];
      }

      value = -536870209;
    }
  }

  else
  {
    v7 = v6 == MEMORY[0x1E69E9E98];
    v8 = _gc_log_iokit();
    value = -536870209;
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v15 = 138412546;
        v16 = self;
        v17 = 2112;
        v18 = v5;
        _os_log_impl(&dword_1D2C3B000, v8, OS_LOG_TYPE_DEFAULT, "Close for %@ failed: %@", &v15, 0x16u);
      }
    }

    else if (v10)
    {
      v15 = 138412546;
      v16 = self;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_1D2C3B000, v8, OS_LOG_TYPE_DEFAULT, "Close for %@ unknown response: %@", &v15, 0x16u);
    }

    xpc_connection_cancel(self->_connection);
  }

  v13 = *MEMORY[0x1E69E9840];
  return value;
}

- (id)getProperty:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  *keys = xmmword_1E8415470;
  Name = sel_getName(sel_getProperty_);
  values[0] = xpc_string_create(Name);
  values[1] = xpc_string_create([v4 UTF8String]);
  v6 = xpc_dictionary_create(keys, values, 2uLL);
  v7 = xpc_connection_send_message_with_reply_sync(self->_connection, v6);
  v8 = MEMORY[0x1D38AB9A0]();
  if (v8 == MEMORY[0x1E69E9E80])
  {
    v12 = xpc_dictionary_get_value(v7, "value");
    v13 = v12;
    if (v12)
    {
      if (MEMORY[0x1D38AB9A0](v12) == MEMORY[0x1E69E9F18])
      {
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:xpc_uint64_get_value(v13)];
        goto LABEL_20;
      }

      if (MEMORY[0x1D38AB9A0](v13) == MEMORY[0x1E69E9EB0])
      {
        v14 = [MEMORY[0x1E696AD98] numberWithLongLong:xpc_int64_get_value(v13)];
        goto LABEL_20;
      }

      if (MEMORY[0x1D38AB9A0](v13) == MEMORY[0x1E69E9F10])
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:xpc_string_get_string_ptr(v13)];
LABEL_20:
        v15 = v14;
        goto LABEL_21;
      }
    }

    else
    {
      v16 = _gc_log_iokit();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [IOGCFastPathProxyConnection getProperty:];
      }
    }

    v15 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v9 = v8 == MEMORY[0x1E69E9E98];
  v10 = _gc_log_iokit();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v20 = 138412546;
      v21 = self;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_1D2C3B000, v10, OS_LOG_TYPE_DEFAULT, "getProperty for %@ failed: %@", &v20, 0x16u);
    }
  }

  else if (v11)
  {
    v20 = 138412546;
    v21 = self;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_1D2C3B000, v10, OS_LOG_TYPE_DEFAULT, "getProperty for %@ unknown response: %@", &v20, 0x16u);
  }

  xpc_connection_cancel(self->_connection);
  v15 = 0;
LABEL_22:

  for (i = 1; i != -1; --i)
  {
  }

  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)createInputQueueWithOptions:(id)a3 error:(int *)a4
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = "selector";
  Name = sel_getName(sel_createInputQueue_);
  values = xpc_string_create(Name);
  v7 = xpc_dictionary_create(keys, &values, 1uLL);
  v8 = xpc_connection_send_message_with_reply_sync(self->_connection, v7);
  v9 = MEMORY[0x1D38AB9A0]();
  if (v9 == MEMORY[0x1E69E9E80])
  {
    v13 = xpc_dictionary_get_value(v8, "status");
    if (MEMORY[0x1D38AB9A0]() == MEMORY[0x1E69E9F18])
    {
      value = xpc_uint64_get_value(v13);
      if (value)
      {
        v15 = 0;
        *a4 = value;
        goto LABEL_17;
      }

      uint64 = xpc_dictionary_get_uint64(v8, "port");
      if (uint64)
      {
        v15 = [[IOGCFastPathProxyQueue alloc] _initWithConnection:self queue:uint64];
        goto LABEL_17;
      }

      v14 = _gc_log_iokit();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [IOGCFastPathProxyConnection createInputQueueWithOptions:error:];
      }
    }

    else
    {
      v14 = _gc_log_iokit();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [IOGCFastPathProxyConnection createInputQueueWithOptions:error:];
      }
    }

    v15 = 0;
    *a4 = -536870209;
LABEL_17:

    goto LABEL_18;
  }

  v10 = v9 == MEMORY[0x1E69E9E98];
  v11 = _gc_log_iokit();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v20 = 138412546;
      v21 = self;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_1D2C3B000, v11, OS_LOG_TYPE_DEFAULT, "createInputQueue for %@ failed: %@", &v20, 0x16u);
    }
  }

  else if (v12)
  {
    v20 = 138412546;
    v21 = self;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_1D2C3B000, v11, OS_LOG_TYPE_DEFAULT, "createInputQueue for %@ unknown response: %@", &v20, 0x16u);
  }

  xpc_connection_cancel(self->_connection);
  v15 = 0;
LABEL_18:

  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)description
{
  v8 = *MEMORY[0x1E69E9840];
  entryID = 0;
  memset(className, 0, 128);
  IORegistryEntryGetRegistryEntryID(self->_service, &entryID);
  IOObjectGetClass(self->_service, className);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(PROXY) %s %#llx", className, entryID];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (xpc_connection_t)_initWithService:(void *)a3 withProxyService:(_DWORD *)a4 error:
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    v11 = 0;
    goto LABEL_27;
  }

  if (v7)
  {
    if (a2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    v44 = "name";
    [v42 handleFailureInMethod:sel__initWithService_withProxyService_error_ object:a1 file:@"IOGCFastPathProxyConnection.m" lineNumber:32 description:@"Invalid parameter not satisfying: %s"];

    if (a2)
    {
      goto LABEL_4;
    }
  }

  v43 = [MEMORY[0x1E696AAA8] currentHandler];
  v44 = "service != IO_OBJECT_NULL";
  [v43 handleFailureInMethod:sel__initWithService_withProxyService_error_ object:a1 file:@"IOGCFastPathProxyConnection.m" lineNumber:33 description:@"Invalid parameter not satisfying: %s"];

LABEL_4:
  v52.receiver = a1;
  v52.super_class = IOGCFastPathProxyConnection;
  v9 = objc_msgSendSuper2(&v52, sel_init);
  entryID = 0;
  memset(className, 0, 128);
  v10 = IOObjectRetain(a2);
  IORegistryEntryGetRegistryEntryID(a2, &entryID);
  IOObjectGetClass(a2, className);
  if (!v10)
  {
    v12 = _gc_log_iokit();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_12();
      OUTLINED_FUNCTION_7_4(&dword_1D2C3B000, v30, v31, "Opening proxy connection to <%s %#llx>", v32, v33, v34, v35, v44, v45, handler, v47, v48, v49, v50, entryID, v52.receiver, v52.super_class, buf[0]);
    }

    v13 = v8;
    mach_service = xpc_connection_create_mach_service([v8 UTF8String], 0, 2uLL);
    v15 = v9[2];
    v9[2] = mach_service;

    v16 = v9[2];
    handler = MEMORY[0x1E69E9820];
    v47 = 3221225472;
    v48 = __71__IOGCFastPathProxyConnection__initWithService_withProxyService_error___block_invoke;
    v49 = &unk_1E8413BA8;
    v17 = v9;
    v50 = v17;
    xpc_connection_set_event_handler(v16, &handler);
    xpc_connection_activate(v9[2]);
    v18 = _gc_log_iokit();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_12();
      OUTLINED_FUNCTION_7_4(&dword_1D2C3B000, v36, v37, "Initiate handshake for <%s %#llx>", v38, v39, v40, v41, v44, v45, handler, v47, v48, v49, v50, entryID, v52.receiver, v52.super_class, buf[0]);
    }

    keys = "selector";
    Name = sel_getName(sel_connect_);
    values = xpc_string_create(Name);
    v20 = xpc_dictionary_create(&keys, &values, 1uLL);
    xpc_dictionary_set_mach_send();
    v21 = xpc_connection_send_message_with_reply_sync(v9[2], v20);
    v22 = MEMORY[0x1D38AB9A0]();
    if (v22 == MEMORY[0x1E69E9E80])
    {
      v23 = xpc_dictionary_get_value(v21, "status");
      if (MEMORY[0x1D38AB9A0]() == MEMORY[0x1E69E9F18])
      {
        value = xpc_uint64_get_value(v23);
        v27 = _gc_log_iokit();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          OUTLINED_FUNCTION_1_12();
          v54 = 1024;
          LODWORD(v55) = value;
          _os_log_debug_impl(&dword_1D2C3B000, v27, OS_LOG_TYPE_DEBUG, "Handshake for <%s %#llx> returns %{mach.errno}d", buf, 0x1Cu);
        }

        if (!value)
        {

          goto LABEL_12;
        }

        xpc_connection_cancel(v9[2]);
        *a4 = value;
      }

      else
      {
        v24 = _gc_log_iokit();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          OUTLINED_FUNCTION_1_12();
          v54 = 2112;
          v55 = v21;
          _os_log_debug_impl(&dword_1D2C3B000, v24, OS_LOG_TYPE_DEBUG, "Handshake for <%s %#llx> returns bad reply: %@", buf, 0x20u);
        }
      }
    }

    else
    {
      if (v22 != MEMORY[0x1E69E9E98])
      {
LABEL_12:

        v11 = v17;
LABEL_25:

        goto LABEL_26;
      }

      v25 = _gc_log_iokit();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_12();
        v54 = 2112;
        v55 = v21;
        _os_log_impl(&dword_1D2C3B000, v25, OS_LOG_TYPE_DEFAULT, "Handshake for <%s %#llx> failed: %@", buf, 0x20u);
      }

      xpc_connection_cancel(v9[2]);
      *a4 = -536870209;
    }

    v11 = 0;
    goto LABEL_25;
  }

  v11 = 0;
LABEL_26:

LABEL_27:
  v28 = *MEMORY[0x1E69E9840];
  return v11;
}

void __71__IOGCFastPathProxyConnection__initWithService_withProxyService_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_6(&dword_1D2C3B000, v0, v1, "Proxy connection received unknown event: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__IOGCFastPathProxyConnection__initWithService_withProxyService_error___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_6(&dword_1D2C3B000, v0, v1, "Proxy connection received error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__IOGCFastPathProxyConnection__initWithService_withProxyService_error___block_invoke_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_6(&dword_1D2C3B000, v0, v1, "Proxy connection received unexpected message: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)mapSharedMemoryAt:ofSize:options:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_3(&dword_1D2C3B000, v0, v1, "%@::mapSharedMemory", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)mapSharedMemoryAt:ofSize:options:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_2_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)mapSharedMemoryAt:ofSize:options:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_2_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)open
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_2_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)close
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_2_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)getProperty:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_2_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)createInputQueueWithOptions:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_2_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end