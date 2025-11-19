@interface OSADefaults
+ (BOOL)BOOLForKey:(id)a3;
+ (id)dictionaryRepresentation;
+ (id)objectForKey:(id)a3;
+ (void)sendOperation:(unint64_t)a3 forKey:(id)a4 withBlock:(id)a5;
+ (void)setBool:(BOOL)a3 forKey:(id)a4;
+ (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation OSADefaults

+ (BOOL)BOOLForKey:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__OSADefaults_BOOLForKey___block_invoke;
  v6[3] = &unk_1E7A27258;
  v6[4] = &v7;
  [OSADefaults sendOperation:0 forKey:v3 withBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

BOOL __26__OSADefaults_BOOLForKey___block_invoke(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_BOOL(xdict, "defaults_value");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (void)setBool:(BOOL)a3 forKey:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__OSADefaults_setBool_forKey___block_invoke;
  v4[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5 = a3;
  [OSADefaults sendOperation:1 forKey:a4 withBlock:v4];
}

+ (id)objectForKey:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__OSADefaults_objectForKey___block_invoke;
  v6[3] = &unk_1E7A27258;
  v6[4] = &v7;
  [OSADefaults sendOperation:2 forKey:v3 withBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __28__OSADefaults_objectForKey___block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "defaults_value");
  if (v3)
  {
    v7 = v3;
    v4 = xpc2ns(v3);
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v7;
  }
}

+ (void)setObject:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = ns2xpc(v5);
    v8 = v7;
    if (v7)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __32__OSADefaults_setObject_forKey___block_invoke;
      v9[3] = &unk_1E7A272A0;
      v10 = v7;
      [OSADefaults sendOperation:3 forKey:v6 withBlock:v9];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [OSADefaults setObject:v5 forKey:?];
    }
  }

  else
  {
    [OSADefaults sendOperation:3 forKey:v6 withBlock:&__block_literal_global_1];
  }
}

+ (id)dictionaryRepresentation
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__OSADefaults_dictionaryRepresentation__block_invoke;
  v4[3] = &unk_1E7A27258;
  v4[4] = &v5;
  [OSADefaults sendOperation:4 forKey:0 withBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __39__OSADefaults_dictionaryRepresentation__block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "defaults_value");
  if (v3)
  {
    v7 = v3;
    v4 = xpc2ns(v3);
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v7;
  }
}

+ (void)sendOperation:(unint64_t)a3 forKey:(id)a4 withBlock:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = OSAnalyticsHelperServiceConnection();
  if (v9)
  {
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_uint64(empty, "operation", 7uLL);
    xpc_dictionary_set_uint64(empty, "defaults_operation", a3);
    if (v7)
    {
      xpc_dictionary_set_string(empty, "defaults_key", [v7 UTF8String]);
    }

    if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v8[2](v8, empty);
    }

    else
    {
      v11 = xpc_connection_send_message_with_reply_sync(v9, empty);
      v12 = v11;
      if (v11)
      {
        v13 = MEMORY[0x1B2703B90](v11);
        if (v13 == MEMORY[0x1E69E9E98])
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [OSADefaults sendOperation:v12 forKey:? withBlock:?];
          }
        }

        else if (v13 == MEMORY[0x1E69E9E80])
        {
          v8[2](v8, v12);
        }
      }
    }
  }
}

+ (void)setObject:(uint64_t)a1 forKey:.cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to convert %@ to an XPC object", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)sendOperation:(void *)a1 forKey:withBlock:.cold.1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  string = xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  v3 = 136315138;
  v4 = string;
  _os_log_error_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "osanalyticshelper replied with an XPC error: %s", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end