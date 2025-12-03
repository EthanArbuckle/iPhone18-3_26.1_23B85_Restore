@interface MIBUDeviceNFC
- (BOOL)endSession;
- (BOOL)shutdown:(id *)shutdown;
- (BOOL)startDiag:(id *)diag;
- (BOOL)startSession;
- (MIBUDeviceNFC)init;
- (void)configureNFC:(id)c error:(id *)error;
- (void)getDeviceInfo:(id *)info;
- (void)startSession;
@end

@implementation MIBUDeviceNFC

- (MIBUDeviceNFC)init
{
  v13.receiver = self;
  v13.super_class = MIBUDeviceNFC;
  v2 = [(MIBUDeviceNFC *)&v13 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUDeviceNFC *)v2 setNfSession:0];
    [(MIBUDeviceNFC *)v3 setReaderSession:0];
    status = v3->_status;
    v3->_status = 0;

    ecid = v3->_ecid;
    v3->_ecid = 0;

    boardID = v3->_boardID;
    v3->_boardID = 0;

    chipID = v3->_chipID;
    v3->_chipID = 0;

    v3->_securityDomain = 0;
    apNonce = v3->_apNonce;
    v3->_apNonce = 0;

    v3->_productionMode = 0;
    v3->_securityMode = 0;
    v3->_uidMode = 0;
    networkInfo = v3->_networkInfo;
    v3->_networkInfo = 0;

    sikaFuse = v3->_sikaFuse;
    v3->_sikaFuse = 0;

    v3->_sikaFuseExists = 1;
    protocolVersion = v3->_protocolVersion;
    v3->_protocolVersion = &unk_286AC8340;
  }

  return v3;
}

- (BOOL)startSession
{
  v3 = objc_alloc_init(MIBUNFCReaderSession);
  [(MIBUDeviceNFC *)self setMibureaderSession:v3];

  mibureaderSession = [(MIBUDeviceNFC *)self mibureaderSession];

  if (mibureaderSession)
  {
    mibureaderSession2 = [(MIBUDeviceNFC *)self mibureaderSession];
    v8 = 0;
    [mibureaderSession2 start:&v8];
    v6 = v8;

    if (v6)
    {
      [(MIBUDeviceNFC *)self startSession];
      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    [(MIBUDeviceNFC *)self startSession];
    return v9;
  }
}

void __29__MIBUDeviceNFC_startSession__block_invoke()
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

void __29__MIBUDeviceNFC_startSession__block_invoke_27()
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

- (void)getDeviceInfo:(id *)info
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = [[MIBUNFCCommand alloc] initWithCommandCode:1 andPayload:0];
  mibureaderSession = [(MIBUDeviceNFC *)self mibureaderSession];
  v29 = 0;
  v6 = [mibureaderSession sendCommand:v4 withError:&v29];
  v7 = v29;

  if (v7)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUDeviceNFC getDeviceInfo:];
    }

    v8 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = v8;
      v11 = [v9 stringWithFormat:@"Failed at command step: %@", v7];
      *buf = 138543618;
      selfCopy = self;
      v32 = 2114;
      v33 = v11;
      _os_log_impl(&dword_259ABF000, v10, OS_LOG_TYPE_DEFAULT, "Device %{public}@: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v12 = v6;
    serialNumber = [v12 serialNumber];
    serialNumber = self->_serialNumber;
    self->_serialNumber = serialNumber;

    ecid = [v12 ecid];
    ecid = self->_ecid;
    self->_ecid = ecid;

    boardID = [v12 boardID];
    boardID = self->_boardID;
    self->_boardID = boardID;

    chipID = [v12 chipID];
    chipID = self->_chipID;
    self->_chipID = chipID;

    self->_securityDomain = [v12 securityDomain];
    apNonce = [v12 apNonce];
    apNonce = self->_apNonce;
    self->_apNonce = apNonce;

    self->_productionMode = [v12 productionMode];
    self->_securityMode = [v12 securityMode];
    self->_uidMode = [v12 uidMode];
    sepNonce = [v12 sepNonce];
    sepNonce = self->_sepNonce;
    self->_sepNonce = sepNonce;

    sikaFuse = [v12 sikaFuse];
    sikaFuse = self->_sikaFuse;
    self->_sikaFuse = sikaFuse;

    sikaFuseExists = [v12 sikaFuseExists];
    self->_sikaFuseExists = sikaFuseExists;
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __31__MIBUDeviceNFC_getDeviceInfo___block_invoke()
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

- (BOOL)startDiag:(id *)diag
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v4 = objc_opt_new();
  self->_entitlement = 1;
  v24 = 0;
  v5 = [MIBUPersonalizationManager requestTatsuTicketForDevice:self error:&v24];
  v6 = v24;
  if (MIBUOnceToken != -1)
  {
    [MIBUDeviceNFC startDiag:];
  }

  v7 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = v7;
    v10 = [v8 stringWithFormat:@"tatsu ticket: %@", v5];
    *buf = 138543618;
    selfCopy2 = self;
    v28 = 2114;
    v29 = v10;
    _os_log_impl(&dword_259ABF000, v9, OS_LOG_TYPE_DEFAULT, "Device %{public}@: %{public}@", buf, 0x16u);
  }

  time(&v25);
  [v4 setObject:v5 forKey:@"TatsuTicket"];
  v11 = [MEMORY[0x277CCABB0] numberWithLong:v25];
  [v4 setObject:v11 forKey:@"TimeStamp"];

  v12 = [[MIBUNFCCommand alloc] initWithCommandCode:11 andPayload:v4];
  mibureaderSession = [(MIBUDeviceNFC *)self mibureaderSession];
  v23 = v6;
  v14 = [mibureaderSession sendCommand:v12 withError:&v23];
  v15 = v23;

  if (v15)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUDeviceNFC startDiag:];
    }

    v16 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [(MIBUDeviceNFC *)self startDiag:v16, v15];
    }
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUDeviceNFC startDiag:];
    }

    v17 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v18 = MEMORY[0x277CCACA8];
      v19 = v17;
      v20 = [v18 stringWithFormat:@"Tatsu ticket check successful"];
      *buf = 138543618;
      selfCopy2 = self;
      v28 = 2114;
      v29 = v20;
      _os_log_impl(&dword_259ABF000, v19, OS_LOG_TYPE_DEFAULT, "Device %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v15 == 0;
}

