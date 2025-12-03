@interface TSUFileIOChannel
- (BOOL)isValid;
- (TSUFileIOChannel)initWithType:(unint64_t)type URL:(id)l oflag:(int)oflag mode:(unsigned __int16)mode error:(id *)error cleanupHandler:(id)handler;
- (TSUFileIOChannel)initWithType:(unint64_t)type descriptor:(int)descriptor queue:(id)queue cleanupHandler:(id)handler;
- (void)addBarrier:(id)barrier;
- (void)close;
- (void)dealloc;
- (void)flushWithCompletion:(id)completion;
- (void)readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler;
- (void)setLowWater:(unint64_t)water;
- (void)truncateToLength:(int64_t)length completion:(id)completion;
- (void)writeData:(id)data handler:(id)handler;
- (void)writeData:(id)data offset:(int64_t)offset handler:(id)handler;
@end

@implementation TSUFileIOChannel

- (TSUFileIOChannel)initWithType:(unint64_t)type URL:(id)l oflag:(int)oflag mode:(unsigned __int16)mode error:(id *)error cleanupHandler:(id)handler
{
  modeCopy = mode;
  lCopy = l;
  handlerCopy = handler;
  if (!lCopy || ([lCopy isFileURL] & 1) == 0)
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:2 userInfo:0];
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 2);
    }

    goto LABEL_19;
  }

  v42.receiver = self;
  v42.super_class = TSUFileIOChannel;
  v16 = [(TSUFileIOChannel *)&v42 init];
  if (!v16)
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:12 userInfo:0];
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 12);
    }

    self = 0;
LABEL_19:
    selfCopy = 0;
    goto LABEL_20;
  }

  v17 = v16;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__TSUFileIOChannel_initWithType_URL_oflag_mode_error_cleanupHandler___block_invoke;
  aBlock[3] = &unk_2799C6DF0;
  v39 = v40;
  v18 = handlerCopy;
  v38 = v18;
  v33 = _Block_copy(aBlock);
  path = [lCopy path];
  fileSystemRepresentation = [path fileSystemRepresentation];

  if (fileSystemRepresentation)
  {
    if ((oflag & 0x400) != 0)
    {
      unlink(fileSystemRepresentation);
    }

    v21 = open(fileSystemRepresentation, oflag, modeCopy);
    if (v21 < 0)
    {
      v27 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
      if (TSUDefaultCat_init_token != -1)
      {
        [TSUFileIOChannel initWithType:URL:oflag:mode:error:cleanupHandler:];
      }

      v30 = __error();
      v33[2](v33, *v30);
      goto LABEL_24;
    }

    v22 = dispatch_queue_create("TSUFileIOChannel.IO", 0);
    ioQueue = v17->_ioQueue;
    v17->_ioQueue = v22;

    v24 = v17->_ioQueue;
    cleanup_handler[0] = MEMORY[0x277D85DD0];
    cleanup_handler[1] = 3221225472;
    cleanup_handler[2] = __69__TSUFileIOChannel_initWithType_URL_oflag_mode_error_cleanupHandler___block_invoke_2;
    cleanup_handler[3] = &unk_2799C6E18;
    v36 = v21;
    v35 = v18;
    v25 = dispatch_io_create(type, v21, v24, cleanup_handler);
    channel = v17->_channel;
    v17->_channel = v25;
  }

  v27 = 0;
LABEL_24:
  if (!v17->_channel)
  {
    if (error)
    {
      if (v27)
      {
        v31 = v27;
        *error = v27;
      }

      else
      {
        v32 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:2 userInfo:0];
        *error = v32;
      }
    }

    v33[2](v33, 2);

    v17 = 0;
  }

  self = v17;

  _Block_object_dispose(v40, 8);
  selfCopy = self;
LABEL_20:

  return selfCopy;
}

uint64_t __69__TSUFileIOChannel_initWithType_URL_oflag_mode_error_cleanupHandler___block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    result = *(result + 32);
    if (result)
    {
      result = (*(result + 16))();
      v1 = *(*(v2 + 40) + 8);
    }

    *(v1 + 24) = 1;
  }

  return result;
}

