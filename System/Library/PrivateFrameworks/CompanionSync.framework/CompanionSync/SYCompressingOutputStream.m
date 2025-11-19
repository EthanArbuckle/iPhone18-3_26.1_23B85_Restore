@interface SYCompressingOutputStream
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (SYCompressingOutputStream)initWithDestinationStream:(id)a3;
- (id)initToBuffer:(char *)a3 capacity:(unint64_t)a4;
- (id)initToMemory;
- (id)propertyForKey:(id)a3;
- (int)_handlePendingInput;
- (int64_t)write:(const char *)a3 maxLength:(unint64_t)a4;
- (void)_dispatchMyEvent:(unint64_t)a3;
- (void)_postEventToDelegate:(unint64_t)a3;
- (void)close;
- (void)dealloc;
- (void)open;
- (void)removeFromRunLoop:(id)a3 forMode:(id)a4;
- (void)scheduleInRunLoop:(id)a3 forMode:(id)a4;
- (void)setCompressionLevel:(int64_t)a3;
- (void)setInputBufferSize:(unint64_t)a3;
- (void)setOutputBufferSize:(unint64_t)a3;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation SYCompressingOutputStream

- (SYCompressingOutputStream)initWithDestinationStream:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SYCompressingOutputStream;
  v6 = [(SYCompressingOutputStream *)&v11 init];
  if (v6)
  {
    v7 = objc_opt_new();
    internal = v6->_internal;
    v6->_internal = v7;

    objc_storeStrong(&v6->_stream, a3);
    [(NSOutputStream *)v6->_stream setDelegate:v6];
    objc_storeWeak(&v6->_internal->super._delegate, v6);
    v6->_level = -1;
    v9 = v6;
  }

  return v6;
}

- (id)initToBuffer:(char *)a3 capacity:(unint64_t)a4
{
  v5 = [objc_alloc(MEMORY[0x1E695DFC0]) initToBuffer:a3 capacity:a4];
  v6 = [(SYCompressingOutputStream *)self initWithDestinationStream:v5];

  return v6;
}

- (id)initToMemory
{
  v3 = [objc_alloc(MEMORY[0x1E695DFC0]) initToMemory];
  v4 = [(SYCompressingOutputStream *)self initWithDestinationStream:v3];

  return v4;
}

- (void)dealloc
{
  [(SYCompressingOutputStream *)self close];
  v3.receiver = self;
  v3.super_class = SYCompressingOutputStream;
  [(SYCompressingOutputStream *)&v3 dealloc];
}

- (void)setCompressionLevel:(int64_t)a3
{
  if (!self->_internal->super._status)
  {
    self->_level = a3;
  }
}

- (void)setInputBufferSize:(unint64_t)a3
{
  internal = self->_internal;
  if (!internal->super._status)
  {
    internal->_inputSize = a3;
  }
}

- (void)setOutputBufferSize:(unint64_t)a3
{
  internal = self->_internal;
  if (!internal->super._status)
  {
    internal->_outputSize = a3;
  }
}

- (void)open
{
  if (!self->_internal->super._status)
  {
    if (![(NSOutputStream *)self->_stream streamStatus])
    {
      [(NSOutputStream *)self->_stream open];
    }

    self->_internal->super._status = 1;
  }
}

- (void)close
{
  internal = self->_internal;
  if (internal->super._status - 6 >= 0xFFFFFFFFFFFFFFFBLL)
  {
    v4 = deflateEnd(&internal->_zStream);
    if ((v4 & 0x80000000) != 0)
    {
      [(_SYZlibStreamInternal *)self->_internal setZlibError:v4 forStream:self];
      v5 = 7;
    }

    else
    {
      v5 = 6;
    }

    [(NSOutputStream *)self->_stream close];
    self->_internal->super._status = v5;
    onClose = self->_onClose;
    if (onClose)
    {
      v7 = *(onClose + 2);

      v7();
    }
  }
}

