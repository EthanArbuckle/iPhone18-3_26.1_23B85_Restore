@interface DTKTraceTapMemoHandlerDelegate
- (id)peekAtMemo:(id)memo;
- (void)sendDataMemo:(id)memo toBulkReceiver:(id)receiver;
- (void)sendDataMemo:(id)memo toClientUsingConfig:(id)config;
- (void)sendHeartbeatMemo:(id)memo toClientUsingConfig:(id)config;
@end

@implementation DTKTraceTapMemoHandlerDelegate

- (void)sendDataMemo:(id)memo toBulkReceiver:(id)receiver
{
  memoCopy = memo;
  receiverCopy = receiver;
  if ([memoCopy isSession])
  {
    v7 = objc_opt_new();
    isRawKtraceFile = [memoCopy isRawKtraceFile];
    datastream = [memoCopy datastream];
    v10 = datastream;
    if (isRawKtraceFile)
    {
      fileURL = [datastream fileURL];
      if (!fileURL)
      {
        sub_24802CF64();
      }

      if ([v10 hasData])
      {
        do
        {
          v12 = objc_autoreleasePoolPush();
          v13 = [v10 read:0x100000 error:0];
          [receiverCopy handleBulkData:v13];

          objc_autoreleasePoolPop(v12);
        }

        while (([v10 hasData] & 1) != 0);
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      fileURL2 = [v10 fileURL];
      [defaultManager removeItemAtURL:fileURL2 error:0];
    }

    else
    {
      hasData = [datastream hasData];

      if (hasData)
      {
        do
        {
          datastream2 = [memoCopy datastream];
          v22 = [datastream2 read:1024 error:0];
          [receiverCopy handleBulkData:v22];

          datastream3 = [memoCopy datastream];
          LOBYTE(v22) = [datastream3 hasData];
        }

        while ((v22 & 1) != 0);
      }
    }

    if ([memoCopy isRawKtraceFile])
    {
      v24 = 1025;
    }

    else
    {
      v24 = 6;
    }

    [v7 setKind:v24];
    [receiverCopy sendFrameMessage:v7];
  }

  else
  {
    stackshot = [memoCopy stackshot];

    if (stackshot)
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = sub_247F8B674;
      v30 = sub_247F8B684;
      stackshot2 = [memoCopy stackshot];
      bytes_ptr = xpc_data_get_bytes_ptr(v27[5]);
      length = xpc_data_get_length(v27[5]);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = sub_247F8B68C;
      v25[3] = &unk_278EF1D40;
      v25[4] = &v26;
      [receiverCopy handleBulkData:bytes_ptr size:length destructor:v25];
      v19 = objc_opt_new();
      [v19 setKind:1024];
      [receiverCopy sendFrameMessage:v19];

      _Block_object_dispose(&v26, 8);
    }
  }
}

- (void)sendDataMemo:(id)memo toClientUsingConfig:(id)config
{
  memoCopy = memo;
  configCopy = config;
  datastream = [memoCopy datastream];
  if ([memoCopy isSession])
  {
    sessionHandler = [configCopy sessionHandler];

    if (sessionHandler)
    {
      stackshotHandler2 = objc_opt_new();
      [stackshotHandler2 setMemo:memoCopy];
      if (([memoCopy isRawKtraceFile] & 1) == 0)
      {
        v10 = objc_opt_new();
        if ([datastream hasData])
        {
          do
          {
            v11 = [datastream read:1024 error:0];
            [v10 addObject:v11];
          }

          while (([datastream hasData] & 1) != 0);
        }

        [stackshotHandler2 setDataBlocks:v10];
      }

      sessionHandler2 = [configCopy sessionHandler];
      sessionHandler2[2](sessionHandler2, stackshotHandler2);
      goto LABEL_11;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      sub_24802CF90();
    }
  }

  else
  {
    stackshot = [memoCopy stackshot];

    if (stackshot)
    {
      stackshotHandler = [configCopy stackshotHandler];

      if (stackshotHandler)
      {
        stackshotHandler2 = [configCopy stackshotHandler];
        sessionHandler2 = [memoCopy stackshot];
        stackshotHandler2[2](stackshotHandler2, sessionHandler2);
LABEL_11:
      }
    }
  }
}

- (void)sendHeartbeatMemo:(id)memo toClientUsingConfig:(id)config
{
  memoCopy = memo;
  configCopy = config;
  sessionHandler = [configCopy sessionHandler];

  if (sessionHandler)
  {
    v7 = objc_opt_new();
    [v7 setMemo:memoCopy];
    sessionHandler2 = [configCopy sessionHandler];
    (sessionHandler2)[2](sessionHandler2, v7);
  }
}

- (id)peekAtMemo:(id)memo
{
  memoCopy = memo;
  v4 = objc_opt_new();
  if ([memoCopy isSession])
  {
    isRawKtraceFile = [memoCopy isRawKtraceFile];
    datastream = [memoCopy datastream];
    v7 = datastream;
    if (isRawKtraceFile)
    {
      file = [datastream file];
      dup([file fileDescriptor]);
      ktrace_file_open_fd();

      ktrace_file_earliest_timestamp();
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-1];
      [v4 setObject:v9 forKeyedSubscript:@"DTTapRecordingInfo_Timestamp"];

      ktrace_file_close();
    }

    else if (datastream)
    {
      v12 = kpdecode_cursor_create();
      if ([v7 hasData])
      {
        v13 = [v7 peek:1024 error:0];
        [v13 bytes];
        [v13 length];
        if (kpdecode_cursor_setchunk())
        {
          v14 = -1;
        }

        else
        {
          while (!kpdecode_cursor_next_record())
          {
            if ((MEMORY[0] & 0x8001) == 1)
            {
              v14 = MEMORY[8];
              kpdecode_record_free();
              if (v14)
              {
                goto LABEL_18;
              }
            }

            else
            {
              kpdecode_record_free();
            }
          }

          v14 = -1;
LABEL_18:
          kpdecode_cursor_clearchunk();
        }

        MEMORY[0x24C1C3410](v12);
      }

      else
      {
        v14 = -1;
      }

      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v14];
      [v4 setObject:v15 forKeyedSubscript:@"DTTapRecordingInfo_Timestamp"];
    }

    v11 = v4;
  }

  else
  {
    stackshot = [memoCopy stackshot];

    if (!stackshot)
    {
      sub_24802CFD8();
    }

    v11 = 0;
  }

  return v11;
}

@end