@interface BMFileBackedCounter
- (BMFileBackedCounter)initWithFilename:(id)filename protectionClass:(int)class directory:(id)directory domain:(unint64_t)domain readOnly:(BOOL)only error:(id *)error;
- (BOOL)_atomicallyWriteFileWithDictionary:(id)dictionary error:(id *)error;
- (BOOL)incrementCount:(id *)count error:(id *)error;
- (id)_atomicallyCreateFileWithDictionary:(id)dictionary error:(id *)error;
- (id)_createFileDictionary:(id *)dictionary;
- (id)_decodeFileDictionary:(id)dictionary error:(id *)error;
- (id)_encodeFileDictionary:(id)dictionary error:(id *)error;
- (id)_fileUUIDFromFileDictionary:(id)dictionary;
- (id)_loadFileDictionary:(id *)dictionary;
- (id)_newFileDictionaryWithFileUUID:(id)d count:(id)count error:(id *)error;
- (id)_readableFileDictionary:(id)dictionary;
@end

@implementation BMFileBackedCounter

- (BMFileBackedCounter)initWithFilename:(id)filename protectionClass:(int)class directory:(id)directory domain:(unint64_t)domain readOnly:(BOOL)only error:(id *)error
{
  v68[1] = *MEMORY[0x1E69E9840];
  filenameCopy = filename;
  directoryCopy = directory;
  v57.receiver = self;
  v57.super_class = BMFileBackedCounter;
  domainCopy = domain;
  v16 = [(BMFileBackedCounter *)&v57 init];
  if (!v16)
  {
    goto LABEL_17;
  }

  if (!filenameCopy || !directoryCopy)
  {
    v27 = MEMORY[0x1E696ABC0];
    v67 = *MEMORY[0x1E696A578];
    directoryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid {filename: %@, directory: %@}", filenameCopy, directoryCopy];
    v68[0] = directoryCopy;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:&v67 count:1];
    v30 = [v27 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedCounter" code:1 userInfo:v29];
    BMSetError(error, v30);

LABEL_26:
    v44 = 0;
    goto LABEL_27;
  }

  v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:filenameCopy relativeToURL:directoryCopy];
  path = [v17 path];
  filePath = v16->_filePath;
  v16->_filePath = path;

  v20 = [(NSString *)v16->_filePath stringByAppendingString:@"-lock"];
  lockFilePath = v16->_lockFilePath;
  v16->_lockFilePath = v20;

  v16->_protectionClass = class;
  v16->_domain = domain;
  v16->_readOnly = only;
  path2 = [directoryCopy path];
  if ([BMPaths pathIsManaged:path2 domain:&domainCopy])
  {
    v23 = +[BMProcess current];
    v24 = [v23 reliesOnDirectAccessForDomain:domainCopy];

    if (!v24)
    {
      path3 = [directoryCopy path];
      v26 = [BMFileManager fileManagerWithMediatedAccessToDirectory:path3 useCase:@"__legacy__" domain:domainCopy user:geteuid()];
      goto LABEL_10;
    }
  }

  else
  {
  }

  path3 = [directoryCopy path];
  v26 = [BMFileManager fileManagerWithDirectAccessToDirectory:path3 cachingOptions:0];
LABEL_10:
  fileManager = v16->_fileManager;
  v16->_fileManager = v26;

  v56 = 0;
  v32 = [(BMFileBackedCounter *)v16 _loadFileDictionary:&v56];
  v33 = v56;
  v34 = v33;
  if (v32)
  {
    v35 = __biome_log_for_category(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v16->_filePath;
      v37 = [(BMFileBackedCounter *)v16 _readableFileDictionary:v32];
      *buf = 138412546;
      v64 = v36;
      v65 = 2112;
      v66 = v37;
      _os_log_impl(&dword_1AC15D000, v35, OS_LOG_TYPE_DEFAULT, "Found prior counter file at path: %@ contents: %@", buf, 0x16u);
    }
  }

  else if ([v33 code] != 4 || v16->_readOnly || (v55 = v34, -[BMFileBackedCounter _createFileDictionary:](v16, "_createFileDictionary:", &v55), v32 = objc_claimAutoreleasedReturnValue(), v45 = v55, v34, v34 = v45, !v32))
  {
    BMSetError(error, v34);
LABEL_25:

    goto LABEL_26;
  }

  v38 = [(BMFileBackedCounter *)v16 _fileUUIDFromFileDictionary:v32];
  fileUUID = v16->_fileUUID;
  v16->_fileUUID = v38;

  v40 = v16->_fileUUID;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v46 = MEMORY[0x1E696ABC0];
    v61 = *MEMORY[0x1E696A578];
    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid fileUUID (%@) on init for file at path: %@ from dictionary: %@", v16->_fileUUID, v16->_filePath, v32];
    v62 = v47;
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v49 = v46;
    v50 = 7;
