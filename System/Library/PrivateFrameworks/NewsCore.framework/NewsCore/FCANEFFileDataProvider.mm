@interface FCANEFFileDataProvider
- (FCANEFFileDataProvider)initWithFilePath:(id)path wrappingKey:(id)key options:(int64_t)options holdToken:(id)token;
- (NSData)data;
- (NSString)filePath;
@end

@implementation FCANEFFileDataProvider

- (FCANEFFileDataProvider)initWithFilePath:(id)path wrappingKey:(id)key options:(int64_t)options holdToken:(id)token
{
  pathCopy = path;
  keyCopy = key;
  tokenCopy = token;
  v19.receiver = self;
  v19.super_class = FCANEFFileDataProvider;
  v13 = [(FCANEFFileDataProvider *)&v19 init];
  if (v13)
  {
    v14 = [pathCopy copy];
    filePath = v13->_filePath;
    v13->_filePath = v14;

    v16 = [keyCopy copy];
    wrappingKey = v13->_wrappingKey;
    v13->_wrappingKey = v16;

    v13->_options = options;
    objc_storeStrong(&v13->_holdToken, token);
  }

  return v13;
}

- (NSData)data
{
  v3 = objc_autoreleasePoolPush();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __30__FCANEFFileDataProvider_data__block_invoke;
  aBlock[3] = &unk_1E7C437D8;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = [MEMORY[0x1E696AC00] fileHandleForReadingAtPath:self->_filePath];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [[FCANEFHeader alloc] initWithFileHandle:v7];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      v22 = v3;
      [v7 seekToFileOffset:{objc_msgSend(v10[4], "length")}];
      readDataToEndOfFile = [v7 readDataToEndOfFile];
      v11 = v10[2];
      wrappingKey = [(FCANEFFileDataProvider *)self wrappingKey];
      v13 = [v11 fc_anefDecryptWithKey:wrappingKey];

      if (v13)
      {
        v14 = v13;
        v15 = [readDataToEndOfFile fc_anefDecryptWithKey:v14];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
          if ((-[FCANEFFileDataProvider options](self, "options") & 1) == 0 || (v18 = v10[3], IsGZip = FCMIMETypeIsGZip(v18), v18, !IsGZip) || ([v17 fc_gzipInflate], (v19 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v19 = v17;
          }
        }

        else
        {
          v24 = v4;
          v19 = v24[2]();
          v17 = v24;
        }
      }

      else
      {
        v25 = v4;
        v19 = v25[2]();
        v14 = v25;
      }

      v3 = v22;
    }

    else
    {
      v26 = v4;
      v19 = v26[2]();
      v10 = v26;
    }
  }

  else
  {
    v27 = v4;
    v19 = v27[2]();
    v7 = v27;
  }

  objc_autoreleasePoolPop(v3);

  return v19;
}

- (NSString)filePath
{
  v15 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"the file path for an encrypted asset should not be accessed directly"];
    v7 = 136315906;
    v8 = "[FCANEFFileDataProvider filePath]";
    v9 = 2080;
    v10 = "FCANEFFileDataProvider.m";
    v11 = 1024;
    v12 = 100;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v7, 0x26u);
  }

  filePath = self->_filePath;
  v4 = *MEMORY[0x1E69E9840];

  return filePath;
}

@end