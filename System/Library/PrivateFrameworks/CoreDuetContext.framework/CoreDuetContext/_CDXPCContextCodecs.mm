@interface _CDXPCContextCodecs
+ (BOOL)addKeyPaths:(id)paths toDictionary:(id)dictionary error:(id *)error;
+ (BOOL)addRegistration:(id)registration toDictionary:(id)dictionary error:(id *)error;
+ (BOOL)parseSubscribeToContextValueNotificationsEvent:(id)event registration:(id *)registration deviceIDs:(id *)ds error:(id *)error;
+ (BOOL)parseUnsubscribeFromContextValueNotificationsEvent:(id)event registration:(id *)registration deviceIDs:(id *)ds error:(id *)error;
+ (id)commonContextValueNotificationsEventWithType:(const char *)type registration:(id)registration deviceIDs:(id)ds error:(id *)error;
+ (id)fetchPropertiesEventWithRemoteKeyPaths:(id)paths error:(id *)error;
+ (id)keyPathsFromDictionary:(id)dictionary error:(id *)error;
+ (id)keyPathsFromFetchPropertiesEvent:(id)event error:(id *)error;
+ (id)registrationFromDictionary:(id)dictionary error:(id *)error;
+ (id)subscribeToContextValueNotificationsEventWithRegistration:(id)registration deviceIDs:(id)ds error:(id *)error;
+ (id)subscribeToContextValueNotificationsReplyWithEvent:(id)event error:(id)error;
+ (id)supportedClassesToUnarchive;
+ (id)unsubscribeFromContextValueNotificationsEventWithRegistration:(id)registration deviceIDs:(id)ds error:(id *)error;
+ (id)unsubscribeFromContextValueNotificationsReplyWithEvent:(id)event error:(id)error;
@end

@implementation _CDXPCContextCodecs

+ (BOOL)addRegistration:(id)registration toDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v12 = 0;
  v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:registration requiringSecureCoding:1 error:&v12];
  v9 = v12;
  if (v8)
  {
    xpc_dictionary_set_data(dictionaryCopy, "registration", [v8 bytes], objc_msgSend(v8, "length"));
  }

  if (error)
  {
    v10 = v9;
    *error = v9;
  }

  return v9 == 0;
}

+ (id)registrationFromDictionary:(id)dictionary error:(id *)error
{
  length = 0;
  data = xpc_dictionary_get_data(dictionary, "registration", &length);
  if (!data || ([MEMORY[0x1E695DEF0] dataWithBytes:data length:length], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6997A18] code:*MEMORY[0x1E6997A28] userInfo:0];
    v7 = 0;
    v8 = 0;
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = v6;
  v12 = 0;
  v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v12];
  v9 = v12;
  if (error)
  {
LABEL_6:
    v10 = v9;
    *error = v9;
  }

LABEL_7:

  return v8;
}

