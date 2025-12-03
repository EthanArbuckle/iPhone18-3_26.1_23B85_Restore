@interface MIBUFilePacketProvider
- (BOOL)_hasNext;
- (BOOL)_openIOChannel;
- (BOOL)_reopenIOChannel;
- (BOOL)bootstrap;
- (BOOL)hasNext;
- (BOOL)rewind;
- (MIBUFilePacketProvider)initWithPayloadSize:(unint64_t)size inputFile:(id)file;
- (id)_encodePacketWithPayload:(id)payload packetCount:(unint64_t)count packetUID:(unint64_t)d;
- (void)_closeIOChannel;
- (void)_openIOChannel;
- (void)_readIOChannelOfPacketCount:(unint64_t)count withCompletion:(id)completion inQueue:(id)queue;
- (void)invalidate;
- (void)providePacketsOfCount:(unint64_t)count withCompletion:(id)completion inQueue:(id)queue;
@end

@implementation MIBUFilePacketProvider

- (MIBUFilePacketProvider)initWithPayloadSize:(unint64_t)size inputFile:(id)file
{
  v20 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v15.receiver = self;
  v15.super_class = MIBUFilePacketProvider;
  v8 = [(MIBUFilePacketProvider *)&v15 init];
  if (v8)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUFilePacketProvider initWithPayloadSize:inputFile:];
    }

    v9 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      sizeCopy = size;
      v18 = 2114;
      v19 = fileCopy;
      _os_log_impl(&dword_259B04000, v9, OS_LOG_TYPE_DEFAULT, "Initialize packet provider with payload size: %lu input file: %{public}@", buf, 0x16u);
    }

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.MIBUFilePacketProvider", v10);
    queue = v8->_queue;
    v8->_queue = v11;

    v8->_payloadSize = size;
    objc_storeStrong(&v8->_inputFile, file);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

void __56__MIBUFilePacketProvider_initWithPayloadSize_inputFile___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)bootstrap
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__MIBUFilePacketProvider_bootstrap__block_invoke;
  v5[3] = &unk_2798EBAF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __35__MIBUFilePacketProvider_bootstrap__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _openIOChannel];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)providePacketsOfCount:(unint64_t)count withCompletion:(id)completion inQueue:(id)queue
{
  completionCopy = completion;
  queueCopy = queue;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__MIBUFilePacketProvider_providePacketsOfCount_withCompletion_inQueue___block_invoke;
  v13[3] = &unk_2798EBB18;
  v15 = completionCopy;
  countCopy = count;
  v13[4] = self;
  v14 = queueCopy;
  v11 = queueCopy;
  v12 = completionCopy;
  dispatch_async(queue, v13);
}

