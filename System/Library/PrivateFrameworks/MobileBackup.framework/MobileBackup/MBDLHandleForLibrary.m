@interface MBDLHandleForLibrary
@end

@implementation MBDLHandleForLibrary

dispatch_queue_t ___MBDLHandleForLibrary_block_invoke()
{
  _MBDLHandleForLibrary_handles = CFDictionaryCreateMutable(0, 0, 0, 0);
  result = dispatch_queue_create("MBDYLDLoaderQueue", 0);
  _MBDLHandleForLibrary_queue = result;
  return result;
}

void ___MBDLHandleForLibrary_block_invoke_2(uint64_t a1)
{
  v26[16] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [v2 pathExtension];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v3 isEqualToString:@"framework"])
  {
    if (_MBFrameworkSearchPaths_onceToken != -1)
    {
      ___MBDLHandleForLibrary_block_invoke_2_cold_2();
    }

    v5 = _MBFrameworkSearchPaths_paths;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = [_MBFrameworkSearchPaths_paths countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v22 + 1) + 8 * i) stringByAppendingPathComponent:v2];
          if ([v4 fileExistsAtPath:v10])
          {
            v2 = [v10 stringByAppendingPathComponent:{objc_msgSend(v2, "stringByDeletingPathExtension")}];
            goto LABEL_29;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"dylib"])
  {
    if (_MBLibrarySearchPaths_onceToken != -1)
    {
      ___MBDLHandleForLibrary_block_invoke_2_cold_1();
    }

    v11 = _MBLibrarySearchPaths_paths;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = [_MBLibrarySearchPaths_paths countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      while (2)
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v22 + 1) + 8 * j) stringByAppendingPathComponent:v2];
          if ([v4 fileExistsAtPath:v16])
          {
            v2 = v16;
            goto LABEL_29;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_27;
  }

  if (([v3 isEqualToString:&stru_1F59D7098] & 1) == 0)
  {
LABEL_27:
    v2 = 0;
  }

LABEL_29:
  Value = CFDictionaryGetValue(_MBDLHandleForLibrary_handles, *(a1 + 32));
  v19 = *(a1 + 40);
  v18 = a1 + 40;
  *(*(v19 + 8) + 24) = Value;
  v20 = *(*(*v18 + 8) + 24);
  if (!v20)
  {
    *(*(*v18 + 8) + 24) = dlopen([v2 fileSystemRepresentation], 5);
    NSLog(&cfstr_Opened.isa, v2);
    v20 = *(*(*v18 + 8) + 24);
    if (!v20)
    {
      ___MBDLHandleForLibrary_block_invoke_2_cold_3(v2, v18, v26);
      v20 = v26[0];
    }
  }

  CFDictionarySetValue(_MBDLHandleForLibrary_handles, v2, v20);
  v21 = *MEMORY[0x1E69E9840];
}

uint64_t ___MBDLHandleForLibrary_block_invoke_2_cold_3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v6 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *_MBDLHandleForLibrary(NSString *)_block_invoke_2") description:{@"MBWeakLinking.m", 80, @"Unable to open framework at %@: %s", a1, dlerror()}];
  *a3 = *(*(*a2 + 8) + 24);
  return result;
}

@end