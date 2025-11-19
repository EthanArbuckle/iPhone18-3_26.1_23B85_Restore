@interface _CDXPCContextCodecs
+ (BOOL)addKeyPaths:(id)a3 toDictionary:(id)a4 error:(id *)a5;
+ (BOOL)addRegistration:(id)a3 toDictionary:(id)a4 error:(id *)a5;
+ (BOOL)parseSubscribeToContextValueNotificationsEvent:(id)a3 registration:(id *)a4 deviceIDs:(id *)a5 error:(id *)a6;
+ (BOOL)parseUnsubscribeFromContextValueNotificationsEvent:(id)a3 registration:(id *)a4 deviceIDs:(id *)a5 error:(id *)a6;
+ (id)commonContextValueNotificationsEventWithType:(const char *)a3 registration:(id)a4 deviceIDs:(id)a5 error:(id *)a6;
+ (id)fetchPropertiesEventWithRemoteKeyPaths:(id)a3 error:(id *)a4;
+ (id)keyPathsFromDictionary:(id)a3 error:(id *)a4;
+ (id)keyPathsFromFetchPropertiesEvent:(id)a3 error:(id *)a4;
+ (id)registrationFromDictionary:(id)a3 error:(id *)a4;
+ (id)subscribeToContextValueNotificationsEventWithRegistration:(id)a3 deviceIDs:(id)a4 error:(id *)a5;
+ (id)subscribeToContextValueNotificationsReplyWithEvent:(id)a3 error:(id)a4;
+ (id)supportedClassesToUnarchive;
+ (id)unsubscribeFromContextValueNotificationsEventWithRegistration:(id)a3 deviceIDs:(id)a4 error:(id *)a5;
+ (id)unsubscribeFromContextValueNotificationsReplyWithEvent:(id)a3 error:(id)a4;
@end

@implementation _CDXPCContextCodecs

+ (BOOL)addRegistration:(id)a3 toDictionary:(id)a4 error:(id *)a5
{
  v7 = a4;
  v12 = 0;
  v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v12];
  v9 = v12;
  if (v8)
  {
    xpc_dictionary_set_data(v7, "registration", [v8 bytes], objc_msgSend(v8, "length"));
  }

  if (a5)
  {
    v10 = v9;
    *a5 = v9;
  }

  return v9 == 0;
}

+ (id)registrationFromDictionary:(id)a3 error:(id *)a4
{
  length = 0;
  data = xpc_dictionary_get_data(a3, "registration", &length);
  if (!data || ([MEMORY[0x1E695DEF0] dataWithBytes:data length:length], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6997A18] code:*MEMORY[0x1E6997A28] userInfo:0];
    v7 = 0;
    v8 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = v6;
  v12 = 0;
  v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v12];
  v9 = v12;
  if (a4)
  {
LABEL_6:
    v10 = v9;
    *a4 = v9;
  }

LABEL_7:

  return v8;
}