uint64_t __69__TSUFileIOChannel_initWithType_URL_oflag_mode_error_cleanupHandler___block_invoke_2(uint64_t a1, int a2)
{
  close(*(a1 + 40));
  if (a2 && TSUDefaultCat_init_token != -1)
  {
    __69__TSUFileIOChannel_initWithType_URL_oflag_mode_error_cleanupHandler___block_invoke_2_cold_1();
  }

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __69__TSUFileIOChannel_initWithType_URL_oflag_mode_error_cleanupHandler___block_invoke_3()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __69__TSUFileIOChannel_initWithType_URL_oflag_mode_error_cleanupHandler___block_invoke_4()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (TSUFileIOChannel)initWithType:(unint64_t)type descriptor:(int)descriptor queue:(id)queue cleanupHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v26.receiver = self;
  v26.super_class = TSUFileIOChannel;
  v12 = [(TSUFileIOChannel *)&v26 init];
  if (v12)
  {
    v13 = v12;
    v14 = dispatch_queue_create("TSUFileIOChannel.IO", 0);
    ioQueue = v13->_ioQueue;
    v13->_ioQueue = v14;

    v16 = v13->_ioQueue;
    cleanup_handler[0] = MEMORY[0x277D85DD0];
    cleanup_handler[1] = 3221225472;
    cleanup_handler[2] = __65__TSUFileIOChannel_initWithType_descriptor_queue_cleanupHandler___block_invoke_2;
    cleanup_handler[3] = &unk_2799C6E68;
    v23 = handlerCopy;
    v22 = queueCopy;
    v17 = dispatch_io_create(type, descriptor, v16, cleanup_handler);
    channel = v13->_channel;
    v13->_channel = v17;

    if (!v13->_channel)
    {

      v13 = 0;
    }

    v19 = v13;
  }

  else
  {
    if (handlerCopy)
    {
      if (queueCopy)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __65__TSUFileIOChannel_initWithType_descriptor_queue_cleanupHandler___block_invoke;
        block[3] = &unk_2799C69E8;
        v25 = handlerCopy;
        dispatch_async(queueCopy, block);
      }

      else
      {
        (*(handlerCopy + 2))(handlerCopy, 12);
      }
    }

    v19 = 0;
  }

  return v19;
}

void __65__TSUFileIOChannel_initWithType_descriptor_queue_cleanupHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (a2 && TSUDefaultCat_init_token != -1)
  {
    __65__TSUFileIOChannel_initWithType_descriptor_queue_cleanupHandler___block_invoke_2_cold_1();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __65__TSUFileIOChannel_initWithType_descriptor_queue_cleanupHandler___block_invoke_4;
      v7[3] = &unk_2799C6E40;
      v8 = v4;
      v9 = a2;
      dispatch_async(v5, v7);
    }

    else
    {
      v6 = v4[2];

      v6();
    }
  }
}

void __65__TSUFileIOChannel_initWithType_descriptor_queue_cleanupHandler___block_invoke_3()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (void)dealloc
{
  if (!self->_isClosed)
  {
    channel = self->_channel;
    if (channel)
    {
      dispatch_io_close(channel, 0);
    }
  }

  v4.receiver = self;
  v4.super_class = TSUFileIOChannel;
  [(TSUFileIOChannel *)&v4 dealloc];
}

- (void)readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler
{
  handlerCopy = handler;
  if (self->_isClosed)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel readFromOffset:length:handler:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFileIOChannel.m"];
    [OITSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:199 isFatal:0 description:"Channel is closed"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  p_ioQueue = &self->_ioQueue;
  ioQueue = self->_ioQueue;
  v12 = p_ioQueue[1];
  io_handler[0] = MEMORY[0x277D85DD0];
  io_handler[1] = 3221225472;
  io_handler[2] = __50__TSUFileIOChannel_readFromOffset_length_handler___block_invoke;
  io_handler[3] = &unk_2799C6E90;
  v16 = handlerCopy;
  v14 = handlerCopy;
  dispatch_io_read(v12, offset, length, ioQueue, io_handler);
}

void __50__TSUFileIOChannel_readFromOffset_length_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if (a4)
  {
    v6 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:a4 userInfo:0];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)writeData:(id)data handler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  if (self->_isClosed)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel writeData:handler:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFileIOChannel.m"];
    [OITSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:212 isFatal:0 description:"Channel is closed"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  p_ioQueue = &self->_ioQueue;
  ioQueue = self->_ioQueue;
  v11 = p_ioQueue[1];
  io_handler[0] = MEMORY[0x277D85DD0];
  io_handler[1] = 3221225472;
  io_handler[2] = __38__TSUFileIOChannel_writeData_handler___block_invoke;
  io_handler[3] = &unk_2799C6E90;
  v15 = handlerCopy;
  v13 = handlerCopy;
  dispatch_io_write(v11, 0, dataCopy, ioQueue, io_handler);
}

