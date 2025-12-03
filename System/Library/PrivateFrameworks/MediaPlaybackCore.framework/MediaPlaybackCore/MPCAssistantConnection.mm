@interface MPCAssistantConnection
- (void)connectToEndpoint:(void *)endpoint completion:(id)completion;
- (void)connectToEndpointObject:(id)object completion:(id)completion;
@end

@implementation MPCAssistantConnection

- (void)connectToEndpoint:(void *)endpoint completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__MPCAssistantConnection_connectToEndpoint_completion___block_invoke;
  v8[3] = &unk_1E8230DA0;
  v9 = completionCopy;
  v7 = completionCopy;
  [(MPCAssistantConnection *)self connectToEndpointObject:endpoint completion:v8];
}

uint64_t __55__MPCAssistantConnection_connectToEndpoint_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)connectToEndpointObject:(id)object completion:(id)completion
{
  v14[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  completionCopy = completion;
  v13 = *MEMORY[0x1E69B0918];
  v14[0] = @"MPCAssistantConnection";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__MPCAssistantConnection_connectToEndpointObject_completion___block_invoke;
  v10[3] = &unk_1E8236B80;
  v11 = objectCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = objectCopy;
  [v9 connectToExternalDeviceWithOptions:0 userInfo:v7 completion:v10];
}

void __61__MPCAssistantConnection_connectToEndpointObject_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v12 = 138543618;
      v13 = v6;
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_ERROR, "Connection failed %{public}@: %{public}@", &v12, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEBUG, "Successfully connected to external device.", &v12, 2u);
    }

    v7 = [*(a1 + 32) origin];
    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) externalDevice];
      (*(v8 + 16))(v8, v9, v7, 0);
    }

    else
    {
      v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 32);
        v12 = 138543362;
        v13 = v11;
        _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_ERROR, "No origin for %{public}@", &v12, 0xCu);
      }

      v9 = MPCAssistantCreateSendCommandError(6u);
      (*(*(a1 + 40) + 16))(*(a1 + 40), 0, 0, v9);
    }
  }
}

@end