@interface _IOGCFastPathProxyClient
+ (id)withIncomingConnection:(uint64_t)connection;
- (_IOGCFastPathProxyClient)init;
- (_IOGCFastPathProxyClient)initWithIncomingConnection:(id)connection;
- (void)dealloc;
- (void)handleMessage:(uint64_t)message;
@end

@implementation _IOGCFastPathProxyClient

+ (id)withIncomingConnection:(uint64_t)connection
{
  v2 = a2;
  v3 = [objc_alloc(objc_opt_self()) initWithIncomingConnection:v2];

  return v3;
}

- (_IOGCFastPathProxyClient)initWithIncomingConnection:(id)connection
{
  connectionCopy = connection;
  v16.receiver = self;
  v16.super_class = _IOGCFastPathProxyClient;
  v5 = [(_IOGCFastPathProxyClient *)&v16 init];
  v6 = dispatch_queue_create("_IOGCFastPathProxyClient", 0);
  v7 = *(v5 + 1);
  *(v5 + 1) = v6;

  v8 = *(v5 + 2);
  *(v5 + 2) = connectionCopy;
  v9 = connectionCopy;

  v10 = *(v5 + 2);
  xpc_connection_get_audit_token();
  xpc_connection_set_target_queue(*(v5 + 2), *(v5 + 1));
  v11 = *(v5 + 2);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __55___IOGCFastPathProxyClient_initWithIncomingConnection___block_invoke;
  handler[3] = &unk_1E8413BA8;
  v12 = v5;
  v15 = v12;
  xpc_connection_set_event_handler(v11, handler);
  xpc_connection_activate(*(v5 + 2));

  return v12;
}

