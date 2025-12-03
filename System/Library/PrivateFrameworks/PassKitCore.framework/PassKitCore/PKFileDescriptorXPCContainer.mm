@interface PKFileDescriptorXPCContainer
- (BOOL)isInvalidated;
- (PKFileDescriptorXPCContainer)initWithCoder:(id)coder;
- (PKFileDescriptorXPCContainer)initWithFileDescriptor:(int)descriptor;
- (PKFileDescriptorXPCContainer)initWithFileURL:(id)l;
- (id)_init;
- (id)_initWithXPCFileDescriptor:(id)descriptor;
- (void)accessFileDescriptorWithBlock:(id)block;
- (void)encodeWithCoder:(id)coder;
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

- (id)_initWithXPCFileDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  _init = [(PKFileDescriptorXPCContainer *)self _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 3, descriptor);
  }

  return v7;
}

- (PKFileDescriptorXPCContainer)initWithFileURL:(id)l
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = lCopy;
  if (!lCopy)
  {
    goto LABEL_12;
  }

  if (([lCopy isFileURL] & 1) == 0)
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
    selfCopy = 0;
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

  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (PKFileDescriptorXPCContainer)initWithFileDescriptor:(int)descriptor
{
  if (descriptor < 0)
  {
    selfCopy = 0;
  }

  else
  {
    v4 = xpc_fd_create(descriptor);
    if (v4)
    {
      self = [(PKFileDescriptorXPCContainer *)self _initWithXPCFileDescriptor:v4];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (PKFileDescriptorXPCContainer)initWithCoder:(id)coder
{
  v4 = [coder decodeXPCObjectOfType:MEMORY[0x1E69E9EA0] forKey:@"fd"];
  v5 = [(PKFileDescriptorXPCContainer *)self _initWithXPCFileDescriptor:v4];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->_readLock);
  v4 = self->_fd;
  os_unfair_lock_unlock(&self->_readLock);
  [coderCopy encodeXPCObject:v4 forKey:@"fd"];
}

- (void)accessFileDescriptorWithBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    os_unfair_lock_lock(&self->_writeLock);
    os_unfair_lock_lock(&self->_readLock);
    fd = self->_fd;
    v5 = fd ? xpc_fd_dup(fd) : 0xFFFFFFFFLL;
    os_unfair_lock_unlock(&self->_readLock);
    blockCopy[2](blockCopy, v5);
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