@interface MIBUFilePacketConsumer
- (BOOL)_assembleOutputFile;
- (BOOL)_bootstrap;
- (BOOL)_isComplete;
- (BOOL)_writePayloadToFile:(id)a3 forPacketUID:(unint64_t)a4;
- (BOOL)assemble;
- (BOOL)bootstrap;
- (BOOL)isComplete;
- (MIBUFilePacketConsumer)initWithPayloadSize:(unint64_t)a3 outputFile:(id)a4;
- (int64_t)missingCount;
- (void)_assembleOutputFile;
- (void)_bootstrap;
- (void)_consumePacket:(id)a3 withCompletion:(id)a4 inQueue:(id)a5;
- (void)_decodePacket:(id)a3 outPayload:(id *)a4 outPacketCount:(unint64_t *)a5 outPacketUID:(unint64_t *)a6;
- (void)consumePacket:(id)a3 arrivalTime:(id)a4 withCompletion:(id)a5 inQueue:(id)a6;
- (void)consumePacket:(id)a3 withCompletion:(id)a4 inQueue:(id)a5;
- (void)consumePackets:(id)a3 arrivalTime:(id)a4 withCompletion:(id)a5 inQueue:(id)a6;
@end

@implementation MIBUFilePacketConsumer

- (MIBUFilePacketConsumer)initWithPayloadSize:(unint64_t)a3 outputFile:(id)a4
{
  v7 = a4;
  v18.receiver = self;
  v18.super_class = MIBUFilePacketConsumer;
  v8 = [(MIBUFilePacketConsumer *)&v18 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.MIBUFilePacketConsumer", v9);
    queue = v8->_queue;
    v8->_queue = v10;

    v8->_payloadSize = a3;
    objc_storeStrong(&v8->_outputFile, a4);
    v12 = [v7 stringByDeletingLastPathComponent];
    v13 = [v12 stringByAppendingPathComponent:@"MIBUWorkFolder"];
    workFolder = v8->_workFolder;
    v8->_workFolder = v13;

    missingPackets = v8->_missingPackets;
    v8->_missingPackets = 0;

    assemblyProgress = v8->_assemblyProgress;
    v8->_packetCount = 0;
    v8->_assemblyProgress = &unk_286AD0DE8;
  }

  return v8;
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
  v5[2] = __35__MIBUFilePacketConsumer_bootstrap__block_invoke;
  v5[3] = &unk_2798EBAF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __35__MIBUFilePacketConsumer_bootstrap__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _bootstrap];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)consumePacket:(id)a3 withCompletion:(id)a4 inQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__MIBUFilePacketConsumer_consumePacket_withCompletion_inQueue___block_invoke;
  v15[3] = &unk_2798EBFA0;
  v15[4] = self;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (BOOL)isComplete
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__MIBUFilePacketConsumer_isComplete__block_invoke;
  v5[3] = &unk_2798EBAF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __36__MIBUFilePacketConsumer_isComplete__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isComplete];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)missingCount
{
  v3 = self->_missingPackets;
  objc_sync_enter(v3);
  missingPackets = self->_missingPackets;
  if (missingPackets)
  {
    v5 = [(NSMutableIndexSet *)missingPackets count];
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(v3);

  return v5;
}

- (BOOL)assemble
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__MIBUFilePacketConsumer_assemble__block_invoke;
  v5[3] = &unk_2798EBAF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __34__MIBUFilePacketConsumer_assemble__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _assembleOutputFile];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)consumePacket:(id)a3 arrivalTime:(id)a4 withCompletion:(id)a5 inQueue:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  queue = self->_queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__MIBUFilePacketConsumer_consumePacket_arrivalTime_withCompletion_inQueue___block_invoke;
  v16[3] = &unk_2798EBFA0;
  v16[4] = self;
  v17 = v9;
  v18 = v11;
  v19 = v10;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  dispatch_async(queue, v16);
}

