@interface MIBURaptorQPacketProvider
- (BOOL)_bootstrap;
- (BOOL)_rewind;
- (BOOL)bootstrap;
- (BOOL)hasNext;
- (BOOL)rewind;
- (MIBURaptorQPacketProvider)initWithPayloadSize:(unint64_t)size repairFactor:(unint64_t)factor inputFile:(id)file;
- (void)_bootstrap;
- (void)_invalidate;
- (void)_provideOnePacketWithCompletion:(id)completion;
- (void)_providePacketsOfCount:(unint64_t)count withCompletion:(id)completion inQueue:(id)queue;
- (void)invalidate;
- (void)providePacketsOfCount:(unint64_t)count withCompletion:(id)completion inQueue:(id)queue;
@end

@implementation MIBURaptorQPacketProvider

- (MIBURaptorQPacketProvider)initWithPayloadSize:(unint64_t)size repairFactor:(unint64_t)factor inputFile:(id)file
{
  v24 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v17.receiver = self;
  v17.super_class = MIBURaptorQPacketProvider;
  v10 = [(MIBURaptorQPacketProvider *)&v17 init];
  if (v10)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBURaptorQPacketProvider initWithPayloadSize:repairFactor:inputFile:];
    }

    v11 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      sizeCopy = size;
      v20 = 2048;
      factorCopy = factor;
      v22 = 2114;
      v23 = fileCopy;
      _os_log_impl(&dword_259B04000, v11, OS_LOG_TYPE_DEFAULT, "Initialize packet provider with payload size: %lu, repair factor: %lu , input file: %{public}@", buf, 0x20u);
    }

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.MIBURaptorQPacketProvider", v12);
    queue = v10->_queue;
    v10->_queue = v13;

    v10->_payloadSize = size;
    v10->_repairFactor = factor;
    objc_storeStrong(&v10->_inputFile, file);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

