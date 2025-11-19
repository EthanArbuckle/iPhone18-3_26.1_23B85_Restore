@interface MIBUNFCReaderSession
- (MIBUNFCReaderSession)init;
- (id)sendCommand:(id)a3 withError:(id *)a4;
- (void)disconnectTag:(id *)a3;
- (void)end;
- (void)readerSession:(id)a3 didDetectTags:(id)a4;
- (void)start:(id *)a3;
@end

@implementation MIBUNFCReaderSession

- (MIBUNFCReaderSession)init
{
  v6.receiver = self;
  v6.super_class = MIBUNFCReaderSession;
  v2 = [(MIBUNFCReaderSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUNFCReaderSession *)v2 setNfSession:0];
    [(MIBUNFCReaderSession *)v3 setReaderSession:0];
    v4 = dispatch_semaphore_create(0);
    [(MIBUNFCReaderSession *)v3 setConnectSem:v4];
  }

  return v3;
}

- (void)start:(id *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(MIBUNFCReaderSession *)self nfSession];

  if (v5)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNFCReaderSession start:];
    }

    v6 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = v6;
      v9 = [v7 stringWithFormat:@"NFSession already in progress"];
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      _os_log_impl(&dword_259ABF000, v8, OS_LOG_TYPE_DEFAULT, "Device %{public}@: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v18 = __Block_byref_object_copy__0;
    v19 = __Block_byref_object_dispose__0;
    v20 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __30__MIBUNFCReaderSession_start___block_invoke_22;
    v16[3] = &unk_2798E6758;
    v16[4] = self;
    v16[5] = buf;
    v10 = _Block_copy(v16);
    v11 = [MEMORY[0x277D2C848] sharedHardwareManagerWithNoUI];
    v12 = [v11 startReaderSession:v10];
    [(MIBUNFCReaderSession *)self setNfSession:v12];

    v13 = [(MIBUNFCReaderSession *)self connectSem];
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);

    v14 = *(*&buf[8] + 40);
    if (v14)
    {
      *a3 = v14;
    }

    _Block_object_dispose(buf, 8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __30__MIBUNFCReaderSession_start___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __30__MIBUNFCReaderSession_start___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    __30__MIBUNFCReaderSession_start___block_invoke_22_cold_1(MIBUOnceToken == -1, a1, v6);
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      __30__MIBUNFCReaderSession_start___block_invoke_22_cold_2();
    }

    v7 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = MEMORY[0x277CCACA8];
      v10 = v7;
      v11 = [v9 stringWithFormat:@"Session started"];
      *buf = 138543618;
      v26 = v8;
      v27 = 2114;
      v28 = v11;
      _os_log_impl(&dword_259ABF000, v10, OS_LOG_TYPE_DEFAULT, "Device %{public}@: %{public}@", buf, 0x16u);
    }

    v12 = (a1 + 32);
    [v5 setDelegate:*(a1 + 32)];
    [*(a1 + 32) setReaderSession:v5];
    v14 = *(a1 + 40);
    v13 = a1 + 40;
    v15 = *(v14 + 8);
    obj = *(v15 + 40);
    v16 = [v5 startPollingWithError:&obj];
    objc_storeStrong((v15 + 40), obj);
    if (v16)
    {
      if (MIBUOnceToken != -1)
      {
        __30__MIBUNFCReaderSession_start___block_invoke_22_cold_5();
      }

      v17 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *v12;
        v19 = MEMORY[0x277CCACA8];
        v20 = v17;
        v21 = [v19 stringWithFormat:@"Reader is polling for tags"];
        *buf = 138543618;
        v26 = v18;
        v27 = 2114;
        v28 = v21;
        _os_log_impl(&dword_259ABF000, v20, OS_LOG_TYPE_DEFAULT, "Device %{public}@: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (MIBUOnceToken != -1)
      {
        __30__MIBUNFCReaderSession_start___block_invoke_22_cold_3();
      }

      v22 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        __30__MIBUNFCReaderSession_start___block_invoke_22_cold_4(v12, v13, v22);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __30__MIBUNFCReaderSession_start___block_invoke_2()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __30__MIBUNFCReaderSession_start___block_invoke_28()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __30__MIBUNFCReaderSession_start___block_invoke_34()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __30__MIBUNFCReaderSession_start___block_invoke_40()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)disconnectTag:(id *)a3
{
  v5 = [(MIBUNFCReaderSession *)self readerSession];
  v10 = 0;
  v6 = [v5 disconnectTagWithError:&v10];
  v7 = v10;

  if ((v6 & 1) == 0)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNFCReaderSession disconnectTag:];
    }

    v8 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [(MIBUNFCReaderSession *)self disconnectTag:v8, v7];
      if (!v7)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  if (v7)
  {
LABEL_6:
    v9 = v7;
    *a3 = v7;
  }

