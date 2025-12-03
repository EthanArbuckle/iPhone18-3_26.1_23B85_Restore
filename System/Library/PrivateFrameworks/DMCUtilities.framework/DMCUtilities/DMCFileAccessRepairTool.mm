@interface DMCFileAccessRepairTool
- (BOOL)fileManagerThinksFileNeedsRepairAtPath:(id)path;
- (BOOL)fileNeedsRepairAtPath:(id)path;
- (BOOL)posixThinksFileNeedsRepairAtPath:(id)path;
- (BOOL)repairFileAtPath:(id)path error:(id *)error;
- (NSFileManager)fileManager;
- (id)createFileManager;
- (int)accessAtPath:(const char *)path mode:(int)mode error:(int *)error;
@end

@implementation DMCFileAccessRepairTool

- (BOOL)fileNeedsRepairAtPath:(id)path
{
  v22 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  fileManager = [(DMCFileAccessRepairTool *)self fileManager];
  v6 = [fileManager fileExistsAtPath:pathCopy];

  if (v6)
  {
    v7 = [(DMCFileAccessRepairTool *)self fileManagerThinksFileNeedsRepairAtPath:pathCopy];
    v8 = [(DMCFileAccessRepairTool *)self posixThinksFileNeedsRepairAtPath:pathCopy];
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
        v21 = pathCopy;
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

- (BOOL)fileManagerThinksFileNeedsRepairAtPath:(id)path
{
  pathCopy = path;
  fileManager = [(DMCFileAccessRepairTool *)self fileManager];
  v6 = [fileManager isReadableFileAtPath:pathCopy];

  return v6 ^ 1;
}

- (NSFileManager)fileManager
{
  fileManager = self->_fileManager;
  if (!fileManager)
  {
    createFileManager = [(DMCFileAccessRepairTool *)self createFileManager];
    v5 = self->_fileManager;
    self->_fileManager = createFileManager;

    fileManager = self->_fileManager;
  }

  return fileManager;
}

- (BOOL)posixThinksFileNeedsRepairAtPath:(id)path
{
  v8 = 0;
  pathCopy = path;
  return -[DMCFileAccessRepairTool accessAtPath:mode:error:](self, "accessAtPath:mode:error:", [path fileSystemRepresentation], 4, &v8) < 0 && v8 == 13;
}

- (BOOL)repairFileAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  if ([(DMCFileAccessRepairTool *)self changePermissions:420 ofFileAtPath:pathCopy])
  {
    v7 = [(DMCFileAccessRepairTool *)self contentsOfFileAtPath:pathCopy];
    if (v7)
    {
      v8 = [(DMCFileAccessRepairTool *)self writeData:v7 toFileAtPath:pathCopy];
      v9 = v8;
      if (!error || v8)
      {
        goto LABEL_13;
      }

      v10 = 3;
    }

    else
    {
      if (!error)
      {
        v9 = 0;
        goto LABEL_13;
      }

      v10 = 2;
    }

    [(DMCFileAccessRepairTool *)self createRepairToolErrorWithCode:v10];
    *error = v9 = 0;
LABEL_13:

    goto LABEL_14;
  }

  if (error)
  {
    [(DMCFileAccessRepairTool *)self createRepairToolErrorWithCode:1];
    *error = v9 = 0;
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

- (int)accessAtPath:(const char *)path mode:(int)mode error:(int *)error
{
  *__error() = 0;
  v8 = access(path, mode);
  if (v8 < 0)
  {
    *error = *__error();
  }

  return v8;
}

@end