void __72__MIBURaptorQPacketProvider_initWithPayloadSize_repairFactor_inputFile___block_invoke()
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
  v5[2] = __38__MIBURaptorQPacketProvider_bootstrap__block_invoke;
  v5[3] = &unk_2798EBAF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __38__MIBURaptorQPacketProvider_bootstrap__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _bootstrap];
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
  v13[2] = __74__MIBURaptorQPacketProvider_providePacketsOfCount_withCompletion_inQueue___block_invoke;
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
  v5[2] = __36__MIBURaptorQPacketProvider_hasNext__block_invoke;
  v5[3] = &unk_2798EBAF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __36__MIBURaptorQPacketProvider_hasNext__block_invoke(uint64_t a1)
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
  v5[2] = __35__MIBURaptorQPacketProvider_rewind__block_invoke;
  v5[3] = &unk_2798EBAF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __35__MIBURaptorQPacketProvider_rewind__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _rewind];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__MIBURaptorQPacketProvider_invalidate__block_invoke;
  block[3] = &unk_2798EB9A8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)_bootstrap
{
  v55 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_encoderSummary)
  {
    v3 = 1;
  }

  else
  {
    v28 = dispatch_semaphore_create(0);
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy_;
    v48 = __Block_byref_object_dispose_;
    v49 = 0;
    v41 = 0;
    v42[0] = &v41;
    v42[1] = 0x3032000000;
    v42[2] = __Block_byref_object_copy_;
    v42[3] = __Block_byref_object_dispose_;
    v43 = 0;
    location = &self->_encoderSummary;
    if (MIBUOnceToken != -1)
    {
      [MIBURaptorQPacketProvider _bootstrap];
    }

    v4 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B04000, v4, OS_LOG_TYPE_DEFAULT, "Creating RaptorQ encoder...", buf, 2u);
    }

    v5 = [SKRaptorQEncoder alloc];
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_inputFile];
    payloadSize = self->_payloadSize;
    v8 = (v42[0] + 40);
    obj = *(v42[0] + 40);
    v29 = [(SKRaptorQEncoder *)v5 initWithInputURL:v6 symbolSize:payloadSize error:&obj];
    objc_storeStrong(v8, obj);

    if (v29)
    {
      v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_inputFile];
      v10 = self->_payloadSize;
      repairFactor = self->_repairFactor;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __39__MIBURaptorQPacketProvider__bootstrap__block_invoke_10;
      v36[3] = &unk_2798EBB40;
      v38 = &v44;
      v39 = &v41;
      v12 = v28;
      v37 = v12;
      [(SKRaptorQEncoder *)v29 encodeWithInputURL:v9 packetSize:v10 repairFactor:repairFactor dispatchQueue:0 completionHandler:v36];

      dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
      v13 = v45[5];
      if (v13)
      {
        objc_storeStrong(location, v13);
        v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        rqEncodedFileURLs = [*location rqEncodedFileURLs];
        v16 = [rqEncodedFileURLs countByEnumeratingWithState:&v32 objects:v54 count:16];
        if (v16)
        {
          v17 = *v33;
          while (2)
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v33 != v17)
              {
                objc_enumerationMutation(rqEncodedFileURLs);
              }

              v19 = *(*(&v32 + 1) + 8 * i);
              v20 = (v42[0] + 40);
              v31 = *(v42[0] + 40);
              v21 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v19 error:{&v31, v28}];
              objc_storeStrong(v20, v31);
              if (!v21)
              {
                [(MIBURaptorQPacketProvider *)v19 _bootstrap];
                v3 = 0;
                goto LABEL_27;
              }

              [v14 addObject:v21];
            }

            v16 = [rqEncodedFileURLs countByEnumeratingWithState:&v32 objects:v54 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        objc_storeStrong(&self->_encodedFiles, v14);
        if (MIBUOnceToken != -1)
        {
          [MIBURaptorQPacketProvider _bootstrap];
        }

        v22 = MIBUConnObj;
        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_259B04000, v22, OS_LOG_TYPE_DEFAULT, "RaptorQ encoder summary report:", buf, 2u);
        }

        if (MIBUOnceToken != -1)
        {
          [MIBURaptorQPacketProvider _bootstrap];
        }

        v23 = MIBUConnObj;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          rqBasicParameters = [*location rqBasicParameters];
          rqExtendedParameters = [*location rqExtendedParameters];
          *buf = 134218240;
          v51 = rqBasicParameters;
          v52 = 1024;
          v53 = rqExtendedParameters;
          _os_log_impl(&dword_259B04000, v23, OS_LOG_TYPE_DEFAULT, ">> rqBasicParameters=%llu, rqExtendedParameters=%u", buf, 0x12u);
        }

        self->_rqBasicParameters = [*location rqBasicParameters];
        self->_rqExtendedParameters = [(SKRaptorQEncoderSummary *)self->_encoderSummary rqExtendedParameters];
        v3 = 1;
LABEL_27:
      }

      else
      {
        [(MIBURaptorQPacketProvider *)v42 _bootstrap];
        v3 = buf[0];
      }
    }

    else
    {
      [(MIBURaptorQPacketProvider *)v42 _bootstrap];
      v3 = buf[0];
    }

    _Block_object_dispose(&v41, 8);

    _Block_object_dispose(&v44, 8);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v3;
}

void __39__MIBURaptorQPacketProvider__bootstrap__block_invoke()
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

void __39__MIBURaptorQPacketProvider__bootstrap__block_invoke_7()
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

void __39__MIBURaptorQPacketProvider__bootstrap__block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __39__MIBURaptorQPacketProvider__bootstrap__block_invoke_2()
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

void __39__MIBURaptorQPacketProvider__bootstrap__block_invoke_16()
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

void __39__MIBURaptorQPacketProvider__bootstrap__block_invoke_19()
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

void __39__MIBURaptorQPacketProvider__bootstrap__block_invoke_22()
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

