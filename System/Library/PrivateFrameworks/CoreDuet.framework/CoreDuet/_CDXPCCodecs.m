@interface _CDXPCCodecs
+ (BOOL)addDeviceIDs:(id)a3 toDictionary:(id)a4 error:(id *)a5;
+ (BOOL)keepAliveFromKeepAliveEvent:(id)a3 error:(id *)a4;
+ (BOOL)parseNotificationEvent:(id)a3 registrationIdentifier:(id *)a4 info:(id *)a5 error:(id *)a6;
+ (id)_log;
+ (id)deviceIDsFromDictionary:(id)a3 error:(id *)a4;
+ (id)errorFromReply:(id)a3;
+ (id)fetchPropertiesReplyWithEvent:(id)a3 error:(id)a4;
+ (id)fetchProxySourceDeviceUUIDEvent;
+ (id)fetchProxySourceDeviceUUIDReplyWithEvent:(id)a3 sourceDeviceUUID:(id)a4 error:(id)a5;
+ (id)keepAliveEventWithKeepAlive:(BOOL)a3 error:(id *)a4;
+ (id)keepAliveReplyWithEvent:(id)a3 error:(id)a4;
+ (id)messageTypeFromEvent:(id)a3;
+ (id)notificationEventWithRegistrationIdentifier:(id)a3 info:(id)a4 error:(id *)a5;
+ (id)parseProxySourceDeviceUUIDEvent:(id)a3 error:(id *)a4;
+ (id)requestActivateDevicesEvent;
+ (id)requestActivateDevicesReplyWithEvent:(id)a3 error:(id)a4;
+ (id)supportedClassesToUnarchive;
+ (int64_t)eventTypeWithEvent:(id)a3;
+ (void)addError:(id)a3 toReply:(id)a4;
@end

@implementation _CDXPCCodecs

+ (id)_log
{
  if (_log_onceToken != -1)
  {
    +[_CDXPCCodecs _log];
  }

  v3 = _log_log;

  return v3;
}

+ (BOOL)addDeviceIDs:(id)a3 toDictionary:(id)a4 error:(id *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  xdict = a4;
  v7 = xpc_array_create(0, 0);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [v13 UTF8String];
        if (v14)
        {
          v15 = xpc_string_create(v14);
          if (v15)
          {
            xpc_array_append_value(v7, v15);
          }

          else
          {
            v16 = +[_CDXPCCodecs _log];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v30 = v13;
              _os_log_error_impl(&dword_191750000, v16, OS_LOG_TYPE_ERROR, "Failed to convert string to xpc string: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v15 = +[_CDXPCCodecs _log];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v30 = v13;
            _os_log_error_impl(&dword_191750000, v15, OS_LOG_TYPE_ERROR, "Failed to convert string to UTF-8: %@", buf, 0xCu);
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v10);
  }

  if (!xpc_array_get_count(v7))
  {
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduetd" code:7 userInfo:0];
    v17 = xdict;
    v19 = a5;
    if (!a5)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v17 = xdict;
  xpc_dictionary_set_value(xdict, "ids", v7);
  v18 = 0;
  v19 = a5;
  if (a5)
  {
LABEL_18:
    v20 = v18;
    *v19 = v18;
  }

LABEL_19:

  v21 = *MEMORY[0x1E69E9840];
  return v18 == 0;
}

+ (id)deviceIDsFromDictionary:(id)a3 error:(id *)a4
{
  v5 = xpc_dictionary_get_array(a3, "ids");
  if (v5)
  {
    v6 = objc_opt_new();
    if (!xpc_array_get_count(v5))
    {
      goto LABEL_12;
    }

    v7 = 0;
    v8 = 0;
    v9 = MEMORY[0x1E69E9F10];
    do
    {
      v10 = xpc_array_get_value(v5, v8);
      v11 = v10;
      if (v10 && MEMORY[0x193B01300](v10) == v9 && (string_ptr = xpc_string_get_string_ptr(v11)) != 0)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string_ptr];
        [v6 addObject:v13];
      }

      else
      {
        v7 = 1;
      }

      ++v8;
    }

    while (v8 < xpc_array_get_count(v5));
    if ((v7 & 1) == 0)
    {
LABEL_12:
      v14 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v6 = 0;
  }

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduetd" code:6 userInfo:0];
  v14 = v15;
  if (a4)
  {
    v16 = v15;
    v6 = 0;
    *a4 = v14;
  }

  else
  {
    v6 = 0;
  }

LABEL_17:

  return v6;
}

+ (void)addError:(id)a3 toReply:(id)a4
{
  if (a3 && a4)
  {
    xdict = a4;
    v5 = a3;
    v6 = [v5 domain];
    v7 = [v6 UTF8String];

    xpc_dictionary_set_string(xdict, "error_domain", v7);
    v8 = [v5 code];

    xpc_dictionary_set_int64(xdict, "error_code", v8);
  }
}

+ (id)errorFromReply:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && (string = xpc_dictionary_get_string(v3, "error_domain")) != 0)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", string];
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:v6 code:xpc_dictionary_get_int64(v4 userInfo:{"error_code"), 0}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (int64_t)eventTypeWithEvent:(id)a3
{
  v3 = a3;
  if (eventTypeWithEvent__initialized != -1)
  {
    +[_CDXPCCodecs eventTypeWithEvent:];
  }

  string = xpc_dictionary_get_string(v3, "msgtype");
  if (string)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    v6 = [eventTypeWithEvent__eventTypeByMsgType objectForKeyedSubscript:v5];
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)fetchPropertiesReplyWithEvent:(id)a3 error:(id)a4
{
  v6 = a4;
  reply = xpc_dictionary_create_reply(a3);
  if (v6)
  {
    [a1 addError:v6 toReply:reply];
  }

  return reply;
}