LABEL_24:
    v52 = [v49 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedCounter" code:v50 userInfo:v48];
    BMSetError(error, v52);

    goto LABEL_25;
  }

  v41 = [(BMFileBackedCounter *)v16 _countFromFileDictionary:v32];
  lastObservedCount = v16->_lastObservedCount;
  v16->_lastObservedCount = v41;

  v43 = v16->_lastObservedCount;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v51 = MEMORY[0x1E696ABC0];
    v59 = *MEMORY[0x1E696A578];
    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid count (%@) on init for file at path: %@ from dictionary: %@", v16->_lastObservedCount, v16->_filePath, v32];
    v60 = v47;
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v49 = v51;
    v50 = 6;
    goto LABEL_24;
  }

LABEL_17:
  v44 = v16;
LABEL_27:

  v53 = *MEMORY[0x1E69E9840];
  return v44;
}

- (id)_fileUUIDFromFileDictionary:(id)dictionary
{
  v3 = [dictionary objectForKey:@"fileUUID"];
  v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(v3, "bytes")}];

  return v4;
}

- (id)_newFileDictionaryWithFileUUID:(id)d count:(id)count error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  countCopy = count;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A578];
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v10 = NSStringFromClass(v14);
    v15 = [v13 stringWithFormat:@"Unexpected fileUUID: %@ (expected %@) file path: %@", dCopy, v10, self->_filePath];
    v30[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v17 = v12;
    v18 = 7;
LABEL_6:
    v22 = [v17 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedCounter" code:v18 userInfo:v16];
    BMSetError(error, v22);

    v11 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A578];
    v20 = MEMORY[0x1E696AEC0];
    v21 = objc_opt_class();
    v10 = NSStringFromClass(v21);
    v15 = [v20 stringWithFormat:@"Unexpected count: %@ (expected %@) file path: %@", countCopy, v10, self->_filePath];
    v28 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v17 = v19;
    v18 = 6;
    goto LABEL_6;
  }

  v25[0] = @"fileUUID";
  v10 = BMDataFromNSUUID(dCopy);
  v25[1] = @"count";
  v26[0] = v10;
  v26[1] = countCopy;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
LABEL_7:

  v23 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)_encodeFileDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v15 = 0;
  v7 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionaryCopy format:200 options:0 error:&v15];
  v8 = v15;
  if ([v7 length])
  {
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to encode dictionary: %@ for counter file at path: %@ error: %@", dictionaryCopy, self->_filePath, v8];
    [v11 setObject:v12 forKey:*MEMORY[0x1E696A578]];

    if (v8)
    {
      [v11 setObject:v8 forKey:*MEMORY[0x1E696AA08]];
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.BiomeFoundation.FileBackedCounter" code:8 userInfo:v11];

    v13 = __biome_log_for_category(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [BMFileBackedDictionary _loadDictionaryOrCreate:readOnly:initialDictionary:error:];
    }

    BMSetError(error, v10);
    v9 = 0;
  }

  return v9;
}