LABEL_7:
}

void __38__MIBUNFCReaderSession_disconnectTag___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)end
{
  v13 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    [MIBUNFCReaderSession end];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = v3;
    v6 = [v4 stringWithFormat:@"Ending session"];
    v9 = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_259ABF000, v5, OS_LOG_TYPE_DEFAULT, "Device %{public}@: %{public}@", &v9, 0x16u);
  }

  v7 = [(MIBUNFCReaderSession *)self nfSession];
  [v7 endSession];

  v8 = *MEMORY[0x277D85DE8];
}

void __27__MIBUNFCReaderSession_end__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (id)sendCommand:(id)a3 withError:(id *)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 serializedPayload];
  v12 = v7;
  if (!v6)
  {
    v38 = 0;
    safeAssignError(&v38, 0x80000000, 0, @"nil command to send", v8, v9, v10, v11, v34);
    v27 = v38;
LABEL_16:
    v22 = v27;
    v23 = 0;
    v21 = 0;
    goto LABEL_9;
  }

  if (!v7)
  {
    v37 = 0;
    safeAssignError(&v37, 0x80000000, 0, @"nil payload to send", v8, v9, v10, v11, v34);
    v27 = v37;
    goto LABEL_16;
  }

  if (MIBUOnceToken != -1)
  {
    [MIBUNFCReaderSession sendCommand:withError:];
  }

  v13 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = v13;
    v16 = [v6 code];
    v17 = [v6 apdu];
    v18 = [v14 stringWithFormat:@"Sending command %ld with apdu %@", v16, v17];
    *buf = 138543618;
    v40 = self;
    v41 = 2114;
    v42 = v18;
    _os_log_impl(&dword_259ABF000, v15, OS_LOG_TYPE_DEFAULT, "Device %{public}@: %{public}@", buf, 0x16u);
  }

  v19 = [(MIBUNFCReaderSession *)self readerSession];
  v20 = [v6 apdu];
  v36 = 0;
  v21 = [v19 transceive:v20 error:&v36];
  v22 = v36;

  v23 = [objc_alloc(objc_msgSend(v6 "getResponseClass"))];
  if (!v23)
  {
    v35 = v22;
    v28 = [v6 code];
    safeAssignError(&v35, 2147483650, 0, @"Failed to deserialize NFC response for command: %ld", v29, v30, v31, v32, v28);
    v33 = v35;

    v22 = v33;
  }

LABEL_9:
  if (a4)
  {
    v24 = v22;
    *a4 = v22;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v23;
}

