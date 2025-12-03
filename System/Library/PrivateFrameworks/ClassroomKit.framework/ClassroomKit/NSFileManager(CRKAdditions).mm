@interface NSFileManager(CRKAdditions)
+ (id)crk_nonContainerizedHomeDirectoryURL;
- (id)crk_collisionAvoidingURLForURL:()CRKAdditions;
- (id)crk_deepContentsOfDirectoryAtPath:()CRKAdditions options:error:;
- (uint64_t)crk_safeRemoveItemAtURL:()CRKAdditions error:;
@end

@implementation NSFileManager(CRKAdditions)

+ (id)crk_nonContainerizedHomeDirectoryURL
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__NSFileManager_CRKAdditions__crk_nonContainerizedHomeDirectoryURL__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (crk_nonContainerizedHomeDirectoryURL_onceToken != -1)
  {
    dispatch_once(&crk_nonContainerizedHomeDirectoryURL_onceToken, block);
  }

  v1 = crk_nonContainerizedHomeDirectoryURL_URL;

  return v1;
}

- (uint64_t)crk_safeRemoveItemAtURL:()CRKAdditions error:
{
  v13 = 0;
  v5 = [self removeItemAtURL:a3 error:&v13];
  v6 = v13;
  v7 = v6;
  if (v5)
  {
    goto LABEL_2;
  }

  domain = [v6 domain];
  if ([domain isEqualToString:*MEMORY[0x277CCA050]])
  {
    code = [v7 code];

    if (code == 4)
    {

      v7 = 0;
LABEL_2:
      v8 = 1;
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (a4)
  {
    v11 = v7;
    v8 = 0;
    *a4 = v7;
  }

  else
  {
    v8 = 0;
  }

LABEL_10:

  return v8;
}

- (id)crk_deepContentsOfDirectoryAtPath:()CRKAdditions options:error:
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (!v8)
  {
    [NSFileManager(CRKAdditions) crk_deepContentsOfDirectoryAtPath:a2 options:self error:?];
    v8 = 0;
  }

  v25 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__5;
  v36 = __Block_byref_object_dispose__5;
  v37 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __79__NSFileManager_CRKAdditions__crk_deepContentsOfDirectoryAtPath_options_error___block_invoke;
  v31[3] = &unk_278DC36F0;
  v31[4] = &v32;
  v9 = [self enumeratorAtURL:v25 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:a4 errorHandler:v31];
  path = [v25 path];
  stringByStandardizingPath = [path stringByStandardizingPath];

  v12 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v9;
  v13 = [obj countByEnumeratingWithState:&v27 objects:v38 count:16];
  if (v13)
  {
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(obj);
        }

        path2 = [*(*(&v27 + 1) + 8 * i) path];
        stringByStandardizingPath2 = [path2 stringByStandardizingPath];
        v18 = [stringByStandardizingPath2 crk_substringAfterString:stringByStandardizingPath];
        v19 = [v18 crk_stringByRemovingPrefix:@"/"];

        [v12 addObject:v19];
      }

      v13 = [obj countByEnumeratingWithState:&v27 objects:v38 count:16];
    }

    while (v13);
  }

  v20 = v33[5];
  if (v20)
  {
    v21 = 0;
    if (a5)
    {
      *a5 = v20;
    }
  }

  else
  {
    v21 = [v12 copy];
  }

  _Block_object_dispose(&v32, 8);

  return v21;
}

- (id)crk_collisionAvoidingURLForURL:()CRKAdditions
{
  v4 = a3;
  filePathURL = [v4 filePathURL];
  path = [filePathURL path];

  if ([self fileExistsAtPath:path])
  {
    v7 = 2;
    v8 = v4;
    while (1)
    {
      v9 = path;
      path2 = [v4 path];
      stringByDeletingPathExtension = [path2 stringByDeletingPathExtension];

      v12 = MEMORY[0x277CCACA8];
      v13 = [MEMORY[0x277CCABB0] numberWithInt:v7];
      pathExtension = [v4 pathExtension];
      v15 = [v12 stringWithFormat:@"%@ %@.%@", stringByDeletingPathExtension, v13, pathExtension];

      v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15];

      filePathURL2 = [v16 filePathURL];
      path = [filePathURL2 path];

      if (!v16)
      {
        break;
      }

      v7 = (v7 + 1);

      v8 = v16;
      if (([self fileExistsAtPath:path] & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    if (_CRKLogGeneral_onceToken_46 != -1)
    {
      [NSFileManager(CRKAdditions) crk_collisionAvoidingURLForURL:];
    }

    v18 = _CRKLogGeneral_logObj_46;
    if (os_log_type_enabled(_CRKLogGeneral_logObj_46, OS_LOG_TYPE_ERROR))
    {
      [(NSFileManager(CRKAdditions) *)v4 crk_collisionAvoidingURLForURL:v15, v18];
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v16 = [v4 URLByAppendingPathComponent:uUIDString];
  }

  else
  {
    v16 = v4;
  }

LABEL_12:

  return v16;
}

- (void)crk_deepContentsOfDirectoryAtPath:()CRKAdditions options:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSFileManager+CRKAdditions.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"path"}];
}

- (void)crk_collisionAvoidingURLForURL:()CRKAdditions .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_243550000, log, OS_LOG_TYPE_ERROR, "Unable to create non-colliding URL for %{public}@ using %{public}@", &v3, 0x16u);
}

@end