@interface MIBURaptorQPacketConsumer
- (BOOL)_assemble;
- (BOOL)_assembleUsingSummaryReport;
- (BOOL)_bootstrap;
- (BOOL)_consumePacket:(id)a3 arrivalTime:(id)a4;
- (BOOL)assemble;
- (BOOL)assembleUsingSummaryReport;
- (BOOL)bootstrap;
- (MIBURaptorQPacketConsumer)initWithEncoderSummary:(id)a3 threshold:(unint64_t)a4 outputFile:(id)a5;
- (MIBURaptorQPacketConsumer)initWithEncoderSummaryFile:(id)a3 threshold:(unint64_t)a4 outputFile:(id)a5;
- (int64_t)missingCount;
- (void)_assembleUsingSummaryReport;
- (void)_bootstrap;
- (void)_invalidate;
- (void)consumePackets:(id)a3 arrivalTime:(id)a4 withCompletion:(id)a5 inQueue:(id)a6;
- (void)invalidate;
@end

@implementation MIBURaptorQPacketConsumer

- (MIBURaptorQPacketConsumer)initWithEncoderSummaryFile:(id)a3 threshold:(unint64_t)a4 outputFile:(id)a5
{
  v8 = a5;
  v9 = [SKRaptorQEncoderSummary encoderSummaryFromFile:a3];
  if (v9)
  {
    self = [(MIBURaptorQPacketConsumer *)self initWithEncoderSummary:v9 threshold:a4 outputFile:v8];
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (MIBURaptorQPacketConsumer)initWithEncoderSummary:(id)a3 threshold:(unint64_t)a4 outputFile:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = MIBURaptorQPacketConsumer;
  v11 = [(MIBURaptorQPacketConsumer *)&v21 init];
  if (v11)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBURaptorQPacketConsumer initWithEncoderSummary:threshold:outputFile:];
    }

    v12 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [v9 rqBasicParameters];
      v15 = [v9 rqExtendedParameters];
      *buf = 134218754;
      v23 = v14;
      v24 = 1024;
      v25 = v15;
      v26 = 2048;
      v27 = a4;
      v28 = 2114;
      v29 = v10;
      _os_log_impl(&dword_259B04000, v13, OS_LOG_TYPE_DEFAULT, "Initialize packet consumer with basic parameters: %llu, extended parameters: %u, threshold: %lu, output file: %{public}@", buf, 0x26u);
    }

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.MIBURaptorQPacketConsumer", v16);
    queue = v11->_queue;
    v11->_queue = v17;

    objc_storeStrong(&v11->_outputFile, a5);
    v11->_threshold = a4;
    objc_storeStrong(&v11->_encoderSummary, a3);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

void __73__MIBURaptorQPacketConsumer_initWithEncoderSummary_threshold_outputFile___block_invoke()
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
  v5[2] = __38__MIBURaptorQPacketConsumer_bootstrap__block_invoke;
  v5[3] = &unk_2798EBAF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __38__MIBURaptorQPacketConsumer_bootstrap__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _bootstrap];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)consumePackets:(id)a3 arrivalTime:(id)a4 withCompletion:(id)a5 inQueue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__MIBURaptorQPacketConsumer_consumePackets_arrivalTime_withCompletion_inQueue___block_invoke;
  block[3] = &unk_2798EBC08;
  v20 = v10;
  v21 = self;
  v23 = v11;
  v24 = v12;
  v22 = v13;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v10;
  dispatch_async(queue, block);
}

void __79__MIBURaptorQPacketConsumer_consumePackets_arrivalTime_withCompletion_inQueue___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v20;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(a1 + 40);
        if (v8[56])
        {
          v9 = *(a1 + 48);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __79__MIBURaptorQPacketConsumer_consumePackets_arrivalTime_withCompletion_inQueue___block_invoke_2;
          block[3] = &unk_2798EBBB8;
          v17 = *(a1 + 64);
          v18 = v5;
          dispatch_async(v9, block);

          goto LABEL_13;
        }

        v5 += [v8 _consumePacket:*(*(&v19 + 1) + 8 * i) arrivalTime:*(a1 + 56)];
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
  }

  v10 = *(a1 + 48);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__MIBURaptorQPacketConsumer_consumePackets_arrivalTime_withCompletion_inQueue___block_invoke_3;
  v13[3] = &unk_2798EBBE0;
  v11 = *(a1 + 64);
  v15 = v5;
  v13[4] = *(a1 + 40);
  v14 = v11;
  dispatch_async(v10, v13);
  v2 = v14;
