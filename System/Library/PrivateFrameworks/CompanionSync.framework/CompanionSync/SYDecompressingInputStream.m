@interface SYDecompressingInputStream
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (SYDecompressingInputStream)initWithCompressedDataStream:(id)a3;
- (SYDecompressingInputStream)initWithData:(id)a3;
- (SYDecompressingInputStream)initWithFileAtPath:(id)a3;
- (SYDecompressingInputStream)initWithURL:(id)a3;
- (id)delegate;
- (id)propertyForKey:(id)a3;
- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4;
- (void)_dispatchMyEvent:(unint64_t)a3;
- (void)_handlePendingInput;
- (void)_postEventToDelegate:(unint64_t)a3;
- (void)close;
- (void)dealloc;
- (void)open;
- (void)removeFromRunLoop:(id)a3 forMode:(id)a4;
- (void)scheduleInRunLoop:(id)a3 forMode:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setInputBufferSize:(unint64_t)a3;
- (void)setOutputBufferSize:(unint64_t)a3;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation SYDecompressingInputStream

- (SYDecompressingInputStream)initWithCompressedDataStream:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SYDecompressingInputStream;
  v6 = [(SYDecompressingInputStream *)&v11 init];
  if (v6)
  {
    v7 = objc_opt_new();
    internal = v6->_internal;
    v6->_internal = v7;

    objc_storeStrong(&v6->_stream, a3);
    v6->_internal->super._status = 0;
    [v5 setDelegate:v6];
    [(SYDecompressingInputStream *)v6 setDelegate:v6];
    v9 = v6;
  }

  return v6;
}

- (SYDecompressingInputStream)initWithData:(id)a3
{
  v4 = MEMORY[0x1E695DF48];
  v5 = a3;
  v6 = [[v4 alloc] initWithData:v5];

  v7 = [(SYDecompressingInputStream *)self initWithCompressedDataStream:v6];
  return v7;
}

- (SYDecompressingInputStream)initWithURL:(id)a3
{
  v4 = a3;
  if ([v4 isFileURL])
  {
    v5 = [[SYCompressedFileInputStream alloc] initWithCompressedFileAtURL:v4];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF48]) initWithURL:v4];

    if (!v6)
    {
      v7 = 0;
      v4 = 0;
      goto LABEL_6;
    }

    v5 = [(SYDecompressingInputStream *)self initWithCompressedDataStream:v6];
    self = v5;
    v4 = v6;
  }

  v7 = v5;
LABEL_6:

  return v7;
}

- (SYDecompressingInputStream)initWithFileAtPath:(id)a3
{
  v4 = a3;
  v5 = [SYCompressedFileInputStream alloc];
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];

  v7 = [(SYCompressedFileInputStream *)v5 initWithCompressedFileAtURL:v6];
  return v7;
}

- (void)dealloc
{
  [(SYDecompressingInputStream *)self close];
  v3.receiver = self;
  v3.super_class = SYDecompressingInputStream;
  [(SYDecompressingInputStream *)&v3 dealloc];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_internal->super._delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = self;
  }

  v5 = v4;
  objc_storeWeak(&self->_internal->super._delegate, v4);
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
  internal = self->_internal;
  if (!internal->super._status)
  {
    internal->super._status = 1;
    if (![(NSInputStream *)self->_stream streamStatus])
    {
      stream = self->_stream;

      [(NSInputStream *)stream open];
    }
  }
}

- (void)close
{
  internal = self->_internal;
  status = internal->super._status;
  if (status)
  {
    v4 = status == 6;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v6 = inflateEnd(&internal->_zStream);
    if ((v6 & 0x80000000) != 0)
    {
      [(_SYZlibStreamInternal *)self->_internal setZlibError:v6 forStream:self];
      v7 = 7;
    }

    else
    {
      v7 = 6;
    }

    [(NSInputStream *)self->_stream close];
    self->_internal->super._status = v7;
    onClose = self->_onClose;
    if (onClose)
    {
      v9 = *(onClose + 2);

      v9();
    }
  }
}

- (void)_postEventToDelegate:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_internal->super._delegate);
  [WeakRetained stream:self handleEvent:a3];
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
  v7 = v6;
  if (v6 == self)
  {
    [(SYDecompressingInputStream *)self _dispatchMyEvent:a4];
  }

  else if (self->_stream == v6)
  {
    if (a4 > 7)
    {
      if (a4 == 8)
      {
        v17 = [(SYDecompressingInputStream *)v6 streamError];
        internal = self->_internal;
        error = internal->super._error;
        internal->super._error = v17;

        self->_internal->super._status = 7;
        [(NSInputStream *)self->_stream close];
        v11 = self->_internal;
        v12 = 8;
        goto LABEL_24;
      }

      if (a4 == 16)
      {
        v13 = self->_internal;
        if (v13->super._status != 5 && !v13->_zStream.total_out && !v13->_zStream.avail_in)
        {
          v13->super._status = 5;
          v11 = self->_internal;
          v12 = 16;
          goto LABEL_24;
        }
      }
    }

    else
    {
      if (a4 == 1)
      {
        v14 = self->_internal;
        if (v14->super._status == 1)
        {
          v15 = inflateInit2_(&v14->_zStream, 47, "1.2.12", 112);
          if (v15)
          {
            v16 = v15;
            [(NSInputStream *)self->_stream close];
            [(_SYZlibStreamInternal *)self->_internal setZlibError:v16 forStream:self];
            goto LABEL_11;
          }

          v14 = self->_internal;
        }

        v14->super._status = 2;
        v11 = self->_internal;
        v12 = 1;
        goto LABEL_24;
      }

      if (a4 == 2)
      {
        if ([(_SYZlibStreamInternal *)self->_internal inputRoom])
        {
          v8 = [(_SYZlibStreamInternal *)self->_internal writeInputFromStream:self->_stream];
          v9 = self->_internal;
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __49__SYDecompressingInputStream_stream_handleEvent___block_invoke;
          v20[3] = &unk_1E86C9F88;
          v20[4] = self;
          v20[5] = v8;
          [(_SYZlibStreamInternal *)v9 synchronized:v20];
          v10 = self->_internal;
          if (v10->super._status != 7 && [(_SYZlibStreamInternal *)v10 outputAvailable]>= 1)
          {
            v11 = self->_internal;
            v12 = 2;
LABEL_24:
            [(_SYStreamGuts *)v11 postStreamEvent:v12 forStream:self];
          }
        }
      }
    }
  }