+ (BOOL)addKeyPaths:(id)a3 toDictionary:(id)a4 error:(id *)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  xdict = a4;
  xarray = xpc_array_create(0, 0);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    v11 = 0x1E6997000uLL;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        v14 = [v13 key];
        v15 = [v14 UTF8String];

        v16 = [v13 deviceID];
        v17 = [v16 UTF8String];

        if (v15)
        {
          v18 = v17 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (v18)
        {
          v21 = [*(v11 + 2312) contextChannel];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v19 = [v13 key];
            v20 = [v13 deviceID];
            *buf = 138412546;
            *&buf[4] = v19;
            *&buf[12] = 2112;
            *&buf[14] = v20;
            _os_log_error_impl(&dword_1A9611000, v21, OS_LOG_TYPE_ERROR, "Failed to convert string to UTF-8: %@/%@", buf, 0x16u);
          }
        }

        else
        {
          v21 = xpc_string_create(v15);
          v22 = xpc_string_create(v17);
          v23 = v22;
          if (v21)
          {
            v24 = v22 == 0;
          }

          else
          {
            v24 = 1;
          }

          if (v24)
          {
            v25 = [*(v11 + 2312) contextChannel];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v28 = [v13 key];
              v29 = [v13 deviceID];
              *buf = 138412546;
              *&buf[4] = v28;
              *&buf[12] = 2112;
              *&buf[14] = v29;
              _os_log_error_impl(&dword_1A9611000, v25, OS_LOG_TYPE_ERROR, "Failed to convert string to xpc string: %@/%@", buf, 0x16u);

              v11 = 0x1E6997000;
            }
          }

          else
          {
            *buf = xmmword_1E7886270;
            values[0] = v21;
            values[1] = v23;
            v26 = xpc_dictionary_create(buf, values, 2uLL);
            xpc_array_append_value(xarray, v26);

            for (j = 1; j != -1; --j)
            {
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v9);
  }

  if (!xpc_array_get_count(xarray))
  {
    v31 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6997A18] code:*MEMORY[0x1E6997A28] userInfo:0];
    v30 = xdict;
    v32 = a5;
    if (!a5)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v30 = xdict;
  xpc_dictionary_set_value(xdict, "keyPaths", xarray);
  v31 = 0;
  v32 = a5;
  if (a5)
  {
LABEL_27:
    v33 = v31;
    *v32 = v31;
  }

LABEL_28:

  v34 = *MEMORY[0x1E69E9840];
  return v31 == 0;
}

+ (id)keyPathsFromDictionary:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = xpc_dictionary_get_array(v5, "keyPaths");
  v7 = v6;
  if (v6)
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:xpc_array_get_count(v6)];
    if (!xpc_array_get_count(v7))
    {
      v22 = 0;
      goto LABEL_29;
    }

    v32 = v5;
    v33 = v8;
    v31 = a4;
    v9 = 0;
    v10 = MEMORY[0x1E69E9F10];
    while (1)
    {
      v11 = xpc_array_get_value(v7, v9);
      v12 = xpc_dictionary_get_value(v11, "key");
      v13 = xpc_dictionary_get_value(v11, "id");
      v14 = v13;
      if (!v12 || !v13 || MEMORY[0x1AC588A30](v12) != v10 || MEMORY[0x1AC588A30](v14) != v10)
      {
        break;
      }

      string_ptr = xpc_string_get_string_ptr(v12);
      v16 = xpc_string_get_string_ptr(v14);
      if (!string_ptr || (v17 = v16) == 0)
      {
        v25 = MEMORY[0x1AC588970](v11);
        v27 = [MEMORY[0x1E6997908] contextChannel];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          +[_CDXPCContextCodecs keyPathsFromDictionary:error:];
        }

        goto LABEL_23;
      }

      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string_ptr];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17];
      v20 = [_CDContextualKeyPath keyPathWithKey:v18];
      v21 = [_CDContextualKeyPath remoteKeyPathForKeyPath:v20 forDeviceID:v19];
      [v33 addObject:v21];

      if (++v9 >= xpc_array_get_count(v7))
      {
        v22 = 0;
        v5 = v32;
        v8 = v33;
        goto LABEL_29;
      }
    }

    v25 = MEMORY[0x1AC588970](v11);
    v26 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(_CDXPCContextCodecs *)v9 keyPathsFromDictionary:v25 error:v26];
    }

LABEL_23:
    v5 = v32;
    if (v25)
    {
      free(v25);
    }

    a4 = v31;
  }

  else
  {
    v23 = MEMORY[0x1AC588970](v5);
    v24 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      +[_CDXPCContextCodecs keyPathsFromDictionary:error:];
    }

    if (v23)
    {
      free(v23);
    }
  }

  v28 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6997A18] code:*MEMORY[0x1E6997A30] userInfo:0];
  v22 = v28;
  if (a4)
  {
    v29 = v28;
    v8 = 0;
    *a4 = v22;
  }

  else
  {
    v8 = 0;
  }

