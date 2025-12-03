@interface DTKTraceTapLocalDelegate
- (DTKTraceTapLocalDelegate)initWithConfig:(id)config;
- (id)_getSessionMetadata;
- (unint64_t)_clampBufferSize:(unint64_t)size;
- (unint64_t)bufferSizeForConfiguration:(id)configuration;
- (void)_sendStackshot;
- (void)fetchDataForReason:(unint64_t)reason block:(id)block;
- (void)pause;
- (void)start;
- (void)stop;
- (void)unpause;
@end

@implementation DTKTraceTapLocalDelegate

- (unint64_t)_clampBufferSize:(unint64_t)size
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [standardUserDefaults integerForKey:@"DTKPTapMaxRAMPercentage"];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = [standardUserDefaults2 integerForKey:@"DTKPTapMinRAMBytes"];

  v9 = DTGetPhysicalMemorySize();
  if (v9)
  {
    v10 = sBufferConstants;
    sizeCopy = unk_27EE81E50;
    if ((v6 - 1) < 0x63)
    {
      v10 = v6;
    }

    v13 = v10 * v9;
    v12 = (((v10 * v9) >> 2) * 0x28F5C28F5C28F5C3uLL) >> 64;
    if (unk_27EE81E50 <= size)
    {
      sizeCopy = size;
    }

    if (v8 > size)
    {
      sizeCopy = v8;
    }

    if (sizeCopy >= v12 >> 2)
    {
      return v13 / 0x64;
    }

    else
    {
      return sizeCopy;
    }
  }

  else
  {
    v15 = [[DTTapStatusMemo alloc] initWithStatus:2281701376 notice:@"Device reported 0 MB of physical memory"];
    WeakRetained = objc_loadWeakRetained(&self->_tap);
    v17 = [WeakRetained _handleStatusMemo:v15];

    return 0;
  }
}

- (unint64_t)bufferSizeForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = DTGetCoreCount();
  if (!v5)
  {
    v9 = [[DTTapStatusMemo alloc] initWithStatus:2281701376 notice:@"Device reported 0 cores"];
    WeakRetained = objc_loadWeakRetained(&self->_tap);
    v11 = [WeakRetained _handleStatusMemo:v9];
LABEL_19:

    v19 = 0;
    goto LABEL_20;
  }

  bufferMode = [configurationCopy bufferMode];
  if (!bufferMode)
  {
    windowSize = 2 * [configurationCopy pollingInterval];
    v8 = 1;
    goto LABEL_9;
  }

  if (bufferMode == 1)
  {
    v8 = 0;
    windowSize = 1000000000 * qword_27EE81E58;
    goto LABEL_9;
  }

  if (bufferMode != 2)
  {
    v20 = [DTTapStatusMemo alloc];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported buffer mode: %lu", objc_msgSend(configurationCopy, "bufferMode")];
    v9 = [(DTTapStatusMemo *)v20 initWithStatus:2281701376 notice:v21];

    WeakRetained = objc_loadWeakRetained(&self->_tap);
    v22 = [WeakRetained _handleStatusMemo:v9];
    goto LABEL_19;
  }

  windowSize = [configurationCopy windowSize];
  v8 = 0;
LABEL_9:
  v12 = 1000000000;
  if (windowSize)
  {
    v12 = windowSize;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_247F75A74;
  v24[3] = &unk_278EF15F0;
  v24[4] = self;
  v24[5] = &v26;
  v24[6] = v12;
  v25 = v8;
  [configurationCopy enumerateTriggerConfigs:v24];
  v13 = v27[3];
  if (DTCoreIs64BitCapable())
  {
    v14 = 6;
  }

  else
  {
    v14 = 5;
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults floatForKey:@"DTKPTapBufferScalingFactor"];
  v17 = v16;
  v18 = 101 * ((v13 * v5) << v14) / 0x64;

  if (v17 == 0.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = (v17 * v18);
  }

  _Block_object_dispose(&v26, 8);
LABEL_20:

  return v19;
}