+ (id)keepAliveEventWithKeepAlive:(BOOL)a3 error:(id *)a4
{
  keys[1] = *MEMORY[0x1E69E9840];
  values = xpc_string_create("keep-alive");
  keys[0] = "msgtype";
  v6 = values;
  v7 = xpc_dictionary_create(keys, &values, 1uLL);
  xpc_dictionary_set_BOOL(v7, "keepAlive", a3);
  if (a4)
  {
    *a4 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (BOOL)keepAliveFromKeepAliveEvent:(id)a3 error:(id *)a4
{
  v5 = a3;
  string = xpc_dictionary_get_string(v5, "msgtype");
  if (string)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    v8 = [v7 isEqualToString:@"keep-alive"];

    if (v8)
    {
      v9 = xpc_dictionary_get_BOOL(v5, "keepAlive");
      v10 = 0;
      if (!a4)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  v11 = MEMORY[0x193B01150](v5);
  v12 = +[_CDXPCCodecs _log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    +[_CDXPCCodecs keepAliveFromKeepAliveEvent:error:];
  }

  if (v11)
  {
    free(v11);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduetd" code:6 userInfo:0];
  v9 = 0;
  if (a4)
  {
LABEL_10:
    v10 = v10;
    *a4 = v10;
  }

LABEL_11:

  return v9;
}

+ (id)keepAliveReplyWithEvent:(id)a3 error:(id)a4
{
  v6 = a4;
  reply = xpc_dictionary_create_reply(a3);
  if (v6)
  {
    [a1 addError:v6 toReply:reply];
  }

  return reply;
}

+ (id)notificationEventWithRegistrationIdentifier:(id)a3 info:(id)a4 error:(id *)a5
{
  keys[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  keys[0] = "msgtype";
  v9 = xpc_string_create("notification");
  values = v9;
  v10 = xpc_dictionary_create(keys, &values, 1uLL);
  v11 = [v8 UTF8String];

  xpc_dictionary_set_string(v10, "id", v11);
  v18 = 0;
  v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:0 error:&v18];
  v13 = v18;
  if (v12)
  {
    xpc_dictionary_set_data(v10, "info", [v12 bytes], objc_msgSend(v12, "length"));
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v17 = +[_CDXPCCodecs _log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    +[_CDXPCCodecs notificationEventWithRegistrationIdentifier:info:error:];
  }

  v10 = 0;
  if (a5)
  {
LABEL_3:
    v14 = v13;
    *a5 = v13;
  }

LABEL_4:

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (BOOL)parseNotificationEvent:(id)a3 registrationIdentifier:(id *)a4 info:(id *)a5 error:(id *)a6
{
  v10 = a3;
  string = xpc_dictionary_get_string(v10, "msgtype");
  if (string)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    v13 = [v12 isEqualToString:@"notification"];

    if (v13)
    {
      if (a4)
      {
        v14 = xpc_dictionary_get_string(v10, "id");
        if (v14)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", v14];
          v16 = 0;
        }

        else
        {
          v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduetd" code:6 userInfo:0];
          v15 = 0;
        }

        v18 = v15;
        *a4 = v15;
        length = 0;
        data = xpc_dictionary_get_data(v10, "info", &length);
        if (data)
        {
          v20 = [MEMORY[0x1E695DEF0] dataWithBytes:data length:length];
          v21 = [a1 supportedClassesToUnarchive];
          v30 = v16;
          v22 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v21 fromData:v20 error:&v30];
          v17 = v30;

          if (!v22)
          {
            v23 = +[_CDXPCCodecs _log];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
            {
              +[_CDXPCCodecs parseNotificationEvent:registrationIdentifier:info:error:];
            }
          }

          v24 = v22;
          *a5 = v22;

          v16 = v22;
        }

        else
        {
          v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduetd" code:6 userInfo:0];
        }

        if (v17)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v17 = 0;
      }

LABEL_24:
      v28 = 1;
      goto LABEL_26;
    }
  }

  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduetd" code:6 userInfo:0];
  if (!v17)
  {
    goto LABEL_24;
  }

LABEL_18:
  v25 = MEMORY[0x193B01150](v10);
  v26 = +[_CDXPCCodecs _log];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    +[_CDXPCCodecs parseNotificationEvent:registrationIdentifier:info:error:];
  }

  if (v25)
  {
    free(v25);
  }

  if (a6)
  {
    v27 = v17;
    v28 = 0;
    *a6 = v17;
  }

  else
  {
    v28 = 0;
  }

LABEL_26:

  return v28;
}

+ (id)fetchProxySourceDeviceUUIDEvent
{
  keys[1] = *MEMORY[0x1E69E9840];
  values = xpc_string_create("fetch-uuid");
  keys[0] = "msgtype";
  v2 = values;
  v3 = xpc_dictionary_create(keys, &values, 1uLL);

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)fetchProxySourceDeviceUUIDReplyWithEvent:(id)a3 sourceDeviceUUID:(id)a4 error:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  reply = xpc_dictionary_create_reply(a3);
  if (v9)
  {
    [a1 addError:v9 toReply:reply];
  }

  else
  {
    v11 = xpc_string_create("fetch-uuid");
    xpc_dictionary_set_value(reply, "msgtype", v11);
    *uuid = 0;
    v15 = 0;
    [v8 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(reply, "uuid", uuid);
  }

  v12 = *MEMORY[0x1E69E9840];

  return reply;
}

+ (id)parseProxySourceDeviceUUIDEvent:(id)a3 error:(id *)a4
{
  v5 = a3;
  string = xpc_dictionary_get_string(v5, "msgtype");
  if (string && ([MEMORY[0x1E696AEC0] stringWithUTF8String:string], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"fetch-uuid"), v7, v8) && (v9 = xpc_dictionary_get_string(v5, "uuid")) != 0 && (v10 = objc_msgSend(objc_alloc(MEMORY[0x1E696AFB0]), "initWithUUIDBytes:", v9)) != 0)
  {
    v11 = v10;
    v12 = 0;
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduetd" code:6 userInfo:0];
    if (!v12)
    {
      goto LABEL_13;
    }

    v13 = MEMORY[0x193B01150](v5);
    v14 = +[_CDXPCCodecs _log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[_CDXPCCodecs parseNotificationEvent:registrationIdentifier:info:error:];
    }

    if (v13)
    {
      free(v13);
    }

    if (a4)
    {
      v15 = v12;
      v11 = 0;
      *a4 = v12;
    }

    else
    {
LABEL_13:
      v11 = 0;
    }
  }

  return v11;
}

+ (id)requestActivateDevicesEvent
{
  keys[1] = *MEMORY[0x1E69E9840];
  values = xpc_string_create("activate-devices");
  keys[0] = "msgtype";
  v2 = values;
  v3 = xpc_dictionary_create(keys, &values, 1uLL);

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)requestActivateDevicesReplyWithEvent:(id)a3 error:(id)a4
{
  v6 = a4;
  reply = xpc_dictionary_create_reply(a3);
  if (v6)
  {
    [a1 addError:v6 toReply:reply];
  }

  else
  {
    v8 = xpc_string_create("activate-devices");
    xpc_dictionary_set_value(reply, "msgtype", v8);
  }

  return reply;
}

+ (id)messageTypeFromEvent:(id)a3
{
  string = xpc_dictionary_get_string(a3, "msgtype");
  if (string)
  {
    string = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
  }

  return string;
}

+ (id)supportedClassesToUnarchive
{
  if (supportedClassesToUnarchive_initialized != -1)
  {
    +[_CDXPCCodecs supportedClassesToUnarchive];
  }

  v3 = supportedClassesToUnarchive_supportedClasses;

  return v3;
}

+ (void)keepAliveFromKeepAliveEvent:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Unknown event type in dictionary: %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)notificationEventWithRegistrationIdentifier:info:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_fault_impl(&dword_191750000, v1, OS_LOG_TYPE_FAULT, "Unable to encode info %@: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)parseNotificationEvent:registrationIdentifier:info:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_191750000, v0, OS_LOG_TYPE_FAULT, "Unable to decode info: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)parseNotificationEvent:registrationIdentifier:info:error:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Invalid event: %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end