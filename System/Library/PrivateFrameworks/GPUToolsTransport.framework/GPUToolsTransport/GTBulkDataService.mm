@interface GTBulkDataService
- (BOOL)uploadChunk:(id)a3 forHandle:(unint64_t)a4 isFinalChunk:(BOOL)a5 error:(id *)a6;
- (GTBulkDataService)initWithDownloadHighWaterMark:(unint64_t)a3;
- (id)takeDownloadDataForHandle:(unint64_t)a3;
- (id)takeUploadedDataForHandle:(unint64_t)a3;
- (unint64_t)handoverDataForDownload:(id)a3;
- (unint64_t)newUploadWithDescriptor:(id)a3 error:(id *)a4;
- (void)downloadData:(unint64_t)a3 usingTransferOptions:(id)a4 chunkHandler:(id)a5;
@end

@implementation GTBulkDataService

- (GTBulkDataService)initWithDownloadHighWaterMark:(unint64_t)a3
{
  v21.receiver = self;
  v21.super_class = GTBulkDataService;
  v4 = [(GTBulkDataService *)&v21 init];
  v5 = v4;
  if (v4)
  {
    v4->_nextDownloadHandle = 1;
    v4->_nextUploadHandle = 1;
    v6 = objc_opt_new();
    dataDownloadStore = v5->_dataDownloadStore;
    v5->_dataDownloadStore = v6;

    v8 = objc_opt_new();
    dataUploadingStore = v5->_dataUploadingStore;
    v5->_dataUploadingStore = v8;

    v10 = objc_opt_new();
    dataUploadedStore = v5->_dataUploadedStore;
    v5->_dataUploadedStore = v10;

    v12 = objc_opt_new();
    dataUploadCompressionAlgorithm = v5->_dataUploadCompressionAlgorithm;
    v5->_dataUploadCompressionAlgorithm = v12;

    v5->_downloadHighWaterMarkBytes = a3;
    v5->_downloadStoreBytes = 0;
    v5->_downloadTransmitState = 1;
    v14 = dispatch_group_create();
    downloadTransmitOff = v5->_downloadTransmitOff;
    v5->_downloadTransmitOff = v14;

    v16 = dispatch_queue_create("com.apple.gputools.bulk-data.access", 0);
    dataAccessQueue = v5->_dataAccessQueue;
    v5->_dataAccessQueue = v16;

    v18 = dispatch_queue_create("com.apple.gputools.bulk-data.transfer", 0);
    dataTransferQueue = v5->_dataTransferQueue;
    v5->_dataTransferQueue = v18;
  }

  return v5;
}

- (id)takeDownloadDataForHandle:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  dataAccessQueue = self->_dataAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__GTBulkDataService_takeDownloadDataForHandle___block_invoke;
  block[3] = &unk_2796612D8;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(dataAccessQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __47__GTBulkDataService_takeDownloadDataForHandle___block_invoke(void *a1)
{
  v2 = *(a1[4] + 16);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1[4] + 16);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
  [v7 removeObjectForKey:v8];

  *(a1[4] + 32) -= [*(*(a1[5] + 8) + 40) length];
  v9 = a1[4];
  if ((*(v9 + 40) & 1) == 0 && *(v9 + 32) <= *(v9 + 24))
  {
    *(v9 + 40) = 1;
    v10 = *(a1[4] + 48);

    dispatch_group_leave(v10);
  }
}

- (void)downloadData:(unint64_t)a3 usingTransferOptions:(id)a4 chunkHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  dataTransferQueue = self->_dataTransferQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__GTBulkDataService_downloadData_usingTransferOptions_chunkHandler___block_invoke;
  v13[3] = &unk_279661300;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(dataTransferQueue, v13);
}

