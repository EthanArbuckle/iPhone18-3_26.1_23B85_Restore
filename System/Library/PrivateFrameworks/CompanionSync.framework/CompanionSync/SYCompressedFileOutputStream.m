@interface SYCompressedFileOutputStream
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (SYCompressedFileOutputStream)initWithURL:(id)a3 append:(BOOL)a4;
- (id)delegate;
- (id)propertyForKey:(id)a3;
- (id)streamError;
- (int64_t)write:(const char *)a3 maxLength:(unint64_t)a4;
- (unint64_t)streamStatus;
- (void)_SY_notifyOnQueue:(id)a3 handler:(id)a4;
- (void)_postEventToDelegate:(unint64_t)a3;
- (void)close;
- (void)dealloc;
- (void)open;
- (void)removeFromRunLoop:(id)a3 forMode:(id)a4;
- (void)scheduleInRunLoop:(id)a3 forMode:(id)a4;
- (void)setDelegate:(id)a3;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation SYCompressedFileOutputStream

- (SYCompressedFileOutputStream)initWithURL:(id)a3 append:(BOOL)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = SYCompressedFileOutputStream;
  v7 = [(SYCompressedFileOutputStream *)&v15 init];
  v8 = v7;
  if (v7)
  {
    v7->_fd = -1;
    v9 = [v6 copy];
    url = v8->_url;
    v8->_url = v9;

    v8->_append = a4;
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

- (void)_postEventToDelegate:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_internalLock);
  WeakRetained = objc_loadWeakRetained(&self->_internal->_delegate);
  [WeakRetained stream:self handleEvent:a3];

  os_unfair_lock_unlock(&self->_internalLock);
}

- (id)delegate
{
  os_unfair_lock_lock(&self->_internalLock);
  WeakRetained = objc_loadWeakRetained(&self->_internal->_delegate);
  os_unfair_lock_unlock(&self->_internalLock);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = self;
  }

  obj = v4;
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

- (void)_SY_notifyOnQueue:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  [(_SYStreamGuts *)self->_internal setEventHandler:v6 queue:v7];

  os_unfair_lock_unlock(&self->_internalLock);
}

- (void)scheduleInRunLoop:(id)a3 forMode:(id)a4
{
  v13 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_internalLock);
  internal = self->_internal;
  if (!internal->_runloopSource)
  {
    [(_SYStreamGuts *)internal createRunloopSourceForStream:self];
  }

  v8 = [v13 getCFRunLoop];
  runloopSource = self->_internal->_runloopSource;
  v10 = [(__CFString *)v6 isEqualToString:*MEMORY[0x1E695D918]];
  v11 = *MEMORY[0x1E695E8E0];
  if (v10)
  {
    v12 = *MEMORY[0x1E695E8E0];
  }

  else
  {
    v12 = v6;
  }

  CFRunLoopAddSource(v8, runloopSource, v12);
  os_unfair_lock_unlock(&self->_internalLock);
}

- (void)removeFromRunLoop:(id)a3 forMode:(id)a4
{
  v12 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_internalLock);
  if (self->_internal->_runloopSource)
  {
    v7 = [v12 getCFRunLoop];
    runloopSource = self->_internal->_runloopSource;
    v9 = [(__CFString *)v6 isEqualToString:*MEMORY[0x1E695D918]];
    v10 = *MEMORY[0x1E695E8E0];
    if (v9)
    {
      v11 = *MEMORY[0x1E695E8E0];
    }

    else
    {
      v11 = v6;
    }

    CFRunLoopRemoveSource(v7, runloopSource, v11);
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

  v7 = [(NSURL *)self->_url filePathURL];
  v8 = [v7 absoluteURL];
  v9 = [v8 fileSystemRepresentation];

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
    self->_fd = open_dprotected_np(v9, v10, v11, 0, 436);
  }

  else
  {
    v12 = [(NSURL *)self->_url filePathURL];
    v13 = [v12 absoluteURL];
    self->_fd = open([v13 fileSystemRepresentation], v10, 436);
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
  v2 = self;
  objc_sync_enter(v2);
  file = v2->_file;
  if (file)
  {
    gzclose(v2->_file);
    v2->_fd = -1;
    v2->_file = 0;
    os_unfair_lock_lock(&v2->_internalLock);
    v2->_internal->_status = 6;
    os_unfair_lock_unlock(&v2->_internalLock);
    v7 = MEMORY[0x1E12E11B0](v2->_onClose);
    onClose = v2->_onClose;
    v2->_onClose = 0;
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(v2);

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
    (*(v7 + 16))(v7, v2);
    v5 = v7;
  }
}

- (int64_t)write:(const char *)a3 maxLength:(unint64_t)a4
{
  v4 = a4;
  os_unfair_lock_lock(&self->_internalLock);
  internal = self->_internal;
  if (internal->_status == 2)
  {
    internal->_status = 4;
    v8 = gzwrite(self->_file, a3, v4);
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

- (id)propertyForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"protection-class"])
  {
    v14 = -1;
    fd = self->_fd;
    if (fd == -1)
    {
      v8 = [(NSURL *)self->_url filePathURL];
      v9 = [v8 absoluteURL];
      v10 = [v9 fileSystemRepresentation];

      v15 = 0;
      v16[1] = 0;
      v16[2] = 0;
      v16[0] = 0x4000000000000005;
      v11 = getattrlist(v10, v16, &v15, 8uLL, 1u);
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
    v7 = [(_SYStreamGuts *)self->_internal propertyForKey:v4];
    os_unfair_lock_unlock(&self->_internalLock);
  }

  return v7;
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![v7 isEqualToString:@"protection-class"])
  {
    os_unfair_lock_lock(&self->_internalLock);
    [(_SYStreamGuts *)self->_internal storeProperty:v6 forKey:v7];
    os_unfair_lock_unlock(&self->_internalLock);
LABEL_7:
    v9 = 1;
    goto LABEL_9;
  }

  if (![v6 isNSString])
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if (self->_fd == -1)
  {
    v12 = [MEMORY[0x1E696AC08] defaultManager];
    v16 = *MEMORY[0x1E696A3A0];
    v17[0] = v6;
    v9 = 1;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v14 = [(NSURL *)self->_url path];
    v15 = [v12 setAttributes:v13 ofItemAtPath:v14 error:0];

    if (v15)
    {
      goto LABEL_9;
    }

    self->_class = _SYProtectionClassFromString(v6);
    goto LABEL_7;
  }

  v8 = _SYProtectionClassFromString(v6);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = fcntl(self->_fd, 64, v8) == 0;
LABEL_9:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  if (v6 == self)
  {
    if (a4 <= 3)
    {
      if (a4 == 1)
      {
        v7 = 192;
      }

      else
      {
        if (a4 != 2)
        {
          goto LABEL_17;
        }

        v7 = 200;
      }
    }

    else
    {
      switch(a4)
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