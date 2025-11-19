@interface DMCDictionaryWriter
- (BOOL)didWriteSucceed;
- (BOOL)repairAccessIfNecessaryWithError:(id *)a3;
- (BOOL)write;
- (BOOL)writeData:(id)a3 error:(id *)a4;
- (DMCDictionaryWriter)initWithDictionary:(id)a3 path:(id)a4 writeOptions:(unint64_t)a5;
- (DMCFileAccessRepairTool)repairTool;
- (id)createRepairTool;
- (id)serializedData;
- (void)logResultOfWrite;
- (void)logStartOfWrite;
- (void)reset;
- (void)serializeDataAndWriteToStorage;
@end

@implementation DMCDictionaryWriter

- (DMCDictionaryWriter)initWithDictionary:(id)a3 path:(id)a4 writeOptions:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = DMCDictionaryWriter;
  v11 = [(DMCDictionaryWriter *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dictionary, a3);
    v13 = [v10 copy];
    path = v12->_path;
    v12->_path = v13;

    v12->_options = a5;
    repairTool = v12->_repairTool;
    v12->_repairTool = 0;

    [(DMCDictionaryWriter *)v12 reset];
  }

  return v12;
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

- (DMCFileAccessRepairTool)repairTool
{
  repairTool = self->_repairTool;
  if (!repairTool)
  {
    v4 = [(DMCDictionaryWriter *)self createRepairTool];
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

- (id)serializedData
{
  v3 = MEMORY[0x1E696AE40];
  v4 = [(DMCDictionaryWriter *)self dictionary];
  v8 = 0;
  v5 = [v3 dataWithPropertyList:v4 format:200 options:0 error:&v8];
  v6 = v8;

  if (!v5)
  {
    [(DMCDictionaryWriter *)self setSerializeError:v6];
  }

  return v5;
}

- (BOOL)write
{
  [(DMCDictionaryWriter *)self reset];
  [(DMCDictionaryWriter *)self logStartOfWrite];
  [(DMCDictionaryWriter *)self serializeDataAndWriteToStorage];
  [(DMCDictionaryWriter *)self logResultOfWrite];

  return [(DMCDictionaryWriter *)self didWriteSucceed];
}

- (BOOL)didWriteSucceed
{
  v3 = [(DMCDictionaryWriter *)self serializeError];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(DMCDictionaryWriter *)self writeError];
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v6 = [(DMCDictionaryWriter *)self afterWriteRepairError];
      v4 = v6 == 0;
    }
  }

  return v4;
}

- (void)logStartOfWrite
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = DMCLogObjects()[3];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(DMCDictionaryWriter *)self dictionary];
    v6 = [v5 count];
    v7 = [(DMCDictionaryWriter *)self path];
    v9 = 134218242;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_DEFAULT, "Attempting to write dictionary with %lu entries to path %{public}@...", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)logResultOfWrite
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(DMCDictionaryWriter *)self serializeError];

  if (v3)
  {
    v4 = DMCLogObjects()[3];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [(DMCDictionaryWriter *)self path];
      v7 = [(DMCDictionaryWriter *)self serializeError];
      v20 = 138543618;
      v21 = v6;
      v22 = 2114;
      v23 = v7;
      v8 = "Dictionary could not be written to %{public}@, could not serialize data: %{public}@";
LABEL_4:
      _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_ERROR, v8, &v20, 0x16u);

