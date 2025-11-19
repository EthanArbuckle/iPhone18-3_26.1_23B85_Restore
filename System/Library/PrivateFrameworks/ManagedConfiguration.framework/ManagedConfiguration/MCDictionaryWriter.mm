@interface MCDictionaryWriter
- (BOOL)didWriteSucceed;
- (BOOL)repairAccessIfNecessaryWithError:(id *)a3;
- (BOOL)write;
- (BOOL)writeData:(id)a3 error:(id *)a4;
- (MCDictionaryWriter)initWithDictionary:(id)a3 path:(id)a4;
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
    v5 = [(MCDictionaryWriter *)self dictionary];
    v6 = [v5 count];
    v7 = [(MCDictionaryWriter *)self path];
    v9 = 134218242;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEFAULT, "Attempting to write dictionary with %lu entries to path %{public}@...", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)serializeDataAndWriteToStorage
{
  v3 = [(MCDictionaryWriter *)self serializedData];
  if (v3)
  {
    v12 = 0;
    v4 = [(MCDictionaryWriter *)self repairAccessIfNecessaryWithError:&v12];
    v5 = v12;
    if (!v4)
    {
      [(MCDictionaryWriter *)self setBeforeWriteRepairError:v5];
    }

    v11 = 0;
    v6 = [(MCDictionaryWriter *)self writeData:v3 error:&v11];
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
    v4 = [(MCDictionaryWriter *)self createRepairTool];
    v5 = self->_repairTool;
    self->_repairTool = v4;

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

- (MCDictionaryWriter)initWithDictionary:(id)a3 path:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = MCDictionaryWriter;
  v9 = [(MCDictionaryWriter *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dictionary, a3);
    v11 = [v8 copy];
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
  v4 = [(MCDictionaryWriter *)self dictionary];
  v8 = 0;
  v5 = [v3 dataWithPropertyList:v4 format:200 options:0 error:&v8];
  v6 = v8;

  if (!v5)
  {
    [(MCDictionaryWriter *)self setSerializeError:v6];
  }

  return v5;
}

- (BOOL)didWriteSucceed
{
  v3 = [(MCDictionaryWriter *)self serializeError];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(MCDictionaryWriter *)self writeError];
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v6 = [(MCDictionaryWriter *)self afterWriteRepairError];
      v4 = v6 == 0;
    }
  }

  return v4;
}

- (void)logResultOfWrite
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(MCDictionaryWriter *)self serializeError];

  if (!v3)
  {
    v10 = [(MCDictionaryWriter *)self beforeWriteRepairError];

    v11 = [(MCDictionaryWriter *)self writeError];

    if (v10)
    {
      v12 = qword_1ED4ADE38;
      v13 = os_log_type_enabled(qword_1ED4ADE38, OS_LOG_TYPE_ERROR);
      if (v11)
      {
        if (!v13)
        {
          goto LABEL_7;
        }

        v5 = v12;
        v6 = [(MCDictionaryWriter *)self path];
        v14 = [(MCDictionaryWriter *)self beforeWriteRepairError];
        v15 = [(MCDictionaryWriter *)self writeError];
        v20 = 138543874;
        v21 = v6;
        v22 = 2114;
        v23 = v14;
        v24 = 2114;
        v25 = v15;
        _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Dictionary could not be written to %{public}@, file could not be repaired before writing: %{public}@ and could not write data: %{public}@", &v20, 0x20u);

        goto LABEL_5;
      }

      if (!v13)
      {
        goto LABEL_7;
      }

      v5 = v12;
      v6 = [(MCDictionaryWriter *)self path];
      v7 = [(MCDictionaryWriter *)self beforeWriteRepairError];
      v20 = 138543618;
      v21 = v6;
      v22 = 2114;
      v23 = v7;
      v8 = "Dictionary successfully written to %{public}@, but there was a problem repairing the file before writing: %{public}@";
    }

    else if (v11)
    {
      v16 = qword_1ED4ADE38;
      if (!os_log_type_enabled(qword_1ED4ADE38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v5 = v16;
      v6 = [(MCDictionaryWriter *)self path];
      v7 = [(MCDictionaryWriter *)self writeError];
      v20 = 138543618;
      v21 = v6;
      v22 = 2114;
      v23 = v7;
      v8 = "Dictionary could not be written to %{public}@, could not write data: %{public}@";
    }

    else
    {
      v17 = [(MCDictionaryWriter *)self afterWriteRepairError];

      v18 = qword_1ED4ADE38;
      if (!v17)
      {
        if (!os_log_type_enabled(qword_1ED4ADE38, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_7;
        }

        v5 = v18;
        v19 = [(MCDictionaryWriter *)self path];
        v20 = 138543362;
        v21 = v19;
        _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_DEFAULT, "Dictionary successfully written to %{public}@", &v20, 0xCu);

        goto LABEL_6;
      }

      if (!os_log_type_enabled(qword_1ED4ADE38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v5 = v18;
      v6 = [(MCDictionaryWriter *)self path];
      v7 = [(MCDictionaryWriter *)self afterWriteRepairError];
      v20 = 138543618;
      v21 = v6;
      v22 = 2114;
      v23 = v7;
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
    v6 = [(MCDictionaryWriter *)self path];
    v7 = [(MCDictionaryWriter *)self serializeError];
    v20 = 138543618;
    v21 = v6;
    v22 = 2114;
    v23 = v7;
    v8 = "Dictionary could not be written to %{public}@, could not serialize data: %{public}@";
    goto LABEL_4;
  }

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)writeData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MCDictionaryWriter *)self path];
  v12 = 0;
  v8 = [v6 writeToFile:v7 options:1 error:&v12];

  v9 = v12;
  if (a4 && (v8 & 1) == 0)
  {
    v10 = v9;
    *a4 = v9;
  }

  return v8;
}

- (BOOL)repairAccessIfNecessaryWithError:(id *)a3
{
  v5 = [(MCDictionaryWriter *)self repairTool];
  v6 = [(MCDictionaryWriter *)self path];
  v7 = [v5 fileNeedsRepairAtPath:v6];

  if (!v7)
  {
    return 1;
  }

  v8 = [(MCDictionaryWriter *)self repairTool];
  v9 = [(MCDictionaryWriter *)self path];
  v14 = 0;
  v10 = [v8 repairFileAtPath:v9 error:&v14];
  v11 = v14;

  if (a3 && (v10 & 1) == 0)
  {
    v12 = v11;
    *a3 = v11;
  }

  return v10;
}

@end