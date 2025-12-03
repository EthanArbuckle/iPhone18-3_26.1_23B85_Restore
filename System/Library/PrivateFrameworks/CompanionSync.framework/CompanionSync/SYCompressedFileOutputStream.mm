@interface SYCompressedFileOutputStream
- (BOOL)setProperty:(id)property forKey:(id)key;
- (SYCompressedFileOutputStream)initWithURL:(id)l append:(BOOL)append;
- (id)delegate;
- (id)propertyForKey:(id)key;
- (id)streamError;
- (int64_t)write:(const char *)write maxLength:(unint64_t)length;
- (unint64_t)streamStatus;
- (void)_SY_notifyOnQueue:(id)queue handler:(id)handler;
- (void)_postEventToDelegate:(unint64_t)delegate;
- (void)close;
- (void)dealloc;
- (void)open;
- (void)removeFromRunLoop:(id)loop forMode:(id)mode;
- (void)scheduleInRunLoop:(id)loop forMode:(id)mode;
- (void)setDelegate:(id)delegate;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation SYCompressedFileOutputStream

- (SYCompressedFileOutputStream)initWithURL:(id)l append:(BOOL)append
{
  lCopy = l;
  v15.receiver = self;
  v15.super_class = SYCompressedFileOutputStream;
  v7 = [(SYCompressedFileOutputStream *)&v15 init];
  v8 = v7;
  if (v7)
  {
    v7->_fd = -1;
    v9 = [lCopy copy];
    url = v8->_url;
    v8->_url = v9;

    v8->_append = append;
    v8->_level = -1;
    v8->_internalLock._os_unfair_lock_opaque = 0;
    os_unfair_lock_lock(&v8->_internalLock);
    v11 = objc_opt_new();
    internal = v8->_internal;
    v8->_internal = v11;

    objc_storeWeak(&v8->_internal->_delegate, v8);
    os_unfair_lock_unlock(&v8->_internalLock);
    v13 = v8;
  }

  return v8;
}

- (void)dealloc
{
  [(SYCompressedFileOutputStream *)self close];
  v3.receiver = self;
  v3.super_class = SYCompressedFileOutputStream;
  [(SYCompressedFileOutputStream *)&v3 dealloc];
}

- (void)_postEventToDelegate:(unint64_t)delegate
{
  os_unfair_lock_lock(&self->_internalLock);
  WeakRetained = objc_loadWeakRetained(&self->_internal->_delegate);
  [WeakRetained stream:self handleEvent:delegate];

  os_unfair_lock_unlock(&self->_internalLock);
}

- (id)delegate
{
  os_unfair_lock_lock(&self->_internalLock);
  WeakRetained = objc_loadWeakRetained(&self->_internal->_delegate);
  os_unfair_lock_unlock(&self->_internalLock);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  selfCopy = delegate;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  obj = selfCopy;
  os_unfair_lock_lock(&self->_internalLock);
  objc_storeWeak(&self->_internal->_delegate, obj);
  os_unfair_lock_unlock(&self->_internalLock);
}

- (id)streamError
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_internal->_error;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (unint64_t)streamStatus
{
  os_unfair_lock_lock(&self->_internalLock);
  status = self->_internal->_status;
  os_unfair_lock_unlock(&self->_internalLock);
  return status;
}

- (void)_SY_notifyOnQueue:(id)queue handler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  os_unfair_lock_lock(&self->_internalLock);
  [(_SYStreamGuts *)self->_internal setEventHandler:handlerCopy queue:queueCopy];

  os_unfair_lock_unlock(&self->_internalLock);
}

- (void)scheduleInRunLoop:(id)loop forMode:(id)mode
{
  loopCopy = loop;
  modeCopy = mode;
  os_unfair_lock_lock(&self->_internalLock);
  internal = self->_internal;
  if (!internal->_runloopSource)
  {
    [(_SYStreamGuts *)internal createRunloopSourceForStream:self];
  }

  getCFRunLoop = [loopCopy getCFRunLoop];
  runloopSource = self->_internal->_runloopSource;
  v10 = [(__CFString *)modeCopy isEqualToString:*MEMORY[0x1E695D918]];
  v11 = *MEMORY[0x1E695E8E0];
  if (v10)
  {
    v12 = *MEMORY[0x1E695E8E0];
  }

  else
  {
    v12 = modeCopy;
  }

  CFRunLoopAddSource(getCFRunLoop, runloopSource, v12);
  os_unfair_lock_unlock(&self->_internalLock);
}

