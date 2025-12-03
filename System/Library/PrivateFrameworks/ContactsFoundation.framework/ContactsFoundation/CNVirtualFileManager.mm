@interface CNVirtualFileManager
+ (BOOL)isHiddenURL:(id)l;
+ (id)URLByNormalizingDirectoryURL:(id)l;
+ (id)allParentFoldersOfURL:(id)l;
- (BOOL)fileExistsAtURL:(id)l;
- (BOOL)fileExistsAtURL:(id)l isDirectory:(BOOL *)directory;
- (BOOL)getValue:(id *)value forExtendendAttribute:(id)attribute url:(id)url error:(id *)error;
- (CNVirtualFileManager)init;
- (id)URLsForDirectory:(unint64_t)directory inDomains:(unint64_t)domains;
- (id)asyncDataWithContentsOfURL:(id)l;
- (id)asyncWriteData:(id)data toURL:(id)l options:(unint64_t)options;
- (id)containerURLForSecurityApplicationGroupIdentifier:(id)identifier;
- (id)contentsOfDirectoryAtURL:(id)l includingPropertiesForKeys:(id)keys options:(unint64_t)options;
- (id)createDirectoryAtURL:(id)l withIntermediateDirectories:(BOOL)directories attributes:(id)attributes;
- (id)dataWithContentsOfURL:(id)l;
- (id)observableWithContentsOfURL:(id)l;
- (id)removeItemAtURL:(id)l;
- (id)setValue:(id)value forExtendedAttribute:(id)attribute atURL:(id)l;
- (id)valueForExtendedAttribute:(id)attribute atURL:(id)l;
- (id)writeData:(id)data toURL:(id)l options:(unint64_t)options;
- (void)setContainerURL:(id)l forSecurityApplicationGroupIdentifier:(id)identifier;
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

