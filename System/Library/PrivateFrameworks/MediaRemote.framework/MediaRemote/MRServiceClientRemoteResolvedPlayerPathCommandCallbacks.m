@interface MRServiceClientRemoteResolvedPlayerPathCommandCallbacks
@end

@implementation MRServiceClientRemoteResolvedPlayerPathCommandCallbacks

void ___MRServiceClientRemoteResolvedPlayerPathCommandCallbacks_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___MRServiceClientRemoteResolvedPlayerPathCommandCallbacks_block_invoke_2;
  v6[3] = &unk_1E769A4A0;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_sync(v4, v6);
  dispatch_group_leave(*(a1 + 48));
}

void ___MRServiceClientRemoteResolvedPlayerPathCommandCallbacks_block_invoke_3(uint64_t a1)
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___MRServiceClientRemoteResolvedPlayerPathCommandCallbacks_block_invoke_4;
  v13[3] = &__block_descriptor_36_e26___NSArray_16__0__NSArray_8l;
  v14 = *(a1 + 56);
  v2 = MEMORY[0x1A58E3570](v13);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___MRServiceClientRemoteResolvedPlayerPathCommandCallbacks_block_invoke_8;
  v10[3] = &unk_1E769FB30;
  v11 = v2;
  v12 = &__block_literal_global_53;
  v3 = v2;
  v4 = MEMORY[0x1A58E3570](v10);
  v5 = [MRCommandResult alloc];
  v6 = v4[2](v4, *(a1 + 32));
  v7 = *(a1 + 60);
  v8 = [*(a1 + 40) playerPath];
  v9 = [(MRCommandResult *)v5 initWithResultStatuses:v6 sendError:v7 playerPath:v8];

  (*(*(a1 + 48) + 16))();
}

id ___MRServiceClientRemoteResolvedPlayerPathCommandCallbacks_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mutableCopy];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = ___MRServiceClientRemoteResolvedPlayerPathCommandCallbacks_block_invoke_5;
  v11 = &unk_1E769FAA8;
  v5 = v4;
  v12 = v5;
  v13 = &v14;
  [v3 enumerateObjectsUsingBlock:&v8];
  if (*(v15 + 24) == 1 && ![v5 count])
  {
    v6 = [MRSendCommandResultStatus statusWithCode:2 * (MRMediaRemoteCommandIsLegacy(*(a1 + 32)) == 0)];
    [v5 addObject:v6];
  }

  _Block_object_dispose(&v14, 8);

  return v5;
}

void ___MRServiceClientRemoteResolvedPlayerPathCommandCallbacks_block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 statusCode] == 3)
  {
    [*(a1 + 32) removeObject:v3];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

id ___MRServiceClientRemoteResolvedPlayerPathCommandCallbacks_block_invoke_6(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 msv_firstWhere:&__block_literal_global_85_0];
  v4 = v3;
  if (v3)
  {
    v9[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id ___MRServiceClientRemoteResolvedPlayerPathCommandCallbacks_block_invoke_8(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = (*(*(a1 + 40) + 16))();

  return v3;
}

@end