- (void)handleMessage:(uint64_t)message
{
  v85 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!message)
  {
    goto LABEL_65;
  }

  string = xpc_dictionary_get_string(v3, "selector");
  if (!string)
  {
    [_IOGCFastPathProxyClient handleMessage:message];
    goto LABEL_65;
  }

  v6 = string;
  Uid = sel_getUid(string);
  if (Uid == sel_connect_)
  {
    v8 = _os_activity_create(&dword_1D2C3B000, "[IOGCFastPathProxyClient] Connect", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    *state = 0;
    *&state[8] = 0;
    os_activity_scope_enter(v8, state);
    v9 = xpc_dictionary_copy_mach_send();
    v10 = v9;
    if (!v9)
    {
      v21 = _gc_log_iokit();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(input.opaque[0]) = 136315138;
        *(input.opaque + 4) = v6;
        _os_log_impl(&dword_1D2C3B000, v21, OS_LOG_TYPE_DEFAULT, "Client received '%s' message with missing 'service' argument", &input, 0xCu);
      }

LABEL_91:

      xpc_connection_cancel(*(message + 16));
      goto LABEL_92;
    }

    if (*(message + 60))
    {
      reply = xpc_dictionary_create_reply(v4);
      xpc_dictionary_set_uint64(reply, "status", 0xFFFFFFFFE00002D5);
      xpc_connection_send_message(*(message + 16), reply);

LABEL_92:
      os_activity_scope_leave(state);

      goto LABEL_65;
    }

    v25 = IOServiceOpen(v9, *MEMORY[0x1E69E9A60], 1u, (message + 64));
    if (!v25)
    {
      *(message + 60) = v10;
    }

    v26 = _gc_log_iokit();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(message + 60);
      LODWORD(input.opaque[0]) = 67109376;
      HIDWORD(input.opaque[0]) = v27;
      LOWORD(input.opaque[1]) = 1024;
      *(&input.opaque[1] + 2) = v25;
      _os_log_impl(&dword_1D2C3B000, v26, OS_LOG_TYPE_DEFAULT, "IOServiceOpen(%x) returns %{mach.errno}d", &input, 0xEu);
    }

    v28 = xpc_dictionary_create_reply(v4);
    xpc_dictionary_set_uint64(v28, "status", v25);
    xpc_connection_send_message(*(message + 16), v28);

    os_activity_scope_leave(state);
  }

  else
  {
    if (Uid != sel_mapSharedMemory)
    {
      if (Uid == sel_open)
      {
        v8 = _os_activity_create(&dword_1D2C3B000, "[IOGCFastPathProxyClient] open", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
        *state = 0;
        *&state[8] = 0;
        os_activity_scope_enter(v8, state);
        v18 = *(message + 64);
        if (v18)
        {
          input.opaque[0] = 0;
          v19 = IOConnectCallMethod(v18, 0, input.opaque, 1u, 0, 0, 0, 0, 0, 0);
          v20 = _gc_log_iokit();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *outputStruct = 67109120;
            *&outputStruct[4] = v19;
            _os_log_impl(&dword_1D2C3B000, v20, OS_LOG_TYPE_DEFAULT, "IOConnectCallMethod() returns %{mach.errno}d", outputStruct, 8u);
          }

          goto LABEL_31;
        }
      }

      else
      {
        if (Uid != sel_close)
        {
          if (Uid == sel_getProperty_)
          {
            v29 = _os_activity_create(&dword_1D2C3B000, "[IOGCFastPathProxyClient] GetProperty", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
            input.opaque[0] = 0;
            input.opaque[1] = 0;
            os_activity_scope_enter(v29, &input);
            if (!*(message + 64))
            {
              v53 = xpc_dictionary_create_reply(v4);
              xpc_dictionary_set_uint64(v53, "status", 0xFFFFFFFFE00002D8);
              xpc_connection_send_message(*(message + 16), v53);

              os_activity_scope_leave(&input);
              goto LABEL_65;
            }

            v30 = xpc_dictionary_get_string(v4, "key");
            if (v30)
            {
              v31 = *(message + 60);
              v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v30];
              CFProperty = IORegistryEntryCreateCFProperty(v31, v32, *MEMORY[0x1E695E480], 0);
              v34 = _gc_log_iokit();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                *state = 136315394;
                *&state[4] = v30;
                *&state[12] = 2112;
                *&state[14] = CFProperty;
                _os_log_impl(&dword_1D2C3B000, v34, OS_LOG_TYPE_DEFAULT, "IORegistryEntryCreateCFProperty(%s) returns %@", state, 0x16u);
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v35 = xpc_dictionary_create_reply(v4);
                xpc_dictionary_set_uint64(v35, "value", [CFProperty unsignedIntegerValue]);
                xpc_connection_send_message(*(message + 16), v35);
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v35 = xpc_dictionary_create_reply(v4);
                  v67 = CFProperty;
                  xpc_dictionary_set_string(v35, "value", [CFProperty UTF8String]);
                }

                else
                {
                  v35 = xpc_dictionary_create_reply(v4);
                }

                xpc_connection_send_message(*(message + 16), v35);
              }

              goto LABEL_84;
            }

            v66 = _gc_log_iokit();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              *state = 136315138;
              *&state[4] = v6;
              _os_log_impl(&dword_1D2C3B000, v66, OS_LOG_TYPE_DEFAULT, "Client received '%s' message with missing 'key' argument", state, 0xCu);
            }

            goto LABEL_75;
          }

          if (Uid != sel_createInputQueue_)
          {
            if (Uid != sel_mapMemoryForQueue_)
            {
              if (Uid != sel_getQueue_properties_)
              {
                [_IOGCFastPathProxyClient handleMessage:message];
                goto LABEL_65;
              }

              v8 = _os_activity_create(&dword_1D2C3B000, "[IOGCFastPathProxyClient] GetQueueProperties", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
              *state = 0;
              *&state[8] = 0;
              os_activity_scope_enter(v8, state);
              if (*(message + 64))
              {
                uint64 = xpc_dictionary_get_uint64(v4, "queue");
                if (uint64)
                {
                  v56 = xpc_dictionary_get_array(v4, "keys");
                  if (v56)
                  {
                    input.opaque[0] = uint64;
                    *outputStruct = 0;
                    *buf = -3;
                    *object_handle = 0;
                    v57 = objc_alloc_init(MEMORY[0x1E695DF90]);
                    applier[0] = MEMORY[0x1E69E9820];
                    applier[1] = 3221225472;
                    applier[2] = __42___IOGCFastPathProxyClient_handleMessage___block_invoke;
                    applier[3] = &unk_1E8415550;
                    v58 = v57;
                    v79 = v58;
                    xpc_array_apply(v56, applier);
                    v59 = IOCFSerialize(v58, 0);
                    v60 = v59;
                    if (v59)
                    {
                      v61 = *(message + 64);
                      BytePtr = CFDataGetBytePtr(v59);
                      Length = CFDataGetLength(v60);
                      v64 = IOConnectCallMethod(v61, 5u, input.opaque, 1u, BytePtr, Length, 0, 0, outputStruct, buf);
                      if (v64)
                      {
                        v65 = xpc_dictionary_create_reply(v4);
                        xpc_dictionary_set_uint64(v65, "status", v64);
                        xpc_connection_send_message(*(message + 16), v65);
                      }

                      else
                      {
                        v65 = IOCFUnserializeBinary(*outputStruct, *buf, *MEMORY[0x1E695E480], 0, object_handle);
                        if (v65 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v73 = xpc_dictionary_create_reply(v4);
                          xpc_dictionary_set_uint64(v73, "status", 0);
                          empty = xpc_dictionary_create_empty();
                          v76[0] = MEMORY[0x1E69E9820];
                          v76[1] = 3221225472;
                          v76[2] = __42___IOGCFastPathProxyClient_handleMessage___block_invoke_2;
                          v76[3] = &unk_1E8415578;
                          v75 = empty;
                          v77 = v75;
                          [v65 enumerateKeysAndObjectsUsingBlock:v76];
                          xpc_dictionary_set_value(v73, "properties", v75);
                          xpc_connection_send_message(*(message + 16), v73);
                        }

                        else
                        {
                          v73 = xpc_dictionary_create_reply(v4);
                          xpc_dictionary_set_uint64(v73, "status", 0xFFFFFFFFE00002C9);
                          xpc_connection_send_message(*(message + 16), v73);
                        }
                      }
                    }

                    else
                    {
                      v65 = xpc_dictionary_create_reply(v4);
                      xpc_dictionary_set_uint64(v65, "status", 0xFFFFFFFFE00002C9);
                      xpc_connection_send_message(*(message + 16), v65);
                    }
                  }

                  else
                  {
                    v72 = _gc_log_iokit();
                    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                    {
                      LODWORD(input.opaque[0]) = 136315138;
                      *(input.opaque + 4) = v6;
                      _os_log_impl(&dword_1D2C3B000, v72, OS_LOG_TYPE_DEFAULT, "Client received '%s' message with missing 'queue' argument", &input, 0xCu);
                    }

                    xpc_connection_cancel(*(message + 16));
                  }

                  os_activity_scope_leave(state);
                  goto LABEL_65;
                }

                v21 = _gc_log_iokit();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(input.opaque[0]) = 136315138;
                  *(input.opaque + 4) = v6;
                  _os_log_impl(&dword_1D2C3B000, v21, OS_LOG_TYPE_DEFAULT, "Client received '%s' message with missing 'queue' argument", &input, 0xCu);
                }

                goto LABEL_91;
              }

              goto LABEL_44;
            }

            v29 = _os_activity_create(&dword_1D2C3B000, "[IOGCFastPathProxyClient] MapMemoryForQueue", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
            input.opaque[0] = 0;
            input.opaque[1] = 0;
            os_activity_scope_enter(v29, &input);
            if (!*(message + 64))
            {
              v68 = xpc_dictionary_create_reply(v4);
              xpc_dictionary_set_uint64(v68, "status", 0xFFFFFFFFE00002D8);
              xpc_connection_send_message(*(message + 16), v68);

              goto LABEL_84;
            }

            v48 = xpc_dictionary_get_uint64(v4, "queue");
            if (v48)
            {
              *outputStruct = 0;
              *buf = 0;
              v49 = MEMORY[0x1E69E9A60];
              v50 = MEMORY[0x1D38AA7C0](*(message + 64), v48, *MEMORY[0x1E69E9A60], outputStruct, buf, 1);
              v51 = _gc_log_iokit();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
              {
                *state = 67109120;
                *&state[4] = v50;
                _os_log_impl(&dword_1D2C3B000, v51, OS_LOG_TYPE_DEFAULT, "IOConnectMapMemory64() returns %{mach.errno}d", state, 8u);
              }

              if (v50)
              {
                v52 = xpc_dictionary_create_reply(v4);
                xpc_dictionary_set_uint64(v52, "status", v50);
                xpc_connection_send_message(*(message + 16), v52);
              }

              else
              {
                object_handle[0] = 0;
                memory_entry_64 = mach_make_memory_entry_64(*v49, buf, *outputStruct, 1, object_handle, 0);
                v70 = _gc_log_iokit();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                {
                  *state = 134218240;
                  *&state[4] = *outputStruct;
                  *&state[12] = 1024;
                  *&state[14] = memory_entry_64;
                  _os_log_impl(&dword_1D2C3B000, v70, OS_LOG_TYPE_DEFAULT, "mach_make_memory_entry_64(%p) returns %{mach.errno}d", state, 0x12u);
                }

                v71 = xpc_dictionary_create_reply(v4);
                if (memory_entry_64)
                {
                  xpc_dictionary_set_uint64(v71, "status", memory_entry_64);
                }

                else
                {
                  xpc_dictionary_set_uint64(v71, "status", 0);
                  xpc_dictionary_set_mach_send();
                  xpc_dictionary_set_uint64(v71, "memory_size", *buf);
                }

                xpc_connection_send_message(*(message + 16), v71);
              }

              os_activity_scope_leave(&input);

              goto LABEL_65;
            }

            v66 = _gc_log_iokit();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              *state = 136315138;
              *&state[4] = v6;
              _os_log_impl(&dword_1D2C3B000, v66, OS_LOG_TYPE_DEFAULT, "Client received '%s' message with missing 'queue' argument", state, 0xCu);
            }

LABEL_75:

            xpc_connection_cancel(*(message + 16));
LABEL_84:
            os_activity_scope_leave(&input);

            goto LABEL_65;
          }

          v12 = _os_activity_create(&dword_1D2C3B000, "[IOGCFastPathProxyClient] CreateInputQueue", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
          *state = 0;
          *&state[8] = 0;
          os_activity_scope_enter(v12, state);
          if (*(message + 64))
          {
            input.opaque[0] = 0;
            *outputStruct = 0;
            object_handle[0] = 1;
            v40 = IOCFSerialize(&unk_1F4E36AB0, 0);
            v41 = v40;
            if (v40)
            {
              v42 = *(message + 64);
              v43 = CFDataGetBytePtr(v40);
              v44 = CFDataGetLength(v41);
              v45 = IOConnectCallMethod(v42, 2u, input.opaque, 1u, v43, v44, outputStruct, object_handle, 0, 0);
              v46 = _gc_log_iokit();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *&buf[4] = v45;
                _os_log_impl(&dword_1D2C3B000, v46, OS_LOG_TYPE_DEFAULT, "IOConnectCallMethod() returns %{mach.errno}d", buf, 8u);
              }

              v47 = xpc_dictionary_create_reply(v4);
              xpc_dictionary_set_uint64(v47, "status", v45);
              xpc_dictionary_set_uint64(v47, "port", *outputStruct);
              xpc_connection_send_message(*(message + 16), v47);
            }

            else
            {
              v47 = xpc_dictionary_create_reply(v4);
              xpc_dictionary_set_uint64(v47, "status", 0xFFFFFFFFE00002C9);
              xpc_connection_send_message(*(message + 16), v47);
            }

            os_activity_scope_leave(state);
            goto LABEL_65;
          }

LABEL_32:
          v24 = xpc_dictionary_create_reply(v4);
          xpc_dictionary_set_uint64(v24, "status", 0xFFFFFFFFE00002D8);
          xpc_connection_send_message(*(message + 16), v24);

          os_activity_scope_leave(state);
          goto LABEL_65;
        }

        v8 = _os_activity_create(&dword_1D2C3B000, "[IOGCFastPathProxyClient] Close", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
        *state = 0;
        *&state[8] = 0;
        os_activity_scope_enter(v8, state);
        v22 = *(message + 64);
        if (v22)
        {
          input.opaque[0] = 0;
          v19 = IOConnectCallMethod(v22, 1u, input.opaque, 1u, 0, 0, 0, 0, 0, 0);
          v20 = _gc_log_iokit();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *outputStruct = 67109120;
            *&outputStruct[4] = v19;
            _os_log_impl(&dword_1D2C3B000, v20, OS_LOG_TYPE_DEFAULT, "IOConnectCallMethod() returns %{mach.errno}d", outputStruct, 8u);
          }

LABEL_31:

          v23 = xpc_dictionary_create_reply(v4);
          xpc_dictionary_set_uint64(v23, "status", v19);
          xpc_connection_send_message(*(message + 16), v23);

          goto LABEL_92;
        }
      }

