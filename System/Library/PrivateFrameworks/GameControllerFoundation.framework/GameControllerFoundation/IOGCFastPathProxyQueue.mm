@interface IOGCFastPathProxyQueue
- (id)_initWithConnection:(id)connection queue:(unint64_t)queue;
- (int)getProperties:(id)properties dictionary:(id *)dictionary;
- (int)mapMemoryAt:(unint64_t *)at ofSize:(unint64_t *)size options:(unsigned int)options;
@end

@implementation IOGCFastPathProxyQueue

- (id)_initWithConnection:(id)connection queue:(unint64_t)queue
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = IOGCFastPathProxyQueue;
  v7 = [(IOGCFastPathProxyQueue *)&v10 init];
  parent = v7->_parent;
  v7->_parent = connectionCopy;

  v7->_queue = queue;
  return v7;
}

- (int)mapMemoryAt:(unint64_t *)at ofSize:(unint64_t *)size options:(unsigned int)options
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = _gc_log_iokit();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [IOGCFastPathProxyQueue mapMemoryAt:ofSize:options:];
  }

  *keys = xmmword_1E8415480;
  Name = sel_getName(sel_mapMemoryForQueue_);
  values[0] = xpc_string_create(Name);
  values[1] = xpc_uint64_create(self->_queue);
  v10 = xpc_dictionary_create(keys, values, 2uLL);
  v11 = xpc_connection_send_message_with_reply_sync(self->_parent->_connection, v10);
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
        [IOGCFastPathProxyQueue mapMemoryAt:ofSize:options:];
      }

      if (value)
      {
        goto LABEL_19;
      }

      v23 = xpc_dictionary_copy_mach_send();
      if (v23)
      {
        uint64 = xpc_dictionary_get_uint64(v11, "memory_size");
        if (uint64)
        {
          value = mach_vm_map(*MEMORY[0x1E69E9A60], at, uint64, 0, 1, v23, 0, 0, 1, 1, 2u);
          if (value)
          {
            v25 = _gc_log_iokit();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              LODWORD(selfCopy4) = value;
              _os_log_impl(&dword_1D2C3B000, v25, OS_LOG_TYPE_DEFAULT, "vm_map returns %{mach.errno}d", buf, 8u);
            }
          }

          *size = uint64;
          goto LABEL_19;
        }

        v26 = _gc_log_iokit();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy4 = self;
          _os_log_impl(&dword_1D2C3B000, v26, OS_LOG_TYPE_DEFAULT, "mapMemory reply for %@ missing 'memory_size' argument", buf, 0xCu);
        }
      }

      else
      {
        v26 = _gc_log_iokit();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy4 = self;
          _os_log_impl(&dword_1D2C3B000, v26, OS_LOG_TYPE_DEFAULT, "mapMemory reply for %@ missing 'memory' argument", buf, 0xCu);
        }
      }

      xpc_connection_cancel(self->_parent->_connection);
    }

    else
    {
      v18 = _gc_log_iokit();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [IOGCFastPathProxyQueue mapMemoryAt:ofSize:options:];
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
      selfCopy4 = self;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_1D2C3B000, v14, OS_LOG_TYPE_DEFAULT, "mapMemory for %@ failed: %@", buf, 0x16u);
    }
  }

  else if (v16)
  {
    *buf = 138412546;
    selfCopy4 = self;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&dword_1D2C3B000, v14, OS_LOG_TYPE_DEFAULT, "mapMemory for %@ unknown response: %@", buf, 0x16u);
  }

  xpc_connection_cancel(self->_parent->_connection);
LABEL_20:

  for (i = 1; i != -1; --i)
  {
  }

  v21 = *MEMORY[0x1E69E9840];
  return value;
}