- (id)dataWithContentsOfURL:(id)l
{
  v18[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
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
  absoluteURL = [lCopy absoluteURL];
  v7 = [(NSMutableDictionary *)files objectForKeyedSubscript:absoluteURL];

  if (v7)
  {
    contents = [v7 contents];
    v9 = [CNResult successWithValue:contents];
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A250];
    v17[0] = *MEMORY[0x1E696A368];
    contents = [lCopy path];
    v18[0] = contents;
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

- (id)writeData:(id)data toURL:(id)l options:(unint64_t)options
{
  optionsCopy = options;
  v26[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  lCopy = l;
  if (!lCopy)
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

  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  if (optionsCopy)
  {
    v18 = [(CNVirtualFileManager *)self createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0];
  }

  else
  {
    v24 = 0;
    if (![(CNVirtualFileManager *)self fileExistsAtURL:uRLByDeletingLastPathComponent isDirectory:&v24]|| v24 != 1)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A250];
      v25[0] = *MEMORY[0x1E696A368];
      path = [lCopy path];
      v26[0] = path;
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
  [(_CNVirtualFile *)v19 setContents:dataCopy];
  files = self->_files;
  absoluteURL = [lCopy absoluteURL];
  [(NSMutableDictionary *)files setObject:v19 forKeyedSubscript:absoluteURL];

  v17 = [CNResult successWithValue:MEMORY[0x1E695E118]];

LABEL_12:
  v22 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)asyncDataWithContentsOfURL:(id)l
{
  lCopy = l;
  if (!lCopy)
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
  v5 = [(CNData *)v4 dataWithContentsOfURL:lCopy];

  return v5;
}

- (id)observableWithContentsOfURL:(id)l
{
  lCopy = l;
  if (!lCopy)
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
  v5 = [(CNData *)v4 observableWithContentsOfURL:lCopy];

  return v5;
}

- (id)asyncWriteData:(id)data toURL:(id)l options:(unint64_t)options
{
  dataCopy = data;
  lCopy = l;
  if (!lCopy)
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
  v10 = [(CNData *)v9 writeData:dataCopy toURL:lCopy options:options];

  return v10;
}

- (id)removeItemAtURL:(id)l
{
  v35[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  files = self->_files;
  absoluteURL = [lCopy absoluteURL];
  v7 = [(NSMutableDictionary *)files objectForKeyedSubscript:absoluteURL];

  if (v7)
  {
    v8 = self->_files;
    absoluteURL2 = [lCopy absoluteURL];
    [(NSMutableDictionary *)v8 setObject:0 forKeyedSubscript:absoluteURL2];

    v10 = [CNResult successWithValue:MEMORY[0x1E695E118]];
  }

  else
  {
    directories = self->_directories;
    absoluteURL3 = [lCopy absoluteURL];
    LODWORD(directories) = [(NSMutableOrderedSet *)directories containsObject:absoluteURL3];

    if (directories)
    {
      v13 = self->_directories;
      absoluteURL4 = [lCopy absoluteURL];
      [(NSMutableOrderedSet *)v13 removeObject:absoluteURL4];

      allKeys = [(NSMutableDictionary *)self->_files allKeys];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __40__CNVirtualFileManager_removeItemAtURL___block_invoke;
      v32[3] = &unk_1E6ED62D8;
      v16 = lCopy;
      v33 = v16;
      v17 = [allKeys _cn_filter:v32];

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __40__CNVirtualFileManager_removeItemAtURL___block_invoke_2;
      v31[3] = &unk_1E6ED6300;
      v31[4] = self;
      [v17 _cn_each:v31];
      array = [(NSMutableOrderedSet *)self->_directories array];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __40__CNVirtualFileManager_removeItemAtURL___block_invoke_3;
      v29[3] = &unk_1E6ED62D8;
      v30 = v16;
      v19 = [array _cn_filter:v29];

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
      path = [lCopy path];
      v35[0] = path;
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

- (BOOL)fileExistsAtURL:(id)l
{
  lCopy = l;
  if (!lCopy)
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
  absoluteURL = [lCopy absoluteURL];
  v7 = [(NSMutableDictionary *)files objectForKeyedSubscript:absoluteURL];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    directories = self->_directories;
    absoluteURL2 = [lCopy absoluteURL];
    v8 = [(NSMutableOrderedSet *)directories containsObject:absoluteURL2];
  }

  return v8;
}

- (BOOL)fileExistsAtURL:(id)l isDirectory:(BOOL *)directory
{
  lCopy = l;
  if (!lCopy)
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
  absoluteURL = [lCopy absoluteURL];
  v9 = [(NSMutableDictionary *)files objectForKeyedSubscript:absoluteURL];

  if (v9)
  {
    if (directory)
    {
      *directory = 0;
    }

    v10 = 1;
  }

  else
  {
    v11 = [objc_opt_class() URLByNormalizingDirectoryURL:lCopy];
    v12 = [(NSMutableOrderedSet *)self->_directories containsObject:v11];
    v10 = v12;
    if (directory)
    {
      *directory = v12;
    }
  }

  return v10;
}

- (void)setContainerURL:(id)l forSecurityApplicationGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  lCopy = l;
  v8 = [objc_opt_class() URLByNormalizingDirectoryURL:lCopy];

  [(NSMutableDictionary *)self->_containers setObject:v8 forKeyedSubscript:identifierCopy];
  [(NSMutableOrderedSet *)self->_directories addObject:v8];
}

- (id)createDirectoryAtURL:(id)l withIntermediateDirectories:(BOOL)directories attributes:(id)attributes
{
  lCopy = l;
  v7 = [objc_opt_class() URLByNormalizingDirectoryURL:lCopy];
  directories = self->_directories;
  v9 = [objc_opt_class() allParentFoldersOfURL:lCopy];
  [(NSMutableOrderedSet *)directories addObjectsFromArray:v9];

  [(NSMutableOrderedSet *)self->_directories addObject:v7];
  v10 = [CNResult successWithValue:lCopy];

  return v10;
}

- (id)contentsOfDirectoryAtURL:(id)l includingPropertiesForKeys:(id)keys options:(unint64_t)options
{
  lCopy = l;
  v8 = [objc_opt_class() URLByNormalizingDirectoryURL:lCopy];
  path = [v8 path];
  allKeys = [(NSMutableDictionary *)self->_files allKeys];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __84__CNVirtualFileManager_contentsOfDirectoryAtURL_includingPropertiesForKeys_options___block_invoke;
  v26[3] = &unk_1E6ED6328;
  v11 = path;
  selfCopy = self;
  optionsCopy = options;
  v27 = v11;
  v12 = [allKeys _cn_filter:v26];

  array = [(NSMutableOrderedSet *)self->_directories array];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __84__CNVirtualFileManager_contentsOfDirectoryAtURL_includingPropertiesForKeys_options___block_invoke_2;
  v21[3] = &unk_1E6ED6350;
  v22 = v11;
  v23 = lCopy;
  selfCopy2 = self;
  optionsCopy2 = options;
  v14 = lCopy;
  v15 = v11;
  v16 = [array _cn_filter:v21];

  v17 = objc_opt_new();
  [v17 addObjectsFromArray:v12];
  [v17 addObjectsFromArray:v16];
  _cn_distinctObjects = [v17 _cn_distinctObjects];
  v19 = [CNResult successWithValue:_cn_distinctObjects];

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

+ (BOOL)isHiddenURL:(id)l
{
  lastPathComponent = [l lastPathComponent];
  v4 = [lastPathComponent hasPrefix:@"."];

  return v4;
}

- (BOOL)getValue:(id *)value forExtendendAttribute:(id)attribute url:(id)url error:(id *)error
{
  v27[2] = *MEMORY[0x1E69E9840];
  attributeCopy = attribute;
  urlCopy = url;
  files = self->_files;
  absoluteURL = [urlCopy absoluteURL];
  v14 = [(NSMutableDictionary *)files objectForKeyedSubscript:absoluteURL];

  if (v14)
  {
    extendedAttributes = [v14 extendedAttributes];
    v16 = [extendedAttributes objectForKeyedSubscript:attributeCopy];

    v17 = v16;
    *value = v16;
  }

  else
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A250];
    v26[0] = *MEMORY[0x1E696A368];
    path = [urlCopy path];
    v27[0] = path;
    v26[1] = *MEMORY[0x1E696AA08];
    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:0];
    v27[1] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v23 = [v18 errorWithDomain:v19 code:4 userInfo:v22];
    if (error)
    {
      v23 = v23;
      *error = v23;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v14 != 0;
}

- (id)valueForExtendedAttribute:(id)attribute atURL:(id)l
{
  v22[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v19 = 0;
  v20 = 0;
  v7 = [(CNVirtualFileManager *)self getValue:&v20 forExtendendAttribute:attribute url:lCopy error:&v19];
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
  path = [lCopy path];
  v22[0] = path;
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

- (id)setValue:(id)value forExtendedAttribute:(id)attribute atURL:(id)l
{
  files = self->_files;
  attributeCopy = attribute;
  valueCopy = value;
  absoluteURL = [l absoluteURL];
  v11 = [(NSMutableDictionary *)files objectForKeyedSubscript:absoluteURL];

  extendedAttributes = [v11 extendedAttributes];
  [extendedAttributes setObject:valueCopy forKeyedSubscript:attributeCopy];

  v13 = [CNResult successWithValue:MEMORY[0x1E695E118]];

  return v13;
}

- (id)containerURLForSecurityApplicationGroupIdentifier:(id)identifier
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_containers objectForKeyedSubscript:identifier];
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

- (id)URLsForDirectory:(unint64_t)directory inDomains:(unint64_t)domains
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (domains == 5)
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

+ (id)URLByNormalizingDirectoryURL:(id)l
{
  path = [l path];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:path isDirectory:1];

  return v4;
}

+ (id)allParentFoldersOfURL:(id)l
{
  lCopy = l;
  v5 = objc_opt_new();
  pathComponents = [lCopy pathComponents];
  if ([pathComponents count])
  {
    v7 = 0;
    do
    {
      v8 = [pathComponents _cn_take:++v7];
      v9 = [MEMORY[0x1E695DFF8] fileURLWithPathComponents:v8];
      v10 = [self URLByNormalizingDirectoryURL:v9];

      [v5 addObject:v10];
    }

    while ([pathComponents count] > v7);
  }

  return v5;
}

@end