- (void)consumePackets:(id)a3 arrivalTime:(id)a4 withCompletion:(id)a5 inQueue:(id)a6
{
  v17 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (MIBUOnceToken != -1)
  {
    [MIBUFilePacketConsumer consumePackets:arrivalTime:withCompletion:inQueue:];
  }

  v13 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[MIBUFilePacketConsumer consumePackets:arrivalTime:withCompletion:inQueue:]";
    _os_log_impl(&dword_259B04000, v13, OS_LOG_TYPE_DEFAULT, "%s is not implemented yet.", &v15, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __76__MIBUFilePacketConsumer_consumePackets_arrivalTime_withCompletion_inQueue___block_invoke()
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

- (BOOL)_bootstrap
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  if (MIBUOnceToken != -1)
  {
    [MIBUFilePacketConsumer _bootstrap];
  }

  v4 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    workFolder = self->_workFolder;
    *buf = 138543362;
    *&buf[4] = workFolder;
    _os_log_impl(&dword_259B04000, v4, OS_LOG_TYPE_DEFAULT, "Set up work folder: %{public}@", buf, 0xCu);
  }

  if ([v3 fileExistsAtPath:self->_workFolder])
  {
    v6 = self->_workFolder;
    v17 = 0;
    v7 = [v3 removeItemAtPath:v6 error:&v17];
    v8 = v17;
    v9 = v8;
    if ((v7 & 1) == 0)
    {
      [(MIBUFilePacketConsumer *)v8 _bootstrap];
LABEL_12:
      v13 = *buf;
      v11 = v18;
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = self->_workFolder;
  v16 = v9;
  v11 = 1;
  v12 = [v3 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v16];
  v13 = v16;

  if ((v12 & 1) == 0)
  {
    [(MIBUFilePacketConsumer *)v13 _bootstrap];
    goto LABEL_12;
  }

LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

void __36__MIBUFilePacketConsumer__bootstrap__block_invoke()
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

void __36__MIBUFilePacketConsumer__bootstrap__block_invoke_7()
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

void __36__MIBUFilePacketConsumer__bootstrap__block_invoke_10()
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

- (void)_consumePacket:(id)a3 withCompletion:(id)a4 inQueue:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v32 = 0;
  v33 = 0;
  v31 = 0;
  [(MIBUFilePacketConsumer *)self _decodePacket:v8 outPayload:&v31 outPacketCount:&v33 outPacketUID:&v32];
  v11 = v31;
  packetCount = self->_packetCount;
  if (packetCount)
  {
    if (packetCount != v33)
    {
      if (MIBUOnceToken != -1)
      {
        [MIBUFilePacketConsumer _consumePacket:withCompletion:inQueue:];
      }

      v13 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v35 = v33;
        _os_log_impl(&dword_259B04000, v13, OS_LOG_TYPE_DEFAULT, "Received unexpected packet count: %llu", buf, 0xCu);
      }

      v14 = v30;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __64__MIBUFilePacketConsumer__consumePacket_withCompletion_inQueue___block_invoke_19;
      v30[3] = &unk_2798EBD68;
      v30[4] = v9;
      goto LABEL_25;
    }
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUFilePacketConsumer _consumePacket:withCompletion:inQueue:];
    }

    v15 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v35 = v33;
      _os_log_impl(&dword_259B04000, v15, OS_LOG_TYPE_DEFAULT, "Set expected packet count to: %llu", buf, 0xCu);
    }

    self->_packetCount = v33;
    v16 = objc_alloc(MEMORY[0x277CCAB58]);
    v17 = [v16 initWithIndexesInRange:{0, v33}];
    missingPackets = self->_missingPackets;
    self->_missingPackets = v17;

    packetCount = v33;
  }

  if (v32 >= packetCount)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUFilePacketConsumer _consumePacket:withCompletion:inQueue:];
    }

    v23 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v35 = v32;
      _os_log_impl(&dword_259B04000, v23, OS_LOG_TYPE_DEFAULT, "Received unexpected packet UID: %llu", buf, 0xCu);
    }

    v14 = v29;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __64__MIBUFilePacketConsumer__consumePacket_withCompletion_inQueue___block_invoke_22;
    v29[3] = &unk_2798EBD68;
    v29[4] = v9;
  }

  else if (([(NSMutableIndexSet *)self->_missingPackets containsIndex:?]& 1) != 0)
  {
    v19 = [(MIBUFilePacketConsumer *)self _writePayloadToFile:v11 forPacketUID:v32];
    v20 = v19;
    if (v19)
    {
      v21 = self->_missingPackets;
      objc_sync_enter(v21);
      [(NSMutableIndexSet *)self->_missingPackets removeIndex:v32];
      v22 = [(NSMutableIndexSet *)self->_missingPackets count]== 0;
      objc_sync_exit(v21);
    }

    else
    {
      v22 = 0;
    }

    v14 = v25;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __64__MIBUFilePacketConsumer__consumePacket_withCompletion_inQueue___block_invoke_3;
    v25[3] = &unk_2798EBFC8;
    v25[4] = v9;
    v26 = v20;
    v27 = v22;
  }

  else
  {
    v14 = v28;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __64__MIBUFilePacketConsumer__consumePacket_withCompletion_inQueue___block_invoke_2_23;
    v28[3] = &unk_2798EBD68;
    v28[4] = v9;
  }

LABEL_25:
  dispatch_async(v10, v14);

  v24 = *MEMORY[0x277D85DE8];
}

void __64__MIBUFilePacketConsumer__consumePacket_withCompletion_inQueue___block_invoke()
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

void __64__MIBUFilePacketConsumer__consumePacket_withCompletion_inQueue___block_invoke_16()
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