- (void)_providePacketsOfCount:(unint64_t)count withCompletion:(id)completion inQueue:(id)queue
{
  completionCopy = completion;
  queueCopy = queue;
  dispatch_assert_queue_V2(self->_queue);
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy_;
  v28[4] = __Block_byref_object_dispose_;
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (count)
  {
    v10 = MEMORY[0x277D85DD0];
    v11 = count - 1;
    do
    {
      v12 = v11;
      v19[0] = v10;
      v19[1] = 3221225472;
      v19[2] = __75__MIBURaptorQPacketProvider__providePacketsOfCount_withCompletion_inQueue___block_invoke;
      v19[3] = &unk_2798EBB68;
      v19[4] = &v24;
      v19[5] = &v20;
      v19[6] = v28;
      [(MIBURaptorQPacketProvider *)self _provideOnePacketWithCompletion:v19];
      if (*(v25 + 24) != 1)
      {
        break;
      }

      if (v21[3])
      {
        break;
      }

      v11 = v12 - 1;
    }

    while (v12);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__MIBURaptorQPacketProvider__providePacketsOfCount_withCompletion_inQueue___block_invoke_2;
  v14[3] = &unk_2798EBB90;
  v15 = completionCopy;
  v16 = &v24;
  v17 = &v20;
  v18 = v28;
  v13 = completionCopy;
  dispatch_async(queueCopy, v14);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(v28, 8);
}

void *__75__MIBURaptorQPacketProvider__providePacketsOfCount_withCompletion_inQueue___block_invoke(void *result, char a2, char a3, uint64_t a4)
{
  *(*(result[4] + 8) + 24) = a2;
  *(*(result[5] + 8) + 24) = a3;
  if (a4)
  {
    return [*(*(result[6] + 8) + 40) addObject:a4];
  }

  return result;
}

void __75__MIBURaptorQPacketProvider__providePacketsOfCount_withCompletion_inQueue___block_invoke_2(void *a1)
{
  v1 = a1[4];
  if (*(*(a1[5] + 8) + 24))
  {
    v2 = *(*(a1[6] + 8) + 24);
    v5 = [*(*(a1[7] + 8) + 40) copy];
    (*(v1 + 16))(v1, 1, v2, v5);
  }

  else
  {
    v3 = *(v1 + 16);
    v4 = a1[4];

    v3(v4, 0, 0, 0);
  }
}

- (void)_provideOnePacketWithCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_encoderSummary)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBURaptorQPacketProvider _provideOnePacketWithCompletion:];
    }

    v16 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B04000, v16, OS_LOG_TYPE_DEFAULT, "RaptorQ encoder not created.", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
    goto LABEL_38;
  }

  if (![(NSMutableArray *)self->_encodedFiles count])
  {
LABEL_25:
    (*(completionCopy + 2))(completionCopy, 1, 1, 0);
    goto LABEL_38;
  }

  [(NSMutableArray *)self->_encodedFiles popFirstObject:138543618];
  while (1)
    v6 = {;
    packetSize = [(MIBURaptorQPacketProvider *)self packetSize];
    v24 = 0;
    v8 = [v6 readDataUpToLength:packetSize error:&v24];
    v9 = v24;
    if (v9)
    {
      if (MIBUOnceToken == -1)
      {
        v17 = MIBUConnObj;
        if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
        {
LABEL_29:
          (*(completionCopy + 2))(completionCopy, 0, 0, 0);
          goto LABEL_37;
        }
      }

      else
      {
        [MIBURaptorQPacketProvider _provideOnePacketWithCompletion:];
        v17 = MIBUConnObj;
        if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_29;
        }
      }

      *buf = v21;
      v26 = v6;
      v27 = 2114;
      v28 = v9;
      _os_log_impl(&dword_259B04000, v17, OS_LOG_TYPE_DEFAULT, "Failed to read encoded file: %{public}@ error: %{public}@", buf, 0x16u);
      goto LABEL_29;
    }

    if ([v8 length])
    {
      break;
    }

    if (MIBUOnceToken == -1)
    {
      v10 = MIBUConnObj;
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

LABEL_11:
      *buf = 138543362;
      v26 = v6;
      _os_log_impl(&dword_259B04000, v10, OS_LOG_TYPE_DEFAULT, "Reached end of file for %{public}@, will start from beginning.", buf, 0xCu);
      goto LABEL_12;
    }

    [MIBURaptorQPacketProvider _provideOnePacketWithCompletion:];
    v10 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

LABEL_12:
    v23 = 0;
    v11 = [v6 seekToOffset:0 error:&v23];
    v12 = v23;
    if (v11)
    {
      [(NSMutableArray *)self->_encodedFiles addObject:v6];
      goto LABEL_5;
    }

    if (MIBUOnceToken == -1)
    {
      v13 = MIBUConnObj;
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

LABEL_15:
      v14 = v13;
      localizedDescription = [v12 localizedDescription];
      *buf = v21;
      v26 = v6;
      v27 = 2114;
      v28 = localizedDescription;
      _os_log_error_impl(&dword_259B04000, v14, OS_LOG_TYPE_ERROR, "Failed to seek to offset 0 for file handle %{public}@: %{public}@", buf, 0x16u);

      goto LABEL_5;
    }

    [MIBURaptorQPacketProvider _provideOnePacketWithCompletion:];
    v13 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

