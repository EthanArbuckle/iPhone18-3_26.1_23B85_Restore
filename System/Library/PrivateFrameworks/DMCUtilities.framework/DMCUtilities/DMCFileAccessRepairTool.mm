@interface DMCFileAccessRepairTool
- (BOOL)fileManagerThinksFileNeedsRepairAtPath:(id)a3;
- (BOOL)fileNeedsRepairAtPath:(id)a3;
- (BOOL)posixThinksFileNeedsRepairAtPath:(id)a3;
- (BOOL)repairFileAtPath:(id)a3 error:(id *)a4;
- (NSFileManager)fileManager;
- (id)createFileManager;
- (int)accessAtPath:(const char *)a3 mode:(int)a4 error:(int *)a5;
@end

@implementation DMCFileAccessRepairTool

- (BOOL)fileNeedsRepairAtPath:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(DMCFileAccessRepairTool *)self fileManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (v6)
  {
    v7 = [(DMCFileAccessRepairTool *)self fileManagerThinksFileNeedsRepairAtPath:v4];
    v8 = [(DMCFileAccessRepairTool *)self posixThinksFileNeedsRepairAtPath:v4];
    if (v7 != v8)
    {
      v9 = DMCLogObjects()[3];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = v9;
        v11 = DMCStringForBool(v7);
        v12 = DMCStringForBool(v8);
        v16 = 138543874;
        v17 = v11;
        v18 = 2114;
        v19 = v12;
        v20 = 2114;
        v21 = v4;
        _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_INFO, "File Manager (%{public}@) and POSIX (%{public}@) disagree on whether a file (%{public}@) needs repair.", &v16, 0x20u);
      }
    }

    v13 = v7 | v8;
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)fileManagerThinksFileNeedsRepairAtPath:(id)a3
{
  v4 = a3;
  v5 = [(DMCFileAccessRepairTool *)self fileManager];
  v6 = [v5 isReadableFileAtPath:v4];

  return v6 ^ 1;
}

- (NSFileManager)fileManager
{
  fileManager = self->_fileManager;
  if (!fileManager)
  {
    v4 = [(DMCFileAccessRepairTool *)self createFileManager];
    v5 = self->_fileManager;
    self->_fileManager = v4;

    fileManager = self->_fileManager;
  }

  return fileManager;
}

- (BOOL)posixThinksFileNeedsRepairAtPath:(id)a3
{
  v8 = 0;
  v5 = a3;
  return -[DMCFileAccessRepairTool accessAtPath:mode:error:](self, "accessAtPath:mode:error:", [a3 fileSystemRepresentation], 4, &v8) < 0 && v8 == 13;
}

- (BOOL)repairFileAtPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(DMCFileAccessRepairTool *)self changePermissions:420 ofFileAtPath:v6])
  {
    v7 = [(DMCFileAccessRepairTool *)self contentsOfFileAtPath:v6];
    if (v7)
    {
      v8 = [(DMCFileAccessRepairTool *)self writeData:v7 toFileAtPath:v6];
      v9 = v8;
      if (!a4 || v8)
      {
        goto LABEL_13;
      }

      v10 = 3;
    }

    else
    {
      if (!a4)
      {
        v9 = 0;
        goto LABEL_13;
      }

      v10 = 2;
    }

    [(DMCFileAccessRepairTool *)self createRepairToolErrorWithCode:v10];
    *a4 = v9 = 0;
LABEL_13:

    goto LABEL_14;
  }

  if (a4)
  {
    [(DMCFileAccessRepairTool *)self createRepairToolErrorWithCode:1];
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (id)createFileManager
{
  v2 = objc_alloc_init(MEMORY[0x1E696AC08]);

  return v2;
}

- (int)accessAtPath:(const char *)a3 mode:(int)a4 error:(int *)a5
{
  *__error() = 0;
  v8 = access(a3, a4);
  if (v8 < 0)
  {
    *a5 = *__error();
  }

  return v8;
}

@end