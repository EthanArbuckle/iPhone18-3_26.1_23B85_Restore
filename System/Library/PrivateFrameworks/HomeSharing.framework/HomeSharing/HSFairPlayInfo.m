@interface HSFairPlayInfo
- (BOOL)_getHardwareInfo:(FairPlayHWInfo_ *)a3;
- (HSFairPlayInfo)init;
- (NSString)deviceGUID;
- (id)_hexStringForData:(id)a3;
- (id)beginNegotiationWithSAPVersion:(unsigned int)a3;
- (id)continueNegotationWithSAPVersion:(unsigned int)a3 data:(id)a4 isComplete:(BOOL *)a5;
- (id)securityInfoForURL:(id)a3;
- (void)dealloc;
- (void)endSecuritySession;
@end

@implementation HSFairPlayInfo

- (id)_hexStringForData:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{2 * objc_msgSend(v3, "length")}];
  v5 = [v3 length];
  v6 = [v3 bytes];
  if (v5)
  {
    v7 = v6;
    do
    {
      v8 = *v7++;
      [v4 appendFormat:@"%02X", v8];
      --v5;
    }

    while (v5);
  }

  return v4;
}

- (BOOL)_getHardwareInfo:(FairPlayHWInfo_ *)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = MGCopyAnswer();
  HardwareInfoFromDeviceUDID = ICFairPlayGetHardwareInfoFromDeviceUDID();

  return HardwareInfoFromDeviceUDID == 0;
}

- (id)securityInfoForURL:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 absoluteString];
  v6 = [v4 path];
  v7 = [v5 substringFromIndex:{objc_msgSend(v5, "rangeOfString:", v6)}];

  v8 = [v7 dataUsingEncoding:4];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = malloc_type_malloc(0x10uLL, 0x38CC30E1uLL);
  v9 = v8;
  v10 = [v8 bytes];
  v11 = [v8 length];
  CC_MD5(v10, v11, v32[3]);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  sapQueue = self->_sapQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HSFairPlayInfo_securityInfoForURL___block_invoke;
  block[3] = &unk_27977A270;
  block[4] = self;
  block[5] = &v19;
  block[6] = &v31;
  block[7] = &v27;
  block[8] = &v23;
  dispatch_sync(sapQueue, block);
  free(v32[3]);
  if (*(v20 + 6))
  {
    v13 = os_log_create("com.apple.amp.HomeSharing", "Connections");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(v20 + 6);
      *buf = 134217984;
      v36 = v14;
      _os_log_impl(&dword_254418000, v13, OS_LOG_TYPE_ERROR, "FairPlaySAPEncrypt returned %ld, bailing on SAP setup", buf, 0xCu);
    }

    [(HSFairPlayInfo *)self endSecuritySession];
    v15 = 0;
  }

  else
  {
    v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v28[3] length:*(v24 + 6)];
    v15 = [(HSFairPlayInfo *)self _hexStringForData:v16];
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v15;
}

- (void)endSecuritySession
{
  if (self->_session)
  {
    sapQueue = self->_sapQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__HSFairPlayInfo_endSecuritySession__block_invoke;
    block[3] = &unk_27977A350;
    block[4] = self;
    dispatch_sync(sapQueue, block);
  }
}

- (id)continueNegotationWithSAPVersion:(unsigned int)a3 data:(id)a4 isComplete:(BOOL *)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = -1;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  sapQueue = self->_sapQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HSFairPlayInfo_continueNegotationWithSAPVersion_data_isComplete___block_invoke;
  block[3] = &unk_27977A248;
  v22 = a3;
  v18 = &v23;
  block[4] = self;
  v10 = v8;
  v17 = v10;
  v19 = &v35;
  v20 = &v31;
  v21 = &v27;
  dispatch_sync(sapQueue, block);
  if (*(v24 + 6))
  {
    v11 = os_log_create("com.apple.amp.HomeSharing", "Connections");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(v24 + 6);
      *buf = 134217984;
      v40 = v12;
      _os_log_impl(&dword_254418000, v11, OS_LOG_TYPE_ERROR, "FairPlaySAPExchange returned %ld, bailing on SAP setup", buf, 0xCu);
    }

    [(HSFairPlayInfo *)self endSecuritySession];
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  if (*(v28 + 24) != 1)
  {
    if (a5 && !*(v28 + 24))
    {
      *a5 = 1;
    }

    v15 = v36[3];
    if (v15)
    {
      free(v15);
    }

    goto LABEL_5;
  }

  v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v36[3] length:*(v32 + 6)];
