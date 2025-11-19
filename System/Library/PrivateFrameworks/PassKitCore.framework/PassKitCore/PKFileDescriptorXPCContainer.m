@interface PKFileDescriptorXPCContainer
- (BOOL)isInvalidated;
- (PKFileDescriptorXPCContainer)initWithCoder:(id)a3;
- (PKFileDescriptorXPCContainer)initWithFileDescriptor:(int)a3;
- (PKFileDescriptorXPCContainer)initWithFileURL:(id)a3;
- (id)_init;
- (id)_initWithXPCFileDescriptor:(id)a3;
- (void)accessFileDescriptorWithBlock:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
@end

@implementation PKFileDescriptorXPCContainer

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKFileDescriptorXPCContainer;
  result = [(PKFileDescriptorXPCContainer *)&v3 init];
  if (result)
  {
    *(result + 3) = 0;
    *(result + 4) = 0;
  }

  return result;
}

- (id)_initWithXPCFileDescriptor:(id)a3
{
  v5 = a3;
  v6 = [(PKFileDescriptorXPCContainer *)self _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 3, a3);
  }

  return v7;
}

- (PKFileDescriptorXPCContainer)initWithFileURL:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_12;
  }

  if (([v4 isFileURL] & 1) == 0)
  {
    v10 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v5;
      v11 = "PKFileDescriptorXPCContainer: cannot handle non-file URL %@.";
      v12 = v10;
      v13 = 12;
LABEL_10:
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, v11, &v18, v13);
    }

LABEL_11:

LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  v6 = open([v5 fileSystemRepresentation], 4);
  if (v6 < 0)
  {
    v10 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = __error();
      v15 = strerror(*v14);
      v18 = 138412546;
      v19 = v5;
      v20 = 2082;
      v21 = v15;
      v11 = "PKFileDescriptorXPCContainer: failed to open file %@ - %{public}s.";
      v12 = v10;
      v13 = 22;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v7 = v6;
  v8 = xpc_fd_create(v6);
  if (v8)
  {
    v9 = [(PKFileDescriptorXPCContainer *)self _initWithXPCFileDescriptor:v8];
  }

  else
  {

    v9 = 0;
  }

  close(v7);
  self = v9;

  v16 = self;
LABEL_13:

  return v16;
}

- (PKFileDescriptorXPCContainer)initWithFileDescriptor:(int)a3
{
  if (a3 < 0)
  {
    v5 = 0;
  }

  else
  {
    v4 = xpc_fd_create(a3);
    if (v4)
    {
      self = [(PKFileDescriptorXPCContainer *)self _initWithXPCFileDescriptor:v4];
      v5 = self;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (PKFileDescriptorXPCContainer)initWithCoder:(id)a3
{
  v4 = [a3 decodeXPCObjectOfType:MEMORY[0x1E69E9EA0] forKey:@"fd"];
  v5 = [(PKFileDescriptorXPCContainer *)self _initWithXPCFileDescriptor:v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_readLock);
  v4 = self->_fd;
  os_unfair_lock_unlock(&self->_readLock);
  [v5 encodeXPCObject:v4 forKey:@"fd"];
}

- (void)accessFileDescriptorWithBlock:(id)a3
{
  v6 = a3;
  if (v6)
  {
    os_unfair_lock_lock(&self->_writeLock);
    os_unfair_lock_lock(&self->_readLock);
    fd = self->_fd;
    v5 = fd ? xpc_fd_dup(fd) : 0xFFFFFFFFLL;
    os_unfair_lock_unlock(&self->_readLock);
    v6[2](v6, v5);
    os_unfair_lock_unlock(&self->_writeLock);
    if ((v5 & 0x80000000) == 0)
    {
      close(v5);
    }
  }
}

- (BOOL)isInvalidated
{
  os_unfair_lock_lock(&self->_readLock);
  invalidated = self->_invalidated;
  os_unfair_lock_unlock(&self->_readLock);
  return invalidated;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_readLock);
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    fd = self->_fd;
    self->_fd = 0;
  }

  os_unfair_lock_unlock(&self->_readLock);
}

@end