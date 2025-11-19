@interface DTKTraceTapMemoHandlerDelegate
- (id)peekAtMemo:(id)a3;
- (void)sendDataMemo:(id)a3 toBulkReceiver:(id)a4;
- (void)sendDataMemo:(id)a3 toClientUsingConfig:(id)a4;
- (void)sendHeartbeatMemo:(id)a3 toClientUsingConfig:(id)a4;
@end

@implementation DTKTraceTapMemoHandlerDelegate

- (void)sendDataMemo:(id)a3 toBulkReceiver:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isSession])
  {
    v7 = objc_opt_new();
    v8 = [v5 isRawKtraceFile];
    v9 = [v5 datastream];
    v10 = v9;
    if (v8)
    {
      v11 = [v9 fileURL];
      if (!v11)
      {
        sub_24802CF64();
      }

      if ([v10 hasData])
      {
        do
        {
          v12 = objc_autoreleasePoolPush();
          v13 = [v10 read:0x100000 error:0];
          [v6 handleBulkData:v13];

          objc_autoreleasePoolPop(v12);
        }

        while (([v10 hasData] & 1) != 0);
      }

      v14 = [MEMORY[0x277CCAA00] defaultManager];
      v15 = [v10 fileURL];
      [v14 removeItemAtURL:v15 error:0];
    }

    else
    {
      v20 = [v9 hasData];

      if (v20)
      {
        do
        {
          v21 = [v5 datastream];
          v22 = [v21 read:1024 error:0];
          [v6 handleBulkData:v22];

          v23 = [v5 datastream];
          LOBYTE(v22) = [v23 hasData];
        }

        while ((v22 & 1) != 0);
      }
    }

    if ([v5 isRawKtraceFile])
    {
      v24 = 1025;
    }

    else
    {
      v24 = 6;
    }

    [v7 setKind:v24];
    [v6 sendFrameMessage:v7];
  }

  else
  {
    v16 = [v5 stackshot];

    if (v16)
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = sub_247F8B674;
      v30 = sub_247F8B684;
      v31 = [v5 stackshot];
      bytes_ptr = xpc_data_get_bytes_ptr(v27[5]);
      length = xpc_data_get_length(v27[5]);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = sub_247F8B68C;
      v25[3] = &unk_278EF1D40;
      v25[4] = &v26;
      [v6 handleBulkData:bytes_ptr size:length destructor:v25];
      v19 = objc_opt_new();
      [v19 setKind:1024];
      [v6 sendFrameMessage:v19];

      _Block_object_dispose(&v26, 8);
    }
  }
}

- (void)sendDataMemo:(id)a3 toClientUsingConfig:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 datastream];
  if ([v5 isSession])
  {
    v8 = [v6 sessionHandler];

    if (v8)
    {
      v9 = objc_opt_new();
      [v9 setMemo:v5];
      if (([v5 isRawKtraceFile] & 1) == 0)
      {
        v10 = objc_opt_new();
        if ([v7 hasData])
        {
          do
          {
            v11 = [v7 read:1024 error:0];
            [v10 addObject:v11];
          }

          while (([v7 hasData] & 1) != 0);
        }

        [v9 setDataBlocks:v10];
      }

      v12 = [v6 sessionHandler];
      v12[2](v12, v9);
      goto LABEL_11;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      sub_24802CF90();
    }
  }

  else
  {
    v13 = [v5 stackshot];

    if (v13)
    {
      v14 = [v6 stackshotHandler];

      if (v14)
      {
        v9 = [v6 stackshotHandler];
        v12 = [v5 stackshot];
        v9[2](v9, v12);
LABEL_11:
      }
    }
  }
}

- (void)sendHeartbeatMemo:(id)a3 toClientUsingConfig:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v5 sessionHandler];

  if (v6)
  {
    v7 = objc_opt_new();
    [v7 setMemo:v9];
    v8 = [v5 sessionHandler];
    (v8)[2](v8, v7);
  }
}

- (id)peekAtMemo:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if ([v3 isSession])
  {
    v5 = [v3 isRawKtraceFile];
    v6 = [v3 datastream];
    v7 = v6;
    if (v5)
    {
      v8 = [v6 file];
      dup([v8 fileDescriptor]);
      ktrace_file_open_fd();

      ktrace_file_earliest_timestamp();
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-1];
      [v4 setObject:v9 forKeyedSubscript:@"DTTapRecordingInfo_Timestamp"];

      ktrace_file_close();
    }

    else if (v6)
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
    v10 = [v3 stackshot];

    if (!v10)
    {
      sub_24802CFD8();
    }

    v11 = 0;
  }

  return v11;
}

@end