LABEL_44:
      v36 = xpc_dictionary_create_reply(v4);
      xpc_dictionary_set_uint64(v36, "status", 0xFFFFFFFFE00002D8);
      xpc_connection_send_message(*(message + 16), v36);

      goto LABEL_92;
    }

    v12 = _os_activity_create(&dword_1D2C3B000, "[IOGCFastPathProxyClient] mapSharedMemory", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    *state = 0;
    *&state[8] = 0;
    os_activity_scope_enter(v12, state);
    v13 = *(message + 64);
    if (!v13)
    {
      goto LABEL_32;
    }

    input.opaque[0] = 0;
    *outputStruct = 0;
    v14 = MEMORY[0x1E69E9A60];
    v15 = MEMORY[0x1D38AA7C0](v13, 0, *MEMORY[0x1E69E9A60], &input, outputStruct, 1);
    v16 = _gc_log_iokit();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&dword_1D2C3B000, v16, OS_LOG_TYPE_DEFAULT, "IOConnectMapMemory64() returns %{mach.errno}d", buf, 8u);
    }

    if (v15)
    {
      v17 = xpc_dictionary_create_reply(v4);
      xpc_dictionary_set_uint64(v17, "status", v15);
      xpc_connection_send_message(*(message + 16), v17);
    }

    else
    {
      object_handle[0] = 0;
      v37 = mach_make_memory_entry_64(*v14, outputStruct, input.opaque[0], 1, object_handle, 0);
      v38 = _gc_log_iokit();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v37;
        _os_log_impl(&dword_1D2C3B000, v38, OS_LOG_TYPE_DEFAULT, "mach_make_memory_entry_64() returns %{mach.errno}d", buf, 8u);
      }

      v39 = xpc_dictionary_create_reply(v4);
      if (v37)
      {
        xpc_dictionary_set_uint64(v39, "status", v37);
      }

      else
      {
        xpc_dictionary_set_uint64(v39, "status", 0);
        xpc_dictionary_set_mach_send();
        xpc_dictionary_set_uint64(v39, "memory_size", *outputStruct);
      }

      xpc_connection_send_message(*(message + 16), v39);
    }

    os_activity_scope_leave(state);
  }

LABEL_65:

  v54 = *MEMORY[0x1E69E9840];
}

- (_IOGCFastPathProxyClient)init
{
  [(_IOGCFastPathProxyClient *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = _gc_log_iokit();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1D2C3B000, v3, OS_LOG_TYPE_DEFAULT, "%@::dealloc", buf, 0xCu);
  }

  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
    v5 = self->_connection;
    self->_connection = 0;
  }

  v7.receiver = self;
  v7.super_class = _IOGCFastPathProxyClient;
  [(_IOGCFastPathProxyClient *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleMessage:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _gc_log_iokit();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_14(&dword_1D2C3B000, v3, v4, "Client received message without selector: %@", v5, v6, v7, v8, 2u);
  }

  xpc_connection_cancel(*(a1 + 16));
  v9 = *MEMORY[0x1E69E9840];
}

- (void)handleMessage:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _gc_log_iokit();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_14(&dword_1D2C3B000, v3, v4, "Client received message without unknown selector: %s", v5, v6, v7, v8, 2u);
  }

  xpc_connection_cancel(*(a1 + 16));
  v9 = *MEMORY[0x1E69E9840];
}

@end