- (BOOL)hasNext
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__MIBUFilePacketProvider_hasNext__block_invoke;
  v5[3] = &unk_2798EBAF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __33__MIBUFilePacketProvider_hasNext__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _hasNext];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)rewind
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__MIBUFilePacketProvider_rewind__block_invoke;
  v5[3] = &unk_2798EBAF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __32__MIBUFilePacketProvider_rewind__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _reopenIOChannel];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__MIBUFilePacketProvider_invalidate__block_invoke;
  block[3] = &unk_2798EB9A8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)_openIOChannel
{
  v30 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (MIBUOnceToken != -1)
  {
    [MIBUFilePacketProvider _openIOChannel];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    inputFile = self->_inputFile;
    *buf = 138543362;
    v23 = inputFile;
    _os_log_impl(&dword_259B04000, v3, OS_LOG_TYPE_DEFAULT, "Opening IO channel for file: %{public}@", buf, 0xCu);
  }

  if (!self->_fileChannel)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v10 = dispatch_io_create_with_path(0, [(NSString *)self->_inputFile fileSystemRepresentation], 0, 0, self->_queue, &__block_literal_global_12_0);
    fileChannel = self->_fileChannel;
    self->_fileChannel = v10;

    if (!self->_fileChannel)
    {
      [(MIBUFilePacketProvider *)buf _openIOChannel];
      v6 = buf[0];
      goto LABEL_19;
    }

    v12 = self->_inputFile;
    v21 = 0;
    v13 = [defaultManager attributesOfItemAtPath:v12 error:&v21];
    v14 = v21;
    fileSize = [v13 fileSize];

    if (!fileSize)
    {
      [(MIBUFilePacketProvider *)v14 _openIOChannel];
      v6 = 0;
      goto LABEL_19;
    }

    payloadSize = self->_payloadSize;
    v17 = fileSize / payloadSize;
    if (fileSize % payloadSize)
    {
      ++v17;
    }

    self->_packetCount = v17;
    self->_packetID = 0;
    self->_atEOF = 0;
    if (MIBUOnceToken == -1)
    {
      v18 = MIBUConnObj;
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
LABEL_18:

        v6 = 1;
LABEL_19:

        v20 = *MEMORY[0x277D85DE8];
        return v6;
      }
    }

    else
    {
      [MIBUFilePacketProvider _openIOChannel];
      v18 = MIBUConnObj;
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }
    }

    packetCount = self->_packetCount;
    *buf = 134218752;
    v23 = fileSize;
    v24 = 2048;
    v25 = payloadSize + 16;
    v26 = 2048;
    v27 = payloadSize;
    v28 = 2048;
    v29 = packetCount;
    _os_log_impl(&dword_259B04000, v18, OS_LOG_TYPE_DEFAULT, "File size: %lu, Packet size: %lu, Payload size: %lu, Packet count: %llu", buf, 0x2Au);
    goto LABEL_18;
  }

  if (MIBUOnceToken != -1)
  {
    [MIBUFilePacketProvider _openIOChannel];
    v5 = MIBUConnObj;
    if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
LABEL_8:
    *buf = 0;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "IO channel already opened!", buf, 2u);
  }

LABEL_9:
  v6 = 1;
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void __40__MIBUFilePacketProvider__openIOChannel__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __40__MIBUFilePacketProvider__openIOChannel__block_invoke_6()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __40__MIBUFilePacketProvider__openIOChannel__block_invoke_9(uint64_t a1, int a2)
{
  if (a2)
  {
    if (MIBUOnceToken != -1)
    {
      __40__MIBUFilePacketProvider__openIOChannel__block_invoke_9_cold_1();
    }

    v3 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      __40__MIBUFilePacketProvider__openIOChannel__block_invoke_9_cold_2(a2, v3);
    }
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      __40__MIBUFilePacketProvider__openIOChannel__block_invoke_9_cold_3();
    }

    v4 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_259B04000, v4, OS_LOG_TYPE_DEFAULT, "IO channel closed!", v5, 2u);
    }
  }
}

void __40__MIBUFilePacketProvider__openIOChannel__block_invoke_2()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __40__MIBUFilePacketProvider__openIOChannel__block_invoke_15()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __40__MIBUFilePacketProvider__openIOChannel__block_invoke_18()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __40__MIBUFilePacketProvider__openIOChannel__block_invoke_21()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __40__MIBUFilePacketProvider__openIOChannel__block_invoke_24()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)_closeIOChannel
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (MIBUOnceToken != -1)
  {
    [MIBUFilePacketProvider _closeIOChannel];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    inputFile = self->_inputFile;
    v18 = 138543362;
    v19 = inputFile;
    _os_log_impl(&dword_259B04000, v3, OS_LOG_TYPE_DEFAULT, "Closing IO channel for file: %{public}@", &v18, 0xCu);
  }

  fileChannel = self->_fileChannel;
  if (fileChannel)
  {
    dispatch_io_close(fileChannel, 1uLL);
    v6 = self->_fileChannel;
    self->_fileChannel = 0;

    self->_atEOF = 0;
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  if (MIBUOnceToken == -1)
  {
    v8 = MIBUConnObj;
    if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      v16 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else
  {
    [MIBUFilePacketProvider _closeIOChannel];
    v8 = MIBUConnObj;
    if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }
  }

  [(MIBUFilePacketProvider *)v8 _closeIOChannel:v9];
  v17 = *MEMORY[0x277D85DE8];
}