- (void)removeFromRunLoop:(id)loop forMode:(id)mode
{
  loopCopy = loop;
  modeCopy = mode;
  os_unfair_lock_lock(&self->_internalLock);
  if (self->_internal->_runloopSource)
  {
    getCFRunLoop = [loopCopy getCFRunLoop];
    runloopSource = self->_internal->_runloopSource;
    v9 = [(__CFString *)modeCopy isEqualToString:*MEMORY[0x1E695D918]];
    v10 = *MEMORY[0x1E695E8E0];
    if (v9)
    {
      v11 = *MEMORY[0x1E695E8E0];
    }

    else
    {
      v11 = modeCopy;
    }

    CFRunLoopRemoveSource(getCFRunLoop, runloopSource, v11);
    os_unfair_lock_unlock(&self->_internalLock);
  }
}

- (void)open
{
  if ([(SYCompressedFileOutputStream *)self streamStatus])
  {
    return;
  }

  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  if (self->_append)
  {
    v4 = @"a";
  }

  else
  {
    v4 = @"w";
  }

  v5 = [v3 initWithString:v4];
  level = self->_level;
  v22 = v5;
  if (level != -1)
  {
    [v5 appendFormat:@"%ld", level];
  }

  filePathURL = [(NSURL *)self->_url filePathURL];
  absoluteURL = [filePathURL absoluteURL];
  fileSystemRepresentation = [absoluteURL fileSystemRepresentation];

  if (self->_append)
  {
    v10 = 522;
  }

  else
  {
    v10 = 514;
  }

  v11 = self->_class;
  if (v11)
  {
    self->_fd = open_dprotected_np(fileSystemRepresentation, v10, v11, 0, 436);
  }

  else
  {
    filePathURL2 = [(NSURL *)self->_url filePathURL];
    absoluteURL2 = [filePathURL2 absoluteURL];
    self->_fd = open([absoluteURL2 fileSystemRepresentation], v10, 436);
  }

  os_unfair_lock_lock(&self->_internalLock);
  fd = self->_fd;
  if (fd == -1)
  {
    p_internal = &self->_internal;
    internal = self->_internal;
    goto LABEL_17;
  }

  v15 = gzdopen(fd, [v22 UTF8String]);
  self->_file = v15;
  p_internal = &self->_internal;
  internal = self->_internal;
  if (!v15)
  {
LABEL_17:
    internal->_status = 7;
    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = [v19 initWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
    error = (*p_internal)->_error;
    (*p_internal)->_error = v20;

    v18 = 8;
    goto LABEL_18;
  }

  internal->_status = 2;
  [(_SYStreamGuts *)*p_internal postStreamEvent:1 forStream:self];
  v18 = 4;
LABEL_18:
  [(_SYStreamGuts *)*p_internal postStreamEvent:v18 forStream:self];
  os_unfair_lock_unlock(&self->_internalLock);
}

- (void)close
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  file = selfCopy->_file;
  if (file)
  {
    gzclose(selfCopy->_file);
    selfCopy->_fd = -1;
    selfCopy->_file = 0;
    os_unfair_lock_lock(&selfCopy->_internalLock);
    selfCopy->_internal->_status = 6;
    os_unfair_lock_unlock(&selfCopy->_internalLock);
    v7 = MEMORY[0x1E12E11B0](selfCopy->_onClose);
    onClose = selfCopy->_onClose;
    selfCopy->_onClose = 0;
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(selfCopy);

  v5 = v7;
  if (file)
  {
    v6 = v7 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    (*(v7 + 16))(v7, selfCopy);
    v5 = v7;
  }
}

- (int64_t)write:(const char *)write maxLength:(unint64_t)length
{
  lengthCopy = length;
  os_unfair_lock_lock(&self->_internalLock);
  internal = self->_internal;
  if (internal->_status == 2)
  {
    internal->_status = 4;
    v8 = gzwrite(self->_file, write, lengthCopy);
    self->_internal->_status = 2;
    if (v8)
    {
      LODWORD(v9) = v8;
      if ([(SYCompressedFileOutputStream *)self hasSpaceAvailable])
      {
        [(_SYStreamGuts *)self->_internal postStreamEvent:4 forStream:self];
      }

      if (v9 >= 1)
      {
        self->_byteCount += v9;
        progress = self->_progress;
        if (progress)
        {
          [(NSProgress *)progress setCompletedUnitCount:?];
        }
      }

      v9 = v9;
    }

    else
    {
      v11 = CreateGzfileError(self->_file);
      v12 = self->_internal;
      error = v12->_error;
      v12->_error = v11;

      self->_internal->_status = 7;
      [(_SYStreamGuts *)self->_internal postStreamEvent:8 forStream:self];
      v9 = -1;
    }
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_unlock(&self->_internalLock);
  return v9;
}

- (id)propertyForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"protection-class"])
  {
    v14 = -1;
    fd = self->_fd;
    if (fd == -1)
    {
      filePathURL = [(NSURL *)self->_url filePathURL];
      absoluteURL = [filePathURL absoluteURL];
      fileSystemRepresentation = [absoluteURL fileSystemRepresentation];

      v15 = 0;
      v16[1] = 0;
      v16[2] = 0;
      v16[0] = 0x4000000000000005;
      v11 = getattrlist(fileSystemRepresentation, v16, &v15, 8uLL, 1u);
      v6 = HIDWORD(v15);
      if (v11)
      {
        v6 = -1;
      }

      v14 = v6;
    }

    else
    {
      fcntl(fd, 63, &v14);
      v6 = v14;
    }

    v12 = v6 - 1;
    if (v12 > 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = **(&unk_1E86CA020 + v12);
    }
  }

  else
  {
    os_unfair_lock_lock(&self->_internalLock);
    v7 = [(_SYStreamGuts *)self->_internal propertyForKey:keyCopy];
    os_unfair_lock_unlock(&self->_internalLock);
  }

  return v7;
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  v17[1] = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  keyCopy = key;
  if (![keyCopy isEqualToString:@"protection-class"])
  {
    os_unfair_lock_lock(&self->_internalLock);
    [(_SYStreamGuts *)self->_internal storeProperty:propertyCopy forKey:keyCopy];
    os_unfair_lock_unlock(&self->_internalLock);
LABEL_7:
    v9 = 1;
    goto LABEL_9;
  }

  if (![propertyCopy isNSString])
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if (self->_fd == -1)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v16 = *MEMORY[0x1E696A3A0];
    v17[0] = propertyCopy;
    v9 = 1;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    path = [(NSURL *)self->_url path];
    v15 = [defaultManager setAttributes:v13 ofItemAtPath:path error:0];

    if (v15)
    {
      goto LABEL_9;
    }

    self->_class = _SYProtectionClassFromString(propertyCopy);
    goto LABEL_7;
  }

  v8 = _SYProtectionClassFromString(propertyCopy);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = fcntl(self->_fd, 64, v8) == 0;
LABEL_9:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  if (streamCopy == self)
  {
    if (event <= 3)
    {
      if (event == 1)
      {
        v7 = 192;
      }

      else
      {
        if (event != 2)
        {
          goto LABEL_17;
        }

        v7 = 200;
      }
    }

    else
    {
      switch(event)
      {
        case 4uLL:
          v7 = 208;
          break;
        case 8uLL:
          v7 = 224;
          break;
        case 0x10uLL:
          v7 = 216;
          break;
        default:
          goto LABEL_17;
      }
    }

    v8 = *(&self->super.super.super.isa + v7);
    if (v8)
    {
      (*(v8 + 16))(v8, self);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SYCompressedFileInputStream stream:handleEvent:];
  }

LABEL_17:
}

@end