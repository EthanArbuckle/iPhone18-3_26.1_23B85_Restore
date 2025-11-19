@interface CNVirtualFileManager
+ (BOOL)isHiddenURL:(id)a3;
+ (id)URLByNormalizingDirectoryURL:(id)a3;
+ (id)allParentFoldersOfURL:(id)a3;
- (BOOL)fileExistsAtURL:(id)a3;
- (BOOL)fileExistsAtURL:(id)a3 isDirectory:(BOOL *)a4;
- (BOOL)getValue:(id *)a3 forExtendendAttribute:(id)a4 url:(id)a5 error:(id *)a6;
- (CNVirtualFileManager)init;
- (id)URLsForDirectory:(unint64_t)a3 inDomains:(unint64_t)a4;
- (id)asyncDataWithContentsOfURL:(id)a3;
- (id)asyncWriteData:(id)a3 toURL:(id)a4 options:(unint64_t)a5;
- (id)containerURLForSecurityApplicationGroupIdentifier:(id)a3;
- (id)contentsOfDirectoryAtURL:(id)a3 includingPropertiesForKeys:(id)a4 options:(unint64_t)a5;
- (id)createDirectoryAtURL:(id)a3 withIntermediateDirectories:(BOOL)a4 attributes:(id)a5;
- (id)dataWithContentsOfURL:(id)a3;
- (id)observableWithContentsOfURL:(id)a3;
- (id)removeItemAtURL:(id)a3;
- (id)setValue:(id)a3 forExtendedAttribute:(id)a4 atURL:(id)a5;
- (id)valueForExtendedAttribute:(id)a3 atURL:(id)a4;
- (id)writeData:(id)a3 toURL:(id)a4 options:(unint64_t)a5;
- (void)setContainerURL:(id)a3 forSecurityApplicationGroupIdentifier:(id)a4;
@end

@implementation CNVirtualFileManager

- (CNVirtualFileManager)init
{
  v11.receiver = self;
  v11.super_class = CNVirtualFileManager;
  v2 = [(CNVirtualFileManager *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    files = v2->_files;
    v2->_files = v3;

    v5 = objc_opt_new();
    directories = v2->_directories;
    v2->_directories = v5;

    v7 = objc_opt_new();
    containers = v2->_containers;
    v2->_containers = v7;

    v9 = v2;
  }

  return v2;
}

- (id)dataWithContentsOfURL:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    if (CNGuardOSLog_cn_once_token_0_2 != -1)
    {
      [CNVirtualFileManager dataWithContentsOfURL:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_2, OS_LOG_TYPE_FAULT))
    {
      [CNVirtualFileManager dataWithContentsOfURL:];
    }
  }

  files = self->_files;
  v6 = [v4 absoluteURL];
  v7 = [(NSMutableDictionary *)files objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v7 contents];
    v9 = [CNResult successWithValue:v8];
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A250];
    v17[0] = *MEMORY[0x1E696A368];
    v8 = [v4 path];
    v18[0] = v8;
    v17[1] = *MEMORY[0x1E696AA08];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:0];
    v18[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v14 = [v10 errorWithDomain:v11 code:260 userInfo:v13];
    v9 = [CNResult failureWithError:v14];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)writeData:(id)a3 toURL:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  v26[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    if (CNGuardOSLog_cn_once_token_0_2 != -1)
    {
      [CNVirtualFileManager dataWithContentsOfURL:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_2, OS_LOG_TYPE_FAULT))
    {
      [CNVirtualFileManager dataWithContentsOfURL:];
    }
  }

  v10 = [v9 URLByDeletingLastPathComponent];
  if (v5)
  {
    v18 = [(CNVirtualFileManager *)self createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0];
  }

  else
  {
    v24 = 0;
    if (![(CNVirtualFileManager *)self fileExistsAtURL:v10 isDirectory:&v24]|| v24 != 1)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A250];
      v25[0] = *MEMORY[0x1E696A368];
      v13 = [v9 path];
      v26[0] = v13;
      v25[1] = *MEMORY[0x1E696AA08];
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:0];
      v26[1] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
      v16 = [v11 errorWithDomain:v12 code:4 userInfo:v15];
      v17 = [CNResult failureWithError:v16];

      goto LABEL_12;
    }
  }

  v19 = objc_alloc_init(_CNVirtualFile);
  [(_CNVirtualFile *)v19 setContents:v8];
  files = self->_files;
  v21 = [v9 absoluteURL];
  [(NSMutableDictionary *)files setObject:v19 forKeyedSubscript:v21];

  v17 = [CNResult successWithValue:MEMORY[0x1E695E118]];