+ (BOOL)addKeyPaths:(id)paths toDictionary:(id)dictionary error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  xdict = dictionary;
  xarray = xpc_array_create(0, 0);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = pathsCopy;
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
        uTF8String = [v14 UTF8String];

        deviceID = [v13 deviceID];
        uTF8String2 = [deviceID UTF8String];

        if (uTF8String)
        {
          v18 = uTF8String2 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (v18)
        {
          contextChannel = [*(v11 + 2312) contextChannel];
          if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_ERROR))
          {
            v19 = [v13 key];
            deviceID2 = [v13 deviceID];
            *buf = 138412546;
            *&buf[4] = v19;
            *&buf[12] = 2112;
            *&buf[14] = deviceID2;
            _os_log_error_impl(&dword_1A9611000, contextChannel, OS_LOG_TYPE_ERROR, "Failed to convert string to UTF-8: %@/%@", buf, 0x16u);
          }
        }

        else
        {
          contextChannel = xpc_string_create(uTF8String);
          v22 = xpc_string_create(uTF8String2);
          v23 = v22;
          if (contextChannel)
          {
            v24 = v22 == 0;
          }

          else
          {
            v24 = 1;
          }

          if (v24)
          {
            contextChannel2 = [*(v11 + 2312) contextChannel];
            if (os_log_type_enabled(contextChannel2, OS_LOG_TYPE_ERROR))
            {
              v28 = [v13 key];
              deviceID3 = [v13 deviceID];
              *buf = 138412546;
              *&buf[4] = v28;
              *&buf[12] = 2112;
              *&buf[14] = deviceID3;
              _os_log_error_impl(&dword_1A9611000, contextChannel2, OS_LOG_TYPE_ERROR, "Failed to convert string to xpc string: %@/%@", buf, 0x16u);

              v11 = 0x1E6997000;
            }
          }

          else
          {
            *buf = xmmword_1E7886270;
            values[0] = contextChannel;
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
    errorCopy2 = error;
    if (!error)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v30 = xdict;
  xpc_dictionary_set_value(xdict, "keyPaths", xarray);
  v31 = 0;
  errorCopy2 = error;
  if (error)
  {
LABEL_27:
    v33 = v31;
    *errorCopy2 = v31;
  }

LABEL_28:

  v34 = *MEMORY[0x1E69E9840];
  return v31 == 0;
}

+ (id)keyPathsFromDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v6 = xpc_dictionary_get_array(dictionaryCopy, "keyPaths");
  v7 = v6;
  if (v6)
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:xpc_array_get_count(v6)];
    if (!xpc_array_get_count(v7))
    {
      v22 = 0;
      goto LABEL_29;
    }

    v32 = dictionaryCopy;
    v33 = v8;
    errorCopy = error;
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
        contextChannel = [MEMORY[0x1E6997908] contextChannel];
        if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_ERROR))
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
        dictionaryCopy = v32;
        v8 = v33;
        goto LABEL_29;
      }
    }

    v25 = MEMORY[0x1AC588970](v11);
    contextChannel2 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(contextChannel2, OS_LOG_TYPE_ERROR))
    {
      [(_CDXPCContextCodecs *)v9 keyPathsFromDictionary:v25 error:contextChannel2];
    }

LABEL_23:
    dictionaryCopy = v32;
    if (v25)
    {
      free(v25);
    }

    error = errorCopy;
  }

  else
  {
    v23 = MEMORY[0x1AC588970](dictionaryCopy);
    contextChannel3 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(contextChannel3, OS_LOG_TYPE_ERROR))
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
  if (error)
  {
    v29 = v28;
    v8 = 0;
    *error = v22;
  }

  else
  {
    v8 = 0;
  }

LABEL_29:

  return v8;
}

+ (id)fetchPropertiesEventWithRemoteKeyPaths:(id)paths error:(id *)error
{
  keys[1] = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  keys[0] = "msgtype";
  v7 = xpc_string_create("fetch-properties");
  values = v7;
  v8 = xpc_dictionary_create(keys, &values, 1uLL);
  v14 = 0;
  [self addKeyPaths:pathsCopy toDictionary:v8 error:&v14];

  v9 = v14;
  v10 = v9;
  if (error)
  {
    v11 = v9;
    *error = v10;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)keyPathsFromFetchPropertiesEvent:(id)event error:(id *)error
{
  eventCopy = event;
  string = xpc_dictionary_get_string(eventCopy, "msgtype");
  if (string)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    v9 = [v8 isEqualToString:@"fetch-properties"];

    if (v9)
    {
      v15 = 0;
      v10 = [self keyPathsFromDictionary:eventCopy error:&v15];
      v11 = v15;
      if (!error)
      {
        goto LABEL_11;
      }

LABEL_10:
      v11 = v11;
      *error = v11;
      goto LABEL_11;
    }
  }

  v12 = MEMORY[0x1AC588970](eventCopy);
  contextChannel = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_ERROR))
  {
    +[_CDXPCContextCodecs keyPathsFromFetchPropertiesEvent:error:];
  }

  if (v12)
  {
    free(v12);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6997A18] code:*MEMORY[0x1E6997A30] userInfo:0];
  v10 = 0;
  if (error)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v10;
}