void __27__MIBUDeviceNFC_startDiag___block_invoke()
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

void __27__MIBUDeviceNFC_startDiag___block_invoke_47()
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

void __27__MIBUDeviceNFC_startDiag___block_invoke_50()
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

- (void)configureNFC:(id)c error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  cCopy = c;
  if (MIBUOnceToken != -1)
  {
    [MIBUDeviceNFC configureNFC:error:];
  }

  v7 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = v7;
    cCopy = [v8 stringWithFormat:@"Configuring NFC with options %@", cCopy];
    *buf = 138543618;
    *&buf[4] = self;
    v22 = 2114;
    v23 = cCopy;
    _os_log_impl(&dword_259ABF000, v9, OS_LOG_TYPE_DEFAULT, "Device %{public}@: %{public}@", buf, 0x16u);
  }

  v11 = objc_opt_new();
  v12 = [cCopy objectForKey:@"NFCInactivityTimeout"];
  if (!v12)
  {
    [(MIBUDeviceNFC *)self configureNFC:buf error:?];
    v16 = *buf;
    if (!error)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  [v11 setObject:v12 forKey:@"NFCInactivityTimeout"];
  v13 = [[MIBUNFCCommand alloc] initWithCommandCode:10 andPayload:v11];
  mibureaderSession = [(MIBUDeviceNFC *)self mibureaderSession];
  v19 = 0;
  v15 = [mibureaderSession sendCommand:v13 withError:&v19];
  v16 = v19;

  if (error)
  {
LABEL_7:
    v17 = v16;
    *error = v16;
  }

LABEL_8:

  v18 = *MEMORY[0x277D85DE8];
}

void __36__MIBUDeviceNFC_configureNFC_error___block_invoke()
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

void __36__MIBUDeviceNFC_configureNFC_error___block_invoke_61()
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