LABEL_12:
  v22 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)asyncDataWithContentsOfURL:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    if (CNGuardOSLog_cn_once_token_0_2 != -1)
    {
      [CNVirtualFileManager dataWithContentsOfURL:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_2, OS_LOG_TYPE_FAULT))
    {
      [CNVirtualFileManager dataWithContentsOfURL:];
    }
  }

  v4 = objc_alloc_init(CNData);
  v5 = [(CNData *)v4 dataWithContentsOfURL:v3];

  return v5;
}

- (id)observableWithContentsOfURL:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    if (CNGuardOSLog_cn_once_token_0_2 != -1)
    {
      [CNVirtualFileManager dataWithContentsOfURL:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_2, OS_LOG_TYPE_FAULT))
    {
      [CNVirtualFileManager dataWithContentsOfURL:];
    }
  }

  v4 = objc_alloc_init(CNData);
  v5 = [(CNData *)v4 observableWithContentsOfURL:v3];

  return v5;
}

- (id)asyncWriteData:(id)a3 toURL:(id)a4 options:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    if (CNGuardOSLog_cn_once_token_0_2 != -1)
    {
      [CNVirtualFileManager dataWithContentsOfURL:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_2, OS_LOG_TYPE_FAULT))
    {
      [CNVirtualFileManager dataWithContentsOfURL:];
    }
  }

  v9 = objc_alloc_init(CNData);
  v10 = [(CNData *)v9 writeData:v7 toURL:v8 options:a5];

  return v10;
}

- (id)removeItemAtURL:(id)a3
{
  v35[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  files = self->_files;
  v6 = [v4 absoluteURL];
  v7 = [(NSMutableDictionary *)files objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_files;
    v9 = [v4 absoluteURL];
    [(NSMutableDictionary *)v8 setObject:0 forKeyedSubscript:v9];

    v10 = [CNResult successWithValue:MEMORY[0x1E695E118]];
  }

  else
  {
    directories = self->_directories;
    v12 = [v4 absoluteURL];
    LODWORD(directories) = [(NSMutableOrderedSet *)directories containsObject:v12];

    if (directories)
    {
      v13 = self->_directories;
      v14 = [v4 absoluteURL];
      [(NSMutableOrderedSet *)v13 removeObject:v14];

      v15 = [(NSMutableDictionary *)self->_files allKeys];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __40__CNVirtualFileManager_removeItemAtURL___block_invoke;
      v32[3] = &unk_1E6ED62D8;
      v16 = v4;
      v33 = v16;
      v17 = [v15 _cn_filter:v32];

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __40__CNVirtualFileManager_removeItemAtURL___block_invoke_2;
      v31[3] = &unk_1E6ED6300;
      v31[4] = self;
      [v17 _cn_each:v31];
      v18 = [(NSMutableOrderedSet *)self->_directories array];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __40__CNVirtualFileManager_removeItemAtURL___block_invoke_3;
      v29[3] = &unk_1E6ED62D8;
      v30 = v16;
      v19 = [v18 _cn_filter:v29];

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __40__CNVirtualFileManager_removeItemAtURL___block_invoke_4;
      v28[3] = &unk_1E6ED6300;
      v28[4] = self;
      [v19 _cn_each:v28];
      v10 = [CNResult successWithValue:MEMORY[0x1E695E118]];
    }

    else
    {
      v20 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A250];
      v34[0] = *MEMORY[0x1E696A368];
      v22 = [v4 path];
      v35[0] = v22;
      v34[1] = *MEMORY[0x1E696AA08];
      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:0];
      v35[1] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
      v25 = [v20 errorWithDomain:v21 code:4 userInfo:v24];
      v10 = [CNResult failureWithError:v25];
    }
  }

  v26 = *MEMORY[0x1E69E9840];

  return v10;
}

uint64_t __40__CNVirtualFileManager_removeItemAtURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 absoluteString];
  v4 = [*(a1 + 32) absoluteString];
  v5 = [v3 hasPrefix:v4];

  return v5;
}

uint64_t __40__CNVirtualFileManager_removeItemAtURL___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 absoluteString];
  v4 = [*(a1 + 32) absoluteString];
  v5 = [v3 hasPrefix:v4];

  return v5;
}