LABEL_29:

  return v8;
}

+ (id)fetchPropertiesEventWithRemoteKeyPaths:(id)a3 error:(id *)a4
{
  keys[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  keys[0] = "msgtype";
  v7 = xpc_string_create("fetch-properties");
  values = v7;
  v8 = xpc_dictionary_create(keys, &values, 1uLL);
  v14 = 0;
  [a1 addKeyPaths:v6 toDictionary:v8 error:&v14];

  v9 = v14;
  v10 = v9;
  if (a4)
  {
    v11 = v9;
    *a4 = v10;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)keyPathsFromFetchPropertiesEvent:(id)a3 error:(id *)a4
{
  v6 = a3;
  string = xpc_dictionary_get_string(v6, "msgtype");
  if (string)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    v9 = [v8 isEqualToString:@"fetch-properties"];

    if (v9)
    {
      v15 = 0;
      v10 = [a1 keyPathsFromDictionary:v6 error:&v15];
      v11 = v15;
      if (!a4)
      {
        goto LABEL_11;
      }

LABEL_10:
      v11 = v11;
      *a4 = v11;
      goto LABEL_11;
    }
  }

  v12 = MEMORY[0x1AC588970](v6);
  v13 = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    +[_CDXPCContextCodecs keyPathsFromFetchPropertiesEvent:error:];
  }

  if (v12)
  {
    free(v12);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6997A18] code:*MEMORY[0x1E6997A30] userInfo:0];
  v10 = 0;
  if (a4)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v10;
}

+ (id)commonContextValueNotificationsEventWithType:(const char *)a3 registration:(id)a4 deviceIDs:(id)a5 error:(id *)a6
{
  keys[1] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a4;
  keys[0] = "msgtype";
  v12 = xpc_string_create(a3);
  values = v12;
  v13 = xpc_dictionary_create(keys, &values, 1uLL);
  v22 = 0;
  v14 = [a1 addRegistration:v11 toDictionary:v13 error:&v22];

  v15 = v22;
  v16 = v15;
  if (v14)
  {
    v21 = v15;
    [a1 addDeviceIDs:v10 toDictionary:v13 error:&v21];
    v17 = v21;

    v16 = v17;
  }

  if (v16)
  {

    v13 = 0;
  }

  if (a6)
  {
    v18 = v16;
    *a6 = v16;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)subscribeToContextValueNotificationsEventWithRegistration:(id)a3 deviceIDs:(id)a4 error:(id *)a5
{
  v9 = 0;
  v6 = [a1 commonContextValueNotificationsEventWithType:"subscribe" registration:a3 deviceIDs:a4 error:&v9];
  v7 = v9;
  if (a5)
  {
    v7 = v7;
    *a5 = v7;
  }

  return v6;
}

+ (BOOL)parseSubscribeToContextValueNotificationsEvent:(id)a3 registration:(id *)a4 deviceIDs:(id *)a5 error:(id *)a6
{
  v10 = a3;
  string = xpc_dictionary_get_string(v10, "msgtype");
  if (!string || ([MEMORY[0x1E696AEC0] stringWithUTF8String:string], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"subscribe"), v12, !v13))
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6997A18] code:*MEMORY[0x1E6997A30] userInfo:0];
    goto LABEL_7;
  }

  if (a4)
  {
    v24 = 0;
    v14 = [a1 registrationFromDictionary:v10 error:&v24];
    v15 = v24;
    v16 = v14;
    *a4 = v14;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = 0;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  if (!v15)
  {
    v23 = 0;
    v21 = [a1 deviceIDsFromDictionary:v10 error:&v23];
    v15 = v23;
    v22 = v21;
    *a5 = v21;
  }

LABEL_7:
  if (v15)
  {
    v17 = MEMORY[0x1AC588970](v10);
    v18 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[_CDXPCContextCodecs parseSubscribeToContextValueNotificationsEvent:registration:deviceIDs:error:];
    }

    if (v17)
    {
      free(v17);
    }

    if (a6)
    {
      v19 = v15;
      *a6 = v15;
    }
  }

  return v15 == 0;
}