LABEL_6:

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v13;
}

- (id)beginNegotiationWithSAPVersion:(unsigned int)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = -1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  sapQueue = self->_sapQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__HSFairPlayInfo_beginNegotiationWithSAPVersion___block_invoke;
  v9[3] = &unk_27977A220;
  v9[4] = self;
  v9[5] = &v11;
  v10 = a3;
  v9[6] = &v23;
  v9[7] = &v19;
  v9[8] = &v15;
  dispatch_sync(sapQueue, v9);
  if (*(v12 + 6))
  {
    v5 = os_log_create("com.apple.amp.HomeSharing", "Connections");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(v12 + 6);
      *buf = 134217984;
      v28 = v6;
      _os_log_impl(&dword_254418000, v5, OS_LOG_TYPE_ERROR, "FairPlaySAPExchange returned %ld, bailing on SAP setup", buf, 0xCu);
    }

    [(HSFairPlayInfo *)self endSecuritySession];
  }

  else if (*(v16 + 24) == 1)
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v24[3] length:*(v20 + 6)];
    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v7;
}

void __49__HSFairPlayInfo_beginNegotiationWithSAPVersion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  cp2g1b9ro(*(a1 + 32) + 24, *(*(a1 + 32) + 16));
  *(*(*(a1 + 40) + 8) + 24) = v2;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v3 = os_log_create("com.apple.amp.HomeSharing", "Connections");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(*(*(a1 + 40) + 8) + 24);
      v6 = 134217984;
      v7 = v4;
      _os_log_impl(&dword_254418000, v3, OS_LOG_TYPE_ERROR, "Error: Unable to create security session: %li", &v6, 0xCu);
    }
  }

  else
  {
    Mib5yocT(*(a1 + 72), *(*(a1 + 32) + 16), *(*(a1 + 32) + 24), 0, 0, *(*(a1 + 48) + 8) + 24, *(*(a1 + 56) + 8) + 24, *(*(a1 + 64) + 8) + 24);
    *(*(*(a1 + 40) + 8) + 24) = v5;
  }
}

- (NSString)deviceGUID
{
  v2 = MGCopyAnswer();

  return v2;
}

- (void)dealloc
{
  sapQueue = self->_sapQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__HSFairPlayInfo_dealloc__block_invoke;
  block[3] = &unk_27977A350;
  block[4] = self;
  dispatch_sync(sapQueue, block);
  hwInfo = self->_hwInfo;
  if (hwInfo)
  {
    free(hwInfo);
  }

  v5.receiver = self;
  v5.super_class = HSFairPlayInfo;
  [(HSFairPlayInfo *)&v5 dealloc];
}

void __25__HSFairPlayInfo_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (v1)
  {
    IPaI1oem5iL(v1);
  }
}

- (HSFairPlayInfo)init
{
  v10.receiver = self;
  v10.super_class = HSFairPlayInfo;
  v2 = [(HSFairPlayInfo *)&v10 init];
  if (v2 && (v3 = dispatch_queue_create("com.apple.itunescloudd.fpsap", 0), sapQueue = v2->_sapQueue, v2->_sapQueue = v3, sapQueue, v5 = malloc_type_malloc(0x18uLL, 0x1000040504FFAC1uLL), v2->_hwInfo = v5, ![(HSFairPlayInfo *)v2 _getHardwareInfo:v5]))
  {
    v7 = os_log_create("com.apple.amp.HomeSharing", "Connections");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_254418000, v7, OS_LOG_TYPE_ERROR, "Error: Unable to determine hardware identifier.", v9, 2u);
    }

    v6 = 0;
  }

  else
  {
    v6 = v2;
  }

  return v6;
}

@end