void __64__MIBUFilePacketConsumer__consumePacket_withCompletion_inQueue___block_invoke_2()
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

- (void)_decodePacket:(id)a3 outPayload:(id *)a4 outPacketCount:(unint64_t *)a5 outPacketUID:(unint64_t *)a6
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__2;
  v14 = __Block_byref_object_dispose__2;
  v15 = 0;
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __79__MIBUFilePacketConsumer__decodePacket_outPayload_outPacketCount_outPacketUID___block_invoke;
  applier[3] = &unk_2798EBFF0;
  applier[4] = &v20;
  applier[5] = &v16;
  applier[6] = &v10;
  dispatch_data_apply(a3, applier);
  if (a4)
  {
    *a4 = v11[5];
  }

  if (a5)
  {
    *a5 = v21[3];
  }

  if (a6)
  {
    *a6 = v17[3];
  }

  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
}

uint64_t __79__MIBUFilePacketConsumer__decodePacket_outPayload_outPacketCount_outPacketUID___block_invoke(void *a1, dispatch_data_t data, uint64_t a3, void *a4, uint64_t a5)
{
  if (a3)
  {
    v6 = a1 + 6;
    concat = dispatch_data_create_concat(*(*(a1[6] + 8) + 40), data);
  }

  else
  {
    *(*(a1[4] + 8) + 24) = *a4;
    *(*(a1[5] + 8) + 24) = a4[1];
    concat = dispatch_data_create_subrange(data, 0x10uLL, a5 - 16);
    v6 = a1 + 6;
  }

  v8 = *(*v6 + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = concat;

  return 1;
}

- (BOOL)_writePayloadToFile:(id)a3 forPacketUID:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"data.%llu", a4];
  v9 = [(NSString *)self->_workFolder stringByAppendingPathComponent:v8];
  if ([v7 fileExistsAtPath:v9])
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUFilePacketConsumer _writePayloadToFile:forPacketUID:];
    }

    v10 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v9;
      _os_log_impl(&dword_259B04000, v10, OS_LOG_TYPE_DEFAULT, "Skip writing packet to existing file: %{public}@", buf, 0xCu);
    }

    v11 = 0;
    v12 = 1;
  }

  else
  {
    v16 = 0;
    v12 = 1;
    v13 = [v6 writeToFile:v9 options:1 error:&v16];
    v11 = v16;
    if ((v13 & 1) == 0)
    {
      if (MIBUOnceToken != -1)
      {
        [MIBUFilePacketConsumer _writePayloadToFile:forPacketUID:];
      }

      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        [MIBUFilePacketConsumer _writePayloadToFile:forPacketUID:];
      }

      v12 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

void __59__MIBUFilePacketConsumer__writePayloadToFile_forPacketUID___block_invoke()
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

void __59__MIBUFilePacketConsumer__writePayloadToFile_forPacketUID___block_invoke_31()
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

- (BOOL)_isComplete
{
  v3 = self->_missingPackets;
  objc_sync_enter(v3);
  missingPackets = self->_missingPackets;
  if (missingPackets)
  {
    v5 = [(NSMutableIndexSet *)missingPackets count]== 0;
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(v3);

  return v5;
}

- (BOOL)_assembleOutputFile
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  if (MIBUOnceToken != -1)
  {
    [MIBUFilePacketConsumer _assembleOutputFile];
  }

  v4 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259B04000, v4, OS_LOG_TYPE_DEFAULT, "Assembling output file...", buf, 2u);
  }

  if ([v3 fileExistsAtPath:self->_outputFile])
  {
    outputFile = self->_outputFile;
    v40 = 0;
    v6 = [v3 removeItemAtPath:outputFile error:&v40];
    v7 = v40;
    if ((v6 & 1) == 0)
    {
      if (MIBUOnceToken == -1)
      {
        if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
        {
LABEL_41:
          v12 = 0;
          v14 = 0;
          goto LABEL_42;
        }
      }

      else
      {
        [MIBUFilePacketConsumer _assembleOutputFile];
        if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }
      }

      [MIBUFilePacketConsumer _assembleOutputFile];
      goto LABEL_41;
    }
  }

  else
  {
    v7 = 0;
  }

  if (([v3 createFileAtPath:self->_outputFile contents:0 attributes:0] & 1) == 0)
  {
    if (MIBUOnceToken == -1)
    {
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }
    }

    else
    {
      [MIBUFilePacketConsumer _assembleOutputFile];
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }
    }

    [MIBUFilePacketConsumer _assembleOutputFile];
    goto LABEL_41;
  }

  v8 = MEMORY[0x277CCA9F8];
  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_outputFile];
  v39 = v7;
  v10 = [v8 fileHandleForWritingToURL:v9 error:&v39];
  v11 = v39;

  if (!v10)
  {
    if (MIBUOnceToken == -1)
    {
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
LABEL_45:
        v12 = 0;
        v14 = 0;
        LOBYTE(self) = 1;
        v7 = v11;
        goto LABEL_34;
      }
    }

    else
    {
      [MIBUFilePacketConsumer _assembleOutputFile];
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }
    }

    [MIBUFilePacketConsumer _assembleOutputFile];
    goto LABEL_45;
  }

  v12 = v10;
  workFolder = self->_workFolder;
  v38 = v11;
  v14 = [v3 contentsOfDirectoryAtPath:workFolder error:&v38];
  v7 = v38;

  if (!v14)
  {
    [(MIBUFilePacketConsumer *)v7 _assembleOutputFile];
LABEL_48:
    [v12 closeFile];
LABEL_37:
    LOBYTE(self) = 1;
    goto LABEL_34;
  }

  v15 = [v14 count];
  if (v15 != self->_packetCount)
  {
    [(MIBUFilePacketConsumer *)v14 _assembleOutputFile];
    goto LABEL_48;
  }

  v32 = v14;
  v33 = v3;
  if (v15)
  {
    v16 = 0;
    v35 = 1;
    v34 = v12;
    while (1)
    {
      v17 = v7;
      v18 = objc_autoreleasePoolPush();
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"data.%lu", v16];
      v20 = [(NSString *)self->_workFolder stringByAppendingPathComponent:v19];
      v37 = v7;
      v21 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v20 options:0 error:&v37];
      v7 = v37;

      if (!v21)
      {
        break;
      }

      v36 = 0;
      v22 = [v12 writeData:v21 error:&v36];
      v23 = v36;

      if (v22)
      {
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v16 / self->_packetCount];
        assemblyProgress = self->_assemblyProgress;
        self->_assemblyProgress = v24;

        v26 = 0;
        v27 = 1;
        v35 = 1;
      }

      else
      {
        if (MIBUOnceToken != -1)
        {
          [MIBUFilePacketConsumer _assembleOutputFile];
        }

        v29 = MIBUConnObj;
        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v42 = v23;
          _os_log_error_impl(&dword_259B04000, v29, OS_LOG_TYPE_ERROR, "Failed to write data to output file: %{public}@", buf, 0xCu);
        }

        v27 = 0;
        v35 = 0;
        v26 = 1;
      }

      v7 = v23;

      objc_autoreleasePoolPop(v18);
      if ((v27 & 1) == 0)
      {
        goto LABEL_35;
      }

      ++v16;
      v12 = v34;
      if (v16 >= self->_packetCount)
      {
        goto LABEL_33;
      }
    }

    if (MIBUOnceToken != -1)
    {
      [MIBUFilePacketConsumer _assembleOutputFile];
    }

    v28 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v42 = v7;
      _os_log_error_impl(&dword_259B04000, v28, OS_LOG_TYPE_ERROR, "Failed to read data from file: %{public}@", buf, 0xCu);
    }

    v26 = 1;

    objc_autoreleasePoolPop(v18);