void __46__MIBUNFCReaderSession_sendCommand_withError___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)readerSession:(id)a3 didDetectTags:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([v5 count])
  {
    [(MIBUNFCReaderSession *)self setTags:v5];
    if (MIBUOnceToken != -1)
    {
      [MIBUNFCReaderSession readerSession:didDetectTags:];
    }

    v6 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = v6;
      v9 = [(MIBUNFCReaderSession *)self tags];
      v10 = [v9 objectAtIndex:0];
      v11 = [v7 stringWithFormat:@"Trying to connect to tag: %@", v10];
      *buf = 138543618;
      v30 = self;
      v31 = 2114;
      v32 = v11;
      _os_log_impl(&dword_259ABF000, v8, OS_LOG_TYPE_DEFAULT, "Device %{public}@: %{public}@", buf, 0x16u);
    }

    v12 = [(MIBUNFCReaderSession *)self readerSession];
    v13 = [(MIBUNFCReaderSession *)self tags];
    v14 = [v13 objectAtIndex:0];
    v28 = 0;
    v15 = [v12 connectTag:v14 error:&v28];
    v16 = v28;

    if (v15)
    {
      if (MIBUOnceToken != -1)
      {
        [MIBUNFCReaderSession readerSession:didDetectTags:];
      }

      v17 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        v18 = MEMORY[0x277CCACA8];
        v19 = v17;
        v20 = [v18 stringWithFormat:@"Connected to tag successfully"];
        *buf = 138543618;
        v30 = self;
        v31 = 2114;
        v32 = v20;
        _os_log_impl(&dword_259ABF000, v19, OS_LOG_TYPE_DEFAULT, "Device %{public}@: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (MIBUOnceToken != -1)
      {
        [MIBUNFCReaderSession readerSession:didDetectTags:];
      }

      v25 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        [(MIBUNFCReaderSession *)self readerSession:v25 didDetectTags:v16];
      }
    }
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNFCReaderSession readerSession:didDetectTags:];
    }

    v21 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v22 = MEMORY[0x277CCACA8];
      v23 = v21;
      v24 = [v22 stringWithFormat:@"No tags available to connect to"];
      *buf = 138543618;
      v30 = self;
      v31 = 2114;
      v32 = v24;
      _os_log_impl(&dword_259ABF000, v23, OS_LOG_TYPE_DEFAULT, "Device %{public}@: %{public}@", buf, 0x16u);
    }

    v16 = 0;
  }

  v26 = [(MIBUNFCReaderSession *)self connectSem];
  dispatch_semaphore_signal(v26);

  v27 = *MEMORY[0x277D85DE8];
}

void __52__MIBUNFCReaderSession_readerSession_didDetectTags___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __52__MIBUNFCReaderSession_readerSession_didDetectTags___block_invoke_77()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __52__MIBUNFCReaderSession_readerSession_didDetectTags___block_invoke_83()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __52__MIBUNFCReaderSession_readerSession_didDetectTags___block_invoke_89()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __30__MIBUNFCReaderSession_start___block_invoke_22_cold_1(char a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if ((a1 & 1) == 0)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_24_0);
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a2 + 32);
    v8 = MEMORY[0x277CCACA8];
    v9 = v5;
    v10 = [v8 stringWithFormat:@"Failed to start NFReader session"];
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v10;
    _os_log_error_impl(&dword_259ABF000, v9, OS_LOG_TYPE_ERROR, "Device Error %{public}@: %{public}@", &v11, 0x16u);
  }

  objc_storeStrong((*(*(a2 + 40) + 8) + 40), a3);
  v6 = *MEMORY[0x277D85DE8];
}

void __30__MIBUNFCReaderSession_start___block_invoke_22_cold_4(uint64_t *a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = MEMORY[0x277CCACA8];
  v5 = *(*(*a2 + 8) + 40);
  v6 = a3;
  v7 = [v4 stringWithFormat:@"Failed to start polling : %@", v5];
  *buf = 138543618;
  v10 = v3;
  OUTLINED_FUNCTION_1_4();
  _os_log_error_impl(&dword_259ABF000, v6, OS_LOG_TYPE_ERROR, "Device Error %{public}@: %{public}@", buf, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)disconnectTag:(uint64_t)a3 .cold.2(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  v5 = a2;
  v14 = a3;
  v6 = [v4 stringWithFormat:@"Failed to disconnect : %@"];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_3(&dword_259ABF000, v7, v8, "Device Error %{public}@: %{public}@", v9, v10, v11, v12, v14, v15, 2u);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)readerSession:(uint64_t)a3 didDetectTags:.cold.3(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  v5 = a2;
  v14 = a3;
  v6 = [v4 stringWithFormat:@"Error encountered when connecting to tag: %@"];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_3(&dword_259ABF000, v7, v8, "Device Error %{public}@: %{public}@", v9, v10, v11, v12, v14, v15, 2u);

  v13 = *MEMORY[0x277D85DE8];
}

@end