- (id)_getSessionMetadata
{
  v3 = objc_opt_new();
  if (self->_triggerIDs)
  {
    v4 = objc_opt_new();
    mutableBytes = [(NSMutableData *)self->_triggerIDs mutableBytes];
    if ([(DTKTraceTapLocalDelegate *)self _triggerCount])
    {
      v6 = 0;
      do
      {
        v7 = [MEMORY[0x277CCABB0] numberWithInt:mutableBytes[v6]];
        [v4 addObject:v7];

        ++v6;
      }

      while (v6 < [(DTKTraceTapLocalDelegate *)self _triggerCount]);
    }

    v8 = objc_opt_new();
    config = self->_config;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_247F7660C;
    v20[3] = &unk_278EF1618;
    v10 = v8;
    v21 = v10;
    [(DTKTraceTapConfig *)config enumerateTriggerConfigs:v20];
    v11 = [v4 count];
    if (v11 == [v10 count])
    {
      [v3 setObject:v4 forKeyedSubscript:@"triggerIDs"];
      [v3 setObject:v10 forKeyedSubscript:@"triggerUUIDs"];
      [v3 setObject:self->_actionIDsByTriggerIndex forKeyedSubscript:@"actionIDs"];
      if (!self->_usesRawKtraceFile)
      {
        v19 = 0;
        if (!authorized_ktrace_file(0, &v19))
        {
          [v3 setObject:v19 forKeyedSubscript:@"ktrace"];
        }
      }
    }

    else
    {
      v12 = DTKTraceTapMetadataTriggerMismatchStatusCode;
      v13 = [DTTapStatusMemo alloc];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"The number of trigger IDs (%lu) does not match the number of trigger UUIDs (%lu)", objc_msgSend(v4, "count"), objc_msgSend(v10, "count")];
      v15 = [(DTTapStatusMemo *)v13 initWithStatus:v12 | 0x80000000 notice:v14];

      WeakRetained = objc_loadWeakRetained(&self->_tap);
      v17 = [WeakRetained _handleStatusMemo:v15];
    }
  }

  return v3;
}

- (DTKTraceTapLocalDelegate)initWithConfig:(id)config
{
  configCopy = config;
  v11.receiver = self;
  v11.super_class = DTKTraceTapLocalDelegate;
  v6 = [(DTKTraceTapLocalDelegate *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, config);
    v8 = DTKTraceTapLocalEventProducersForConfig(configCopy);
    localEventProducers = v7->_localEventProducers;
    v7->_localEventProducers = v8;

    v7->_usesRawKtraceFile = 0;
  }

  return v7;
}