LABEL_13:

  v12 = *MEMORY[0x277D85DE8];
}

- (int64_t)missingCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__MIBURaptorQPacketConsumer_missingCount__block_invoke;
  v5[3] = &unk_2798EBAF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __41__MIBURaptorQPacketConsumer_missingCount__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) missingSymbolCount];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
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
  v5[2] = __37__MIBURaptorQPacketConsumer_assemble__block_invoke;
  v5[3] = &unk_2798EBAF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __37__MIBURaptorQPacketConsumer_assemble__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _assemble];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__MIBURaptorQPacketConsumer_invalidate__block_invoke;
  block[3] = &unk_2798EB9A8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (BOOL)assembleUsingSummaryReport
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__MIBURaptorQPacketConsumer_assembleUsingSummaryReport__block_invoke;
  v5[3] = &unk_2798EBAF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __55__MIBURaptorQPacketConsumer_assembleUsingSummaryReport__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _assembleUsingSummaryReport];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_bootstrap
{
  buf[3] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(NSString *)self->_outputFile stringByDeletingLastPathComponent];
  if (![v3 fileExistsAtPath:self->_outputFile])
  {
    v7 = 0;
    if ([v3 fileExistsAtPath:v4])
    {
      goto LABEL_4;
    }

LABEL_7:
    if (MIBUOnceToken != -1)
    {
      [MIBURaptorQPacketConsumer _bootstrap];
    }

    v9 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138543362;
      *(buf + 4) = v4;
      _os_log_impl(&dword_259B04000, v9, OS_LOG_TYPE_DEFAULT, "Creating parent directory: %{public}@", buf, 0xCu);
    }

    v23 = v7;
    v10 = [v3 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v23];
    v11 = v23;

    if ((v10 & 1) == 0)
    {
      [MIBURaptorQPacketConsumer _bootstrap];
      goto LABEL_19;
    }

    v7 = v11;
    if (self->_raptorQDecoder)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  outputFile = self->_outputFile;
  v24 = 0;
  v6 = [v3 removeItemAtPath:outputFile error:&v24];
  v7 = v24;
  if ((v6 & 1) == 0)
  {
    [MIBURaptorQPacketConsumer _bootstrap];
    goto LABEL_19;
  }

  if (([v3 fileExistsAtPath:v4] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (!self->_raptorQDecoder)
  {
LABEL_13:
    v12 = [SKRaptorQDecoder alloc];
    v13 = [(SKRaptorQEncoderSummary *)self->_encoderSummary rqBasicParameters];
    v14 = [(SKRaptorQEncoderSummary *)self->_encoderSummary rqExtendedParameters];
    threshold = self->_threshold;
    v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_outputFile];
    v22 = v7;
    v17 = [(SKRaptorQDecoder *)v12 initWithBasicParameters:v13 extendedParameters:v14 repairFactor:2 threshold:threshold outputURL:v16 error:&v22];
    v18 = v22;

    raptorQDecoder = self->_raptorQDecoder;
    self->_raptorQDecoder = v17;

    if (self->_raptorQDecoder)
    {
      self->_completed = 0;
      v8 = 1;
      v7 = v18;
      self->_bytesConsumed = 0;
      self->_packetsConsumed = 0;
      goto LABEL_15;
    }

    [MIBURaptorQPacketConsumer _bootstrap];
LABEL_19:
    v7 = buf[0];
    v8 = v25;
    goto LABEL_15;
  }

LABEL_5:
  v8 = 1;
LABEL_15:

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

void __39__MIBURaptorQPacketConsumer__bootstrap__block_invoke()
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

void __39__MIBURaptorQPacketConsumer__bootstrap__block_invoke_7()
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

void __39__MIBURaptorQPacketConsumer__bootstrap__block_invoke_10()
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

void __39__MIBURaptorQPacketConsumer__bootstrap__block_invoke_15()
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

- (BOOL)_consumePacket:(id)a3 arrivalTime:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  raptorQDecoder = self->_raptorQDecoder;
  v18 = 0;
  v9 = [(SKRaptorQDecoder *)raptorQDecoder addPacket:v6 error:&v18];
  v10 = v18;
  if (v9)
  {
    if (!self->_firstReceived)
    {
      objc_storeStrong(&self->_firstReceived, a4);
    }

    ++self->_packetsConsumed;
    self->_bytesConsumed += dispatch_data_get_size(v6);
    if ([(SKRaptorQDecoder *)self->_raptorQDecoder sufficientSymbolsReceived])
    {
      [v7 timeIntervalSinceDate:self->_firstReceived];
      v12 = v11;
      if (MIBUOnceToken != -1)
      {
        [MIBURaptorQPacketConsumer _consumePacket:arrivalTime:];
      }

      v13 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v20 = v12;
        _os_log_impl(&dword_259B04000, v13, OS_LOG_TYPE_DEFAULT, "RaptorQ decoder has received enough encoded symbols! Cycle time between first and last packet: %f", buf, 0xCu);
      }

      [(SKRaptorQDecoder *)self->_raptorQDecoder calculateSymbolLostRate];
      self->_lossRate = v14;
      self->_completed = 1;
    }
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      [MIBURaptorQPacketConsumer _consumePacket:arrivalTime:];
    }

    v15 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBURaptorQPacketConsumer _consumePacket:v10 arrivalTime:v15];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