void __38__TSUFileIOChannel_writeData_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v7 = a3;
  if (a4)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:a4 userInfo:0];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)writeData:(id)data offset:(int64_t)offset handler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  if (self->_isClosed)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel writeData:offset:handler:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFileIOChannel.m"];
    [OITSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:222 isFatal:0 description:"Channel is closed"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  p_ioQueue = &self->_ioQueue;
  ioQueue = self->_ioQueue;
  v13 = p_ioQueue[1];
  io_handler[0] = MEMORY[0x277D85DD0];
  io_handler[1] = 3221225472;
  io_handler[2] = __45__TSUFileIOChannel_writeData_offset_handler___block_invoke;
  io_handler[3] = &unk_2799C6E90;
  v17 = handlerCopy;
  v15 = handlerCopy;
  dispatch_io_write(v13, offset, dataCopy, ioQueue, io_handler);
}

void __45__TSUFileIOChannel_writeData_offset_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v7 = a3;
  if (a4)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:a4 userInfo:0];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)close
{
  if (!self->_isClosed)
  {
    dispatch_io_close(self->_channel, 0);
  }

  self->_isClosed = 1;
}

- (void)setLowWater:(unint64_t)water
{
  if (self->_isClosed)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel setLowWater:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFileIOChannel.m"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:239 isFatal:0 description:"Channel is closed"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  channel = self->_channel;

  dispatch_io_set_low_water(channel, water);
}

- (void)addBarrier:(id)barrier
{
  barrier = barrier;
  if (self->_isClosed)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel addBarrier:]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFileIOChannel.m"];
    [OITSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:245 isFatal:0 description:"Channel is closed"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  dispatch_io_barrier(self->_channel, barrier);
}

- (void)flushWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_isClosed)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel flushWithCompletion:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFileIOChannel.m"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:251 isFatal:0 description:"Channel is closed"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  channel = self->_channel;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__TSUFileIOChannel_flushWithCompletion___block_invoke;
  v9[3] = &unk_2799C6EB8;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_io_barrier(channel, v9);
}

void __40__TSUFileIOChannel_flushWithCompletion___block_invoke(uint64_t a1)
{
  descriptor = dispatch_io_get_descriptor(*(*(a1 + 32) + 16));
  if (descriptor == -1)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel flushWithCompletion:]_block_invoke"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFileIOChannel.m"];
    [OITSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:261 isFatal:0 description:"Channel is closed"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  else if (fsync(descriptor) == -1)
  {
    v3 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    goto LABEL_6;
  }

  v3 = 0;
LABEL_6:
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = v3;
    (*(v6 + 16))();
    v3 = v7;
  }
}

- (void)truncateToLength:(int64_t)length completion:(id)completion
{
  completionCopy = completion;
  if (self->_isClosed)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel truncateToLength:completion:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFileIOChannel.m"];
    [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:269 isFatal:0 description:"Channel is closed"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  channel = self->_channel;
  barrier[0] = MEMORY[0x277D85DD0];
  barrier[1] = 3221225472;
  barrier[2] = __48__TSUFileIOChannel_truncateToLength_completion___block_invoke;
  barrier[3] = &unk_2799C6EE0;
  v12 = completionCopy;
  lengthCopy = length;
  barrier[4] = self;
  v10 = completionCopy;
  dispatch_io_barrier(channel, barrier);
}

void __48__TSUFileIOChannel_truncateToLength_completion___block_invoke(void *a1)
{
  descriptor = dispatch_io_get_descriptor(*(a1[4] + 16));
  if (descriptor == -1)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel truncateToLength:completion:]_block_invoke"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFileIOChannel.m"];
    [OITSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:279 isFatal:0 description:"Channel is closed"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  else if (ftruncate(descriptor, a1[6]) == -1)
  {
    v3 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    goto LABEL_6;
  }

  v3 = 0;
LABEL_6:
  v6 = a1[5];
  if (v6)
  {
    v7 = v3;
    (*(v6 + 16))();
    v3 = v7;
  }
}

- (BOOL)isValid
{
  if (self->_isClosed)
  {
    return 0;
  }

  v7 = v2;
  v8 = v3;
  descriptor = dispatch_io_get_descriptor(self->_channel);
  v6 = 0;
  return read(descriptor, &v6, 0) == 0;
}

@end