- (void)start
{
  p_session = &self->_session;
  if (!self->_session)
  {
    v91 = 0;
    v92 = &v91;
    v93 = 0x3032000000;
    v94 = sub_247F77124;
    v95 = sub_247F77134;
    v96 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_247F7713C;
    aBlock[3] = &unk_278EF1640;
    aBlock[4] = self;
    v8 = _Block_copy(aBlock);
    v9 = objc_opt_new();
    v88[0] = 0;
    v88[1] = v88;
    v88[2] = 0x3032000000;
    v88[3] = sub_247F77124;
    v88[4] = sub_247F77134;
    v89 = 0;
    config = self->_config;
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = sub_247F771D0;
    v84[3] = &unk_278EF1668;
    v87 = v88;
    v11 = v9;
    v85 = v11;
    v12 = v8;
    v86 = v12;
    [(DTKTraceTapConfig *)config enumerateTriggerConfigs:v84];
    if (!v11)
    {
      (*(v12 + 2))(v12, @"Failed to create a configuration.");
      v17 = 0;
LABEL_39:

      _Block_object_dispose(v88, 8);
      _Block_object_dispose(&v91, 8);

      return;
    }

    providerOptions = [(DTKTraceTapConfig *)self->_config providerOptions];
    [v11 setProviderOptions:providerOptions];

    [v11 setCollectionInterval:{-[DTKTraceTapConfig collectionInterval](self->_config, "collectionInterval")}];
    canUseRawKtraceFile = [(DTKTraceTapConfig *)self->_config canUseRawKtraceFile];
    v15 = off_278EF03F8;
    self->_usesRawKtraceFile = canUseRawKtraceFile;
    if (!canUseRawKtraceFile)
    {
      v15 = off_278EF0400;
    }

    v16 = [objc_alloc(*v15) initWithConfig:v11];
    if (v16)
    {
      v17 = [[DTKPSession alloc] initWithConfig:v11 andAggregator:v16];
      if (v17)
      {
        [(DTKPSession *)v17 setRecordingPriority:[(DTKTraceTapConfig *)self->_config recordingPriority]];
        bufferMode = [(DTTapConfig *)self->_config bufferMode];
        if (bufferMode >= 3)
        {
          v20 = [DTTapStatusMemo alloc];
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported buffer mode: %lu", -[DTTapConfig bufferMode](self->_config, "bufferMode")];
          v22 = [(DTTapStatusMemo *)v20 initWithStatus:2281701376 notice:v21];

          WeakRetained = objc_loadWeakRetained(&self->_tap);
          v24 = [WeakRetained _handleStatusMemo:v22];
        }

        else
        {
          [v11 setCollectionMode:(0x30202u >> (8 * bufferMode)) & 3];
        }

        bufferSizeOverride = [(DTKTraceTapConfig *)self->_config bufferSizeOverride];
        if (bufferSizeOverride)
        {
          if ([(DTKTraceTapConfig *)self->_config bufferSizeOverrideClamping])
          {
            [(DTKTraceTapLocalDelegate *)self _clampBufferSize:bufferSizeOverride];
          }
        }

        else
        {
          bufferSizeOverride = [(DTKTraceTapLocalDelegate *)self _clampBufferSize:[(DTKTraceTapLocalDelegate *)self bufferSizeForConfiguration:self->_config]];
          if (!bufferSizeOverride)
          {
            goto LABEL_22;
          }
        }

        [v11 setBufferSize:bufferSizeOverride];
LABEL_22:
        v78 = 0;
        v79 = &v78;
        v80 = 0x3032000000;
        v81 = sub_247F77124;
        v82 = sub_247F77134;
        v83 = objc_opt_new();
        v72 = 0;
        v73 = &v72;
        v74 = 0x3032000000;
        v75 = sub_247F77124;
        v76 = sub_247F77134;
        v77 = objc_opt_new();
        v66 = 0;
        v67 = &v66;
        v68 = 0x3032000000;
        v69 = sub_247F77124;
        v70 = sub_247F77134;
        v71 = objc_opt_new();
        v62 = 0;
        v63 = &v62;
        v64 = 0x2020000000;
        v65 = 0;
        v26 = self->_config;
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = sub_247F77280;
        v54[3] = &unk_278EF1690;
        v55 = v11;
        selfCopy = self;
        v57 = &v66;
        v58 = &v62;
        v59 = &v91;
        v60 = &v72;
        v61 = &v78;
        [(DTKTraceTapConfig *)v26 enumerateTriggerConfigs:v54];
        if ([(DTTapConfig *)self->_config bufferMode]!= 2)
        {
          if ([(DTTapConfig *)self->_config isDeferredDisplay])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_copyWeak(to, &self->_tap);
              v27 = v16;
              v52[0] = MEMORY[0x277D85DD0];
              v52[1] = 3221225472;
              v52[2] = sub_247F778A4;
              v52[3] = &unk_278EF16B8;
              objc_copyWeak(&v53, to);
              [v27 setCallback:v52];
              objc_destroyWeak(&v53);

              objc_destroyWeak(to);
            }
          }
        }

        v28 = v92;
        obj = v92[5];
        v29 = [(DTKPSession *)v17 start:&obj];
        objc_storeStrong(v28 + 5, obj);
        if (v29)
        {
          [(NSArray *)self->_localEventProducers enumerateObjectsUsingBlock:&unk_285A17FA8];
          if (!self->_usesRawKtraceFile)
          {
            [(DTKTraceTapLocalDelegate *)self _sendStackshot];
          }

          v30 = objc_opt_new();
          actionIDsByTriggerIndex = self->_actionIDsByTriggerIndex;
          self->_actionIDsByTriggerIndex = v30;

          v32 = [MEMORY[0x277CBEB28] dataWithLength:4 * *(v63 + 6)];
          triggerIDs = self->_triggerIDs;
          self->_triggerIDs = v32;

          mutableBytes = [(NSMutableData *)self->_triggerIDs mutableBytes];
          to[0] = 0;
          to[1] = to;
          to[2] = 0x2020000000;
          to[3] = 0;
          if ([v79[5] count])
          {
            v35 = v79[5];
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = sub_247F77900;
            v49[3] = &unk_278EF1700;
            v49[5] = to;
            v49[6] = mutableBytes;
            v49[4] = self;
            [v35 enumerateObjectsUsingBlock:v49];
          }

          if ([v73[5] count])
          {
            v36 = v73[5];
            v48[0] = MEMORY[0x277D85DD0];
            v48[1] = 3221225472;
            v48[2] = sub_247F779A8;
            v48[3] = &unk_278EF1728;
            v48[5] = to;
            v48[6] = mutableBytes;
            v48[4] = self;
            [v36 enumerateObjectsUsingBlock:v48];
          }

          if ([v67[5] count])
          {
            v37 = v67[5];
            v47[0] = MEMORY[0x277D85DD0];
            v47[1] = 3221225472;
            v47[2] = sub_247F77A50;
            v47[3] = &unk_278EF1750;
            v47[5] = to;
            v47[6] = mutableBytes;
            v47[4] = self;
            [v37 enumerateObjectsUsingBlock:v47];
          }

          _Block_object_dispose(to, 8);
        }

        else
        {
          v38 = [DTTapStatusMemo alloc];
          v39 = MEMORY[0x277CCACA8];
          localizedDescription = [v92[5] localizedDescription];
          v41 = [v39 stringWithFormat:@"Failed to start the recording: %@", localizedDescription];
          v42 = [(DTTapStatusMemo *)v38 initWithStatus:0x80000000 notice:v41];

          v43 = objc_loadWeakRetained(&self->_tap);
          v44 = [v43 _handleStatusMemo:v42];
        }

        objc_storeStrong(p_session, v17);
        _getSessionMetadata = [(DTKTraceTapLocalDelegate *)self _getSessionMetadata];
        [(DTTapConfig *)self->_config _runningMetadataChanged:_getSessionMetadata];

        _Block_object_dispose(&v62, 8);
        _Block_object_dispose(&v66, 8);

        _Block_object_dispose(&v72, 8);
        _Block_object_dispose(&v78, 8);

        goto LABEL_38;
      }

      v19 = @"Failed to create a Ktrace session.";
    }

    else
    {
      v19 = @"Failed to create an aggregator";
    }

    (*(v12 + 2))(v12, v19);
    v17 = 0;
