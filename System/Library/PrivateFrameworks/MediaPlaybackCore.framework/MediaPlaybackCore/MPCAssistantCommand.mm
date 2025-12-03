@interface MPCAssistantCommand
- (void)insertPlaybackQueueWithResult:(id)result atPosition:(int)position onDestination:(id)destination withOptions:(id)options completion:(id)completion;
- (void)sendCommand:(unsigned int)command toDestination:(id)destination withOptions:(id)options completion:(id)completion;
- (void)sendCommandWithResult:(unsigned int)result toDestination:(id)destination withOptions:(id)options completion:(id)completion;
- (void)sendPlaybackArchive:(id)archive toDestination:(id)destination withOptions:(id)options completion:(id)completion;
- (void)sendPlaybackArchiveWithResult:(id)result toDestination:(id)destination withOptions:(id)options completion:(id)completion;
- (void)sendPlaybackQueue:(id)queue toDestination:(id)destination completion:(id)completion;
- (void)sendPlaybackQueue:(id)queue toDestination:(id)destination withOptions:(id)options completion:(id)completion;
- (void)sendPlaybackQueueWithResult:(id)result toDestination:(id)destination withOptions:(id)options completion:(id)completion;
@end

@implementation MPCAssistantCommand

- (void)insertPlaybackQueueWithResult:(id)result atPosition:(int)position onDestination:(id)destination withOptions:(id)options completion:(id)completion
{
  resultCopy = result;
  optionsCopy = options;
  completionCopy = completion;
  destinationCopy = destination;
  v15 = objc_alloc_init(MPCAssistantCommandInternal);
  v16 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B10B0]];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __101__MPCAssistantCommand_insertPlaybackQueueWithResult_atPosition_onDestination_withOptions_completion___block_invoke;
  v19[3] = &unk_1E8230D78;
  v20 = resultCopy;
  v21 = optionsCopy;
  positionCopy = position;
  v17 = optionsCopy;
  v18 = resultCopy;
  [(MPCAssistantCommandInternal *)v15 sendCommand:125 toDestination:destinationCopy commandID:v16 commandBuilder:v19 completion:completionCopy];
}

void __101__MPCAssistantCommand_insertPlaybackQueueWithResult_atPosition_onDestination_withOptions_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __101__MPCAssistantCommand_insertPlaybackQueueWithResult_atPosition_onDestination_withOptions_completion___block_invoke_2;
  v8[3] = &unk_1E8230D50;
  v11 = v5;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v12 = *(a1 + 48);
  v7 = v5;
  [v6 getPlaybackQueueWithDestination:a2 completion:v8];
}

void __101__MPCAssistantCommand_insertPlaybackQueueWithResult_atPosition_onDestination_withOptions_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = [v7 mutableCopy];
    }

    else
    {
      v8 = [MEMORY[0x1E695DF90] dictionary];
    }

    v9 = v8;
    [v5 _mediaRemotePlaybackQueue];
    ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation();
    [v9 setObject:ExternalRepresentation forKeyedSubscript:*MEMORY[0x1E69B1268]];
    v11 = [*(a1 + 40) contextID];
    [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69B10D0]];

    v12 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
    [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69B1178]];

    v13 = [*(a1 + 40) userIdentity];

    if (v13)
    {
      v14 = MEMORY[0x1E696ACC8];
      v15 = [*(a1 + 40) userIdentity];
      v22 = 0;
      v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v22];
      v17 = v22;

      if (v17)
      {
        v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = [v17 treeDescription];
          *buf = 138543618;
          v24 = v16;
          v25 = 2114;
          v26 = v19;
          _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_ERROR, "Send Queue (User Identity): %{public}@ error=%{public}@", buf, 0x16u);
        }
      }

      else
      {
        [v9 setObject:v16 forKeyedSubscript:*MEMORY[0x1E69B1278]];
        v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v24 = v16;
          _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEBUG, "Send Queue (User Identity): %{public}@", buf, 0xCu);
        }
      }
    }

    v20 = [*(a1 + 40) homeKitUserIdentifier];

    if (v20)
    {
      v21 = [*(a1 + 40) homeKitUserIdentifier];
      [v9 setObject:v21 forKeyedSubscript:*MEMORY[0x1E69B1128]];
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)sendPlaybackArchiveWithResult:(id)result toDestination:(id)destination withOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  destinationCopy = destination;
  resultCopy = result;
  v13 = objc_alloc_init(MPCAssistantCommandInternal);
  [(MPCAssistantCommandInternal *)v13 sendPlaybackArchiveWithResult:resultCopy toDestination:destinationCopy withOptions:optionsCopy completion:completionCopy];
}

