@interface NSFileManager(FCAdditions)
- (uint64_t)fc_removeContentsOfDirectoryAtURL:()FCAdditions removedItemCount:error:;
- (uint64_t)fc_removeLargeDirectoryAtURL:()FCAdditions error:;
- (uint64_t)fc_sizeOfItemAtPath:()FCAdditions error:;
- (uint64_t)fc_sizeOfItemAtURL:()FCAdditions error:;
- (void)fc_quicklyClearDirectory:()FCAdditions callbackQueue:completion:;
@end

@implementation NSFileManager(FCAdditions)

- (uint64_t)fc_removeContentsOfDirectoryAtURL:()FCAdditions removedItemCount:error:
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (v8)
  {
    v25 = a4;
    v26 = a5;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0;
    v27 = v8;
    v9 = [self contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:0 error:&v29];
    v10 = v29;
    v11 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v31;
      v15 = 1;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v17 = *(*(&v30 + 1) + 8 * i);
          v28 = 0;
          v18 = [self removeItemAtURL:v17 error:&v28];
          v19 = v28;
          v20 = v19;
          if (v18)
          {
            ++v13;
          }

          else
          {
            v21 = v19;

            v15 = 0;
            v10 = v21;
          }
        }

        v12 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
      v15 = 1;
    }

    if (v25)
    {
      *v25 = v13;
    }

    if (v26)
    {
      v22 = v10;
      *v26 = v10;
    }

    v8 = v27;
  }

  else
  {
    v15 = 1;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v15 & 1;
}

- (void)fc_quicklyClearDirectory:()FCAdditions callbackQueue:completion:
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = NSTemporaryDirectory();
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  globallyUniqueString = [processInfo globallyUniqueString];
  v14 = [v11 stringByAppendingPathComponent:globallyUniqueString];

  path = [v10 path];

  v29 = 0;
  LOBYTE(processInfo) = [self moveItemAtPath:path toPath:v14 error:&v29];
  v16 = v29;

  if (processInfo)
  {
    goto LABEL_2;
  }

  domain = [v16 domain];
  v20 = domain;
  if (domain == *MEMORY[0x1E696A250])
  {
    code = [v16 code];

    if (code == 4)
    {
LABEL_2:
      v17 = dispatch_get_global_queue(-2, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__NSFileManager_FCAdditions__fc_quicklyClearDirectory_callbackQueue_completion___block_invoke_2;
      block[3] = &unk_1E7C42998;
      block[4] = self;
      v23 = v14;
      v25 = v9;
      v24 = v8;
      dispatch_async(v17, block);

      v18 = v23;
LABEL_8:

      goto LABEL_9;
    }
  }

  else
  {
  }

  if (v9)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __80__NSFileManager_FCAdditions__fc_quicklyClearDirectory_callbackQueue_completion___block_invoke;
    v26[3] = &unk_1E7C37778;
    v28 = v9;
    v27 = v16;
    dispatch_async(v8, v26);

    v18 = v28;
    goto LABEL_8;
  }

LABEL_9:
}

- (uint64_t)fc_removeLargeDirectoryAtURL:()FCAdditions error:
{
  v5 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__55;
  v26 = __Block_byref_object_dispose__55;
  v27 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__NSFileManager_FCAdditions__fc_removeLargeDirectoryAtURL_error___block_invoke;
  aBlock[3] = &unk_1E7C429C0;
  aBlock[4] = &v28;
  aBlock[5] = &v22;
  v6 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __65__NSFileManager_FCAdditions__fc_removeLargeDirectoryAtURL_error___block_invoke_2;
  v20[3] = &unk_1E7C429C0;
  v20[4] = &v28;
  v20[5] = &v22;
  v7 = _Block_copy(v20);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__NSFileManager_FCAdditions__fc_removeLargeDirectoryAtURL_error___block_invoke_3;
  v18[3] = &unk_1E7C429E8;
  v8 = v7;
  v19 = v8;
  v9 = _Block_copy(v18);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__NSFileManager_FCAdditions__fc_removeLargeDirectoryAtURL_error___block_invoke_4;
  v16[3] = &unk_1E7C42A10;
  v10 = v6;
  v17 = v10;
  v11 = _Block_copy(v16);
  [v5 fileSystemRepresentation];
  if (!container_traverse_directory())
  {
    *(v29 + 24) = 0;
    v14 = [MEMORY[0x1E696ABC0] fc_directoryTraversalErrorWithURL:v5 traversalErrno:0];
    v15 = v23[5];
    v23[5] = v14;

    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  (*(v10 + 2))(v10, [v5 fileSystemRepresentation]);
  if (a4)
  {
LABEL_3:
    *a4 = v23[5];
  }

LABEL_4:
  v12 = *(v29 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v12;
}

- (uint64_t)fc_sizeOfItemAtURL:()FCAdditions error:
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v28 = 0;
  v7 = [v6 getResourceValue:&v28 forKey:*MEMORY[0x1E695DB78] error:a4];
  v8 = v28;
  v9 = v8;
  if (!v7)
  {
    goto LABEL_15;
  }

  if (![v8 BOOLValue])
  {
    v22 = 0;
    if ([v6 getResourceValue:&v22 forKey:*MEMORY[0x1E695DB50] error:a4])
    {
      unsignedLongLongValue = [v22 unsignedLongLongValue];
      goto LABEL_18;
    }

LABEL_15:
    unsignedLongLongValue = 0;
    goto LABEL_18;
  }

  v10 = *MEMORY[0x1E695DB50];
  v30[0] = *MEMORY[0x1E695DB50];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v12 = [self enumeratorAtURL:v6 includingPropertiesForKeys:v11 options:0 errorHandler:0];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    unsignedLongLongValue = 0;
    v17 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        v23 = 0;
        if ([v19 getResourceValue:&v23 forKey:v10 error:0])
        {
          unsignedLongLongValue += [v23 unsignedLongLongValue];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v15);
  }

  else
  {
    unsignedLongLongValue = 0;
  }

LABEL_18:
  v20 = *MEMORY[0x1E69E9840];
  return unsignedLongLongValue;
}

- (uint64_t)fc_sizeOfItemAtPath:()FCAdditions error:
{
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];
  v7 = [self fc_sizeOfItemAtURL:v6 error:a4];

  return v7;
}

@end