void __41__MIBUFilePacketProvider__closeIOChannel__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __41__MIBUFilePacketProvider__closeIOChannel__block_invoke_29()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)_reopenIOChannel
{
  dispatch_assert_queue_V2(self->_queue);
  [(MIBUFilePacketProvider *)self _closeIOChannel];

  return [(MIBUFilePacketProvider *)self _openIOChannel];
}

- (BOOL)_hasNext
{
  dispatch_assert_queue_V2(self->_queue);
  fileChannel = self->_fileChannel;
  if (fileChannel)
  {
    LOBYTE(fileChannel) = !self->_atEOF;
  }

  return fileChannel & 1;
}

- (void)_readIOChannelOfPacketCount:(unint64_t)count withCompletion:(id)completion inQueue:(id)queue
{
  completionCopy = completion;
  queueCopy = queue;
  dispatch_assert_queue_V2(self->_queue);
  packetCount = self->_packetCount;
  if (self->_packetID >= packetCount)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__MIBUFilePacketProvider__readIOChannelOfPacketCount_withCompletion_inQueue___block_invoke;
    block[3] = &unk_2798EBD68;
    v27 = completionCopy;
    v14 = completionCopy;
    dispatch_async(queueCopy, block);
    v15 = v27;
  }

  else
  {
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = __Block_byref_object_copy__0;
    v24[4] = __Block_byref_object_dispose__0;
    v25 = 0;
    queue = self->_queue;
    payloadSize = self->_payloadSize;
    fileChannel = self->_fileChannel;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__MIBUFilePacketProvider__readIOChannelOfPacketCount_withCompletion_inQueue___block_invoke_32;
    v16[3] = &unk_2798EBDB8;
    v21 = payloadSize * count;
    v17 = queueCopy;
    selfCopy = self;
    v19 = completionCopy;
    v20 = v24;
    v22 = payloadSize;
    v23 = packetCount;
    v14 = completionCopy;
    dispatch_io_read(fileChannel, 0, payloadSize * count, queue, v16);

    _Block_object_dispose(v24, 8);
    v15 = v25;
  }
}

void __77__MIBUFilePacketProvider__readIOChannelOfPacketCount_withCompletion_inQueue___block_invoke_32(uint64_t a1, int a2, void *a3, int a4)
{
  v7 = a3;
  v8 = v7;
  if (a4)
  {
    if (MIBUOnceToken != -1)
    {
      __77__MIBUFilePacketProvider__readIOChannelOfPacketCount_withCompletion_inQueue___block_invoke_32_cold_1();
    }

    v9 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      __77__MIBUFilePacketProvider__readIOChannelOfPacketCount_withCompletion_inQueue___block_invoke_32_cold_2(a1, a4, v9);
    }

    v10 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__MIBUFilePacketProvider__readIOChannelOfPacketCount_withCompletion_inQueue___block_invoke_35;
    block[3] = &unk_2798EBD68;
    v39 = *(a1 + 48);
    dispatch_async(v10, block);
    v11 = v39;
    goto LABEL_23;
  }

  if (v7 == MEMORY[0x277D85CC8] && a2 != 0)
  {
    *(*(a1 + 40) + 56) = 1;
    v23 = *(a1 + 32);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __77__MIBUFilePacketProvider__readIOChannelOfPacketCount_withCompletion_inQueue___block_invoke_2_36;
    v35[3] = &unk_2798EBD90;
    v24 = *(a1 + 48);
    v25 = *(a1 + 56);
    v36 = v24;
    v37 = v25;
    dispatch_async(v23, v35);
    v11 = v36;
LABEL_23:

    goto LABEL_24;
  }

  size = dispatch_data_get_size(v7);
  if (size)
  {
    v14 = size;
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0;
    do
    {
      subrange = dispatch_data_create_subrange(v8, v15, *(a1 + 72));
      v17 = [*(a1 + 40) _encodePacketWithPayload:subrange packetCount:*(a1 + 80) packetUID:*(*(a1 + 40) + 48)];
      ++*(*(a1 + 40) + 48);
      if (!v17)
      {
        v26 = *(a1 + 32);
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __77__MIBUFilePacketProvider__readIOChannelOfPacketCount_withCompletion_inQueue___block_invoke_3;
        v33[3] = &unk_2798EBD68;
        v34 = *(a1 + 48);
        dispatch_async(v26, v33);

        goto LABEL_22;
      }

      v18 = v17;
      [v11 addObject:v17];
      v15 += *(a1 + 72);
    }

    while (v15 < v14);
    v19 = *(*(a1 + 56) + 8);
    v22 = *(v19 + 40);
    v20 = (v19 + 40);
    v21 = v22;
    if (v22)
    {
      [v21 addObjectsFromArray:v11];
      if (!a2)
      {
        goto LABEL_23;
      }
    }

    else
    {
      objc_storeStrong(v20, v11);
      if (!a2)
      {
        goto LABEL_23;
      }
    }

    v27 = *(a1 + 32);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __77__MIBUFilePacketProvider__readIOChannelOfPacketCount_withCompletion_inQueue___block_invoke_4;
    v30[3] = &unk_2798EBD90;
    v28 = *(a1 + 48);
    v29 = *(a1 + 56);
    v31 = v28;
    v32 = v29;
    dispatch_async(v27, v30);
    subrange = v31;
LABEL_22:

    goto LABEL_23;
  }

