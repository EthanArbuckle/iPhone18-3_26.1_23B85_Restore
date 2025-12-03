@interface MCDictionaryWriter
- (BOOL)didWriteSucceed;
- (BOOL)repairAccessIfNecessaryWithError:(id *)error;
- (BOOL)write;
- (BOOL)writeData:(id)data error:(id *)error;
- (MCDictionaryWriter)initWithDictionary:(id)dictionary path:(id)path;
- (MCFileAccessRepairTool)repairTool;
- (id)createRepairTool;
- (id)serializedData;
- (void)logResultOfWrite;
- (void)logStartOfWrite;
- (void)reset;
- (void)serializeDataAndWriteToStorage;
@end

@implementation MCDictionaryWriter

- (void)logStartOfWrite
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = qword_1ED4ADE38;
  if (os_log_type_enabled(qword_1ED4ADE38, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    dictionary = [(MCDictionaryWriter *)self dictionary];
    v6 = [dictionary count];
    path = [(MCDictionaryWriter *)self path];
    v9 = 134218242;
    v10 = v6;
    v11 = 2114;
    v12 = path;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEFAULT, "Attempting to write dictionary with %lu entries to path %{public}@...", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)serializeDataAndWriteToStorage
{
  serializedData = [(MCDictionaryWriter *)self serializedData];
  if (serializedData)
  {
    v12 = 0;
    v4 = [(MCDictionaryWriter *)self repairAccessIfNecessaryWithError:&v12];
    v5 = v12;
    if (!v4)
    {
      [(MCDictionaryWriter *)self setBeforeWriteRepairError:v5];
    }

    v11 = 0;
    v6 = [(MCDictionaryWriter *)self writeData:serializedData error:&v11];
    v7 = v11;
    if (v6)
    {
      v10 = 0;
      v8 = [(MCDictionaryWriter *)self repairAccessIfNecessaryWithError:&v10];
      v9 = v10;
      if (!v8)
      {
        [(MCDictionaryWriter *)self setAfterWriteRepairError:v9];
      }
    }

    else
    {
      [(MCDictionaryWriter *)self setWriteError:v7];
    }
  }
}

- (MCFileAccessRepairTool)repairTool
{
  repairTool = self->_repairTool;
  if (!repairTool)
  {
    createRepairTool = [(MCDictionaryWriter *)self createRepairTool];
    v5 = self->_repairTool;
    self->_repairTool = createRepairTool;

    repairTool = self->_repairTool;
  }

  return repairTool;
}

- (id)createRepairTool
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)write
{
  [(MCDictionaryWriter *)self reset];
  [(MCDictionaryWriter *)self logStartOfWrite];
  [(MCDictionaryWriter *)self serializeDataAndWriteToStorage];
  [(MCDictionaryWriter *)self logResultOfWrite];

  return [(MCDictionaryWriter *)self didWriteSucceed];
}

- (void)reset
{
  serializeError = self->_serializeError;
  self->_serializeError = 0;

  writeError = self->_writeError;
  self->_writeError = 0;

  beforeWriteRepairError = self->_beforeWriteRepairError;
  self->_beforeWriteRepairError = 0;

  afterWriteRepairError = self->_afterWriteRepairError;
  self->_afterWriteRepairError = 0;
}

- (MCDictionaryWriter)initWithDictionary:(id)dictionary path:(id)path
{
  dictionaryCopy = dictionary;
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = MCDictionaryWriter;
  v9 = [(MCDictionaryWriter *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dictionary, dictionary);
    v11 = [pathCopy copy];
    path = v10->_path;
    v10->_path = v11;

    repairTool = v10->_repairTool;
    v10->_repairTool = 0;

    [(MCDictionaryWriter *)v10 reset];
  }

  return v10;
}

- (id)serializedData
{
  v3 = MEMORY[0x1E696AE40];
  dictionary = [(MCDictionaryWriter *)self dictionary];
  v8 = 0;
  v5 = [v3 dataWithPropertyList:dictionary format:200 options:0 error:&v8];
  v6 = v8;

  if (!v5)
  {
    [(MCDictionaryWriter *)self setSerializeError:v6];
  }

  return v5;
}

- (BOOL)didWriteSucceed
{
  serializeError = [(MCDictionaryWriter *)self serializeError];
  if (serializeError)
  {
    v4 = 0;
  }

  else
  {
    writeError = [(MCDictionaryWriter *)self writeError];
    if (writeError)
    {
      v4 = 0;
    }

    else
    {
      afterWriteRepairError = [(MCDictionaryWriter *)self afterWriteRepairError];
      v4 = afterWriteRepairError == 0;
    }
  }

  return v4;
}

