@interface SYCompressedFileInputStream
- (BOOL)hasBytesAvailable;
- (SYCompressedFileInputStream)initWithFileAtPath:(id)path;
- (SYCompressedFileInputStream)initWithURL:(id)l;
- (id)delegate;
- (int64_t)read:(char *)read maxLength:(unint64_t)length;
- (void)_postEventToDelegate:(unint64_t)delegate;
- (void)close;
- (void)dealloc;
- (void)open;
- (void)removeFromRunLoop:(id)loop forMode:(id)mode;
- (void)scheduleInRunLoop:(id)loop forMode:(id)mode;
- (void)setDelegate:(id)delegate;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation SYCompressedFileInputStream

- (SYCompressedFileInputStream)initWithFileAtPath:(id)path
{
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:path];
  v5 = [(SYCompressedFileInputStream *)self initWithURL:v4];

  return v5;
}

- (SYCompressedFileInputStream)initWithURL:(id)l
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = SYCompressedFileInputStream;
  v5 = [(SYCompressedFileInputStream *)&v12 init];
  if (v5)
  {
    v6 = [lCopy copy];
    url = v5->_url;
    v5->_url = v6;

    v8 = objc_opt_new();
    internal = v5->_internal;
    v5->_internal = v8;

    objc_storeWeak(&v5->_internal->_delegate, v5);
    v10 = v5;
  }

  return v5;
}

- (void)dealloc
{
  [(SYCompressedFileInputStream *)self close];
  v3.receiver = self;
  v3.super_class = SYCompressedFileInputStream;
  [(SYCompressedFileInputStream *)&v3 dealloc];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_internal->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  selfCopy = delegate;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  v5 = selfCopy;
  objc_storeWeak(&self->_internal->_delegate, selfCopy);
}

- (void)scheduleInRunLoop:(id)loop forMode:(id)mode
{
  loopCopy = loop;
  modeCopy = mode;
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
}

- (void)removeFromRunLoop:(id)loop forMode:(id)mode
{
  modeCopy = mode;
  if (self->_internal->_runloopSource)
  {
    v12 = modeCopy;
    getCFRunLoop = [loop getCFRunLoop];
    runloopSource = self->_internal->_runloopSource;
    v9 = [(__CFString *)v12 isEqualToString:*MEMORY[0x1E695D918]];
    v10 = *MEMORY[0x1E695E8E0];
    if (v9)
    {
      v11 = *MEMORY[0x1E695E8E0];
    }

    else
    {
      v11 = v12;
    }

    CFRunLoopRemoveSource(getCFRunLoop, runloopSource, v11);
    modeCopy = v12;
  }
}

- (void)_postEventToDelegate:(unint64_t)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_internal->_delegate);
  [WeakRetained stream:self handleEvent:delegate];
}

- (void)open
{
  if (self->_internal->_status)
  {
    return;
  }

  filePathURL = [(NSURL *)self->_url filePathURL];
  absoluteURL = [filePathURL absoluteURL];
  self->_file = gzopen([absoluteURL fileSystemRepresentation], "r");

  internal = self->_internal;
  if (self->_file)
  {
    internal->_status = 2;
    [(_SYStreamGuts *)self->_internal postStreamEvent:1 forStream:self];
    file = self->_file;
    if (file->have)
    {
      --file->have;
      next = file->next;
      v8 = file->pos + 1;
      file->next = next + 1;
      file->pos = v8;
      v9 = *next;
    }

    else
    {
      v9 = gzgetc(file);
      if (v9 == -1)
      {
        if (gzeof(self->_file))
        {
          v14 = 16;
          goto LABEL_8;
        }

        v9 = -1;
      }
    }

    gzungetc(v9, self->_file);
    v14 = 2;
  }

  else
  {
    internal->_status = 7;
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = [v10 initWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
    v12 = self->_internal;
    error = v12->_error;
    v12->_error = v11;

    v14 = 8;
  }

LABEL_8:
  v15 = self->_internal;

  [(_SYStreamGuts *)v15 postStreamEvent:v14 forStream:self];
}

- (void)close
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  file = selfCopy->_file;
  if (file)
  {
    gzclose(selfCopy->_file);
    selfCopy->_file = 0;
    selfCopy->_internal->_status = 6;
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

- (int64_t)read:(char *)read maxLength:(unint64_t)length
{
  lengthCopy = length;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  internal = selfCopy->_internal;
  if (internal->_status != 2)
  {
    v9 = 0;
    goto LABEL_14;
  }

  internal->_status = 3;
  v8 = gzread(selfCopy->_file, read, lengthCopy);
  LODWORD(v9) = v8;
  selfCopy->_internal->_status = 2;
  if (!v8)
  {
    goto LABEL_7;
  }

  if (v8 == -1)
  {
    v10 = CreateGzfileError(selfCopy->_file);
    v11 = selfCopy->_internal;
    error = v11->_error;
    v11->_error = v10;

    selfCopy->_internal->_status = 7;
    [(_SYStreamGuts *)selfCopy->_internal postStreamEvent:8 forStream:selfCopy];
    v9 = -1;
    goto LABEL_14;
  }

  if (gzeof(selfCopy->_file) == 1)
  {
LABEL_7:
    selfCopy->_internal->_status = 5;
    [(_SYStreamGuts *)selfCopy->_internal postStreamEvent:16 forStream:selfCopy];
  }

  if (v9 >= 1)
  {
    selfCopy->_byteCount += v9;
    progress = selfCopy->_progress;
    if (progress)
    {
      [(NSProgress *)progress setCompletedUnitCount:?];
    }
  }

  if ([(SYCompressedFileInputStream *)selfCopy hasBytesAvailable])
  {
    [(_SYStreamGuts *)selfCopy->_internal postStreamEvent:2 forStream:selfCopy];
  }

  v9 = v9;
LABEL_14:
  objc_sync_exit(selfCopy);

  return v9;
}

- (BOOL)hasBytesAvailable
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_internal->_status != 2 || gzeof(selfCopy->_file) == 1)
  {
    goto LABEL_3;
  }

  file = selfCopy->_file;
  if (file->have)
  {
    --file->have;
    next = file->next;
    v6 = file->pos + 1;
    file->next = next + 1;
    file->pos = v6;
    v7 = *next;
LABEL_7:
    gzungetc(v7, selfCopy->_file);
    v3 = 1;
    goto LABEL_8;
  }

  v7 = gzgetc(file);
  if (v7 != -1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v3 = 0;
LABEL_8:
  objc_sync_exit(selfCopy);

  return v3;
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
        v7 = 160;
      }

      else
      {
        if (event != 2)
        {
          goto LABEL_17;
        }

        v7 = 168;
      }
    }

    else
    {
      switch(event)
      {
        case 4uLL:
          v7 = 176;
          break;
        case 8uLL:
          v7 = 192;
          break;
        case 0x10uLL:
          v7 = 184;
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

- (void)stream:handleEvent:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_1DF835000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unknown stream %{public}@ is sending me (%{public}@) delegate messages...", v1, 0x16u);
  v0 = *MEMORY[0x1E69E9840];
}

@end