- (id)_decodeFileDictionary:(id)dictionary error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23 = 0;
  v7 = [MEMORY[0x1E696AE40] propertyListWithData:dictionaryCopy options:0 format:0 error:&v23];
  v8 = v23;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
      v10 = v8;
      goto LABEL_13;
    }

    v14 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v15 = MEMORY[0x1E696AEC0];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v15 stringWithFormat:@"Unexpected plist class (%@) of object: %@ at path: %@", v17, v7, self->_filePath];
    v25[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v10 = [v14 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedCounter" code:5 userInfo:v19];

    v20 = __biome_log_for_category(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [BMFileBackedDictionary _loadDictionaryOrCreate:readOnly:initialDictionary:error:];
    }

    BMSetError(error, v10);
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dictionaryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode prior file-backed counter at path: %@ with data: %@", self->_filePath, dictionaryCopy];
    [v11 setObject:dictionaryCopy forKey:*MEMORY[0x1E696A578]];

    if (v8)
    {
      [v11 setObject:v8 forKey:*MEMORY[0x1E696AA08]];
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.BiomeFoundation.FileBackedCounter" code:3 userInfo:v11];

    v13 = __biome_log_for_category(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [BMFileBackedDictionary _loadDictionaryOrCreate:readOnly:initialDictionary:error:];
    }

    BMSetError(error, v10);
  }

  v9 = 0;
LABEL_13:

  v21 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_readableFileDictionary:(id)dictionary
{
  v4 = MEMORY[0x1E696AEC0];
  dictionaryCopy = dictionary;
  v6 = [(BMFileBackedCounter *)self _fileUUIDFromFileDictionary:dictionaryCopy];
  uUIDString = [v6 UUIDString];
  v8 = [(BMFileBackedCounter *)self _countFromFileDictionary:dictionaryCopy];

  v9 = [v4 stringWithFormat:@"{ %@: %@, %@: %@}", @"fileUUID", uUIDString, @"count", v8];

  return v9;
}

- (id)_createFileDictionary:(id *)dictionary
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v11 = 0;
  v6 = [(BMFileBackedCounter *)self _newFileDictionaryWithFileUUID:uUID count:&unk_1F20EBD40 error:&v11];
  v7 = v11;

  if (!v6)
  {
    v8 = __biome_log_for_category(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(BMFileBackedCounter *)v7 _createFileDictionary:?];
    }

    BMSetError(dictionary, v7);
  }

  v9 = [(BMFileBackedCounter *)self _atomicallyCreateFileWithDictionary:v6 error:dictionary];

  return v9;
}

- (id)_loadFileDictionary:(id *)dictionary
{
  v31[1] = *MEMORY[0x1E69E9840];
  p_filePath = &self->_filePath;
  filePath = self->_filePath;
  fileManager = self->_fileManager;
  v8 = *(p_filePath + 4);
  v27 = 0;
  v9 = [(BMFileManager *)fileManager fileHandleForFileAtPath:filePath flags:0 protection:v8 error:&v27];
  v10 = v27;
  v26 = v10;
  v11 = [v9 readDataWithError:&v26];
  v12 = v26;

  if (v11)
  {
    v13 = [(BMFileBackedCounter *)self _decodeFileDictionary:v11 error:dictionary];
  }

  else
  {
    userInfo = [v12 userInfo];
    v15 = *MEMORY[0x1E696AA08];
    v16 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    code = [v16 code];

    if (code == 2)
    {
      v18 = MEMORY[0x1E696ABC0];
      v30 = v15;
      v31[0] = v12;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v20 = [v18 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedCounter" code:4 userInfo:v19];
      BMSetError(dictionary, v20);
    }

    else
    {
      v21 = __biome_log_for_category(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [BMFileBackedCounter _loadFileDictionary:?];
      }

      if (v12)
      {
        v28 = v15;
        v29 = v12;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      }

      else
      {
        v22 = 0;
      }

      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.BiomeFoundation.FileBackedCounter" code:2 userInfo:v22];
      BMSetError(dictionary, v23);
    }

    v13 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_atomicallyCreateFileWithDictionary:(id)dictionary error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = __biome_log_for_category(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    filePath = self->_filePath;
    v9 = [(BMFileBackedCounter *)self _readableFileDictionary:dictionaryCopy];
    *buf = 138412546;
    v33 = filePath;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_1AC15D000, v7, OS_LOG_TYPE_DEFAULT, "Creating new counter file at path: %@ contents: %@", buf, 0x16u);
  }

  v10 = [(BMFileBackedCounter *)self _encodeFileDictionary:dictionaryCopy error:error];
  if (!v10)
  {
    v18 = 0;
    goto LABEL_15;
  }

  p_filePath = &self->_filePath;
  v11 = self->_filePath;
  fileManager = self->_fileManager;
  protectionClass = self->_protectionClass;
  v31 = 0;
  v15 = [(BMFileManager *)fileManager replaceFileAtPath:v11 withData:v10 protection:protectionClass flags:4 error:&v31];
  v16 = v31;
  if (v15)
  {
    v17 = dictionaryCopy;
  }

  else
  {
    v19 = __biome_log_for_category(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [BMFileBackedCounter _atomicallyCreateFileWithDictionary:? error:?];
    }

    v30 = 0;
    v17 = [(BMFileBackedCounter *)self _loadFileDictionary:&v30];
    v20 = v30;

    if (!v17)
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to read back counter file after atomic replace failed at path: %@", *p_filePath];
      [v26 setObject:v27 forKey:*MEMORY[0x1E696A578]];

      if (v20)
      {
        [v26 setObject:v20 forKey:*MEMORY[0x1E696AA08]];
      }

      v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.BiomeFoundation.FileBackedCounter" code:9 userInfo:v26];

      BMSetError(error, v28);
      v29 = __biome_log_for_category(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [BMFileBackedDictionary _loadDictionaryOrCreate:readOnly:initialDictionary:error:];
      }

      dictionaryCopy = 0;
      goto LABEL_14;
    }

    v21 = __biome_log_for_category(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = self->_filePath;
      v23 = [(BMFileBackedCounter *)self _readableFileDictionary:v17];
      *buf = 138412546;
      v33 = v22;
      v34 = 2112;
      v35 = v23;
      _os_log_impl(&dword_1AC15D000, v21, OS_LOG_TYPE_DEFAULT, "Successfully read back counter file at path: %@ contents: %@", buf, 0x16u);
    }
  }

  dictionaryCopy = v17;
LABEL_14:

  v18 = dictionaryCopy;
LABEL_15:

  v24 = *MEMORY[0x1E69E9840];

  return v18;
}

