@interface MPCAssistantEncodings
- (id)decodeURLData:(id)data;
- (id)encodeURLData:(id)data;
- (void)decodeHashedRouteUIDs:(id)ds completion:(id)completion;
- (void)encodeHashedRouteUIDs:(id)ds completion:(id)completion;
@end

@implementation MPCAssistantEncodings

- (void)decodeHashedRouteUIDs:(id)ds completion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = [ds mutableCopy];
  if ([v5 containsObject:@"LOCAL_DEVICE"])
  {
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_ERROR, "Unexpected LOCAL_DEVICE identifier.", buf, 2u);
    }

    [v5 removeObject:@"LOCAL_DEVICE"];
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v23 = objc_alloc_init(getAFSecurityConnectionClass());
  v8 = dispatch_group_create();
  v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v10 = dispatch_queue_create("DecodeSerialQueue", v9);

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v5;
  v11 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      v14 = 0;
      do
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v34 + 1) + 8 * v14);
        v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v15 options:0];
        dispatch_group_enter(v8);
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __58__MPCAssistantEncodings_decodeHashedRouteUIDs_completion___block_invoke;
        v28[3] = &unk_1E8230E68;
        v17 = v23;
        v29 = v17;
        v30 = v10;
        v31 = v7;
        v32 = v15;
        v33 = v8;
        [v17 processData:v16 usingProcedure:2 completion:v28];

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v12);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MPCAssistantEncodings_decodeHashedRouteUIDs_completion___block_invoke_13;
  block[3] = &unk_1E8239198;
  v25 = obj;
  v26 = v7;
  v27 = completionCopy;
  v18 = completionCopy;
  v19 = v7;
  v20 = obj;
  dispatch_group_notify(v8, v10, block);
}

void __58__MPCAssistantEncodings_decodeHashedRouteUIDs_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v6;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_ERROR, "Error decoding route UID: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v9 = *(a1 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__MPCAssistantEncodings_decodeHashedRouteUIDs_completion___block_invoke_2;
    block[3] = &unk_1E82391C0;
    v13 = v5;
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v14 = v10;
    v15 = v11;
    dispatch_sync(v9, block);

    v8 = v13;
  }

  dispatch_group_leave(*(a1 + 64));
}

void __58__MPCAssistantEncodings_decodeHashedRouteUIDs_completion___block_invoke_13(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) mutableCopy];
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_INFO, "MPCAssistantEncodings (decode): route UID decoding table", buf, 2u);
  }

  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__MPCAssistantEncodings_decodeHashedRouteUIDs_completion___block_invoke_14;
  v7[3] = &unk_1E8238460;
  v5 = v2;
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];
  if ([v5 count])
  {
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v5;
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_ERROR, "MPCAssistantEncodings (decode): could not decrypt: %{public}@", buf, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __58__MPCAssistantEncodings_decodeHashedRouteUIDs_completion___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_INFO, "MPCAssistantEncodings (decode): hashed %{public}@ = decoded %{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) removeObject:v6];
}

uint64_t __58__MPCAssistantEncodings_decodeHashedRouteUIDs_completion___block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:*(a1 + 32) encoding:4];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v2 = [*(a1 + 40) setObject:*(a1 + 48) forKeyedSubscript:v2];
    v3 = v5;
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (void)encodeHashedRouteUIDs:(id)ds completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = objc_alloc_init(getAFSecurityConnectionClass());
  v7 = dispatch_group_create();
  v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v9 = dispatch_queue_create("EncodeSerialQueue", v8);

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = dsCopy;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        if ([v15 length])
        {
          v16 = [v15 dataUsingEncoding:4];
          dispatch_group_enter(v7);
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __58__MPCAssistantEncodings_encodeHashedRouteUIDs_completion___block_invoke;
          v25[3] = &unk_1E8230E40;
          v17 = v21;
          v26 = v17;
          v27 = v9;
          v28 = v6;
          v29 = v7;
          [v17 processData:v16 usingProcedure:1 completion:v25];
        }

        else
        {
          [v6 addObject:&stru_1F454A698];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v12);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MPCAssistantEncodings_encodeHashedRouteUIDs_completion___block_invoke_6;
  block[3] = &unk_1E8239170;
  v23 = v6;
  v24 = completionCopy;
  v18 = v6;
  v19 = completionCopy;
  dispatch_group_notify(v7, v9, block);
}

void __58__MPCAssistantEncodings_encodeHashedRouteUIDs_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_ERROR, "Error encoding route UID: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v9 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__MPCAssistantEncodings_encodeHashedRouteUIDs_completion___block_invoke_2;
    v10[3] = &unk_1E82392C0;
    v11 = v5;
    v12 = *(a1 + 48);
    dispatch_sync(v9, v10);

    v8 = v11;
  }

  dispatch_group_leave(*(a1 + 56));
}

void __58__MPCAssistantEncodings_encodeHashedRouteUIDs_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) base64EncodedStringWithOptions:0];
  [*(a1 + 40) addObject:v2];
}

- (id)decodeURLData:(id)data
{
  stringByRemovingPercentEncoding = [data stringByRemovingPercentEncoding];
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:stringByRemovingPercentEncoding options:0];

  return v4;
}

- (id)encodeURLData:(id)data
{
  v3 = [data base64EncodedStringWithOptions:0];
  uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v5 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

  return v5;
}

@end