+ (id)subscribeToContextValueNotificationsReplyWithEvent:(id)a3 error:(id)a4
{
  v6 = a4;
  reply = xpc_dictionary_create_reply(a3);
  if (v6)
  {
    [a1 addError:v6 toReply:reply];
  }

  return reply;
}

+ (id)unsubscribeFromContextValueNotificationsEventWithRegistration:(id)a3 deviceIDs:(id)a4 error:(id *)a5
{
  v9 = 0;
  v6 = [a1 commonContextValueNotificationsEventWithType:"unsubscribe" registration:a3 deviceIDs:a4 error:&v9];
  v7 = v9;
  if (a5)
  {
    v7 = v7;
    *a5 = v7;
  }

  return v6;
}

+ (BOOL)parseUnsubscribeFromContextValueNotificationsEvent:(id)a3 registration:(id *)a4 deviceIDs:(id *)a5 error:(id *)a6
{
  v10 = a3;
  string = xpc_dictionary_get_string(v10, "msgtype");
  if (!string || ([MEMORY[0x1E696AEC0] stringWithUTF8String:string], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"unsubscribe"), v12, !v13))
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6997A18] code:*MEMORY[0x1E6997A30] userInfo:0];
    goto LABEL_7;
  }

  if (a4)
  {
    v24 = 0;
    v14 = [a1 registrationFromDictionary:v10 error:&v24];
    v15 = v24;
    v16 = v14;
    *a4 = v14;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = 0;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  if (!v15)
  {
    v23 = 0;
    v21 = [a1 deviceIDsFromDictionary:v10 error:&v23];
    v15 = v23;
    v22 = v21;
    *a5 = v21;
  }

LABEL_7:
  if (v15)
  {
    v17 = MEMORY[0x1AC588970](v10);
    v18 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[_CDXPCContextCodecs parseSubscribeToContextValueNotificationsEvent:registration:deviceIDs:error:];
    }

    if (v17)
    {
      free(v17);
    }

    if (a6)
    {
      v19 = v15;
      *a6 = v15;
    }
  }

  return v15 == 0;
}

+ (id)unsubscribeFromContextValueNotificationsReplyWithEvent:(id)a3 error:(id)a4
{
  v6 = a4;
  reply = xpc_dictionary_create_reply(a3);
  if (v6)
  {
    [a1 addError:v6 toReply:reply];
  }

  return reply;
}

+ (id)supportedClassesToUnarchive
{
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS____CDXPCContextCodecs;
  v2 = objc_msgSendSuper2(&v10, sel_supportedClassesToUnarchive);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50___CDXPCContextCodecs_supportedClassesToUnarchive__block_invoke;
  block[3] = &unk_1E7886288;
  v9 = v2;
  v3 = supportedClassesToUnarchive_initialized;
  v4 = v2;
  if (v3 != -1)
  {
    dispatch_once(&supportedClassesToUnarchive_initialized, block);
  }

  v5 = supportedClassesToUnarchive_supportedClasses;
  v6 = supportedClassesToUnarchive_supportedClasses;

  return v5;
}

+ (void)keyPathsFromDictionary:(os_log_t)log error:.cold.1(int a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109378;
  v4[1] = a1;
  v5 = 2080;
  v6 = a2;
  _os_log_error_impl(&dword_1A9611000, log, OS_LOG_TYPE_ERROR, "Unable to fetch strings from array at index %d: %s", v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)keyPathsFromDictionary:error:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "Failed to perform string conversion: %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)keyPathsFromDictionary:error:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "Unable to fetch key paths from dictionary: %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)keyPathsFromFetchPropertiesEvent:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "Unknown event type in dictionary: %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)parseSubscribeToContextValueNotificationsEvent:registration:deviceIDs:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "Invalid event: %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end