LABEL_35:
    v3 = v33;
    if ((v26 & 1) == 0)
    {
      v12 = v34;
      v14 = v32;
      goto LABEL_34;
    }

    v12 = v34;
    [v34 closeFile];
    v14 = v32;
    if ((v35 & 1) == 0)
    {
LABEL_42:
      [v3 removeItemAtPath:self->_outputFile error:0];
      LOBYTE(self) = 0;
      goto LABEL_34;
    }

    goto LABEL_37;
  }

LABEL_33:
  [v12 closeFile];
  LOBYTE(self) = 1;
  v14 = v32;
  v3 = v33;
LABEL_34:

  v30 = *MEMORY[0x277D85DE8];
  return self & 1;
}

void __45__MIBUFilePacketConsumer__assembleOutputFile__block_invoke()
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

void __45__MIBUFilePacketConsumer__assembleOutputFile__block_invoke_36()
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

void __45__MIBUFilePacketConsumer__assembleOutputFile__block_invoke_39()
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

void __45__MIBUFilePacketConsumer__assembleOutputFile__block_invoke_44()
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

void __45__MIBUFilePacketConsumer__assembleOutputFile__block_invoke_47()
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

void __45__MIBUFilePacketConsumer__assembleOutputFile__block_invoke_50()
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

void __45__MIBUFilePacketConsumer__assembleOutputFile__block_invoke_57()
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

void __45__MIBUFilePacketConsumer__assembleOutputFile__block_invoke_60()
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

- (void)_bootstrap
{
  v11 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_12_1);
  }

  v6 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    v10 = a1;
    OUTLINED_FUNCTION_2_2(&dword_259B04000, v6, v7, "Failed to create work directory: %{public}@", &v9);
  }

  *a3 = 0;
  *a2 = a1;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_writePayloadToFile:forPacketUID:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_assembleOutputFile
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end