- (void)_postEventToDelegate:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_internal->super._delegate);
  [WeakRetained stream:self handleEvent:a3];
}

- (int)_handlePendingInput
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internal = self->_internal;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__SYCompressingOutputStream__handlePendingInput__block_invoke;
  v5[3] = &unk_1E86C9FD8;
  v5[4] = self;
  v5[5] = &v6;
  [(_SYZlibStreamInternal *)internal synchronized:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __48__SYCompressingOutputStream__handlePendingInput__block_invoke(uint64_t a1)
{
  result = deflate((*(*(a1 + 32) + 144) + 72), 2);
  *(*(*(a1 + 40) + 8) + 24) = result;
  v3 = *(a1 + 32);
  if ((*(*(*(a1 + 40) + 8) + 24) & 0x80000000) != 0)
  {
    [*(v3 + 136) close];
    v5 = *(*(a1 + 32) + 144);
    v6 = *(*(*(a1 + 40) + 8) + 24);

    return [v5 setZlibError:v6 forStream:?];
  }

  else
  {
    v4 = *(v3 + 144);
    if (!*(v4 + 80))
    {
      *(v4 + 72) = *(v4 + 200);
      *(*(*(a1 + 32) + 144) + 80) = 0;
      *(*(*(a1 + 32) + 144) + 216) = 0;
    }
  }

  return result;
}

- (void)_dispatchMyEvent:(unint64_t)a3
{
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      v4 = 152;
    }

    else
    {
      if (a3 != 2)
      {
        return;
      }

      v4 = 160;
    }
  }

  else
  {
    switch(a3)
    {
      case 4uLL:
        v4 = 168;
        break;
      case 8uLL:
        v4 = 184;
        break;
      case 0x10uLL:
        v4 = 176;
        break;
      default:
        return;
    }
  }

  v5 = *(&self->super.super.super.isa + v4);
  if (v5)
  {
    (*(v5 + 16))(v5, self);
  }
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  if (v6 == self)
  {
    v22 = v6;
    stream = [(SYCompressingOutputStream *)self _dispatchMyEvent:a4];
LABEL_13:
    v6 = v22;
    goto LABEL_14;
  }

  stream = self->_stream;
  if (stream != v6)
  {
    goto LABEL_14;
  }

  if (a4 > 7)
  {
    if (a4 != 8)
    {
      if (a4 != 16)
      {
        goto LABEL_14;
      }

      goto LABEL_27;
    }

    v22 = v6;
    v14 = [stream streamError];
    internal = self->_internal;
    error = internal->super._error;
    internal->super._error = v14;

    self->_internal->super._status = 7;
    [(NSOutputStream *)self->_stream close];
    v17 = self->_internal;
    v18 = 8;
    goto LABEL_37;
  }

  if (a4 == 1)
  {
    v22 = v6;
    v11 = self->_internal;
    if (v11->super._status == 1)
    {
      v12 = deflateInit2_(&v11->_zStream, self->_level, 8, 31, 8, 0, "1.2.12", 112);
      if (v12)
      {
        v13 = v12;
        [(NSOutputStream *)self->_stream close];
        stream = [(_SYZlibStreamInternal *)self->_internal setZlibError:v13 forStream:self];
        goto LABEL_13;
      }

      v11 = self->_internal;
    }

    v11->super._status = 2;
    [(_SYStreamGuts *)self->_internal postStreamEvent:1 forStream:self];
    stream = [(_SYZlibStreamInternal *)self->_internal inputRoom];
    v6 = v22;
    if (stream < 1)
    {
      goto LABEL_14;
    }

    v17 = self->_internal;
    v18 = 4;
LABEL_37:
    v20 = self;
LABEL_38:
    stream = [(_SYStreamGuts *)v17 postStreamEvent:v18 forStream:v20];
    goto LABEL_13;
  }

  if (a4 == 4)
  {
    v21 = v6;
    if ([(_SYZlibStreamInternal *)self->_internal outputAvailable]|| !self->_internal->_zStream.avail_in || (stream = [(SYCompressingOutputStream *)self _handlePendingInput], v6 = v21, (stream & 0x80000000) == 0))
    {
      while (1)
      {
        v8 = [(_SYZlibStreamInternal *)self->_internal outputAvailable];
        v9 = self->_internal;
        if (v8 < 1)
        {
          break;
        }

        [(_SYZlibStreamInternal *)v9 readOutputToStream:self->_stream];
        v10 = [(NSOutputStream *)self->_stream hasSpaceAvailable];
        v9 = self->_internal;
        if (!v10 || !v9->_zStream.avail_in)
        {
          break;
        }

        stream = [(SYCompressingOutputStream *)self _handlePendingInput];
        v6 = v21;
        if ((stream & 0x80000000) != 0)
        {
          goto LABEL_14;
        }
      }

      stream = [(_SYZlibStreamInternal *)v9 inputRoom];
      if (stream >= 1)
      {
        stream = [(_SYStreamGuts *)self->_internal postStreamEvent:4 forStream:self];
      }

      v6 = v21;
LABEL_27:
      v19 = self->_internal;
      if (v19->super._status == 5 || v19->_zStream.total_out || v19->_zStream.avail_in)
      {
        goto LABEL_14;
      }

      v19->super._status = 5;
      v17 = self->_internal;
      v18 = 16;
      v20 = self;
      v22 = v6;
      goto LABEL_38;
    }
  }