LABEL_38:

    goto LABEL_39;
  }

  v4 = [DTTapStatusMemo alloc];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Tried to start a tap while it's already running"];
  v46 = [(DTTapStatusMemo *)v4 initWithStatus:0x80000000 notice:v5];

  v6 = objc_loadWeakRetained(&self->_tap);
  v7 = [v6 _handleStatusMemo:v46];
}

- (void)stop
{
  if (self->_session)
  {
    [(NSArray *)self->_localEventProducers enumerateObjectsUsingBlock:&unk_285A17FC8];
    session = self->_session;
    v12 = 0;
    [(DTKPSession *)session stop:&v12];
    v4 = v12;
    if (v4)
    {
      v5 = [DTTapStatusMemo alloc];
      v6 = MEMORY[0x277CCACA8];
      localizedDescription = [v4 localizedDescription];
      v8 = [v6 stringWithFormat:@"Failed to stop recording session: %@ ", localizedDescription];
      v9 = [(DTTapStatusMemo *)v5 initWithStatus:0x80000000 notice:v8];

      WeakRetained = objc_loadWeakRetained(&self->_tap);
      v11 = [WeakRetained _handleStatusMemo:v9];
    }

    self->_stopWasCalled = 1;
  }
}

- (void)pause
{
  if (self->_usesRawKtraceFile)
  {
    v3 = 0;
  }

  else
  {
    session = self->_session;
    v13 = 0;
    v5 = [(DTKPSession *)session pause:&v13];
    v3 = v13;
    if (!v5)
    {
      v6 = [DTTapStatusMemo alloc];
      v7 = MEMORY[0x277CCACA8];
      localizedDescription = [v3 localizedDescription];
      v9 = [v7 stringWithFormat:@"Failed to pause recording session: %@ ", localizedDescription];
      v10 = [(DTTapStatusMemo *)v6 initWithStatus:0x80000000 notice:v9];

      WeakRetained = objc_loadWeakRetained(&self->_tap);
      v12 = [WeakRetained _handleStatusMemo:v10];
    }
  }

  [(NSArray *)self->_localEventProducers enumerateObjectsUsingBlock:&unk_285A17FE8];
}

