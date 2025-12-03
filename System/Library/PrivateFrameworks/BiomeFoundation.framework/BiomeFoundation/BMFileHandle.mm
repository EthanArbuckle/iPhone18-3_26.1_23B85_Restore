@interface BMFileHandle
- (BMFileHandle)initWithCoder:(id)coder;
- (BMFileHandle)initWithFileDescriptor:(int)descriptor attributes:(id)attributes;
- (BOOL)isStale;
- (BOOL)overwriteWithData:(id)data error:(id *)error;
- (NSFileHandle)nsFileHandle;
- (id)_initWithFileDescriptor:(int)descriptor attributes:(id)attributes;
- (id)readDataWithError:(id *)error;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)isStale;
- (void)nsFileHandle;
- (void)performWithInProcessLock:(id)lock;
@end

@implementation BMFileHandle

- (BOOL)isStale
{
  v24 = *MEMORY[0x1E69E9840];
  memset(&v21, 0, sizeof(v21));
  if (fstat(self->_fd, &v21))
  {
    v3 = __biome_log_for_category(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BMFileHandle isStale];
    }

    goto LABEL_27;
  }

  if (v21.st_nlink)
  {
    v3 = bm_fd_get_path(self->_fd);
    path = [(BMFileAttributes *)self->_attributes path];
    v5 = [v3 isEqualToString:path];

    if (v5)
    {
      if ((v21.st_mode & 0xF000) != 0x4000 || v21.st_nlink > 2u)
      {
        goto LABEL_19;
      }

      v6 = fcntl(self->_fd, 67, 3);
      if (v6 < 0)
      {
        v15 = __biome_log_for_category(2);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [BMFileHandle isStale];
        }

        goto LABEL_27;
      }

      os_unfair_lock_lock(&self->_lock);
      v7 = fdopendir(v6);
      v8 = v7;
      if (!v7)
      {
        v16 = __biome_log_for_category(2);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = __error();
          [(BMFileHandle *)v17 isStale];
        }

        close(v6);
        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_27;
      }

      memset(&v23, 0, 512);
      v20 = 0;
      v9 = readdir_r(v7, &v23, &v20);
      if (v9)
      {
        v10 = __biome_log_for_category(2);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          [(BMFileHandle *)v9 isStale];
        }
      }

      rewinddir(v8);
      if (closedir(v8) == -1)
      {
        v11 = __biome_log_for_category(2);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          v12 = __error();
          [(BMFileHandle *)v12 isStale];
        }
      }

      v13 = v20;
      os_unfair_lock_unlock(&self->_lock);
      if (v13)
      {
LABEL_19:
        v14 = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

LABEL_27:
    v14 = 1;
    goto LABEL_28;
  }

  v14 = 1;
LABEL_29:
  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *self;
  v8 = *__error();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x1E69E9840];
}

- (BMFileHandle)initWithFileDescriptor:(int)descriptor attributes:(id)attributes
{
  if (descriptor < 0)
  {
    selfCopy = 0;
  }

  else
  {
    self = [BMFileHandle _initWithFileDescriptor:"_initWithFileDescriptor:attributes:" attributes:?];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)_initWithFileDescriptor:(int)descriptor attributes:(id)attributes
{
  attributesCopy = attributes;
  v11.receiver = self;
  v11.super_class = BMFileHandle;
  v8 = [(BMFileHandle *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_fd = descriptor;
    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v8->_attributes, attributes);
    v9->_initialized = 1;
  }

  return v9;
}

- (NSFileHandle)nsFileHandle
{
  if (!self->_initialized)
  {
    [BMFileHandle nsFileHandle];
  }

  v3 = fcntl(self->_fd, 67, 3);
  if ((v3 & 0x80000000) != 0)
  {
    v5 = __biome_log_for_category(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BMFileHandle nsFileHandle];
    }

    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v3 closeOnDealloc:1];
  }

  return v4;
}

- (id)readDataWithError:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!self->_initialized)
  {
    [BMFileHandle readDataWithError:];
  }

  v5 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:self->_fd closeOnDealloc:0];
  v6 = v5;
  if (v5)
  {
    if ([v5 seekToOffset:0 error:error])
    {
      error = [v6 readDataToEndOfFileAndReturnError:error];
      goto LABEL_9;
    }
  }

  else
  {
    if (!error)
    {
      goto LABEL_9;
    }

    v7 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = @"Unspecified failure";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *error = [v7 errorWithDomain:@"BiomeStorageError" code:0 userInfo:v8];
  }

  error = 0;
LABEL_9:

  v9 = *MEMORY[0x1E69E9840];

  return error;
}

- (BOOL)overwriteWithData:(id)data error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!self->_initialized)
  {
    [BMFileHandle overwriteWithData:error:];
  }

  v7 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:self->_fd closeOnDealloc:0];
  v8 = v7;
  if (!v7)
  {
    if (!error)
    {
      goto LABEL_9;
    }

    v9 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A578];
    v14[0] = @"Unspecified failure";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *error = [v9 errorWithDomain:@"BiomeStorageError" code:0 userInfo:v10];

LABEL_8:
    LOBYTE(error) = 0;
    goto LABEL_9;
  }

  if (![v7 truncateAtOffset:0 error:error])
  {
    goto LABEL_8;
  }

  LOBYTE(error) = [v8 writeData:dataCopy error:error];
LABEL_9:

  v11 = *MEMORY[0x1E69E9840];
  return error;
}

- (void)performWithInProcessLock:(id)lock
{
  lockCopy = lock;
  if (!lockCopy)
  {
    [BMFileHandle performWithInProcessLock:];
  }

  os_unfair_lock_lock(&self->_lock);
  lockCopy[2]();
  os_unfair_lock_unlock(&self->_lock);
}

- (BMFileHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9EA0] forKey:@"xfd"];
    v6 = xpc_fd_dup(v5);
    self->_fd = v6;
    if (v6 < 0)
    {
      self->_error = *__error();
    }

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attr"];
    attributes = self->_attributes;
    self->_attributes = v7;

    self->_initialized = 1;
    selfCopy = self;
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BiomeStorageError" code:4 userInfo:0];
    [coderCopy failWithError:v5];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v13[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = xpc_fd_create(self->_fd);
    if (v5)
    {
      [coderCopy encodeXPCObject:v5 forKey:@"xfd"];
      [coderCopy encodeObject:self->_attributes forKey:@"attr"];
    }

    else
    {
      v6 = *__error();
      v7 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A578];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"xpc_fd_create failed: %s", strerror(v6), v12];
      v13[0] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v10 = [v7 errorWithDomain:@"BiomeStorageError" code:7 userInfo:v9];
      [coderCopy failWithError:v10];
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BiomeStorageError" code:4 userInfo:0];
    [coderCopy failWithError:v5];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)nsFileHandle
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)readDataWithError:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)overwriteWithData:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)isStale
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)performWithInProcessLock:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"block" object:? file:? lineNumber:? description:?];
}

@end