- (BOOL)shutdown:(id *)shutdown
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  [v4 setObject:&unk_286AC86B8 forKey:@"HeartbeatPeriod"];
  [v4 setObject:&unk_286AC8358 forKey:@"HeartbeatTimeout"];
  if (MIBUOnceToken != -1)
  {
    [MIBUDeviceNFC shutdown:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = v5;
    v8 = [v6 stringWithFormat:@"Begin heartbeat with period: 0.5 timeout: 0..."];;
    *buf = 138543618;
    selfCopy2 = self;
    v25 = 2114;
    v26 = v8;
    _os_log_impl(&dword_259ABF000, v7, OS_LOG_TYPE_DEFAULT, "Device %{public}@: %{public}@", buf, 0x16u);
  }

  v9 = [[MIBUNFCCommand alloc] initWithCommandCode:7 andPayload:v4];
  mibureaderSession = [(MIBUDeviceNFC *)self mibureaderSession];
  v22 = 0;
  v11 = [mibureaderSession sendCommand:v9 withError:&v22];
  v12 = v22;

  if (v12 || ([v11 error], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUDeviceNFC shutdown:];
    }

    v14 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [(MIBUDeviceNFC *)self startDiag:v14, v12];
    }

    v15 = 0;
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUDeviceNFC shutdown:];
    }

    v18 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = v18;
      v21 = [v19 stringWithFormat:@"heartbeat successful"];
      *buf = 138543618;
      selfCopy2 = self;
      v25 = 2114;
      v26 = v21;
      _os_log_impl(&dword_259ABF000, v20, OS_LOG_TYPE_DEFAULT, "Device %{public}@: %{public}@", buf, 0x16u);
    }

    v15 = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void __26__MIBUDeviceNFC_shutdown___block_invoke()
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

void __26__MIBUDeviceNFC_shutdown___block_invoke_75()
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

void __26__MIBUDeviceNFC_shutdown___block_invoke_78()
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

- (BOOL)endSession
{
  v19 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    [MIBUDeviceNFC endSession];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = v3;
    v6 = [v4 stringWithFormat:@"mibureader object disconnectTag"];
    v15 = 138543618;
    selfCopy2 = self;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_259ABF000, v5, OS_LOG_TYPE_DEFAULT, "Device %{public}@: %{public}@", &v15, 0x16u);
  }

  mibureaderSession = [(MIBUDeviceNFC *)self mibureaderSession];
  [mibureaderSession disconnectTag:0];

  if (MIBUOnceToken != -1)
  {
    [MIBUDeviceNFC endSession];
  }

  v8 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = v8;
    v11 = [v9 stringWithFormat:@"mibureader object end"];
    v15 = 138543618;
    selfCopy2 = self;
    v17 = 2114;
    v18 = v11;
    _os_log_impl(&dword_259ABF000, v10, OS_LOG_TYPE_DEFAULT, "Device %{public}@: %{public}@", &v15, 0x16u);
  }

  mibureaderSession2 = [(MIBUDeviceNFC *)self mibureaderSession];
  [mibureaderSession2 end];

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

void __27__MIBUDeviceNFC_endSession__block_invoke()
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

void __27__MIBUDeviceNFC_endSession__block_invoke_89()
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

- (void)startSession
{
  v14 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_16);
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = v3;
    v6 = [v4 stringWithFormat:@"Failed to init MIBUreaderSession object"];
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_4_5(&dword_259ABF000, v7, v8, "Device %{public}@: %{public}@", v9, v10, v11, v12, 2u);
  }

  *a2 = 1;
  v13 = *MEMORY[0x277D85DE8];
}

- (void)startDiag:(uint64_t)a3 .cold.3(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  v5 = a2;
  v6 = [v4 stringWithFormat:@"Failed at command step: %@", a3];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_3_3(&dword_259ABF000, v7, v8, "Device Error %{public}@: %{public}@", v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (id)configureNFC:(void *)a3 error:.cold.2(uint64_t a1, void **a2, void **a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_63);
  }

  v6 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = v6;
    v16 = [v14 stringWithFormat:@"InactivityTimeout can not be nil"];
    *v19 = 138543618;
    *&v19[4] = a1;
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_3_3(&dword_259ABF000, v17, v18, "Device Error %{public}@: %{public}@", v19);
  }

  *a2 = 0;
  safeAssignError(a2, 2147483654, 0, @"InactivityTimeout can not be nil", v7, v8, v9, v10, *v19);
  v11 = *a2;
  *a3 = *a2;
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end