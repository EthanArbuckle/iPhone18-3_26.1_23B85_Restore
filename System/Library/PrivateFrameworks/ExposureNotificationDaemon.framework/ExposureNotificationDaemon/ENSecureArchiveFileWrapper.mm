@interface ENSecureArchiveFileWrapper
- (BOOL)openWithError:(id *)error;
- (BOOL)readObject:(id *)object ofClass:(Class)class error:(id *)error;
- (BOOL)readObject:(id *)object ofClasses:(id)classes error:(id *)error;
- (BOOL)saveObject:(id)object error:(id *)error;
- (ENSecureArchiveFileWrapper)initWithPath:(id)path;
- (uint64_t)close;
- (void)close;
@end

@implementation ENSecureArchiveFileWrapper

- (ENSecureArchiveFileWrapper)initWithPath:(id)path
{
  pathCopy = path;
  if (![pathCopy length])
  {
    [(ENSecureArchiveFileWrapper *)a2 initWithPath:?];
  }

  v10.receiver = self;
  v10.super_class = ENSecureArchiveFileWrapper;
  v6 = [(ENSecureArchiveFileWrapper *)&v10 init];
  if (v6)
  {
    v7 = [pathCopy copy];
    path = v6->_path;
    v6->_path = v7;

    v6->_fileDescriptor = -1;
  }

  return v6;
}

- (BOOL)openWithError:(id *)error
{
  if ((self->_fileDescriptor & 0x80000000) == 0)
  {
    return 1;
  }

  v6 = open_dprotected_np([(NSString *)self->_path fileSystemRepresentation], 514, 2, 0, 384);
  self->_fileDescriptor = v6;
  result = v6 >= 0;
  if (error && v6 < 0)
  {
    if (*__error())
    {
      v7 = *__error();
      if (v7 == 1)
      {
        v8 = ENErrorF();
LABEL_10:
        v9 = v8;
        v10 = v8;
        result = 0;
        *error = v9;
        return result;
      }
    }

    else
    {
      v7 = -6700;
    }

    v8 = [MEMORY[0x277CCA9B0] errorWithDomain:*MEMORY[0x277CCA598] code:v7 userInfo:0];
    goto LABEL_10;
  }

  return result;
}

- (void)close
{
  fileDescriptor = self->_fileDescriptor;
  if ((fileDescriptor & 0x80000000) == 0)
  {
    if (close(fileDescriptor) && gLogCategory_ENFileWrapper <= 90 && (gLogCategory_ENFileWrapper != -1 || _LogCategory_Initialize()))
    {
      [(ENSecureArchiveFileWrapper *)self close];
    }

    self->_fileDescriptor = -1;
  }
}

- (BOOL)readObject:(id *)object ofClasses:(id)classes error:(id *)error
{
  classesCopy = classes;
  if ([(ENSecureArchiveFileWrapper *)self openWithError:error])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [objc_alloc(MEMORY[0x277CCA9F0]) initWithFileDescriptor:self->_fileDescriptor closeOnDealloc:0];
    v24 = 0;
    v11 = [v10 seekToOffset:0 error:&v24];
    v12 = v24;
    if (v11)
    {
      v23 = 0;
      v13 = [v10 readDataToEndOfFileAndReturnError:&v23];
      v14 = v23;

      if (v13)
      {
        if ([v13 length])
        {
          v22 = v14;
          v15 = [MEMORY[0x277CCAAC0] unarchivedObjectOfClasses:classesCopy fromData:v13 error:&v22];
          v16 = v22;

          v17 = 0;
          v14 = v16;
        }

        else
        {
          v15 = 0;
          v17 = 1;
        }
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      objc_autoreleasePoolPop(v9);
      if (v15)
      {
        v20 = v15;
        *object = v15;
LABEL_15:
        v18 = 1;
LABEL_19:

        goto LABEL_20;
      }

      if (v17)
      {
        v15 = 0;
        *object = 0;
        goto LABEL_15;
      }

      v12 = v14;
      if (!error)
      {
        goto LABEL_17;
      }
    }

    else
    {

      objc_autoreleasePoolPop(v9);
      if (!error)
      {
LABEL_17:
        v15 = 0;
        v18 = 0;
        goto LABEL_18;
      }
    }

    v19 = v12;
    v15 = 0;
    v18 = 0;
    *error = v12;
LABEL_18:
    v14 = v12;
    goto LABEL_19;
  }

  v18 = 0;
LABEL_20:

  return v18;
}

- (BOOL)readObject:(id *)object ofClass:(Class)class error:(id *)error
{
  v8 = [MEMORY[0x277CBEB90] setWithObject:class];
  LOBYTE(error) = [(ENSecureArchiveFileWrapper *)self readObject:object ofClasses:v8 error:error];

  return error;
}

- (BOOL)saveObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(ENSecureArchiveFileWrapper *)self openWithError:error];
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    fileDescriptor = self->_fileDescriptor;
    v14 = 0;
    v10 = [(ENSecureArchiveFileWrapper *)self _writeObject:objectCopy toFileDescriptor:fileDescriptor error:&v14];
    v11 = v14;
    objc_autoreleasePoolPop(v8);
    if (error && !v10)
    {
      v12 = v11;
      *error = v11;
    }
  }

  return v7;
}

- (void)initWithPath:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA888] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENSecureArchiveFileWrapper.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"path.length > 0"}];
}

- (uint64_t)close
{
  v2 = *(self + 16);
  v3 = *__error();
  return LogPrintF_safe();
}

- (void)_writeObject:(uint64_t)a3 toFileDescriptor:(_BYTE *)a4 error:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = [objc_alloc(MEMORY[0x277CCA9F0]) initWithFileDescriptor:a1 closeOnDealloc:0];
  if ([v8 seekToOffset:0 error:a2] & 1) != 0 && (objc_msgSend(v8, "truncateAtOffset:error:", 0, a2))
  {
    v7 = [v8 writeData:a3 error:a2];
  }

  else
  {
    v7 = 0;
  }

  *a4 = v7;
}

@end