void __56__MIBURaptorQPacketConsumer__consumePacket_arrivalTime___block_invoke()
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

void __56__MIBURaptorQPacketConsumer__consumePacket_arrivalTime___block_invoke_20()
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

- (BOOL)_assemble
{
  v12 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v8 = 0;
  v9 = 0;
  v3 = [(SKRaptorQDecoder *)self->_raptorQDecoder decodeAllSourceBlocks:&v8 discarded:&v9];
  v4 = v8;
  self->_packetsDiscarded = v9;
  if (!v3)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBURaptorQPacketConsumer _assemble];
    }

    v5 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v4;
      _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "Failed to decode all source blocks: %{public}@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

void __38__MIBURaptorQPacketConsumer__assemble__block_invoke()
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

- (BOOL)_assembleUsingSummaryReport
{
  dispatch_assert_queue_V2(self->_queue);
  v14 = 0;
  raptorQDecoder = self->_raptorQDecoder;
  if (!raptorQDecoder)
  {
    [(MIBURaptorQPacketConsumer *)&v15 _assembleUsingSummaryReport];
LABEL_9:
    v9 = v15;
    v10 = v16;
    goto LABEL_5;
  }

  encoderSummary = self->_encoderSummary;
  v13 = 0;
  v5 = [(SKRaptorQDecoder *)raptorQDecoder addPacketsFromFilesInSummary:encoderSummary error:&v13];
  v6 = v13;
  if (!v5)
  {
    [MIBURaptorQPacketConsumer _assembleUsingSummaryReport];
    goto LABEL_9;
  }

  v7 = self->_raptorQDecoder;
  v12 = v6;
  v8 = [(SKRaptorQDecoder *)v7 decodeAllSourceBlocks:&v12 discarded:&v14];
  v9 = v12;

  self->_packetsDiscarded = v14;
  if (!v8)
  {
    [MIBURaptorQPacketConsumer _assembleUsingSummaryReport];
    goto LABEL_9;
  }

  v10 = 1;
LABEL_5:

  return v10;
}

void __56__MIBURaptorQPacketConsumer__assembleUsingSummaryReport__block_invoke()
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

void __56__MIBURaptorQPacketConsumer__assembleUsingSummaryReport__block_invoke_27()
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

void __56__MIBURaptorQPacketConsumer__assembleUsingSummaryReport__block_invoke_30()
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

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_queue);
  raptorQDecoder = self->_raptorQDecoder;
  if (raptorQDecoder)
  {
    self->_raptorQDecoder = 0;
  }
}

- (void)_bootstrap
{
  OUTLINED_FUNCTION_2_0();
  v8 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_17);
  }

  if (OUTLINED_FUNCTION_5_0())
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_1(&dword_259B04000, v1, v2, "Failed to initialize RaptorQ decoder: %{public}@", v3, v4, v5, v6, v7);
  }

  OUTLINED_FUNCTION_3_1();
  v0 = *MEMORY[0x277D85DE8];
}

- (void)_consumePacket:(uint64_t)a1 arrivalTime:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_259B04000, a2, OS_LOG_TYPE_ERROR, "Failed to add symbol to RaptorQ decoder: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_assembleUsingSummaryReport
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_26);
  }

  v4 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_259B04000, v4, OS_LOG_TYPE_ERROR, "RaptorQ decoder not yet initialized.", v5, 2u);
  }

  *a2 = 0;
  *a1 = 0;
}

@end