- (void)unpause
{
  if (self->_usesRawKtraceFile)
  {
    v3 = 0;
  }

  else
  {
    session = self->_session;
    v13 = 0;
    v5 = [(DTKPSession *)session resume:&v13];
    v3 = v13;
    if (!v5)
    {
      v6 = [DTTapStatusMemo alloc];
      v7 = MEMORY[0x277CCACA8];
      localizedDescription = [v3 localizedDescription];
      v9 = [v7 stringWithFormat:@"Failed to resume recording session: %@ ", localizedDescription];
      v10 = [(DTTapStatusMemo *)v6 initWithStatus:0x80000000 notice:v9];

      WeakRetained = objc_loadWeakRetained(&self->_tap);
      v12 = [WeakRetained _handleStatusMemo:v10];
    }
  }

  [(NSArray *)self->_localEventProducers enumerateObjectsUsingBlock:&unk_285A18008];
}

- (void)fetchDataForReason:(unint64_t)reason block:(id)block
{
  blockCopy = block;
  if (reason == 2)
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_opt_new();
  [v8 setTapVersion:0x10000];
  [v8 setIsSession:1];
  [v8 setTriggerCount:{-[DTKTraceTapLocalDelegate _triggerCount](self, "_triggerCount")}];
  v9 = [(NSMutableData *)self->_triggerIDs copy];
  [v8 setTriggerIDs:v9];

  [v8 setIsRawKtraceFile:self->_usesRawKtraceFile];
  session = self->_session;
  v13 = 0;
  v11 = [(DTKPSession *)session swapOutCurrentDatastream:&v13];
  if ([v11 hasData])
  {
    [v8 setDatastream:v11];
    [v8 setSupportsPeek:1];
    [v8 setFinalMemo:reason == 1 && self->_stopWasCalled];
    blockCopy[2](blockCopy, v8, 1);
  }

  else
  {
    v12 = [[DTTapHeartbeatMemo alloc] initWithTimestamp:v7];
    blockCopy[2](blockCopy, v12, 1);
  }
}

- (void)_sendStackshot
{
  v9 = 0;
  v3 = authorized_stackshot_collect(0, &v9);
  v4 = v9;
  if (!v3)
  {
    v5 = objc_opt_new();
    [v5 setIsSession:0];
    [v5 setSupportsPeek:0];
    [v5 setStackshot:v4];
    WeakRetained = objc_loadWeakRetained(&self->_tap);
    memoHandler = [WeakRetained memoHandler];
    v8 = [memoHandler handleMemo:v5];
  }
}

@end