void __68__GTBulkDataService_downloadData_usingTransferOptions_chunkHandler___block_invoke(uint64_t a1)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = (a1 + 32);
  v4 = *(a1 + 32);
  v5 = v4;
  if (!v4 || ![v4 chunkSize])
  {

    goto LABEL_14;
  }

  v6 = [v5 compressionAlgorithm];

  if (v6 >= 5)
  {
LABEL_14:
    if (GTCoreLogUseOsLog())
    {
      v17 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __68__GTBulkDataService_downloadData_usingTransferOptions_chunkHandler___block_invoke_cold_3((a1 + 32), v17, v18, v19, v20, v21, v22, v23);
      }
    }

    else
    {
      v24 = *MEMORY[0x277D85DF8];
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"downloadData Invalid Options:%@", *v3];
      fprintf(v24, "%s\n", [v25 UTF8String]);
    }

    v26 = MEMORY[0x277CCA9B8];
    v55 = *MEMORY[0x277CCA450];
    v27 = MEMORY[0x277CCACA8];
    v28 = [*(a1 + 32) debugDescription];
    v29 = [v27 stringWithFormat:@"Invalid options sent to downloadData: %@", v28];
    v56[0] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
    v10 = [v26 errorWithDomain:@"com.apple.gputools.bulkdataservice" code:0 userInfo:v30];

    goto LABEL_20;
  }

  v7 = [*(a1 + 40) takeDownloadDataForHandle:*(a1 + 56)];
  if (!v7)
  {
    if (GTCoreLogUseOsLog())
    {
      v32 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        __68__GTBulkDataService_downloadData_usingTransferOptions_chunkHandler___block_invoke_cold_2((a1 + 56), v32, v33, v34, v35, v36, v37, v38);
      }
    }

    else
    {
      v46 = *MEMORY[0x277D85DF8];
      v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"downloadData Invalid Handle:%llu", *(a1 + 56)];
      fprintf(v46, "%s\n", [v47 UTF8String]);
    }

    v48 = MEMORY[0x277CCA9B8];
    v53 = *MEMORY[0x277CCA450];
    v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"Handle (%lld) has no data associated to it", *(a1 + 56)];
    v54 = v49;
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v10 = [v48 errorWithDomain:@"com.apple.gputools.bulkdataservice" code:2 userInfo:v50];

LABEL_20:
    (*(*(a1 + 48) + 16))();
    goto LABEL_21;
  }

  v8 = v7;
  [*v3 compressionAlgorithm];
  v9 = [*v3 compressionAlgorithm];
  v52 = 0;
  v10 = GTBulkDataCompress(v8, v9, &v52);
  v11 = v52;

  if (v10)
  {
    [*v3 compressionAlgorithm];
    if ([v10 length])
    {
      v12 = 0;
      do
      {
        v13 = objc_autoreleasePoolPush();
        v14 = [*v3 chunkSize];
        if (v14 >= [v10 length] - v12)
        {
          v15 = [v10 length] - v12;
        }

        else
        {
          v15 = [*v3 chunkSize];
        }

        v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(v10 length:"bytes") + v12 freeWhenDone:{v15, 0}];
        [v10 length];
        (*(*(a1 + 48) + 16))();

        objc_autoreleasePoolPop(v13);
        v12 += [*(a1 + 32) chunkSize];
      }

      while (v12 < [v10 length]);
    }
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v39 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        __68__GTBulkDataService_downloadData_usingTransferOptions_chunkHandler___block_invoke_cold_1(v11, v39, v40, v41, v42, v43, v44, v45);
      }
    }

    else
    {
      v51 = *MEMORY[0x277D85DF8];
      v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"downloadData Compression error:%@", v11];
      fprintf(v51, "%s\n", [v39 UTF8String]);
    }

    (*(*(a1 + 48) + 16))();
  }

LABEL_21:
  objc_autoreleasePoolPop(v2);
  v31 = *MEMORY[0x277D85DE8];
}

- (unint64_t)handoverDataForDownload:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  dataAccessQueue = self->_dataAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__GTBulkDataService_handoverDataForDownload___block_invoke;
  block[3] = &unk_279661288;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(dataAccessQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __45__GTBulkDataService_handoverDataForDownload___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 8);
  *(v2 + 8) = v3 + 1;
  *(*(a1[6] + 8) + 24) = v3;
  v4 = a1[5];
  v5 = *(a1[4] + 16);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(a1[6] + 8) + 24)];
  [v5 setObject:v4 forKeyedSubscript:v6];

  *(a1[4] + 32) += [a1[5] length];
  v7 = a1[4];
  if (*(v7 + 40) == 1 && *(v7 + 32) > *(v7 + 24))
  {
    *(v7 + 40) = 0;
    v8 = *(a1[4] + 48);

    dispatch_group_enter(v8);
  }
}

- (unint64_t)newUploadWithDescriptor:(id)a3 error:(id *)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 compressionAlgorithm] < 5)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    dataAccessQueue = self->_dataAccessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__GTBulkDataService_newUploadWithDescriptor_error___block_invoke;
    block[3] = &unk_279661288;
    v18 = &v19;
    block[4] = self;
    v17 = v7;
    dispatch_sync(dataAccessQueue, block);
    a4 = v20[3];

    _Block_object_dispose(&v19, 8);
  }

  else if (a4)
  {
    v9 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v10 = MEMORY[0x277CCACA8];
    v11 = [v7 debugDescription];
    v12 = [v10 stringWithFormat:@"Invalid upload descriptor: %@", v11];
    v24[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    *a4 = [v9 errorWithDomain:@"com.apple.gputools.bulkdataservice" code:1 userInfo:v13];

    a4 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return a4;
}

void __51__GTBulkDataService_newUploadWithDescriptor_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = v3 + 1;
  *(*(*(a1 + 48) + 8) + 24) = v3;
  if ([*(a1 + 40) sizeHint])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{objc_msgSend(*(a1 + 40), "sizeHint")}];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v6 = *(*(a1 + 32) + 64);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(*(a1 + 48) + 8) + 24)];
  [v6 setObject:v5 forKeyedSubscript:v7];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "compressionAlgorithm")}];
  v8 = *(*(a1 + 32) + 80);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(*(a1 + 48) + 8) + 24)];
  [v8 setObject:v10 forKeyedSubscript:v9];
}