LABEL_24:
}

void __77__MIBUFilePacketProvider__readIOChannelOfPacketCount_withCompletion_inQueue___block_invoke_2()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __77__MIBUFilePacketProvider__readIOChannelOfPacketCount_withCompletion_inQueue___block_invoke_2_36(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(*(a1 + 40) + 8) + 40) copy];
  (*(v1 + 16))(v1, 1, 1, v2);
}

void __77__MIBUFilePacketProvider__readIOChannelOfPacketCount_withCompletion_inQueue___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(*(a1 + 40) + 8) + 40) copy];
  (*(v1 + 16))(v1, 1, 0, v2);
}

- (id)_encodePacketWithPayload:(id)payload packetCount:(unint64_t)count packetUID:(unint64_t)d
{
  payloadCopy = payload;
  v8 = malloc_type_calloc(2uLL, 8uLL, 0x100004000313F17uLL);
  if (v8)
  {
    *v8 = count;
    v8[1] = d;
    v9 = dispatch_data_create(v8, 0x10uLL, 0, *MEMORY[0x277D85CB0]);
    v10 = v9;
    if (v9)
    {
      concat = dispatch_data_create_concat(v9, payloadCopy);
    }

    else
    {
      if (MIBUOnceToken != -1)
      {
        [MIBUFilePacketProvider _encodePacketWithPayload:packetCount:packetUID:];
      }

      v20 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        [(MIBUFilePacketProvider *)v20 _encodePacketWithPayload:v21 packetCount:v22 packetUID:v23, v24, v25, v26, v27];
      }

      concat = 0;
    }
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUFilePacketProvider _encodePacketWithPayload:packetCount:packetUID:];
    }

    v12 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [(MIBUFilePacketProvider *)v12 _encodePacketWithPayload:v13 packetCount:v14 packetUID:v15, v16, v17, v18, v19];
    }

    concat = 0;
  }

  return concat;
}

void __73__MIBUFilePacketProvider__encodePacketWithPayload_packetCount_packetUID___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __73__MIBUFilePacketProvider__encodePacketWithPayload_packetCount_packetUID___block_invoke_41()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)_openIOChannel
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_20);
  }

  v2 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_259B04000, v2, OS_LOG_TYPE_ERROR, "Failed to open IO channel.", v3, 2u);
  }

  *self = 0;
}

void __40__MIBUFilePacketProvider__openIOChannel__block_invoke_9_cold_2(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_259B04000, a2, OS_LOG_TYPE_ERROR, "IO channel closed with error: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void __77__MIBUFilePacketProvider__readIOChannelOfPacketCount_withCompletion_inQueue___block_invoke_32_cold_2(uint64_t a1, int a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 64);
  v5 = 134218240;
  v6 = v3;
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&dword_259B04000, log, OS_LOG_TYPE_ERROR, "Failed to read %lu bytes from IO channel: %d", &v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

@end