- (BOOL)fileExistsAtURL:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    if (CNGuardOSLog_cn_once_token_0_2 != -1)
    {
      [CNVirtualFileManager dataWithContentsOfURL:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_2, OS_LOG_TYPE_FAULT))
    {
      [CNVirtualFileManager dataWithContentsOfURL:];
    }
  }

  files = self->_files;
  v6 = [v4 absoluteURL];
  v7 = [(NSMutableDictionary *)files objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    directories = self->_directories;
    v10 = [v4 absoluteURL];
    v8 = [(NSMutableOrderedSet *)directories containsObject:v10];
  }

  return v8;
}

- (BOOL)fileExistsAtURL:(id)a3 isDirectory:(BOOL *)a4
{
  v6 = a3;
  if (!v6)
  {
    if (CNGuardOSLog_cn_once_token_0_2 != -1)
    {
      [CNVirtualFileManager dataWithContentsOfURL:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_2, OS_LOG_TYPE_FAULT))
    {
      [CNVirtualFileManager dataWithContentsOfURL:];
    }
  }

  files = self->_files;
  v8 = [v6 absoluteURL];
  v9 = [(NSMutableDictionary *)files objectForKeyedSubscript:v8];

  if (v9)
  {
    if (a4)
    {
      *a4 = 0;
    }

    v10 = 1;
  }

  else
  {
    v11 = [objc_opt_class() URLByNormalizingDirectoryURL:v6];
    v12 = [(NSMutableOrderedSet *)self->_directories containsObject:v11];
    v10 = v12;
    if (a4)
    {
      *a4 = v12;
    }
  }

  return v10;
}

- (void)setContainerURL:(id)a3 forSecurityApplicationGroupIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() URLByNormalizingDirectoryURL:v7];

  [(NSMutableDictionary *)self->_containers setObject:v8 forKeyedSubscript:v6];
  [(NSMutableOrderedSet *)self->_directories addObject:v8];
}

- (id)createDirectoryAtURL:(id)a3 withIntermediateDirectories:(BOOL)a4 attributes:(id)a5
{
  v6 = a3;
  v7 = [objc_opt_class() URLByNormalizingDirectoryURL:v6];
  directories = self->_directories;
  v9 = [objc_opt_class() allParentFoldersOfURL:v6];
  [(NSMutableOrderedSet *)directories addObjectsFromArray:v9];

  [(NSMutableOrderedSet *)self->_directories addObject:v7];
  v10 = [CNResult successWithValue:v6];

  return v10;
}

- (id)contentsOfDirectoryAtURL:(id)a3 includingPropertiesForKeys:(id)a4 options:(unint64_t)a5
{
  v7 = a3;
  v8 = [objc_opt_class() URLByNormalizingDirectoryURL:v7];
  v9 = [v8 path];
  v10 = [(NSMutableDictionary *)self->_files allKeys];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __84__CNVirtualFileManager_contentsOfDirectoryAtURL_includingPropertiesForKeys_options___block_invoke;
  v26[3] = &unk_1E6ED6328;
  v11 = v9;
  v28 = self;
  v29 = a5;
  v27 = v11;
  v12 = [v10 _cn_filter:v26];

  v13 = [(NSMutableOrderedSet *)self->_directories array];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __84__CNVirtualFileManager_contentsOfDirectoryAtURL_includingPropertiesForKeys_options___block_invoke_2;
  v21[3] = &unk_1E6ED6350;
  v22 = v11;
  v23 = v7;
  v24 = self;
  v25 = a5;
  v14 = v7;
  v15 = v11;
  v16 = [v13 _cn_filter:v21];

  v17 = objc_opt_new();
  [v17 addObjectsFromArray:v12];
  [v17 addObjectsFromArray:v16];
  v18 = [v17 _cn_distinctObjects];
  v19 = [CNResult successWithValue:v18];

  return v19;
}

BOOL __84__CNVirtualFileManager_contentsOfDirectoryAtURL_includingPropertiesForKeys_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 path];
  v5 = [v4 hasPrefix:*(a1 + 32)];

  v7 = 0;
  if (v5)
  {
    if ((*(a1 + 48) & 4) == 0 || (v6 = *(a1 + 40), ([objc_opt_class() isHiddenURL:v3] & 1) == 0))
    {
      v7 = 1;
    }
  }

  return v7;
}