- (void)logResultOfWrite
{
  v26 = *MEMORY[0x1E69E9840];
  serializeError = [(MCDictionaryWriter *)self serializeError];

  if (!serializeError)
  {
    beforeWriteRepairError = [(MCDictionaryWriter *)self beforeWriteRepairError];

    writeError = [(MCDictionaryWriter *)self writeError];

    if (beforeWriteRepairError)
    {
      v12 = qword_1ED4ADE38;
      v13 = os_log_type_enabled(qword_1ED4ADE38, OS_LOG_TYPE_ERROR);
      if (writeError)
      {
        if (!v13)
        {
          goto LABEL_7;
        }

        v5 = v12;
        path = [(MCDictionaryWriter *)self path];
        beforeWriteRepairError2 = [(MCDictionaryWriter *)self beforeWriteRepairError];
        writeError2 = [(MCDictionaryWriter *)self writeError];
        v20 = 138543874;
        v21 = path;
        v22 = 2114;
        v23 = beforeWriteRepairError2;
        v24 = 2114;
        v25 = writeError2;
        _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Dictionary could not be written to %{public}@, file could not be repaired before writing: %{public}@ and could not write data: %{public}@", &v20, 0x20u);

        goto LABEL_5;
      }

      if (!v13)
      {
        goto LABEL_7;
      }

      v5 = v12;
      path = [(MCDictionaryWriter *)self path];
      beforeWriteRepairError3 = [(MCDictionaryWriter *)self beforeWriteRepairError];
      v20 = 138543618;
      v21 = path;
      v22 = 2114;
      v23 = beforeWriteRepairError3;
      v8 = "Dictionary successfully written to %{public}@, but there was a problem repairing the file before writing: %{public}@";
    }

    else if (writeError)
    {
      v16 = qword_1ED4ADE38;
      if (!os_log_type_enabled(qword_1ED4ADE38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v5 = v16;
      path = [(MCDictionaryWriter *)self path];
      beforeWriteRepairError3 = [(MCDictionaryWriter *)self writeError];
      v20 = 138543618;
      v21 = path;
      v22 = 2114;
      v23 = beforeWriteRepairError3;
      v8 = "Dictionary could not be written to %{public}@, could not write data: %{public}@";
    }

    else
    {
      afterWriteRepairError = [(MCDictionaryWriter *)self afterWriteRepairError];

      v18 = qword_1ED4ADE38;
      if (!afterWriteRepairError)
      {
        if (!os_log_type_enabled(qword_1ED4ADE38, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_7;
        }

        v5 = v18;
        path2 = [(MCDictionaryWriter *)self path];
        v20 = 138543362;
        v21 = path2;
        _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_DEFAULT, "Dictionary successfully written to %{public}@", &v20, 0xCu);

        goto LABEL_6;
      }

      if (!os_log_type_enabled(qword_1ED4ADE38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v5 = v18;
      path = [(MCDictionaryWriter *)self path];
      beforeWriteRepairError3 = [(MCDictionaryWriter *)self afterWriteRepairError];
      v20 = 138543618;
      v21 = path;
      v22 = 2114;
      v23 = beforeWriteRepairError3;
      v8 = "Dictionary successfully written to %{public}@, could not make file readable after write: %{public}@";
    }

LABEL_4:
    _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, v8, &v20, 0x16u);

LABEL_5:
LABEL_6:

    goto LABEL_7;
  }

  v4 = qword_1ED4ADE38;
  if (os_log_type_enabled(qword_1ED4ADE38, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    path = [(MCDictionaryWriter *)self path];
    beforeWriteRepairError3 = [(MCDictionaryWriter *)self serializeError];
    v20 = 138543618;
    v21 = path;
    v22 = 2114;
    v23 = beforeWriteRepairError3;
    v8 = "Dictionary could not be written to %{public}@, could not serialize data: %{public}@";
    goto LABEL_4;
  }

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)writeData:(id)data error:(id *)error
{
  dataCopy = data;
  path = [(MCDictionaryWriter *)self path];
  v12 = 0;
  v8 = [dataCopy writeToFile:path options:1 error:&v12];

  v9 = v12;
  if (error && (v8 & 1) == 0)
  {
    v10 = v9;
    *error = v9;
  }

  return v8;
}

- (BOOL)repairAccessIfNecessaryWithError:(id *)error
{
  repairTool = [(MCDictionaryWriter *)self repairTool];
  path = [(MCDictionaryWriter *)self path];
  v7 = [repairTool fileNeedsRepairAtPath:path];

  if (!v7)
  {
    return 1;
  }

  repairTool2 = [(MCDictionaryWriter *)self repairTool];
  path2 = [(MCDictionaryWriter *)self path];
  v14 = 0;
  v10 = [repairTool2 repairFileAtPath:path2 error:&v14];
  v11 = v14;

  if (error && (v10 & 1) == 0)
  {
    v12 = v11;
    *error = v11;
  }

  return v10;
}

@end