LABEL_11:
}

uint64_t __49__SYDecompressingInputStream_stream_handleEvent___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 40) > 0 && (result = inflate((*(*(result + 32) + 144) + 72), 2), (result & 0x80000000) != 0))
  {
    v3 = result;
    [*(*(v1 + 32) + 136) close];
    v4 = *(*(v1 + 32) + 144);

    return [v4 setZlibError:v3 forStream:?];
  }

  else
  {
    v2 = *(*(v1 + 32) + 144);
    if (!*(v2 + 80))
    {
      *(v2 + 72) = *(v2 + 200);
      *(*(*(v1 + 32) + 144) + 216) = 0;
    }
  }

  return result;
}

- (void)scheduleInRunLoop:(id)a3 forMode:(id)a4
{
  v13 = a3;
  v6 = a4;
  [(NSInputStream *)self->_stream scheduleInRunLoop:v13 forMode:v6];
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
  v13 = a4;
  stream = self->_stream;
  v7 = a3;
  [(NSInputStream *)stream removeFromRunLoop:v7 forMode:v13];
  v8 = [v7 getCFRunLoop];

  runloopSource = self->_internal->super._runloopSource;
  v10 = [(__CFString *)v13 isEqualToString:*MEMORY[0x1E695D918]];
  v11 = *MEMORY[0x1E695E8E0];
  if (v10)
  {
    v12 = *MEMORY[0x1E695E8E0];
  }

  else
  {
    v12 = v13;
  }

  CFRunLoopRemoveSource(v8, runloopSource, v12);
}

- (void)_handlePendingInput
{
  internal = self->_internal;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__SYDecompressingInputStream__handlePendingInput__block_invoke;
  v3[3] = &unk_1E86C9FB0;
  v3[4] = self;
  [(_SYZlibStreamInternal *)internal synchronized:v3];
}

uint64_t __49__SYDecompressingInputStream__handlePendingInput__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 144) + 72;
  if (*(result + 8))
  {
    v3 = inflate(result, 2);
    result = *(*(a1 + 32) + 144);
    if (v3 < 0)
    {
      [result setZlibError:? forStream:?];
      v4 = *(*(a1 + 32) + 136);

      return [v4 close];
    }

    else if (!*(result + 80))
    {
      *(result + 72) = *(result + 200);
      *(*(*(a1 + 32) + 144) + 216) = 0;
    }
  }

  return result;
}

- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4
{
  internal = self->_internal;
  if (internal->super._status != 2)
  {
    return 0;
  }

  v8 = [(_SYZlibStreamInternal *)internal outputAvailable];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  self->_internal->super._status = 3;
  v10 = 0;
  if (v8 < 1 || a4 == 0)
  {
    if (v8 <= 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  do
  {
    v13 = [(_SYZlibStreamInternal *)self->_internal readOutputToBuffer:&a3[v10] length:a4];
    if (v13 == v9)
    {
      [(SYDecompressingInputStream *)self _handlePendingInput];
    }

    [(_SYZlibStreamInternal *)self->_internal setStatusForStream:self->_stream];
    v10 += v13;
    a4 -= v13;
    v14 = [(_SYZlibStreamInternal *)self->_internal outputAvailable];
    v9 = v14;
  }

  while (v14 >= 1 && a4 != 0);
  if (!v14)
  {
    if ([(NSInputStream *)self->_stream hasBytesAvailable])
    {
      [(SYDecompressingInputStream *)self stream:self->_stream handleEvent:2];
    }

    goto LABEL_22;
  }

  if (v14 >= 1)
  {
LABEL_21:
    [(_SYStreamGuts *)self->_internal postStreamEvent:2 forStream:self];
  }

LABEL_22:
  v16 = self->_internal;
  if (v16->super._status == 3)
  {
    v16->super._status = 2;
  }

  if (v10 >= 1)
  {
    self->_byteCount += v10;
    progress = self->_progress;
    if (progress)
    {
      [(NSProgress *)progress setCompletedUnitCount:?];
    }
  }

  return v10;
}

- (id)propertyForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSInputStream *)self->_stream propertyForKey:v4];
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
  if (([(NSInputStream *)self->_stream setProperty:v6 forKey:v7]& 1) == 0)
  {
    [(_SYStreamGuts *)self->_internal storeProperty:v6 forKey:v7];
  }

  return 1;
}

@end