- (int)getProperties:(id)properties dictionary:(id *)dictionary
{
  v48 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  v7 = _gc_log_iokit();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [IOGCFastPathProxyQueue getProperties:dictionary:];
  }

  empty = xpc_array_create_empty();
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = propertiesCopy;
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (v10)
  {
    v11 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = xpc_string_create([*(*(&v36 + 1) + 8 * i) UTF8String]);
        xpc_array_append_value(empty, v13);
      }

      v10 = [v9 countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v10);
  }

  *keys = xmmword_1E8415490;
  v46 = "keys";
  Name = sel_getName(sel_getQueue_properties_);
  values[0] = xpc_string_create(Name);
  values[1] = xpc_uint64_create(self->_queue);
  v15 = empty;
  values[2] = v15;
  v16 = xpc_dictionary_create(keys, values, 3uLL);
  v17 = xpc_connection_send_message_with_reply_sync(self->_parent->_connection, v16);
  v18 = MEMORY[0x1D38AB9A0]();
  v19 = MEMORY[0x1E69E9E80];
  if (v18 == MEMORY[0x1E69E9E80])
  {
    v24 = xpc_dictionary_get_value(v17, "status");
    if (MEMORY[0x1D38AB9A0]() == MEMORY[0x1E69E9F18])
    {
      value = xpc_uint64_get_value(v24);
      v26 = _gc_log_iokit();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [IOGCFastPathProxyQueue getProperties:dictionary:];
      }

      if (value)
      {
        goto LABEL_30;
      }

      v25 = xpc_dictionary_get_value(v17, "properties");
      if (MEMORY[0x1D38AB9A0]() == v19)
      {
        v28 = objc_opt_new();
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 3221225472;
        applier[2] = __51__IOGCFastPathProxyQueue_getProperties_dictionary___block_invoke;
        applier[3] = &unk_1E84154B0;
        v29 = v28;
        v35 = v29;
        xpc_dictionary_apply(v25, applier);
        v30 = *dictionary;
        *dictionary = v29;
        v27 = v29;

        value = 0;
      }

      else
      {
        v27 = _gc_log_iokit();
        value = -536870209;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [IOGCFastPathProxyQueue getProperties:dictionary:];
        }
      }
    }

    else
    {
      v25 = _gc_log_iokit();
      value = -536870209;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [IOGCFastPathProxyQueue getProperties:dictionary:];
      }
    }

LABEL_30:
    goto LABEL_31;
  }

  v20 = v18 == MEMORY[0x1E69E9E98];
  v21 = _gc_log_iokit();
  value = -536870209;
  v23 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (v23)
    {
      *buf = 138412546;
      selfCopy2 = self;
      v42 = 2112;
      v43 = v17;
      _os_log_impl(&dword_1D2C3B000, v21, OS_LOG_TYPE_DEFAULT, "getProperties for %@ failed: %@", buf, 0x16u);
    }
  }

  else if (v23)
  {
    *buf = 138412546;
    selfCopy2 = self;
    v42 = 2112;
    v43 = v17;
    _os_log_impl(&dword_1D2C3B000, v21, OS_LOG_TYPE_DEFAULT, "getProperties for %@ unknown response: %@", buf, 0x16u);
  }

  xpc_connection_cancel(self->_parent->_connection);
LABEL_31:

  for (j = 2; j != -1; --j)
  {
  }

  v32 = *MEMORY[0x1E69E9840];
  return value;
}

uint64_t __51__IOGCFastPathProxyQueue_getProperties_dictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (MEMORY[0x1D38AB9A0]() == MEMORY[0x1E69E9F18])
  {
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:xpc_uint64_get_value(v5)];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    [v6 setObject:v7 forKey:v8];
  }

  if (MEMORY[0x1D38AB9A0](v5) == MEMORY[0x1E69E9EB0])
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:xpc_int64_get_value(v5)];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    [v9 setObject:v10 forKey:v11];
  }

  return 1;
}

- (void)mapMemoryAt:ofSize:options:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_3(&dword_1D2C3B000, v0, v1, "%@::mapMemoryAt", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)mapMemoryAt:ofSize:options:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_2_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)mapMemoryAt:ofSize:options:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_2_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)getProperties:dictionary:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_3(&dword_1D2C3B000, v0, v1, "%@::getProperties", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)getProperties:dictionary:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_2_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)getProperties:dictionary:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_2_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

@end