uint64_t __84__CNVirtualFileManager_contentsOfDirectoryAtURL_includingPropertiesForKeys_options___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 path];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    goto LABEL_8;
  }

  v6 = [v3 path];
  v7 = [v6 hasPrefix:*(a1 + 32)];

  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = [v3 pathComponents];
    v10 = [v9 count];
    v11 = [*(a1 + 40) pathComponents];
    v12 = [v11 count] + 1;

    if (v10 > v12)
    {
      goto LABEL_8;
    }

    v8 = *(a1 + 56);
  }

  if ((v8 & 4) == 0 || (v13 = *(a1 + 48), ([objc_opt_class() isHiddenURL:v3] & 1) == 0))
  {
    v14 = 1;
    goto LABEL_9;
  }

LABEL_8:
  v14 = 0;
LABEL_9:

  return v14;
}

+ (BOOL)isHiddenURL:(id)a3
{
  v3 = [a3 lastPathComponent];
  v4 = [v3 hasPrefix:@"."];

  return v4;
}

- (BOOL)getValue:(id *)a3 forExtendendAttribute:(id)a4 url:(id)a5 error:(id *)a6
{
  v27[2] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  files = self->_files;
  v13 = [v11 absoluteURL];
  v14 = [(NSMutableDictionary *)files objectForKeyedSubscript:v13];

  if (v14)
  {
    v15 = [v14 extendedAttributes];
    v16 = [v15 objectForKeyedSubscript:v10];

    v17 = v16;
    *a3 = v16;
  }

  else
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A250];
    v26[0] = *MEMORY[0x1E696A368];
    v20 = [v11 path];
    v27[0] = v20;
    v26[1] = *MEMORY[0x1E696AA08];
    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:0];
    v27[1] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v23 = [v18 errorWithDomain:v19 code:4 userInfo:v22];
    if (a6)
    {
      v23 = v23;
      *a6 = v23;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v14 != 0;
}

- (id)valueForExtendedAttribute:(id)a3 atURL:(id)a4
{
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v19 = 0;
  v20 = 0;
  v7 = [(CNVirtualFileManager *)self getValue:&v20 forExtendendAttribute:a3 url:v6 error:&v19];
  v8 = v20;
  v9 = v19;
  if (!v7)
  {
    v10 = [CNResult failureWithError:v9];
    goto LABEL_5;
  }

  if (v8)
  {
    v10 = [CNResult successWithValue:v8];
LABEL_5:
    v11 = v10;
    goto LABEL_6;
  }

  v14 = MEMORY[0x1E696ABC0];
  v21[0] = *MEMORY[0x1E696A368];
  v15 = [v6 path];
  v22[0] = v15;
  v21[1] = *MEMORY[0x1E696AA08];
  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:93 userInfo:0];
  v22[1] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v18 = [v14 errorWithDomain:@"CNContactsFoundationErrorDomain" code:1302 userInfo:v17];
  v11 = [CNResult failureWithError:v18];

LABEL_6:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)setValue:(id)a3 forExtendedAttribute:(id)a4 atURL:(id)a5
{
  files = self->_files;
  v8 = a4;
  v9 = a3;
  v10 = [a5 absoluteURL];
  v11 = [(NSMutableDictionary *)files objectForKeyedSubscript:v10];

  v12 = [v11 extendedAttributes];
  [v12 setObject:v9 forKeyedSubscript:v8];

  v13 = [CNResult successWithValue:MEMORY[0x1E695E118]];

  return v13;
}

- (id)containerURLForSecurityApplicationGroupIdentifier:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_containers objectForKeyedSubscript:a3];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v9 = *MEMORY[0x1E696A578];
    v10[0] = @"Failed to find the container URL for the given application group identifier";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:13 userInfo:v5];
  }

  v6 = [CNResult resultWithValue:v3 orError:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)URLsForDirectory:(unint64_t)a3 inDomains:(unint64_t)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a4 == 5)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/Users/johnappleseed/Library" isDirectory:1];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)URLByNormalizingDirectoryURL:(id)a3
{
  v3 = [a3 path];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:1];

  return v4;
}

+ (id)allParentFoldersOfURL:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 pathComponents];
  if ([v6 count])
  {
    v7 = 0;
    do
    {
      v8 = [v6 _cn_take:++v7];
      v9 = [MEMORY[0x1E695DFF8] fileURLWithPathComponents:v8];
      v10 = [a1 URLByNormalizingDirectoryURL:v9];

      [v5 addObject:v10];
    }

    while ([v6 count] > v7);
  }

  return v5;
}

@end