- (void)sendPlaybackQueueWithResult:(id)result toDestination:(id)destination withOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  destinationCopy = destination;
  resultCopy = result;
  v13 = objc_alloc_init(MPCAssistantCommandInternal);
  [(MPCAssistantCommandInternal *)v13 sendPlaybackQueueWithResult:resultCopy toDestination:destinationCopy withOptions:optionsCopy completion:completionCopy];
}

- (void)sendCommandWithResult:(unsigned int)result toDestination:(id)destination withOptions:(id)options completion:(id)completion
{
  v8 = *&result;
  completionCopy = completion;
  optionsCopy = options;
  destinationCopy = destination;
  v12 = objc_alloc_init(MPCAssistantCommandInternal);
  [(MPCAssistantCommandInternal *)v12 sendCommandWithResult:v8 toDestination:destinationCopy withOptions:optionsCopy completion:completionCopy];
}

- (void)sendPlaybackArchive:(id)archive toDestination:(id)destination withOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__MPCAssistantCommand_sendPlaybackArchive_toDestination_withOptions_completion___block_invoke;
  v12[3] = &unk_1E8230C38;
  v13 = completionCopy;
  v11 = completionCopy;
  [(MPCAssistantCommand *)self sendPlaybackArchiveWithResult:archive toDestination:destination withOptions:options completion:v12];
}

void __80__MPCAssistantCommand_sendPlaybackArchive_toDestination_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 error];
  v4 = [v3 returnStatuses];

  (*(v2 + 16))(v2, v5, v4);
}

- (void)sendPlaybackQueue:(id)queue toDestination:(id)destination withOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__MPCAssistantCommand_sendPlaybackQueue_toDestination_withOptions_completion___block_invoke;
  v12[3] = &unk_1E8230C38;
  v13 = completionCopy;
  v11 = completionCopy;
  [(MPCAssistantCommand *)self sendPlaybackQueueWithResult:queue toDestination:destination withOptions:options completion:v12];
}

void __78__MPCAssistantCommand_sendPlaybackQueue_toDestination_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 error];
  v4 = [v3 returnStatuses];

  (*(v2 + 16))(v2, v5, v4);
}

- (void)sendPlaybackQueue:(id)queue toDestination:(id)destination completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__MPCAssistantCommand_sendPlaybackQueue_toDestination_completion___block_invoke;
  v10[3] = &unk_1E8230C38;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MPCAssistantCommand *)self sendPlaybackQueueWithResult:queue toDestination:destination completion:v10];
}

void __66__MPCAssistantCommand_sendPlaybackQueue_toDestination_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 error];
  v4 = [v3 returnStatuses];

  (*(v2 + 16))(v2, v5, v4);
}

- (void)sendCommand:(unsigned int)command toDestination:(id)destination withOptions:(id)options completion:(id)completion
{
  v8 = *&command;
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__MPCAssistantCommand_sendCommand_toDestination_withOptions_completion___block_invoke;
  v12[3] = &unk_1E8230C38;
  v13 = completionCopy;
  v11 = completionCopy;
  [(MPCAssistantCommand *)self sendCommandWithResult:v8 toDestination:destination withOptions:options completion:v12];
}

void __72__MPCAssistantCommand_sendCommand_toDestination_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 error];
  v4 = [v3 returnStatuses];

  (*(v2 + 16))(v2, v5, v4);
}

@end