- (BOOL)uploadChunk:(id)a3 forHandle:(unint64_t)a4 isFinalChunk:(BOOL)a5 error:(id *)a6
{
  v10 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  dataAccessQueue = self->_dataAccessQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__GTBulkDataService_uploadChunk_forHandle_isFinalChunk_error___block_invoke;
  v15[3] = &unk_279661328;
  v18 = a4;
  v19 = a6;
  v15[4] = self;
  v16 = v10;
  v20 = a5;
  v17 = &v21;
  v12 = v10;
  dispatch_sync(dataAccessQueue, v15);
  v13 = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  return v13;
}

void __62__GTBulkDataService_uploadChunk_forHandle_isFinalChunk_error___block_invoke(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 56);
  v3 = *(*(a1 + 32) + 64);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    [v5 appendData:*(a1 + 40)];
    if (*(a1 + 72) != 1)
    {
LABEL_5:
      *(*(*(a1 + 48) + 8) + 24) = 1;
      goto LABEL_13;
    }

    v6 = *(*(a1 + 32) + 64);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
    [v6 removeObjectForKey:v7];

    v8 = *(*(a1 + 32) + 80);
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
    v10 = [v8 objectForKeyedSubscript:v9];
    v11 = [v10 integerValue];

    v12 = *(*(a1 + 32) + 80);
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
    [v12 removeObjectForKey:v13];

    v14 = GTBulkDataDecompress(v5, v11, *(a1 + 64));
    if (v14)
    {
      v15 = v14;
      v16 = *(*(a1 + 32) + 72);
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
      [v16 setObject:v15 forKeyedSubscript:v17];

      goto LABEL_5;
    }
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v18 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __62__GTBulkDataService_uploadChunk_forHandle_isFinalChunk_error___block_invoke_cold_1(v2, v18, v19, v20, v21, v22, v23, v24);
      }
    }

    else
    {
      v25 = *MEMORY[0x277D85DF8];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"uploadChunk Invalid Handle: %llu", *v2];
      fprintf(v25, "%s\n", [v26 UTF8String]);
    }

    if (*(a1 + 64))
    {
      v27 = MEMORY[0x277CCA9B8];
      v28 = *(a1 + 56);
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Handle (%lld) has no data associated to it", v28, *MEMORY[0x277CCA450]];
      v33[0] = v29;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      **(a1 + 64) = [v27 errorWithDomain:@"com.apple.gputools.bulkdataservice" code:2 userInfo:v30];
    }
  }

LABEL_13:

  v31 = *MEMORY[0x277D85DE8];
}

- (id)takeUploadedDataForHandle:(unint64_t)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  dataAccessQueue = self->_dataAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__GTBulkDataService_takeUploadedDataForHandle___block_invoke;
  block[3] = &unk_2796612D8;
  block[4] = self;
  block[5] = &v16;
  block[6] = a3;
  dispatch_sync(dataAccessQueue, block);
  if (!v17[5])
  {
    if (GTCoreLogUseOsLog())
    {
      v5 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(GTBulkDataService *)a3 takeUploadedDataForHandle:v5, v6, v7, v8, v9, v10, v11];
      }
    }

    else
    {
      v12 = *MEMORY[0x277D85DF8];
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"takeUploadedDataForHandle Invalid Handle: %llu", a3];
      fprintf(v12, "%s\n", [v5 UTF8String]);
    }
  }

  v13 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v13;
}

void __47__GTBulkDataService_takeUploadedDataForHandle___block_invoke(void *a1)
{
  v2 = *(a1[4] + 72);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1[4] + 72);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
  [v7 removeObjectForKey:v8];
}

void __68__GTBulkDataService_downloadData_usingTransferOptions_chunkHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_24DBC9000, a2, a3, "downloadData Compression error:%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __68__GTBulkDataService_downloadData_usingTransferOptions_chunkHandler___block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_0(&dword_24DBC9000, a2, a3, "downloadData Invalid Handle:%llu", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void __68__GTBulkDataService_downloadData_usingTransferOptions_chunkHandler___block_invoke_cold_3(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_0(&dword_24DBC9000, a2, a3, "downloadData Invalid Options:%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __62__GTBulkDataService_uploadChunk_forHandle_isFinalChunk_error___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_0(&dword_24DBC9000, a2, a3, "uploadChunk Invalid Handle: %llu", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)takeUploadedDataForHandle:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_24DBC9000, a2, a3, "takeUploadedDataForHandle Invalid Handle: %llu", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

@end