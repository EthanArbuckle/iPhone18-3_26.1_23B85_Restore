@interface BMXPCFileManager
@end

@implementation BMXPCFileManager

void __67___BMXPCFileManager__synchronousRemoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 domain];
  if ([v3 isEqual:*MEMORY[0x1E696A250]])
  {
    v4 = [v5 code];

    if (v4 == 4099)
    {
      [*(a1 + 32) invalidate];
    }
  }

  else
  {
  }

  (*(*(a1 + 40) + 16))();
}

void __69___BMXPCFileManager__fileHandleForFileAtPath_flags_protection_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __61___BMXPCFileManager_temporaryFileHandleWithProtection_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __77___BMXPCFileManager_replaceFileAtPath_withFileHandle_protection_flags_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

@end