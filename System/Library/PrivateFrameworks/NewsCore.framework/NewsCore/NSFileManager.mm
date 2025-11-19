@interface NSFileManager
@end

@implementation NSFileManager

void __80__NSFileManager_FCAdditions__fc_quicklyClearDirectory_callbackQueue_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v23 = 0;
  v4 = [v2 removeItemAtPath:v3 error:&v23];
  v5 = v23;
  v6 = v5;
  if (v4)
  {
LABEL_2:
    v7 = a1[7];
    if (v7)
    {
      v8 = a1[6];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __80__NSFileManager_FCAdditions__fc_quicklyClearDirectory_callbackQueue_completion___block_invoke_4;
      v16[3] = &unk_1E7C42970;
      v9 = &v18;
      v18 = v7;
      v19 = 1;
      v10 = &v17;
      v17 = v6;
      v11 = v16;
LABEL_9:
      dispatch_async(v8, v11);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v12 = [v5 domain];
  v13 = v12;
  if (v12 == *MEMORY[0x1E696A250])
  {
    v14 = [v6 code];

    if (v14 == 4)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v15 = a1[7];
  if (v15)
  {
    v8 = a1[6];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__NSFileManager_FCAdditions__fc_quicklyClearDirectory_callbackQueue_completion___block_invoke_3;
    block[3] = &unk_1E7C37778;
    v9 = &v22;
    v22 = v15;
    v10 = &v21;
    v21 = v6;
    v11 = block;
    goto LABEL_9;
  }

LABEL_10:
}

void __65__NSFileManager_FCAdditions__fc_removeLargeDirectoryAtURL_error___block_invoke(uint64_t a1, char *a2)
{
  if (rmdir(a2))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    v4 = MEMORY[0x1E696ABC0];
    v8 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:a2 isDirectory:0 relativeToURL:0];
    v5 = [v4 fc_directoryRemovalErrorWithURL:v8 removalErrno:*__error()];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void __65__NSFileManager_FCAdditions__fc_removeLargeDirectoryAtURL_error___block_invoke_2(uint64_t a1, char *a2)
{
  if (unlink(a2))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    v4 = MEMORY[0x1E696ABC0];
    v8 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:a2 isDirectory:0 relativeToURL:0];
    v5 = [v4 fc_fileRemovalErrorWithURL:v8 removalErrno:*__error()];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

uint64_t __65__NSFileManager_FCAdditions__fc_removeLargeDirectoryAtURL_error___block_invoke_3(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  container_traverse_node_get_path();
  if ((container_traverse_node_get_optional_mode() & 0xF000) == 0x4000)
  {
    *a3 = 1;
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  return 1;
}

@end