- (BOOL)_atomicallyWriteFileWithDictionary:(id)dictionary error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [(BMFileBackedCounter *)self _encodeFileDictionary:dictionaryCopy error:error];
  if (v7)
  {
    fileManager = self->_fileManager;
    filePath = self->_filePath;
    protectionClass = self->_protectionClass;
    v21 = 0;
    v11 = [(BMFileManager *)fileManager replaceFileAtPath:filePath withData:v7 protection:protectionClass flags:0 error:&v21];
    v12 = v21;
    if (v11)
    {
      v13 = __biome_log_for_category(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v19 = self->_filePath;
        v20 = [(BMFileBackedCounter *)self _readableFileDictionary:dictionaryCopy];
        *buf = 138412546;
        v23 = v19;
        v24 = 2112;
        v25 = v20;
        _os_log_debug_impl(&dword_1AC15D000, v13, OS_LOG_TYPE_DEBUG, "Counter file replaced at path: %@ contents: %@", buf, 0x16u);
      }

      v14 = v12;
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to atomically replace counter file at path: %@", self->_filePath];
      [v13 setObject:v15 forKey:*MEMORY[0x1E696A578]];

      if (v12)
      {
        [v13 setObject:v12 forKey:*MEMORY[0x1E696AA08]];
      }

      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.BiomeFoundation.FileBackedCounter" code:10 userInfo:v13];

      BMSetError(error, v14);
      v16 = __biome_log_for_category(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [BMFileBackedDictionary _loadDictionaryOrCreate:readOnly:initialDictionary:error:];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)incrementCount:(id *)count error:(id *)error
{
  v36[1] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__2;
  v33 = __Block_byref_object_dispose__2;
  v34 = 0;
  v26 = 0;
  v27[0] = &v26;
  v27[1] = 0x3032000000;
  v27[2] = __Block_byref_object_copy__2;
  v27[3] = __Block_byref_object_dispose__2;
  v28 = 0;
  if (self->_readOnly)
  {
    v7 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot increment read-only %@ instance (path: %@)", objc_opt_class(), self->_filePath];
    v36[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v10 = [v7 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedCounter" code:11 userInfo:v9];
    v11 = *(v27[0] + 40);
    *(v27[0] + 40) = v10;
  }

  else
  {
    fileManager = self->_fileManager;
    lockFilePath = self->_lockFilePath;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __44__BMFileBackedCounter_incrementCount_error___block_invoke;
    v25[3] = &unk_1E796B600;
    v25[4] = self;
    v25[5] = &v26;
    v25[6] = &v29;
    [(BMFileManager *)fileManager acquireLockfile:lockFilePath andRunBlock:v25];
  }

  if (v30[5] && !*(v27[0] + 40))
  {
    v22 = 1;
    if (!count)
    {
      goto LABEL_12;
    }

LABEL_11:
    *count = v30[5];
    goto LABEL_12;
  }

  v14 = __biome_log_for_category(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(BMFileBackedCounter *)v27 incrementCount:v14 error:v15, v16, v17, v18, v19, v20];
  }

  BMSetError(error, *(v27[0] + 40));
  v21 = v30[5];
  v30[5] = 0;

  v22 = 0;
  if (count)
  {
    goto LABEL_11;
  }

LABEL_12:
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v29, 8);
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

void __44__BMFileBackedCounter_incrementCount_error___block_invoke(uint64_t a1)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 _loadFileDictionary:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [*(a1 + 32) _fileUUIDFromFileDictionary:v4];
    if ([v5 isEqual:*(*(a1 + 32) + 64)])
    {
      v6 = [*(a1 + 32) _countFromFileDictionary:v4];
      v7 = [v6 unsignedLongLongValue];
      if (v7 >= [*(*(a1 + 32) + 48) unsignedLongLongValue])
      {
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v7 + 1];
        v19 = *(a1 + 32);
        v20 = v19[8];
        v21 = *(*(a1 + 40) + 8);
        v32 = *(v21 + 40);
        v17 = [v19 _newFileDictionaryWithFileUUID:v20 count:v9 error:&v32];
        objc_storeStrong((v21 + 40), v32);

        if (!v17)
        {
          goto LABEL_7;
        }

        v22 = *(a1 + 32);
        v23 = *(*(a1 + 40) + 8);
        v31 = *(v23 + 40);
        v24 = [v22 _atomicallyWriteFileWithDictionary:v17 error:&v31];
        objc_storeStrong((v23 + 40), v31);
        if (!v24)
        {
          goto LABEL_7;
        }

        v25 = [*(a1 + 32) _countFromFileDictionary:v17];
        v26 = *(*(a1 + 48) + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = v25;

        v28 = *(*(*(a1 + 48) + 8) + 40);
        v29 = *(a1 + 32);
        v30 = v28;
        v10 = *(v29 + 48);
        *(v29 + 48) = v30;
        v4 = v17;
      }

      else
      {
        v8 = MEMORY[0x1E696ABC0];
        v34 = *MEMORY[0x1E696A578];
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"current counter file count (%@) is less than last observed (%@) at path: %@", v6, *(*(a1 + 32) + 48), *(*(a1 + 32) + 8)];
        v35 = v9;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v11 = [v8 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedCounter" code:7 userInfo:v10];
        v12 = *(*(a1 + 40) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;
      }
    }

    else
    {
      v14 = MEMORY[0x1E696ABC0];
      v36 = *MEMORY[0x1E696A578];
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"current counter file UUID (%@) does not match expected (%@) at path: %@", v5, *(*(a1 + 32) + 64), *(*(a1 + 32) + 8)];
      v37[0] = v6;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      v15 = [v14 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedCounter" code:7 userInfo:v9];
      v16 = *(*(a1 + 40) + 8);
      v10 = *(v16 + 40);
      *(v16 + 40) = v15;
    }

    v17 = v4;
LABEL_7:
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_createFileDictionary:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_5(&dword_1AC15D000, v3, v4, "Failed to construct dictionary: %@ for new counter file at path: %@");
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_loadFileDictionary:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_1_5(&dword_1AC15D000, v2, v3, "Failed to open prior file-backed counter at path: %@ error: %@");
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_atomicallyCreateFileWithDictionary:(uint64_t *)a1 error:.cold.1(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_1_5(&dword_1AC15D000, v2, v3, "Failed to atomically replace counter file at path: %@ with error %@");
  v4 = *MEMORY[0x1E69E9840];
}

- (void)incrementCount:(uint64_t)a3 error:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(*a1 + 40));
  OUTLINED_FUNCTION_0(&dword_1AC15D000, a2, a3, "Increment failed: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end