LABEL_5:

    if (![(NSMutableArray *)self->_encodedFiles count])
    {
      goto LABEL_25;
    }

    [(NSMutableArray *)self->_encodedFiles popFirstObject:v21];
  }

  [(NSMutableArray *)self->_encodedFiles addObject:v6];
  _createDispatchData = [v8 _createDispatchData];
  if (!_createDispatchData)
  {
    if (MIBUOnceToken == -1)
    {
      v19 = MIBUConnObj;
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
LABEL_35:
        (*(completionCopy + 2))(completionCopy, 0, 0, 0);
        goto LABEL_36;
      }
    }

    else
    {
      [MIBURaptorQPacketProvider _provideOnePacketWithCompletion:];
      v19 = MIBUConnObj;
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_259B04000, v19, OS_LOG_TYPE_DEFAULT, "Failed to create dispatch data.", buf, 2u);
    goto LABEL_35;
  }

  (*(completionCopy + 2))(completionCopy, 1, 0, _createDispatchData);
LABEL_36:

LABEL_37:
LABEL_38:

  v20 = *MEMORY[0x277D85DE8];
}

void __61__MIBURaptorQPacketProvider__provideOnePacketWithCompletion___block_invoke()
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

void __61__MIBURaptorQPacketProvider__provideOnePacketWithCompletion___block_invoke_28()
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

void __61__MIBURaptorQPacketProvider__provideOnePacketWithCompletion___block_invoke_31()
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

void __61__MIBURaptorQPacketProvider__provideOnePacketWithCompletion___block_invoke_34()
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

void __61__MIBURaptorQPacketProvider__provideOnePacketWithCompletion___block_invoke_37()
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

- (BOOL)_rewind
{
  v29 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_encoderSummary)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    selfCopy = self;
    encodedFiles = [(SKRaptorQEncoderSummary *)self->_encoderSummary rqEncodedFileURLs];
    v5 = [encodedFiles countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v21;
      while (2)
      {
        v9 = 0;
        v10 = v7;
        do
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(encodedFiles);
          }

          v11 = *(*(&v20 + 1) + 8 * v9);
          v19 = v10;
          v12 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v11 error:&v19];
          v7 = v19;

          if (!v12)
          {
            if (MIBUOnceToken != -1)
            {
              [MIBURaptorQPacketProvider _rewind];
            }

            v15 = MIBUConnObj;
            if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v25 = v11;
              v26 = 2114;
              v27 = v7;
              _os_log_impl(&dword_259B04000, v15, OS_LOG_TYPE_DEFAULT, "Failed to initialize file handle from: %{public}@ error: %{public}@", buf, 0x16u);
            }

            v13 = 0;
            goto LABEL_19;
          }

          [v3 addObject:v12];

          ++v9;
          v10 = v7;
        }

        while (v6 != v9);
        v6 = [encodedFiles countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v7 = 0;
    }

    v14 = v3;
    encodedFiles = selfCopy->_encodedFiles;
    selfCopy->_encodedFiles = v14;
    v13 = 1;
LABEL_19:
  }

  else
  {
    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

void __36__MIBURaptorQPacketProvider__rewind__block_invoke()
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
  v17 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  encoderSummary = self->_encoderSummary;
  self->_encoderSummary = 0;

  encodedFiles = self->_encodedFiles;
  if (encodedFiles)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = encodedFiles;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v12 + 1) + 8 * v9++) closeAndReturnError:{0, v12}];
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    v10 = self->_encodedFiles;
    self->_encodedFiles = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_bootstrap
{
  v12 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_9_0);
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    v11 = HIDWORD(*(*self + 40));
    OUTLINED_FUNCTION_1_0(&dword_259B04000, v4, v5, "Failed to initialize RaptorQ encoder: %{public}@", v6, v7, v8, v9, 2u);
  }

  *a2 = 0;
  v10 = *MEMORY[0x277D85DE8];
}

@end