+ (id)commonContextValueNotificationsEventWithType:(const char *)type registration:(id)registration deviceIDs:(id)ds error:(id *)error
{
  keys[1] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  registrationCopy = registration;
  keys[0] = "msgtype";
  v12 = xpc_string_create(type);
  values = v12;
  v13 = xpc_dictionary_create(keys, &values, 1uLL);
  v22 = 0;
  v14 = [self addRegistration:registrationCopy toDictionary:v13 error:&v22];

  v15 = v22;
  v16 = v15;
  if (v14)
  {
    v21 = v15;
    [self addDeviceIDs:dsCopy toDictionary:v13 error:&v21];
    v17 = v21;

    v16 = v17;
  }

  if (v16)
  {

    v13 = 0;
  }

  if (error)
  {
    v18 = v16;
    *error = v16;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)subscribeToContextValueNotificationsEventWithRegistration:(id)registration deviceIDs:(id)ds error:(id *)error
{
  v9 = 0;
  v6 = [self commonContextValueNotificationsEventWithType:"subscribe" registration:registration deviceIDs:ds error:&v9];
  v7 = v9;
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  return v6;
}

+ (BOOL)parseSubscribeToContextValueNotificationsEvent:(id)event registration:(id *)registration deviceIDs:(id *)ds error:(id *)error
{
  eventCopy = event;
  string = xpc_dictionary_get_string(eventCopy, "msgtype");
  if (!string || ([MEMORY[0x1E696AEC0] stringWithUTF8String:string], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"subscribe"), v12, !v13))
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6997A18] code:*MEMORY[0x1E6997A30] userInfo:0];
    goto LABEL_7;
  }

  if (registration)
  {
    v24 = 0;
    v14 = [self registrationFromDictionary:eventCopy error:&v24];
    v15 = v24;
    v16 = v14;
    *registration = v14;
    if (!ds)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = 0;
    if (!ds)
    {
      goto LABEL_7;
    }
  }

  if (!v15)
  {
    v23 = 0;
    v21 = [self deviceIDsFromDictionary:eventCopy error:&v23];
    v15 = v23;
    v22 = v21;
    *ds = v21;
  }

LABEL_7:
  if (v15)
  {
    v17 = MEMORY[0x1AC588970](eventCopy);
    contextChannel = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_ERROR))
    {
      +[_CDXPCContextCodecs parseSubscribeToContextValueNotificationsEvent:registration:deviceIDs:error:];
    }

    if (v17)
    {
      free(v17);
    }

    if (error)
    {
      v19 = v15;
      *error = v15;
    }
  }

  return v15 == 0;
}

+ (id)subscribeToContextValueNotificationsReplyWithEvent:(id)event error:(id)error
{
  errorCopy = error;
  reply = xpc_dictionary_create_reply(event);
  if (errorCopy)
  {
    [self addError:errorCopy toReply:reply];
  }

  return reply;
}

+ (id)unsubscribeFromContextValueNotificationsEventWithRegistration:(id)registration deviceIDs:(id)ds error:(id *)error
{
  v9 = 0;
  v6 = [self commonContextValueNotificationsEventWithType:"unsubscribe" registration:registration deviceIDs:ds error:&v9];
  v7 = v9;
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  return v6;
}

+ (BOOL)parseUnsubscribeFromContextValueNotificationsEvent:(id)event registration:(id *)registration deviceIDs:(id *)ds error:(id *)error
{
  eventCopy = event;
  string = xpc_dictionary_get_string(eventCopy, "msgtype");
  if (!string || ([MEMORY[0x1E696AEC0] stringWithUTF8String:string], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"unsubscribe"), v12, !v13))
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6997A18] code:*MEMORY[0x1E6997A30] userInfo:0];
    goto LABEL_7;
  }

  if (registration)
  {
    v24 = 0;
    v14 = [self registrationFromDictionary:eventCopy error:&v24];
    v15 = v24;
    v16 = v14;
    *registration = v14;
    if (!ds)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = 0;
    if (!ds)
    {
      goto LABEL_7;
    }
  }

  if (!v15)
  {
    v23 = 0;
    v21 = [self deviceIDsFromDictionary:eventCopy error:&v23];
    v15 = v23;
    v22 = v21;
    *ds = v21;
  }

LABEL_7:
  if (v15)
  {
    v17 = MEMORY[0x1AC588970](eventCopy);
    contextChannel = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_ERROR))
    {
      +[_CDXPCContextCodecs parseSubscribeToContextValueNotificationsEvent:registration:deviceIDs:error:];
    }

    if (v17)
    {
      free(v17);
    }

    if (error)
    {
      v19 = v15;
      *error = v15;
    }
  }

  return v15 == 0;
}

+ (id)unsubscribeFromContextValueNotificationsReplyWithEvent:(id)event error:(id)error
{
  errorCopy = error;
  reply = xpc_dictionary_create_reply(event);
  if (errorCopy)
  {
    [self addError:errorCopy toReply:reply];
  }

  return reply;
}

+ (id)supportedClassesToUnarchive
{
  v10.receiver = self;
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