LABEL_14:

  MEMORY[0x1EEE66BB8](stream, v6);
}

- (void)scheduleInRunLoop:(id)a3 forMode:(id)a4
{
  v13 = a3;
  v6 = a4;
  [(NSOutputStream *)self->_stream scheduleInRunLoop:v13 forMode:v6];
  internal = self->_internal;
  if (!internal->super._runloopSource)
  {
    [(_SYStreamGuts *)internal createRunloopSourceForStream:self];
  }

  v8 = [v13 getCFRunLoop];
  runloopSource = self->_internal->super._runloopSource;
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
}

- (void)removeFromRunLoop:(id)a3 forMode:(id)a4
{
  v12 = a3;
  v6 = a4;
  [(NSOutputStream *)self->_stream removeFromRunLoop:v12 forMode:v6];
  if (self->_internal->super._runloopSource)
  {
    v7 = [v12 getCFRunLoop];
    runloopSource = self->_internal->super._runloopSource;
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
  }
}

- (int64_t)write:(const char *)a3 maxLength:(unint64_t)a4
{
  if (![(_SYZlibStreamInternal *)self->_internal inputRoom])
  {
    return 0;
  }

  internal = self->_internal;
  if (internal->super._status != 2)
  {
    return 0;
  }

  internal->super._status = 4;
  v8 = [(_SYZlibStreamInternal *)self->_internal writeInputFromBuffer:a3 length:a4];
  self->_internal->super._status = 2;
  if ([(NSOutputStream *)self->_stream hasSpaceAvailable])
  {
    [(SYCompressingOutputStream *)self stream:self->_stream handleEvent:4];
  }

  if (v8 >= 1)
  {
    self->_byteCount += v8;
    progress = self->_progress;
    if (progress)
    {
      [(NSProgress *)progress setCompletedUnitCount:?];
    }
  }

  return v8;
}

- (id)propertyForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSOutputStream *)self->_stream propertyForKey:v4];
  if (!v5)
  {
    v5 = [(_SYStreamGuts *)self->_internal propertyForKey:v4];
  }

  return v5;
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(NSOutputStream *)self->_stream setProperty:v6 forKey:v7]& 1) == 0)
  {
    [(_SYStreamGuts *)self->_internal storeProperty:v6 forKey:v7];
  }

  return 1;
}

@end