LABEL_13:
LABEL_14:

      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v9 = [(DMCDictionaryWriter *)self beforeWriteRepairError];

  v10 = [(DMCDictionaryWriter *)self writeError];

  if (!v9)
  {
    if (!v10)
    {
      v17 = [(DMCDictionaryWriter *)self afterWriteRepairError];

      v18 = DMCLogObjects()[3];
      if (!v17)
      {
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        v5 = v18;
        v19 = [(DMCDictionaryWriter *)self path];
        v20 = 138543362;
        v21 = v19;
        _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_DEFAULT, "Dictionary successfully written to %{public}@", &v20, 0xCu);

        goto LABEL_14;
      }

      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v5 = v18;
      v6 = [(DMCDictionaryWriter *)self path];
      v7 = [(DMCDictionaryWriter *)self afterWriteRepairError];
      v20 = 138543618;
      v21 = v6;
      v22 = 2114;
      v23 = v7;
      v8 = "Dictionary successfully written to %{public}@, could not make file readable after write: %{public}@";
      goto LABEL_4;
    }

    v15 = DMCLogObjects()[3];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v5 = v15;
    v6 = [(DMCDictionaryWriter *)self path];
    v13 = [(DMCDictionaryWriter *)self writeError];
    v20 = 138543874;
    v21 = v6;
    v22 = 2114;
    v23 = v13;
    v24 = 2048;
    v25 = [(DMCDictionaryWriter *)self options];
    _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_ERROR, "Dictionary could not be written to %{public}@, could not write data: %{public}@. Write Options: %lu", &v20, 0x20u);
LABEL_12:

    goto LABEL_13;
  }

  v11 = DMCLogObjects()[3];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  if (!v10)
  {
    if (!v12)
    {
      goto LABEL_15;
    }

    v5 = v11;
    v6 = [(DMCDictionaryWriter *)self path];
    v7 = [(DMCDictionaryWriter *)self beforeWriteRepairError];
    v20 = 138543618;
    v21 = v6;
    v22 = 2114;
    v23 = v7;
    v8 = "Dictionary successfully written to %{public}@, but there was a problem repairing the file before writing: %{public}@";
    goto LABEL_4;
  }

  if (v12)
  {
    v5 = v11;
    v6 = [(DMCDictionaryWriter *)self path];
    v13 = [(DMCDictionaryWriter *)self beforeWriteRepairError];
    v14 = [(DMCDictionaryWriter *)self writeError];
    v20 = 138543874;
    v21 = v6;
    v22 = 2114;
    v23 = v13;
    v24 = 2114;
    v25 = v14;
    _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_ERROR, "Dictionary could not be written to %{public}@, file could not be repaired before writing: %{public}@ and could not write data: %{public}@", &v20, 0x20u);

    goto LABEL_12;
  }

LABEL_15:
  v16 = *MEMORY[0x1E69E9840];
}

- (void)serializeDataAndWriteToStorage
{
  v3 = [(DMCDictionaryWriter *)self serializedData];
  if (v3)
  {
    v12 = 0;
    v4 = [(DMCDictionaryWriter *)self repairAccessIfNecessaryWithError:&v12];
    v5 = v12;
    if (!v4)
    {
      [(DMCDictionaryWriter *)self setBeforeWriteRepairError:v5];
    }

    v11 = 0;
    v6 = [(DMCDictionaryWriter *)self writeData:v3 error:&v11];
    v7 = v11;
    if (v6)
    {
      v10 = 0;
      v8 = [(DMCDictionaryWriter *)self repairAccessIfNecessaryWithError:&v10];
      v9 = v10;
      if (!v8)
      {
        [(DMCDictionaryWriter *)self setAfterWriteRepairError:v9];
      }
    }

    else
    {
      [(DMCDictionaryWriter *)self setWriteError:v7];
    }
  }
}

- (BOOL)writeData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(DMCDictionaryWriter *)self path];
  v12 = 0;
  v8 = [v6 DMCAtomicWriteToPath:v7 writeOptions:-[DMCDictionaryWriter options](self error:{"options"), &v12}];

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
  v5 = [(DMCDictionaryWriter *)self repairTool];
  v6 = [(DMCDictionaryWriter *)self path];
  v7 = [v5 fileNeedsRepairAtPath:v6];

  if (!v7)
  {
    return 1;
  }

  v8 = [(DMCDictionaryWriter *)self repairTool];
  v9 = [(DMCDictionaryWriter *)self path];
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