@interface FSVolumeConnector
+ (id)volumeConnectorModuleVolume:(id)a3 connection:(id)a4;
+ (id)volumeWithName:(id)a3 resource:(id)a4 connection:(id)a5;
- (FSVolumeConnector)initWithModuleVolume:(id)a3 connection:(id)a4;
- (NSXPCConnection)ourConnection;
- (void)abortSearch:(id)a3 requestID:(unint64_t)a4 replyHandler:(id)a5;
- (void)blockmapFile:(id)a3 range:(_NSRange)a4 flags:(unint64_t)a5 operationID:(unint64_t)a6 replyHandler:(id)a7;
- (void)checkAccessTo:(id)a3 requestedAccess:(unint64_t)a4 requestID:(unint64_t)a5 replyHandler:(id)a6;
- (void)close:(id)a3 keepingMode:(int)a4 requestID:(unint64_t)a5 replyHandler:(id)a6;
- (void)createIn:(id)a3 named:(id)a4 type:(int64_t)a5 attributes:(id)a6 requestID:(unint64_t)a7 replyHandler:(id)a8;
- (void)endIO:(id)a3 range:(_NSRange)a4 status:(int)a5 flags:(unint64_t)a6 operationID:(unint64_t)a7 replyHandler:(id)a8;
- (void)fetchVolumeMachPortLabeled:(id)a3 requestID:(unint64_t)a4 replyHandler:(id)a5;
- (void)fileAttributes:(id)a3 requestedAttributes:(unint64_t)a4 requestID:(unint64_t)a5 replyHandler:(id)a6;
- (void)getFreeSpaceInVolumeWithReplyHandler:(id)a3;
- (void)getIOItemAttributesSubsetData:(id)a3 replyHandler:(id)a4;
- (void)getRootFileHandle:(id)a3;
- (void)getStandardItemAttributesDataForItem:(id)a3 replyHandler:(id)a4;
- (void)getStandardItemAttributesDataForNewItem:(id)a3 replyHandler:(id)a4;
- (void)getStandardItemAttributesForItem:(id)a3 replyHandler:(id)a4;
- (void)listXattrsOf:(id)a3 requestID:(unint64_t)a4 replyHandler:(id)a5;
- (void)lookupIn:(id)a3 name:(id)a4 flags:(unsigned int)a5 requestID:(unint64_t)a6 replyHandler:(id)a7;
- (void)makeLinkOf:(id)a3 named:(id)a4 inDirectory:(id)a5 requestID:(unint64_t)a6 replyHandler:(id)a7;
- (void)makeSymlinkIn:(id)a3 named:(id)a4 contents:(id)a5 attributes:(id)a6 requestID:(unint64_t)a7 replyHandler:(id)a8;
- (void)mount:(id)a3 replyHandler:(id)a4;
- (void)open:(id)a3 withMode:(int)a4 requestID:(unint64_t)a5 replyHandler:(id)a6;
- (void)otherAttributeOf:(id)a3 named:(id)a4 requestID:(unint64_t)a5 replyHandler:(id)a6;
- (void)parentsAndAttributesForItemsByID:(id)a3 requestID:(unint64_t)a4 replyHandler:(id)a5;
- (void)pathConfigurationOf:(id)a3 propertyName:(int)a4 requestID:(unint64_t)a5 replyHandler:(id)a6;
- (void)readDirectory:(id)a3 intoBuffer:(id)a4 cookie:(unint64_t)a5 verifier:(unint64_t)a6 requestID:(unint64_t)a7 replyHandler:(id)a8;
- (void)readDirectory:(id)a3 requestedAttributes:(unint64_t)a4 intoBuffer:(id)a5 cookie:(unint64_t)a6 verifier:(unint64_t)a7 requestID:(unint64_t)a8 replyHandler:(id)a9;
- (void)readFrom:(id)a3 atOffset:(unint64_t)a4 intoBuffer:(id)a5 requestID:(unint64_t)a6 replyHandler:(id)a7;
- (void)readSymbolicLinkOf:(id)a3 requestID:(unint64_t)a4 replyHandler:(id)a5;
- (void)reclaim:(id)a3 requestID:(unint64_t)a4 replyHandler:(id)a5;
- (void)removeDirectory:(id)a3 from:(id)a4 named:(id)a5 usingFlags:(int)a6 requestID:(unint64_t)a7 replyHandler:(id)a8;
- (void)removeItem:(id)a3 from:(id)a4 named:(id)a5 usingFlags:(int)a6 requestID:(unint64_t)a7 replyHandler:(id)a8;
- (void)renameItemIn:(id)a3 named:(id)a4 item:(id)a5 toDirectory:(id)a6 newName:(id)a7 toItem:(id)a8 usingFlags:(unsigned int)a9 requestID:(unint64_t)a10 replyHandler:(id)a11;
- (void)replenishSearchCreditsFor:(id)a3 credits:(unsigned int)a4 requestID:(unint64_t)a5 replyHandler:(id)a6;
- (void)search:(id)a3 token:(id)a4 criteria:(id)a5 resumeAt:(id)a6 maxData:(unsigned int)a7 maxDelay:(double)a8 initialCredits:(unsigned int)a9 requestID:(unint64_t)a10 replyHandler:(id)a11;
- (void)setFileAttributesOf:(id)a3 to:(id)a4 requestID:(unint64_t)a5 replyHandler:(id)a6;
- (void)setOtherAttributeOf:(id)a3 named:(id)a4 value:(id)a5 requestID:(unint64_t)a6 replyHandler:(id)a7;
- (void)setUpdateInterest:(id)a3 interest:(BOOL)a4 requestID:(unint64_t)a5 replyHandler:(id)a6;
- (void)setXattrOf:(id)a3 named:(id)a4 value:(id)a5 how:(unint64_t)a6 requestID:(unint64_t)a7 replyHandler:(id)a8;
- (void)synchronize:(unsigned int)a3 replyHandler:(id)a4;
- (void)unmount:(id)a3;
- (void)volumeStatistics:(id)a3 requestID:(unint64_t)a4 replyHandler:(id)a5;
- (void)writeTo:(id)a3 atOffset:(unint64_t)a4 fromBuffer:(id)a5 requestID:(unint64_t)a6 replyHandler:(id)a7;
- (void)xattrOf:(id)a3 named:(id)a4 requestID:(unint64_t)a5 replyHandler:(id)a6;
@end

@implementation FSVolumeConnector

- (FSVolumeConnector)initWithModuleVolume:(id)a3 connection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = FSVolumeConnector;
  v9 = [(FSVolumeConnector *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ourVolume, a3);
    objc_storeWeak(&v10->_ourConnection, v8);
    v11 = [[FSItemGetAttributesRequest alloc] initWithWantedLIAttributes:0x4000000000003FE7];
    standardGetAttrReq = v10->_standardGetAttrReq;
    v10->_standardGetAttrReq = v11;

    atomic_store(0, &v10->_nextFreeSpaceSeqno);
    atomic_store(0, &v10->_nextAttributeSeqno);
    v13 = [FSWorkQueue alloc];
    v14 = MEMORY[0x277CCACA8];
    v15 = [v7 volume];
    v16 = [v15 volumeID];
    v17 = [v14 stringWithFormat:@"connector.%@", v16];
    v18 = [(FSWorkQueue *)v13 initQueueWithDomain:v17 concurrency:16];
    workQueue = v10->_workQueue;
    v10->_workQueue = v18;
  }

  return v10;
}

+ (id)volumeConnectorModuleVolume:(id)a3 connection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithModuleVolume:v7 connection:v6];

  return v8;
}

+ (id)volumeWithName:(id)a3 resource:(id)a4 connection:(id)a5
{
  v8 = a5;
  v9 = [FSModuleVolume volumeWithName:a3 resource:a4];
  v10 = [[a1 alloc] initWithModuleVolume:v9 connection:v8];

  return v10;
}

- (void)getStandardItemAttributesForItem:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  ourVolume = self->_ourVolume;
  v8 = a3;
  v9 = [(FSModuleVolume *)ourVolume volume];
  standardGetAttrReq = self->_standardGetAttrReq;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__FSVolumeConnector_getStandardItemAttributesForItem_replyHandler___block_invoke;
  v12[3] = &unk_278FED7A8;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v9 getAttributes:standardGetAttrReq ofItem:v8 replyHandler:v12];
}

void __67__FSVolumeConnector_getStandardItemAttributesForItem_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __67__FSVolumeConnector_getStandardItemAttributesForItem_replyHandler___block_invoke_cold_1(v6);
    }

LABEL_4:

    v8 = *(*(a1 + 40) + 16);
    goto LABEL_11;
  }

  if (!v5)
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __67__FSVolumeConnector_getStandardItemAttributesForItem_replyHandler___block_invoke_cold_3(v7, v17, v18, v19, v20, v21, v22, v23);
    }

    goto LABEL_4;
  }

  if (([v5 hasMinimalRequiredAttributes] & 1) == 0)
  {
    v9 = fskit_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __67__FSVolumeConnector_getStandardItemAttributesForItem_replyHandler___block_invoke_cold_2(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  atomic_fetch_add((*(a1 + 32) + 16), 1uLL);
  [v5 setAttributeSeqno:?];
  v8 = *(*(a1 + 40) + 16);
LABEL_11:
  v8();
}

- (void)getStandardItemAttributesDataForItem:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__FSVolumeConnector_getStandardItemAttributesDataForItem_replyHandler___block_invoke;
  v8[3] = &unk_278FED7D0;
  v9 = v6;
  v7 = v6;
  [(FSVolumeConnector *)self getStandardItemAttributesForItem:a3 replyHandler:v8];
}

void __71__FSVolumeConnector_getStandardItemAttributesDataForItem_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [a2 attrsData];
    (*(v2 + 16))(v2, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }
}

- (void)getStandardItemAttributesDataForNewItem:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__FSVolumeConnector_getStandardItemAttributesDataForNewItem_replyHandler___block_invoke;
  v10[3] = &unk_278FED7F8;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(FSVolumeConnector *)self getStandardItemAttributesForItem:v9 replyHandler:v10];
}

void __74__FSVolumeConnector_getStandardItemAttributesDataForNewItem_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [*(a1 + 32) setType:{objc_msgSend(v3, "type")}];
    v4 = *(a1 + 40);
    v5 = [v6 attrsData];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    [*(a1 + 32) setType:0];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)getIOItemAttributesSubsetData:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__4;
  v14[4] = __Block_byref_object_dispose__4;
  v15 = 0;
  v8 = [[FSItemGetAttributesRequest alloc] initWithWantedLIAttributes:7616];
  v9 = [(FSModuleVolume *)self->_ourVolume volume];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__FSVolumeConnector_getIOItemAttributesSubsetData_replyHandler___block_invoke;
  v11[3] = &unk_278FED820;
  v10 = v7;
  v11[4] = self;
  v12 = v10;
  v13 = v14;
  [v9 getAttributes:v8 ofItem:v6 replyHandler:v11];

  _Block_object_dispose(v14, 8);
}

void __64__FSVolumeConnector_getIOItemAttributesSubsetData_replyHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __64__FSVolumeConnector_getIOItemAttributesSubsetData_replyHandler___block_invoke_cold_1(v6);
    }

    (*(a1[5] + 16))(a1[5]);
  }

  else
  {
    v8 = 0;
    if ([v5 isValid:{64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}])
    {
      v8 = 64;
      v16[2] = [v5 size];
      v16[0] = 64;
    }

    if ([v5 isValid:{128, v16[0]}])
    {
      v8 |= 0x80uLL;
      v16[3] = [v5 allocSize];
      v16[0] = v8;
    }

    if ([v5 isValid:{256, v16[0]}])
    {
      v8 |= 0x100uLL;
      v16[4] = [v5 fileID];
      v16[0] = v8;
    }

    if ([v5 isValid:{1024, v16[0]}])
    {
      v16[5] = [v5 accessTime];
      v16[6] = v9;
      v8 |= 0x400uLL;
      v16[0] = v8;
    }

    if ([v5 isValid:{2048, v16[0]}])
    {
      v16[7] = [v5 modifyTime];
      v16[8] = v10;
      v8 |= 0x800uLL;
      v16[0] = v8;
    }

    if ([v5 isValid:{4096, v16[0]}])
    {
      v16[9] = [v5 changeTime];
      v16[10] = v11;
      v16[0] = v8 | 0x1000;
    }

    v16[1] = atomic_fetch_add((a1[4] + 16), 1uLL);
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:88];
    v13 = *(a1[6] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = *(*(a1[6] + 8) + 40);
    (*(a1[5] + 16))(a1[5]);
  }
}

- (void)getFreeSpaceInVolumeWithReplyHandler:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__FSVolumeConnector_getFreeSpaceInVolumeWithReplyHandler___block_invoke;
  v7[3] = &unk_278FED618;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(FSWorkQueue *)workQueue enqueue:v7];
}

void __58__FSVolumeConnector_getFreeSpaceInVolumeWithReplyHandler___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(*(a1 + 32) + 24) volume];
  v4 = [v3 volumeStatistics];

  if (v4)
  {
    v5 = [v4 availableBlocks];
    v6 = [v4 blockSize];
    add = atomic_fetch_add((*v2 + 8), 1uLL);
    v10[0] = v6 * v5;
    v10[1] = add;
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:v10 length:16];
  }

  else
  {
    v9 = fskit_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __58__FSVolumeConnector_getFreeSpaceInVolumeWithReplyHandler___block_invoke_cold_1(v2);
    }

    v8 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)blockmapFile:(id)a3 range:(_NSRange)a4 flags:(unint64_t)a5 operationID:(unint64_t)a6 replyHandler:(id)a7
{
  length = a4.length;
  location = a4.location;
  v45 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a7;
  v15 = fskit_std_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v34 = "[FSVolumeConnector blockmapFile:range:flags:operationID:replyHandler:]";
    v35 = 2112;
    v36 = v13;
    v37 = 2048;
    v38 = location;
    v39 = 2048;
    v40 = length;
    v41 = 2048;
    v42 = a5;
    v43 = 2048;
    v44 = a6;
    _os_log_debug_impl(&dword_24A929000, v15, OS_LOG_TYPE_DEBUG, "%s:start:theFile:%@:theRangeLocation:%lu:theRangeLength:%lu:flags:%lu:operationID:%llu", buf, 0x3Eu);
  }

  v16 = self->_ourVolume;
  if ([(FSModuleVolume *)v16 supportsKOIOOps])
  {
    v17 = [(FSModuleVolume *)v16 volume];
    v18 = [(FSModuleVolume *)v16 getItemForFH:v13];
    v19 = v18;
    if (v18)
    {
      if ([v18 type] == 1)
      {
        v28 = v17;
        v20 = [[FSExtentPacker alloc] initWithBlockmapFlags:a5];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __71__FSVolumeConnector_blockmapFile_range_flags_operationID_replyHandler___block_invoke;
        v29[3] = &unk_278FED870;
        v31 = self;
        v32 = v14;
        v30 = v20;
        v21 = v20;
        [v28 blockmapFile:v19 offset:location length:length flags:a5 operationID:a6 packer:v21 replyHandler:v29];

        v17 = v28;
      }

      else
      {
        if ([v19 type] == 2)
        {
          v24 = 21;
        }

        else
        {
          v24 = 22;
        }

        v25 = fskit_std_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = [v19 type];
          *buf = 136315650;
          v34 = "[FSVolumeConnector blockmapFile:range:flags:operationID:replyHandler:]";
          v35 = 2048;
          v36 = v26;
          v37 = 1024;
          LODWORD(v38) = v24;
          _os_log_impl(&dword_24A929000, v25, OS_LOG_TYPE_INFO, "%s: Given item is not a file (type = %lu). Error = %d.", buf, 0x1Cu);
        }

        (*(v14 + 2))(v14, v24, 0, 0);
      }
    }

    else
    {
      v23 = fskit_std_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector blockmapFile:range:flags:operationID:replyHandler:];
      }

      (*(v14 + 2))(v14, 70, 0, 0);
    }
  }

  else
  {
    v22 = fskit_std_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector blockmapFile:range:flags:operationID:replyHandler:];
    }

    (*(v14 + 2))(v14, 45, 0, 0);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __71__FSVolumeConnector_blockmapFile_range_flags_operationID_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 fs_posixCode];
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __71__FSVolumeConnector_blockmapFile_range_flags_operationID_replyHandler___block_invoke_cold_1();
    }

    v4 = *(*(a1 + 48) + 16);
LABEL_5:
    v4();
    return;
  }

  if ([*(a1 + 32) extentsPacked] < 1)
  {
    v9 = fskit_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __71__FSVolumeConnector_blockmapFile_range_flags_operationID_replyHandler___block_invoke_cold_2();
    }

    v4 = *(*(a1 + 48) + 16);
    goto LABEL_5;
  }

  v5 = [*(a1 + 32) extentDataByExtentsPacked];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__FSVolumeConnector_blockmapFile_range_flags_operationID_replyHandler___block_invoke_298;
  v10[3] = &unk_278FED848;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v11 = v5;
  v12 = v7;
  v8 = v5;
  [v6 getFreeSpaceInVolumeWithReplyHandler:v10];
}

- (void)checkAccessTo:(id)a3 requestedAccess:(unint64_t)a4 requestID:(unint64_t)a5 replyHandler:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = fskit_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v22 = "[FSVolumeConnector checkAccessTo:requestedAccess:requestID:replyHandler:]";
    v23 = 2112;
    v24 = v10;
    v25 = 2048;
    v26 = a4;
    v27 = 2048;
    v28 = a5;
    _os_log_debug_impl(&dword_24A929000, v12, OS_LOG_TYPE_DEBUG, "%s:start:theItem:%@:access:%ld:reqID:%llu", buf, 0x2Au);
  }

  v13 = self->_ourVolume;
  if ([(FSModuleVolume *)v13 supportsAccessOps])
  {
    v14 = [(FSModuleVolume *)v13 volume];
    v15 = [(FSModuleVolume *)v13 getItemForFH:v10];
    if (v15)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __74__FSVolumeConnector_checkAccessTo_requestedAccess_requestID_replyHandler___block_invoke;
      v19[3] = &unk_278FECE48;
      v20 = v11;
      [v14 checkAccessToItem:v15 requestedAccess:a4 replyHandler:v19];
    }

    else
    {
      v17 = fskit_std_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector checkAccessTo:requestedAccess:requestID:replyHandler:];
      }

      (*(v11 + 2))(v11, 70);
    }
  }

  else
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector checkAccessTo:requestedAccess:requestID:replyHandler:];
    }

    (*(v11 + 2))(v11, 45);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __74__FSVolumeConnector_checkAccessTo_requestedAccess_requestID_replyHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    [a3 fs_posixCode];
    v4 = fskit_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __74__FSVolumeConnector_checkAccessTo_requestedAccess_requestID_replyHandler___block_invoke_cold_1();
    }

    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);

    return v6();
  }
}

- (void)endIO:(id)a3 range:(_NSRange)a4 status:(int)a5 flags:(unint64_t)a6 operationID:(unint64_t)a7 replyHandler:(id)a8
{
  length = a4.length;
  location = a4.location;
  v46 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a8;
  v16 = fskit_std_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316674;
    v33 = "[FSVolumeConnector endIO:range:status:flags:operationID:replyHandler:]";
    v34 = 2112;
    v35 = v14;
    v36 = 2048;
    v37 = location;
    v38 = 2048;
    v39 = length;
    v40 = 1024;
    v41 = a5;
    v42 = 2048;
    v43 = a6;
    v44 = 2048;
    v45 = a7;
    _os_log_debug_impl(&dword_24A929000, v16, OS_LOG_TYPE_DEBUG, "%s:start:theFile:%@:originalRangeLocation:%lu:originalRangeLength:%lu:ioStatus:%d:flags:%lu:operationID:%llu", buf, 0x44u);
  }

  v17 = self->_ourVolume;
  if ([(FSModuleVolume *)v17 supportsKOIOOps])
  {
    v28 = [(FSModuleVolume *)v17 volume];
    v18 = [(FSModuleVolume *)v17 getItemForFH:v14];
    v19 = v18;
    if (v18)
    {
      if ([v18 type] == 1)
      {
        if (a5)
        {
          v27 = fs_errorForPOSIXError(a5);
        }

        else
        {
          v27 = 0;
        }

        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __71__FSVolumeConnector_endIO_range_status_flags_operationID_replyHandler___block_invoke;
        v29[3] = &unk_278FED870;
        v31 = v15;
        v29[4] = self;
        v30 = v19;
        v25 = v28;
        [v28 completeIOForFile:v30 offset:location length:length status:v27 flags:a6 operationID:a7 replyHandler:v29];
        if (a5)
        {
        }

        goto LABEL_25;
      }

      if ([v19 type] == 2)
      {
        v22 = 21;
      }

      else
      {
        v22 = 22;
      }

      v23 = fskit_std_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [v19 type];
        *buf = 136315650;
        v33 = "[FSVolumeConnector endIO:range:status:flags:operationID:replyHandler:]";
        v34 = 2048;
        v35 = v24;
        v36 = 1024;
        LODWORD(v37) = v22;
        _os_log_impl(&dword_24A929000, v23, OS_LOG_TYPE_INFO, "%s: Given item is not a file (type = %lu). Error = %d.", buf, 0x1Cu);
      }

      (*(v15 + 2))(v15, v22, 0);
    }

    else
    {
      v21 = fskit_std_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector endIO:range:status:flags:operationID:replyHandler:];
      }

      (*(v15 + 2))(v15, 70, 0);
    }

    v25 = v28;
LABEL_25:

    goto LABEL_26;
  }

  v20 = fskit_std_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [FSVolumeConnector endIO:range:status:flags:operationID:replyHandler:];
  }

  (*(v15 + 2))(v15, 45, 0);
LABEL_26:

  v26 = *MEMORY[0x277D85DE8];
}

void __71__FSVolumeConnector_endIO_range_status_flags_operationID_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 fs_posixCode];
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __71__FSVolumeConnector_endIO_range_status_flags_operationID_replyHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(v5 + 48);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __71__FSVolumeConnector_endIO_range_status_flags_operationID_replyHandler___block_invoke_301;
    v7[3] = &unk_278FED690;
    v7[4] = v5;
    v8 = v4;
    v9 = *(a1 + 48);
    [v6 enqueue:v7];
  }
}

void __71__FSVolumeConnector_endIO_range_status_flags_operationID_replyHandler___block_invoke_301(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__FSVolumeConnector_endIO_range_status_flags_operationID_replyHandler___block_invoke_2;
  v3[3] = &unk_278FED898;
  v4 = *(a1 + 48);
  [v1 getIOItemAttributesSubsetData:v2 replyHandler:v3];
}

- (void)otherAttributeOf:(id)a3 named:(id)a4 requestID:(unint64_t)a5 replyHandler:(id)a6
{
  v116[3] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = self->_ourVolume;
  v13 = [a4 string];
  v14 = fskit_std_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "[FSVolumeConnector otherAttributeOf:named:requestID:replyHandler:]";
    *&buf[12] = 2112;
    *&buf[14] = v10;
    *&buf[22] = 2112;
    *&buf[24] = v13;
    LOWORD(v116[0]) = 2048;
    *(v116 + 2) = a5;
    _os_log_debug_impl(&dword_24A929000, v14, OS_LOG_TYPE_DEBUG, "%s:start:theItem:%@:name:%@:reqID:%llu", buf, 0x2Au);
  }

  if (![v13 isEqual:@"_S_f_location"])
  {
    if ([v13 isEqualToString:@"_N_mntflags"])
    {
      if ([(FSModuleVolume *)v12 reportAsLocal])
      {
        v22 = 0x10000000;
      }

      else
      {
        v22 = 0;
      }

      if (![(FSModuleVolume *)v12 supportsOpenCloseOps])
      {
        v22 |= 2uLL;
      }

      if ([(FSModuleVolume *)v12 supportsKOIOOps])
      {
        v22 |= 0x40000000uLL;
      }

      if ([(FSModuleVolume *)v12 supportsOpenUnlink])
      {
        v23 = v22 | 0x2000;
      }

      else
      {
        v23 = v22;
      }

      if ([(FSModuleVolume *)v12 supportsItemDeactivation])
      {
        v24 = [(FSModuleVolume *)v12 volume];
        if ([v24 itemDeactivationPolicy] == -1)
        {
          v23 |= 0x80000000uLL;
        }

        else
        {
          v25 = [v24 itemDeactivationPolicy];
          v23 |= ([v24 itemDeactivationPolicy] << 32) & 0x200000000 | ((v25 & 1) << 32);
        }
      }

      v42 = [(FSModuleVolume *)v12 useMetaDataIO];
      v43 = v23 | 0x400000000;
      if (!v42)
      {
        v43 = v23;
      }

      v44 = MEMORY[0x277CBEA90];
      v45 = v43 | 0x800000000;
      goto LABEL_52;
    }

    if ([v13 isEqual:@"_N_PC_LINK_MAX"])
    {
      v29 = MEMORY[0x277CBEA90];
      v30 = [(FSModuleVolume *)v12 volume];
      v31 = [v30 maximumLinkCount];
LABEL_29:
      v34 = v31;
LABEL_30:
      v35 = [v29 dataWithInteger:v34];
      goto LABEL_40;
    }

    if ([v13 isEqual:@"_N_PC_NAME_MAX"])
    {
      v29 = MEMORY[0x277CBEA90];
      v30 = [(FSModuleVolume *)v12 volume];
      v31 = [v30 maximumNameLength];
      goto LABEL_29;
    }

    if ([v13 isEqual:@"_B_PC_NO_TRUNC"])
    {
      v29 = MEMORY[0x277CBEA90];
      v30 = [(FSModuleVolume *)v12 volume];
      v34 = [v30 truncatesLongNames] ^ 1;
      goto LABEL_30;
    }

    if ([v13 isEqual:@"_N_PC_FILESIZEBITS"])
    {
      v48 = [(FSModuleVolume *)self->_ourVolume getMaxFileSizeInBits];
LABEL_59:
      if (!v48)
      {
        v11[2](v11, 45);
        goto LABEL_144;
      }

      v47 = [MEMORY[0x277CBEA90] dataWithInteger:v48];
      (v11[2])(v11, 0, v47);
      goto LABEL_54;
    }

    if ([v13 isEqual:@"_N_PC_XATTR_SIZE_BITS"])
    {
      v48 = [(FSModuleVolume *)self->_ourVolume getMaxXattrSizeInBits];
      goto LABEL_59;
    }

    if (([v13 isEqualToString:@"_N_f_bsize"] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"_N_f_iosize") & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"_N_f_blocks") & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"_N_f_bavail") & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"_N_f_bfree") & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"_N_f_bused") & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"_N_f_subtype") & 1) != 0 || objc_msgSend(v13, "isEqualToString:", @"_S_f_type"))
    {
      v49 = [(FSModuleVolume *)v12 volume];
      v47 = [v49 volumeStatistics];

      if (!v47)
      {
        v52 = fskit_std_log();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          [FSVolumeConnector otherAttributeOf:v12 named:? requestID:? replyHandler:?];
        }

        (v11[2])(v11, 45, 0);
        goto LABEL_54;
      }

      if ([v13 isEqualToString:@"_N_f_bsize"])
      {
        v50 = MEMORY[0x277CBEA90];
        v51 = [v47 blockSize];
LABEL_88:
        v53 = [v50 dataWithInteger:v51];
        (v11[2])(v11, 0, v53);
LABEL_89:

        goto LABEL_54;
      }

      if ([v13 isEqualToString:@"_N_f_iosize"])
      {
        v50 = MEMORY[0x277CBEA90];
        v51 = [v47 ioSize];
        goto LABEL_88;
      }

      if ([v13 isEqualToString:@"_N_f_blocks"])
      {
        v50 = MEMORY[0x277CBEA90];
        v51 = [v47 totalBlocks];
        goto LABEL_88;
      }

      if ([v13 isEqualToString:@"_N_f_bavail"])
      {
        v50 = MEMORY[0x277CBEA90];
        v51 = [v47 availableBlocks];
        goto LABEL_88;
      }

      if ([v13 isEqualToString:@"_N_f_bfree"])
      {
        v50 = MEMORY[0x277CBEA90];
        v51 = [v47 freeBlocks];
        goto LABEL_88;
      }

      if ([v13 isEqualToString:@"_N_f_bused"])
      {
        v50 = MEMORY[0x277CBEA90];
        v51 = [v47 usedBlocks];
        goto LABEL_88;
      }

      if ([v13 isEqualToString:@"_N_f_subtype"])
      {
        v50 = MEMORY[0x277CBEA90];
        v51 = [v47 fileSystemSubType];
        goto LABEL_88;
      }

      if (![v13 isEqualToString:@"_S_f_type"])
      {
        goto LABEL_54;
      }

      v53 = [v47 fileSystemTypeName];
      v54 = [v53 dataUsingEncoding:4];
      goto LABEL_92;
    }

    if (([v13 isEqualToString:@"_B_has_perm_enforcement"] & 1) != 0 || objc_msgSend(v13, "isEqualToString:", @"_B_has_access_check"))
    {
      *buf = 0;
      v56 = MEMORY[0x277CBEA90];
      v57 = 8;
    }

    else
    {
      if (![v13 isEqualToString:@"_O_vol_attributes_attr"])
      {
        if ([v13 isEqualToString:@"_N_caps_format"])
        {
          v58 = [(FSModuleVolume *)v12 volume];
          v59 = [v58 supportedVolumeCapabilities];
          v60 = [v59 capabilities];

          v44 = MEMORY[0x277CBEA90];
          v45 = v60;
LABEL_52:
          v46 = [v44 dataWithInteger:v45];
LABEL_53:
          v47 = v46;
          (v11[2])(v11, 0, v46);
LABEL_54:

          goto LABEL_144;
        }

        if ([v13 isEqualToString:@"_N_caps_interfaces"])
        {
          if ([(FSModuleVolume *)v12 supportsVolumeRenameOps])
          {
            v61 = 128;
          }

          else
          {
            v61 = 0;
          }

          if ([(FSModuleVolume *)v12 supportsPreallocateOps])
          {
            v61 |= 0x40uLL;
          }

          if ([(FSModuleVolume *)v12 supportsXattrOps]&& ![(FSModuleVolume *)v12 supportsLimitedXattrOps])
          {
            v61 |= 0x4000uLL;
          }

          v44 = MEMORY[0x277CBEA90];
          v45 = v61;
          goto LABEL_52;
        }

        if ([v13 isEqualToString:@"_S_f_vol_name"])
        {
          v62 = [(FSModuleVolume *)v12 volume];
          v63 = [v62 name];

          if (v63)
          {
            v47 = [(FSModuleVolume *)v12 volume];
            v53 = [v47 name];
            v55 = [v53 string];
            v64 = [v55 dataUsingEncoding:4];
            (v11[2])(v11, 0, v64);

            goto LABEL_93;
          }
        }

        if (![v13 isEqualToString:@"_O_f_uuid"] || (-[FSModuleVolume volume](v12, "volume"), v65 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v65, "volumeID"), v66 = objc_claimAutoreleasedReturnValue(), v66, v65, !v66))
        {
          if ([v13 isEqualToString:@"_N_supported_xattr_namessize"])
          {
            if (![(FSModuleVolume *)v12 supportsLimitedXattrOps])
            {
              goto LABEL_143;
            }

            obj = [(FSModuleVolume *)v12 volume];
            v96 = [(FSModuleVolume *)v12 getItemForFH:v10];
            if (v96)
            {
              v67 = [obj supportedXattrNamesForItem:v96];
              v68 = v67;
              if (v67)
              {
                v110 = 0u;
                v111 = 0u;
                v108 = 0u;
                v109 = 0u;
                v69 = [v67 countByEnumeratingWithState:&v108 objects:v114 count:16];
                if (v69)
                {
                  v70 = v69;
                  v71 = 0;
                  v72 = *v109;
                  do
                  {
                    for (i = 0; i != v70; ++i)
                    {
                      if (*v109 != v72)
                      {
                        objc_enumerationMutation(v68);
                      }

                      v74 = [*(*(&v108 + 1) + 8 * i) string];
                      v71 += [v74 lengthOfBytesUsingEncoding:4] + 1;
                    }

                    v70 = [v68 countByEnumeratingWithState:&v108 objects:v114 count:16];
                  }

                  while (v70);
                }

                else
                {
                  v71 = 0;
                }

                v85 = [MEMORY[0x277CBEA90] dataWithInteger:v71];
                (v11[2])(v11, 0, v85);
              }

              else
              {
                (v11[2])(v11, 45, 0);
              }
            }

            else
            {
              v83 = fskit_std_log();
              if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
              {
                [FSVolumeConnector otherAttributeOf:named:requestID:replyHandler:];
              }

              (v11[2])(v11, 70, 0);
            }

            v86 = obj;
          }

          else
          {
            if (![v13 isEqualToString:@"_O_supported_xattr_names"] || !-[FSModuleVolume supportsLimitedXattrOps](v12, "supportsLimitedXattrOps"))
            {
              goto LABEL_143;
            }

            v97 = [(FSModuleVolume *)v12 volume];
            v95 = [(FSModuleVolume *)v12 getItemForFH:v10];
            if (v95)
            {
              v94 = [v97 supportedXattrNamesForItem:v95];
              if (v94 && [v94 count])
              {
                v106 = 0u;
                v107 = 0u;
                v104 = 0u;
                v105 = 0u;
                v75 = v94;
                v76 = [v75 countByEnumeratingWithState:&v104 objects:v113 count:16];
                if (v76)
                {
                  v77 = v76;
                  v78 = 0;
                  v79 = *v105;
                  do
                  {
                    for (j = 0; j != v77; ++j)
                    {
                      if (*v105 != v79)
                      {
                        objc_enumerationMutation(v75);
                      }

                      v81 = [*(*(&v104 + 1) + 8 * j) string];
                      v78 += [v81 lengthOfBytesUsingEncoding:4] + 1;
                    }

                    v77 = [v75 countByEnumeratingWithState:&v104 objects:v113 count:16];
                  }

                  while (v77);
                }

                else
                {
                  v78 = 0;
                }

                v87 = [MEMORY[0x277CBEB28] dataWithCapacity:v78];
                v100 = 0u;
                v101 = 0u;
                v102 = 0u;
                v103 = 0u;
                obja = v75;
                v88 = [obja countByEnumeratingWithState:&v100 objects:v112 count:16];
                if (v88)
                {
                  v89 = v88;
                  v90 = *v101;
                  do
                  {
                    for (k = 0; k != v89; ++k)
                    {
                      if (*v101 != v90)
                      {
                        objc_enumerationMutation(obja);
                      }

                      v92 = [*(*(&v100 + 1) + 8 * k) string];
                      v93 = [v92 UTF8String];

                      [v87 appendBytes:v93 length:strlen(v93) + 1];
                    }

                    v89 = [obja countByEnumeratingWithState:&v100 objects:v112 count:16];
                  }

                  while (v89);
                }

                (v11[2])(v11, 0, v87);
              }

              else
              {
                (v11[2])(v11, 45, 0);
              }
            }

            else
            {
              v84 = fskit_std_log();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
              {
                [FSVolumeConnector otherAttributeOf:named:requestID:replyHandler:];
              }

              (v11[2])(v11, 70, 0);
            }

            v86 = v97;
          }

          goto LABEL_144;
        }

        v47 = [(FSModuleVolume *)v12 volume];
        v53 = [v47 volumeID];
        v54 = [v53 uuidData];
LABEL_92:
        v55 = v54;
        (v11[2])(v11, 0, v54);
LABEL_93:

        goto LABEL_89;
      }

      *buf = xmmword_24A971008;
      *&buf[16] = unk_24A971018;
      v116[0] = 1574;
      v56 = MEMORY[0x277CBEA90];
      v57 = 40;
    }

    v46 = [v56 dataWithBytes:buf length:v57];
    goto LABEL_53;
  }

  v15 = [(FSModuleVolume *)self->_ourVolume resource];
  v16 = [v15 kind];

  if (v16 == 1)
  {
    v17 = [(FSModuleVolume *)self->_ourVolume resource];
    v18 = [(FSResource *)FSBlockDeviceResource dynamicCast:v17];

    if (v18)
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = [v18 BSDName];
      v21 = [v19 stringWithFormat:@"/dev/%@", v20];
LABEL_35:
      v30 = v21;

      goto LABEL_37;
    }
  }

  else
  {
    v26 = [(FSModuleVolume *)self->_ourVolume resource];
    v27 = [v26 kind];

    if (v27 == 2)
    {
      v28 = FSGenericURLResource;
    }

    else
    {
      v32 = [(FSModuleVolume *)self->_ourVolume resource];
      v33 = [v32 kind];

      if (v33 == 4)
      {
        v28 = FSPathURLResource;
      }

      else
      {
        v36 = [(FSModuleVolume *)self->_ourVolume resource];
        v37 = [v36 kind];

        if (v37 != 3)
        {
LABEL_143:
          (v11[2])(v11, 45, 0);
          goto LABEL_144;
        }

        v28 = FSServerURLResource;
      }
    }

    v38 = [(FSModuleVolume *)self->_ourVolume resource];
    v18 = [(__objc2_class *)v28 dynamicCast:v38];

    if (v18)
    {
      v20 = [v18 url];
      v21 = [v20 description];
      goto LABEL_35;
    }
  }

  v30 = 0;
LABEL_37:

  if (!v30)
  {
    goto LABEL_143;
  }

  v39 = [v30 UTF8String];
  if (!v39)
  {
    v41 = fskit_std_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector otherAttributeOf:named:requestID:replyHandler:];
    }

    (v11[2])(v11, 22, 0);
    goto LABEL_44;
  }

  v35 = [MEMORY[0x277CBEA90] dataWithBytes:v39 length:strlen(v39) + 1];
LABEL_40:
  v40 = v35;
  (v11[2])(v11, 0, v35);

LABEL_44:
LABEL_144:

  v82 = *MEMORY[0x277D85DE8];
}

- (void)setOtherAttributeOf:(id)a3 named:(id)a4 value:(id)a5 requestID:(unint64_t)a6 replyHandler:(id)a7
{
  v55 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [v13 string];
  v17 = fskit_std_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    *&buf[4] = "[FSVolumeConnector setOtherAttributeOf:named:value:requestID:replyHandler:]";
    *&buf[12] = 2112;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    v53 = v16;
    *v54 = 2112;
    *&v54[2] = v14;
    *&v54[10] = 2048;
    *&v54[12] = a6;
    _os_log_debug_impl(&dword_24A929000, v17, OS_LOG_TYPE_DEBUG, "%s:start:theItem:%@:name:%@:value:%@:reqID:%llu", buf, 0x34u);
  }

  v18 = self->_ourVolume;
  v19 = [(FSModuleVolume *)v18 getItemForFH:v12];
  if (v19)
  {
    if (!v16)
    {
      goto LABEL_14;
    }

    if ([v16 isEqual:@"_N_SYNC"])
    {
      v20 = v14;
      v21 = *[v14 bytes];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __76__FSVolumeConnector_setOtherAttributeOf_named_value_requestID_replyHandler___block_invoke;
      v50[3] = &unk_278FECE20;
      v51 = v15;
      [(FSVolumeConnector *)self synchronize:v21 replyHandler:v50];

      goto LABEL_22;
    }

    if ([v16 isEqual:@"_O_f_preallocate"] && -[FSModuleVolume supportsPreallocateOps](v18, "supportsPreallocateOps"))
    {
      if ([v14 length] <= 0xE7)
      {
LABEL_14:
        (*(v15 + 2))(v15, 22, 0, 0, 0);
        goto LABEL_22;
      }

      v27 = v14;
      v39 = [v14 bytes];
      if ((v39[2] & 0x20) == 0)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v53 = __Block_byref_object_copy__4;
        *v54 = __Block_byref_object_dispose__4;
        *&v54[8] = 0;
        v28 = [MEMORY[0x277CBEB28] dataWithData:v14];
        v29 = v28;
        v30 = [v28 mutableBytes];
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __76__FSVolumeConnector_setOtherAttributeOf_named_value_requestID_replyHandler___block_invoke_2;
        aBlock[3] = &unk_278FED938;
        v48 = buf;
        v49 = v30;
        v47 = v15;
        aBlock[4] = self;
        v31 = v19;
        v45 = v31;
        v37 = v28;
        v46 = v37;
        v38 = _Block_copy(aBlock);
        if ([(FSModuleVolume *)v18 supportsKOIOOps]&& ([(FSModuleVolume *)v18 volume], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_opt_respondsToSelector(), v32, (v33 & 1) != 0))
        {
          v34 = [[FSExtentPacker alloc] initWithExtentCount:8];
          v35 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v34;

          v36 = [(FSModuleVolume *)v18 volume];
          [v36 preallocateSpaceForFile:v31 atOffset:*v39 length:v39[1] flags:*(v39 + 4) packer:*(*&buf[8] + 40) replyHandler:v38];
        }

        else
        {
          v36 = [(FSModuleVolume *)v18 volume];
          [v36 preallocateSpaceForItem:v31 atOffset:*v39 length:v39[1] flags:*(v39 + 4) replyHandler:v38];
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_22;
      }
    }

    else
    {
      if ([v16 isEqual:@"_S_f_vol_name"] && -[FSModuleVolume supportsVolumeRenameOps](v18, "supportsVolumeRenameOps"))
      {
        v23 = [(FSModuleVolume *)v18 volume];
        v24 = [FSFileName nameWithData:v14];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __76__FSVolumeConnector_setOtherAttributeOf_named_value_requestID_replyHandler___block_invoke_6;
        v42[3] = &unk_278FED960;
        v42[4] = self;
        v43 = v15;
        [v23 setVolumeName:v24 replyHandler:v42];

        goto LABEL_22;
      }

      if ([v16 isEqualToString:@"_N_INACTIVE"] && -[FSModuleVolume supportsItemDeactivation](v18, "supportsItemDeactivation"))
      {
        v25 = [(FSModuleVolume *)v18 volume];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __76__FSVolumeConnector_setOtherAttributeOf_named_value_requestID_replyHandler___block_invoke_394;
        v40[3] = &unk_278FECE20;
        v41 = v15;
        [v25 deactivateItem:v19 replyHandler:v40];

        goto LABEL_22;
      }
    }

    (*(v15 + 2))(v15, 45, 0, 0, 0);
    goto LABEL_22;
  }

  v22 = fskit_std_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [FSVolumeConnector setOtherAttributeOf:named:value:requestID:replyHandler:];
  }

  (*(v15 + 2))(v15, 70, 0, 0, 0);
LABEL_22:

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __76__FSVolumeConnector_setOtherAttributeOf_named_value_requestID_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    a2 = [a2 fs_posixCode];
  }

  v3 = *(v2 + 16);

  return v3(v2, a2, 0, 0, 0);
}

void __76__FSVolumeConnector_setOtherAttributeOf_named_value_requestID_replyHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 fs_posixCode])
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    *(*(a1 + 72) + 24) = a2;
    v7 = *(*(*(a1 + 64) + 8) + 40);
    if (v7 && [v7 extentsPacked] >= 1)
    {
      v8 = *(a1 + 72);
      v9 = [*(*(*(a1 + 64) + 8) + 40) extentData];
      v10 = [v9 bytes];
      v11 = v10[3];
      v13 = *v10;
      v12 = v10[1];
      v8[4] = v10[2];
      v8[5] = v11;
      v8[2] = v13;
      v8[3] = v12;
      v14 = v10[7];
      v16 = v10[4];
      v15 = v10[5];
      v8[8] = v10[6];
      v8[9] = v14;
      v8[6] = v16;
      v8[7] = v15;
      v17 = v10[11];
      v19 = v10[8];
      v18 = v10[9];
      v8[12] = v10[10];
      v8[13] = v17;
      v8[10] = v19;
      v8[11] = v18;

      *(*(a1 + 72) + 224) = [*(*(*(a1 + 64) + 8) + 40) extentsPacked];
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __76__FSVolumeConnector_setOtherAttributeOf_named_value_requestID_replyHandler___block_invoke_3;
    v25[3] = &unk_278FED910;
    v24 = *(a1 + 32);
    v20 = *(v24 + 48);
    v21 = *(&v24 + 1);
    v22 = *(a1 + 56);
    *&v23 = *(a1 + 48);
    *(&v23 + 1) = v22;
    v26 = v24;
    v27 = v23;
    [v20 enqueue:v25];
  }
}

void __76__FSVolumeConnector_setOtherAttributeOf_named_value_requestID_replyHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__FSVolumeConnector_setOtherAttributeOf_named_value_requestID_replyHandler___block_invoke_4;
  v4[3] = &unk_278FED8E8;
  v4[4] = v2;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 getIOItemAttributesSubsetData:v3 replyHandler:v4];
}

void __76__FSVolumeConnector_setOtherAttributeOf_named_value_requestID_replyHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__FSVolumeConnector_setOtherAttributeOf_named_value_requestID_replyHandler___block_invoke_5;
  v6[3] = &unk_278FED8C0;
  v9 = *(a1 + 48);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 getFreeSpaceInVolumeWithReplyHandler:v6];
}

void __76__FSVolumeConnector_setOtherAttributeOf_named_value_requestID_replyHandler___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), [v6 fs_posixCode], 0, 0, 0);
  }

  else if (v5)
  {
    v8 = [*(a1 + 32) ourVolume];
    v9 = [v8 volume];
    [v9 setName:v5];

    v10 = *(a1 + 40);
    v11 = [v5 data];
    (*(v10 + 16))(v10, 0, v11, 0, 0);
  }

  else
  {
    v12 = fskit_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __76__FSVolumeConnector_setOtherAttributeOf_named_value_requestID_replyHandler___block_invoke_6_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), 43, 0, 0, 0);
  }
}

uint64_t __76__FSVolumeConnector_setOtherAttributeOf_named_value_requestID_replyHandler___block_invoke_394(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    a2 = [a2 fs_posixCode];
  }

  v3 = *(v2 + 16);

  return v3(v2, a2, 0, 0, 0);
}

- (void)volumeStatistics:(id)a3 requestID:(unint64_t)a4 replyHandler:(id)a5
{
  v6 = a5;
  ourVolume = self->_ourVolume;
  p_ourVolume = &self->_ourVolume;
  v9 = [(FSModuleVolume *)ourVolume volume];
  v10 = [v9 volumeStatistics];

  if (v10)
  {
    v6[2](v6, 0, v10);
  }

  else
  {
    v11 = fskit_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector volumeStatistics:? requestID:? replyHandler:?];
    }

    v6[2](v6, 45, 0);
  }
}

- (void)createIn:(id)a3 named:(id)a4 type:(int64_t)a5 attributes:(id)a6 requestID:(unint64_t)a7 replyHandler:(id)a8
{
  v40 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a8;
  v18 = fskit_std_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v33 = "[FSVolumeConnector createIn:named:type:attributes:requestID:replyHandler:]";
    v34 = 2112;
    v35 = v14;
    v36 = 2112;
    v37 = v15;
    v38 = 2048;
    v39 = a7;
    _os_log_debug_impl(&dword_24A929000, v18, OS_LOG_TYPE_DEBUG, "%s:start:theDirectory:%@:named:%@:reqID:%llu", buf, 0x2Au);
  }

  v19 = self->_ourVolume;
  v20 = [(FSModuleVolume *)v19 getItemForFH:v14];
  v21 = v20;
  if (v20)
  {
    if ([v20 type] == 2)
    {
      v22 = [(FSItemAttributes *)FSItemSetAttributesRequest requestWithData:v16];
      v23 = [(FSModuleVolume *)v19 volume];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __75__FSVolumeConnector_createIn_named_type_attributes_requestID_replyHandler___block_invoke;
      v28[3] = &unk_278FEDA00;
      v31 = v17;
      v28[4] = self;
      v29 = v21;
      v30 = v19;
      [v23 createItemNamed:v15 type:a5 inDirectory:v29 attributes:v22 replyHandler:v28];
    }

    else
    {
      v25 = fskit_std_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [v21 type];
        *buf = 136315650;
        v33 = "[FSVolumeConnector createIn:named:type:attributes:requestID:replyHandler:]";
        v34 = 2048;
        v35 = v26;
        v36 = 1024;
        LODWORD(v37) = 20;
        _os_log_impl(&dword_24A929000, v25, OS_LOG_TYPE_INFO, "%s: Given parent item is not a directory (type = %lu). Error = %d.", buf, 0x1Cu);
      }

      (*(v17 + 2))(v17, 20, 0, 0, 0, 0);
    }
  }

  else
  {
    v24 = fskit_std_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector createIn:named:type:attributes:requestID:replyHandler:];
    }

    (*(v17 + 2))(v17, 70, 0, 0, 0, 0);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __75__FSVolumeConnector_createIn_named_type_attributes_requestID_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 fs_posixCode];
    if (v11)
    {
      if (v11 == 17)
      {
        v12 = fskit_std_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __75__FSVolumeConnector_createIn_named_type_attributes_requestID_replyHandler___block_invoke_cold_1(v10);
        }
      }

      else
      {
        v12 = fskit_std_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v16 = [v10 description];
          *buf = 136315394;
          v24 = "[FSVolumeConnector createIn:named:type:attributes:requestID:replyHandler:]_block_invoke";
          v25 = 2112;
          v26 = v16;
          _os_log_impl(&dword_24A929000, v12, OS_LOG_TYPE_INFO, "%s:error:%@", buf, 0x16u);
        }
      }

      v15 = *(*(a1 + 56) + 16);
LABEL_14:
      v15();
      goto LABEL_15;
    }
  }

  if (!v7)
  {
    v14 = fskit_std_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      __75__FSVolumeConnector_createIn_named_type_attributes_requestID_replyHandler___block_invoke_cold_2();
    }

    v15 = *(*(a1 + 56) + 16);
    goto LABEL_14;
  }

  v13 = *(a1 + 32);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__FSVolumeConnector_createIn_named_type_attributes_requestID_replyHandler___block_invoke_396;
  v18[3] = &unk_278FED9B0;
  v18[4] = v13;
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = v7;
  v22 = *(a1 + 56);
  [v13 getStandardItemAttributesDataForNewItem:v21 replyHandler:v18];

LABEL_15:
  v17 = *MEMORY[0x277D85DE8];
}

void __75__FSVolumeConnector_createIn_named_type_attributes_requestID_replyHandler___block_invoke_396(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__FSVolumeConnector_createIn_named_type_attributes_requestID_replyHandler___block_invoke_2;
  v11[3] = &unk_278FED9D8;
  v10 = *(a1 + 32);
  v4 = *(v10 + 48);
  v5 = *(&v10 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  v14 = v3;
  v15 = *(a1 + 64);
  v9 = v3;
  [v4 enqueue:v11];
}

void __75__FSVolumeConnector_createIn_named_type_attributes_requestID_replyHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__FSVolumeConnector_createIn_named_type_attributes_requestID_replyHandler___block_invoke_3;
  v6[3] = &unk_278FED9B0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 72);
  [v2 getStandardItemAttributesDataForItem:v3 replyHandler:v6];
}

void __75__FSVolumeConnector_createIn_named_type_attributes_requestID_replyHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertIntoFHCache:*(a1 + 40)];
  if ([*(a1 + 32) spotlightIsEnabled] && *(a1 + 48))
  {
    v4 = fskit_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __75__FSVolumeConnector_createIn_named_type_attributes_requestID_replyHandler___block_invoke_3_cold_1();
    }
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__FSVolumeConnector_createIn_named_type_attributes_requestID_replyHandler___block_invoke_397;
  v7[3] = &unk_278FED988;
  v5 = *(a1 + 56);
  v11 = *(a1 + 64);
  v8 = v3;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v6 = v3;
  [v5 getFreeSpaceInVolumeWithReplyHandler:v7];
}

void __75__FSVolumeConnector_createIn_named_type_attributes_requestID_replyHandler___block_invoke_397(void *a1, void *a2)
{
  v3 = a1[7];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2;
  v7 = [v5 fileHandle];
  (*(v3 + 16))(v3, 0, v4, v7, a1[6], v6);
}

- (void)lookupIn:(id)a3 name:(id)a4 flags:(unsigned int)a5 requestID:(unint64_t)a6 replyHandler:(id)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = self->_ourVolume;
  v15 = [(FSModuleVolume *)v14 getItemForFH:v11];
  v16 = v15;
  if (v15)
  {
    if ([v15 type] == 2)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v35 = __Block_byref_object_copy__4;
      v36 = __Block_byref_object_dispose__4;
      v37 = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __64__FSVolumeConnector_lookupIn_name_flags_requestID_replyHandler___block_invoke;
      aBlock[3] = &unk_278FEDB18;
      v31 = v13;
      aBlock[4] = self;
      v17 = v14;
      v28 = v17;
      v32 = buf;
      v33 = a5;
      v18 = v12;
      v29 = v18;
      v19 = v16;
      v30 = v19;
      v20 = _Block_copy(aBlock);
      if ((a5 & 0x10000000) != 0 && [(FSModuleVolume *)v17 supportsKOIOOps])
      {
        v21 = [[FSExtentPacker alloc] initWithExtentCount:2];
        v22 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v21;

        v23 = [(FSModuleVolume *)v17 volume];
        [v23 lookupItemNamed:v18 inDirectory:v19 packer:*(*&buf[8] + 40) replyHandler:v20];
      }

      else
      {
        v23 = [(FSModuleVolume *)v17 volume];
        [v23 lookupItemNamed:v18 inDirectory:v19 replyHandler:v20];
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v25 = fskit_std_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        *&buf[4] = "[FSVolumeConnector lookupIn:name:flags:requestID:replyHandler:]";
        *&buf[12] = 2048;
        *&buf[14] = [v16 type];
        *&buf[22] = 1024;
        LODWORD(v35) = 20;
        _os_log_impl(&dword_24A929000, v25, OS_LOG_TYPE_INFO, "%s: Given parent item is not a directory (type = %lu). Error = %d.", buf, 0x1Cu);
      }

      (*(v13 + 2))(v13, 20, 0xFFFFFFFFLL, 0, 0, 0, 0, 0, 0, 0);
    }
  }

  else
  {
    v24 = fskit_std_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector lookupIn:name:flags:requestID:replyHandler:];
    }

    (*(v13 + 2))(v13, 70, 0xFFFFFFFFLL, 0, 0, 0, 0, 0, 0, 0);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __64__FSVolumeConnector_lookupIn_name_flags_requestID_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    (*(*(a1 + 64) + 16))(*(a1 + 64), [v9 fs_posixCode], 0xFFFFFFFFLL, 0, 0, 0, 0, 0, 0, 0);
  }

  else if (v7)
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 48);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __64__FSVolumeConnector_lookupIn_name_flags_requestID_replyHandler___block_invoke_399;
    v20[3] = &unk_278FEDAF0;
    v20[4] = v11;
    v21 = v7;
    v13 = *(a1 + 40);
    v24 = *(a1 + 72);
    v25 = *(a1 + 80);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    *&v17 = v15;
    *(&v17 + 1) = v16;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v22 = v18;
    v23 = v17;
    [v12 enqueue:v20];
  }

  else
  {
    v19 = fskit_std_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      __64__FSVolumeConnector_lookupIn_name_flags_requestID_replyHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 64) + 16))(*(a1 + 64), 43, 0xFFFFFFFFLL, 0, 0, 0, 0, 0, 0, 0);
  }
}

void __64__FSVolumeConnector_lookupIn_name_flags_requestID_replyHandler___block_invoke_399(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__FSVolumeConnector_lookupIn_name_flags_requestID_replyHandler___block_invoke_2;
  v9[3] = &unk_278FEDAC8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  *&v7 = *(a1 + 56);
  *(&v7 + 1) = *v2;
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  [v3 getStandardItemAttributesDataForNewItem:v4 replyHandler:v9];
}

void __64__FSVolumeConnector_lookupIn_name_flags_requestID_replyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertIntoFHCache:*(a1 + 40)];
  v4 = *(*(*(a1 + 80) + 8) + 40);
  if (v4 && [v4 extentsPacked] >= 1)
  {
    v5 = [*(*(*(a1 + 80) + 8) + 40) extentDataByExtentsPacked];
  }

  else
  {
    v5 = 0;
  }

  if ((*(a1 + 91) & 0x20) != 0)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [*(a1 + 48) string];
    v10 = [v8 stringWithFormat:@"._%@", v9];

    v11 = *(*(a1 + 56) + 48);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__FSVolumeConnector_lookupIn_name_flags_requestID_replyHandler___block_invoke_3;
    v14[3] = &unk_278FEDAA0;
    v15 = *(a1 + 32);
    v16 = v10;
    v17 = *(a1 + 64);
    v22 = *(a1 + 72);
    v18 = *(a1 + 40);
    v19 = v3;
    v12 = v5;
    v13 = *(a1 + 56);
    v20 = v12;
    v21 = v13;
    v7 = v10;
    [v11 enqueue:v14];
  }

  else
  {
    v6 = *(a1 + 72);
    v7 = [*(a1 + 40) fileHandle];
    (*(v6 + 16))(v6, 0, 0xFFFFFFFFLL, v7, v3, 0, 0, 0, v5, 0);
  }
}

void __64__FSVolumeConnector_lookupIn_name_flags_requestID_replyHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) volume];
  v3 = [FSFileName nameWithString:*(a1 + 40)];
  v4 = *(a1 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__FSVolumeConnector_lookupIn_name_flags_requestID_replyHandler___block_invoke_4;
  v9[3] = &unk_278FEDA78;
  v13 = *(a1 + 88);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = *(a1 + 72);
  *(&v7 + 1) = *(a1 + 80);
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 32);
  [v2 lookupItemNamed:v3 inDirectory:v4 replyHandler:v9];
}

void __64__FSVolumeConnector_lookupIn_name_flags_requestID_replyHandler___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = *(a1 + 72);
    v12 = [v9 fs_posixCode];
    v13 = [*(a1 + 32) fileHandle];
    (*(v11 + 16))(v11, 0, v12, v13, *(a1 + 40), 0, 0, 0, *(a1 + 48), 0);
  }

  else if (v7)
  {
    v14 = *(a1 + 56);
    v15 = *(v14 + 48);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __64__FSVolumeConnector_lookupIn_name_flags_requestID_replyHandler___block_invoke_403;
    v19[3] = &unk_278FEDA50;
    v19[4] = v14;
    v20 = v7;
    v21 = *(a1 + 64);
    v25 = *(a1 + 72);
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v24 = *(a1 + 48);
    [v15 enqueue:v19];
  }

  else
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      __64__FSVolumeConnector_lookupIn_name_flags_requestID_replyHandler___block_invoke_4_cold_1();
    }

    v17 = *(a1 + 72);
    v18 = [*(a1 + 32) fileHandle];
    (*(v17 + 16))(v17, 0, 43, v18, *(a1 + 40), 0, 0, 0, *(a1 + 48), 0);
  }
}

void __64__FSVolumeConnector_lookupIn_name_flags_requestID_replyHandler___block_invoke_403(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__FSVolumeConnector_lookupIn_name_flags_requestID_replyHandler___block_invoke_2_404;
  v10[3] = &unk_278FEDA28;
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v14 = *(a1 + 80);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v11 = v9;
  v12 = v8;
  v13 = *(a1 + 72);
  [v2 getStandardItemAttributesDataForNewItem:v3 replyHandler:v10];
}

void __64__FSVolumeConnector_lookupIn_name_flags_requestID_replyHandler___block_invoke_2_404(uint64_t a1, void *a2)
{
  v8 = a2;
  [*(a1 + 32) insertIntoFHCache:*(a1 + 40)];
  v3 = *(a1 + 72);
  v4 = [*(a1 + 48) fileHandle];
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = [v6 fileHandle];
    (*(v3 + 16))(v3, 0, 0, v4, v5, v7, v8, 0, *(a1 + 64), 0);
  }

  else
  {
    (*(v3 + 16))(v3, 0, 0, v4, v5, 0, v8, 0, *(a1 + 64), 0);
  }
}

- (void)removeDirectory:(id)a3 from:(id)a4 named:(id)a5 usingFlags:(int)a6 requestID:(unint64_t)a7 replyHandler:(id)a8
{
  v44 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v18 = fskit_std_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v33 = "[FSVolumeConnector removeDirectory:from:named:usingFlags:requestID:replyHandler:]";
    v34 = 2112;
    v35 = v15;
    v36 = 2112;
    v37 = v14;
    v38 = 2112;
    v39 = v16;
    v40 = 1024;
    v41 = a6;
    v42 = 2048;
    v43 = a7;
    _os_log_debug_impl(&dword_24A929000, v18, OS_LOG_TYPE_DEBUG, "%s:start:parentDirectory:%@:theDirectory:%@:name:%@:flags:%d:reqID:%llu", buf, 0x3Au);
  }

  v19 = self->_ourVolume;
  v20 = [(FSModuleVolume *)v19 getItemForFH:v14];
  if (v20)
  {
    v21 = [(FSModuleVolume *)v19 getItemForFH:v15];
    v22 = v21;
    if (v21)
    {
      if ([v21 type] == 2)
      {
        v23 = [(FSModuleVolume *)v19 volume];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __82__FSVolumeConnector_removeDirectory_from_named_usingFlags_requestID_replyHandler___block_invoke;
        v29[3] = &unk_278FED870;
        v31 = v17;
        v29[4] = self;
        v30 = v22;
        [v23 removeItem:v20 named:v16 fromDirectory:v30 replyHandler:v29];
      }

      else
      {
        v26 = fskit_std_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = [v22 type];
          *buf = 136315650;
          v33 = "[FSVolumeConnector removeDirectory:from:named:usingFlags:requestID:replyHandler:]";
          v34 = 2048;
          v35 = v27;
          v36 = 1024;
          LODWORD(v37) = 20;
          _os_log_impl(&dword_24A929000, v26, OS_LOG_TYPE_INFO, "%s: Given parent item is not a directory (type = %lu). Error = %d.", buf, 0x1Cu);
        }

        (*(v17 + 2))(v17, 20, 0, 0);
      }
    }

    else
    {
      v25 = fskit_std_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector removeDirectory:from:named:usingFlags:requestID:replyHandler:];
      }

      (*(v17 + 2))(v17, 70, 0, 0);
    }
  }

  else
  {
    v24 = fskit_std_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector removeDirectory:from:named:usingFlags:requestID:replyHandler:];
    }

    (*(v17 + 2))(v17, 70, 0, 0);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __82__FSVolumeConnector_removeDirectory_from_named_usingFlags_requestID_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = fskit_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __82__FSVolumeConnector_removeDirectory_from_named_usingFlags_requestID_replyHandler___block_invoke_cold_1(v3);
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), [v3 fs_posixCode], 0, 0);
  }

  else
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(v6 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __82__FSVolumeConnector_removeDirectory_from_named_usingFlags_requestID_replyHandler___block_invoke_405;
    v8[3] = &unk_278FED690;
    v8[4] = v6;
    v9 = v5;
    v10 = *(a1 + 48);
    [v7 enqueue:v8];
  }
}

void __82__FSVolumeConnector_removeDirectory_from_named_usingFlags_requestID_replyHandler___block_invoke_405(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __82__FSVolumeConnector_removeDirectory_from_named_usingFlags_requestID_replyHandler___block_invoke_2;
  v3[3] = &unk_278FEDB40;
  v3[4] = v1;
  v4 = *(a1 + 48);
  [v1 getStandardItemAttributesDataForItem:v2 replyHandler:v3];
}

void __82__FSVolumeConnector_removeDirectory_from_named_usingFlags_requestID_replyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__FSVolumeConnector_removeDirectory_from_named_usingFlags_requestID_replyHandler___block_invoke_3;
  v7[3] = &unk_278FED848;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 getFreeSpaceInVolumeWithReplyHandler:v7];
}

- (void)removeItem:(id)a3 from:(id)a4 named:(id)a5 usingFlags:(int)a6 requestID:(unint64_t)a7 replyHandler:(id)a8
{
  v45 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v18 = fskit_std_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v34 = "[FSVolumeConnector removeItem:from:named:usingFlags:requestID:replyHandler:]";
    v35 = 2112;
    v36 = v14;
    v37 = 2112;
    v38 = v15;
    v39 = 2112;
    v40 = v16;
    v41 = 1024;
    v42 = a6;
    v43 = 2048;
    v44 = a7;
    _os_log_debug_impl(&dword_24A929000, v18, OS_LOG_TYPE_DEBUG, "%s:start:theFile:%@:theDirectory:%@:name:%@:flags:%d:reqID:%llu", buf, 0x3Au);
  }

  v19 = self->_ourVolume;
  v20 = [(FSModuleVolume *)v19 getItemForFH:v15];
  v21 = v20;
  if (v20)
  {
    if ([v20 type] == 2)
    {
      v22 = [(FSModuleVolume *)v19 getItemForFH:v14];
      if (v22)
      {
        v23 = [(FSModuleVolume *)v19 volume];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __77__FSVolumeConnector_removeItem_from_named_usingFlags_requestID_replyHandler___block_invoke;
        v29[3] = &unk_278FEDB90;
        v32 = v17;
        v29[4] = self;
        v30 = v22;
        v31 = v21;
        [v23 removeItem:v30 named:v16 fromDirectory:v31 replyHandler:v29];
      }

      else
      {
        v27 = fskit_std_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [FSVolumeConnector removeItem:from:named:usingFlags:requestID:replyHandler:];
        }

        (*(v17 + 2))(v17, 70, 0, 0, 0);
      }
    }

    else
    {
      v25 = fskit_std_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [v21 type];
        *buf = 136315650;
        v34 = "[FSVolumeConnector removeItem:from:named:usingFlags:requestID:replyHandler:]";
        v35 = 2048;
        v36 = v26;
        v37 = 1024;
        LODWORD(v38) = 20;
        _os_log_impl(&dword_24A929000, v25, OS_LOG_TYPE_INFO, "%s: Given parent item is not a directory (type = %lu). Error = %d.", buf, 0x1Cu);
      }

      (*(v17 + 2))(v17, 20, 0, 0, 0);
    }
  }

  else
  {
    v24 = fskit_std_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector removeItem:from:named:usingFlags:requestID:replyHandler:];
    }

    (*(v17 + 2))(v17, 70, 0, 0, 0);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __77__FSVolumeConnector_removeItem_from_named_usingFlags_requestID_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = fskit_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __77__FSVolumeConnector_removeItem_from_named_usingFlags_requestID_replyHandler___block_invoke_cold_1(v3);
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), [v3 fs_posixCode], 0, 0, 0);
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __77__FSVolumeConnector_removeItem_from_named_usingFlags_requestID_replyHandler___block_invoke_406;
    v11[3] = &unk_278FED0C0;
    v10 = *(a1 + 32);
    v5 = *(v10 + 48);
    v6 = *(&v10 + 1);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    v12 = v10;
    v13 = v9;
    [v5 enqueue:v11];
  }
}

void __77__FSVolumeConnector_removeItem_from_named_usingFlags_requestID_replyHandler___block_invoke_406(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__FSVolumeConnector_removeItem_from_named_usingFlags_requestID_replyHandler___block_invoke_2;
  v4[3] = &unk_278FEDB68;
  v4[4] = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 getStandardItemAttributesDataForItem:v3 replyHandler:v4];
}

void __77__FSVolumeConnector_removeItem_from_named_usingFlags_requestID_replyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__FSVolumeConnector_removeItem_from_named_usingFlags_requestID_replyHandler___block_invoke_3;
  v9[3] = &unk_278FED910;
  v9[4] = v5;
  v10 = v4;
  v7 = *(a1 + 48);
  v11 = v3;
  v12 = v7;
  v8 = v3;
  [v6 enqueue:v9];
}

void __77__FSVolumeConnector_removeItem_from_named_usingFlags_requestID_replyHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__FSVolumeConnector_removeItem_from_named_usingFlags_requestID_replyHandler___block_invoke_4;
  v4[3] = &unk_278FED8E8;
  v4[4] = v2;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 getStandardItemAttributesDataForItem:v3 replyHandler:v4];
}

void __77__FSVolumeConnector_removeItem_from_named_usingFlags_requestID_replyHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__FSVolumeConnector_removeItem_from_named_usingFlags_requestID_replyHandler___block_invoke_5;
  v6[3] = &unk_278FED8C0;
  v9 = *(a1 + 48);
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 getFreeSpaceInVolumeWithReplyHandler:v6];
}

- (void)reclaim:(id)a3 requestID:(unint64_t)a4 replyHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = fskit_std_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [FSVolumeConnector reclaim:requestID:replyHandler:];
  }

  v10 = self->_ourVolume;
  v11 = [(FSModuleVolume *)v10 getAndRemoveItemForFH:v7];
  if (v11)
  {
    v12 = [(FSModuleVolume *)v10 volume];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__FSVolumeConnector_reclaim_requestID_replyHandler___block_invoke;
    v14[3] = &unk_278FED6E0;
    v14[4] = self;
    v15 = v8;
    [v12 reclaimItem:v11 replyHandler:v14];
  }

  else
  {
    v13 = fskit_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector reclaim:requestID:replyHandler:];
    }

    (*(v8 + 2))(v8, 70, 0);
  }
}

void __52__FSVolumeConnector_reclaim_requestID_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 fs_posixCode];
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __52__FSVolumeConnector_reclaim_requestID_replyHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __52__FSVolumeConnector_reclaim_requestID_replyHandler___block_invoke_407;
    v5[3] = &unk_278FED898;
    v4 = *(a1 + 32);
    v6 = *(a1 + 40);
    [v4 getFreeSpaceInVolumeWithReplyHandler:v5];
  }
}

- (void)open:(id)a3 withMode:(int)a4 requestID:(unint64_t)a5 replyHandler:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = fskit_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v22 = "[FSVolumeConnector open:withMode:requestID:replyHandler:]";
    v23 = 2112;
    v24 = v10;
    v25 = 1024;
    v26 = a4;
    v27 = 2048;
    v28 = a5;
    _os_log_debug_impl(&dword_24A929000, v12, OS_LOG_TYPE_DEBUG, "%s:start:theFile:%@:mode:%d:reqID:%llu", buf, 0x26u);
  }

  v13 = self->_ourVolume;
  if ([(FSModuleVolume *)v13 supportsOpenCloseOps])
  {
    v14 = [(FSModuleVolume *)v13 volume];
    v15 = [(FSModuleVolume *)v13 getItemForFH:v10];
    if (v15)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __58__FSVolumeConnector_open_withMode_requestID_replyHandler___block_invoke;
      v19[3] = &unk_278FECE20;
      v20 = v11;
      [v14 openItem:v15 withModes:a4 replyHandler:v19];
    }

    else
    {
      v17 = fskit_std_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector open:withMode:requestID:replyHandler:];
      }

      (*(v11 + 2))(v11, 70);
    }
  }

  else
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector open:withMode:requestID:replyHandler:];
    }

    (*(v11 + 2))(v11, 45);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __58__FSVolumeConnector_open_withMode_requestID_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 fs_posixCode];
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __58__FSVolumeConnector_open_withMode_requestID_replyHandler___block_invoke_cold_1();
    }
  }

  else
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __58__FSVolumeConnector_open_withMode_requestID_replyHandler___block_invoke_cold_2();
    }
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)close:(id)a3 keepingMode:(int)a4 requestID:(unint64_t)a5 replyHandler:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = fskit_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v22 = "[FSVolumeConnector close:keepingMode:requestID:replyHandler:]";
    v23 = 2112;
    v24 = v10;
    v25 = 1024;
    v26 = a4;
    v27 = 2048;
    v28 = a5;
    _os_log_debug_impl(&dword_24A929000, v12, OS_LOG_TYPE_DEBUG, "%s:start:theFile:%@:mode:%d:reqID:%llu", buf, 0x26u);
  }

  v13 = self->_ourVolume;
  if ([(FSModuleVolume *)v13 supportsOpenCloseOps])
  {
    v14 = [(FSModuleVolume *)v13 volume];
    v15 = [(FSModuleVolume *)v13 getItemForFH:v10];
    if (v15)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __62__FSVolumeConnector_close_keepingMode_requestID_replyHandler___block_invoke;
      v19[3] = &unk_278FECE20;
      v20 = v11;
      [v14 closeItem:v15 keepingModes:a4 replyHandler:v19];
    }

    else
    {
      v17 = fskit_std_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector close:keepingMode:requestID:replyHandler:];
      }

      (*(v11 + 2))(v11, 70);
    }
  }

  else
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector close:keepingMode:requestID:replyHandler:];
    }

    (*(v11 + 2))(v11, 45);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __62__FSVolumeConnector_close_keepingMode_requestID_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 fs_posixCode];
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __62__FSVolumeConnector_close_keepingMode_requestID_replyHandler___block_invoke_cold_1();
    }
  }

  else
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __62__FSVolumeConnector_close_keepingMode_requestID_replyHandler___block_invoke_cold_2();
    }
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)writeTo:(id)a3 atOffset:(unint64_t)a4 fromBuffer:(id)a5 requestID:(unint64_t)a6 replyHandler:(id)a7
{
  v39 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = fskit_std_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v30 = "[FSVolumeConnector writeTo:atOffset:fromBuffer:requestID:replyHandler:]";
    v31 = 2112;
    v32 = v12;
    v33 = 2048;
    v34 = a4;
    v35 = 2112;
    v36 = v13;
    v37 = 2048;
    v38 = a6;
    _os_log_debug_impl(&dword_24A929000, v15, OS_LOG_TYPE_DEBUG, "%s:start:theFile:%@:atOffset:%llu:buffer:%@:reqID:%llu", buf, 0x34u);
  }

  v16 = self->_ourVolume;
  if ([(FSModuleVolume *)v16 supportsReadWriteOps])
  {
    v17 = [(FSModuleVolume *)v16 volume];
    v18 = [(FSModuleVolume *)v16 getItemForFH:v12];
    v19 = v18;
    if (v18)
    {
      if ([v18 type] == 1)
      {
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __72__FSVolumeConnector_writeTo_atOffset_fromBuffer_requestID_replyHandler___block_invoke;
        v26[3] = &unk_278FEDC30;
        v28 = v14;
        v26[4] = self;
        v27 = v19;
        [v17 writeContents:v13 toFile:v27 atOffset:a4 replyHandler:v26];
      }

      else
      {
        if ([v19 type] == 2)
        {
          v22 = 21;
        }

        else
        {
          v22 = 22;
        }

        v23 = fskit_std_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = [v19 type];
          *buf = 136315650;
          v30 = "[FSVolumeConnector writeTo:atOffset:fromBuffer:requestID:replyHandler:]";
          v31 = 2048;
          v32 = v24;
          v33 = 1024;
          LODWORD(v34) = v22;
          _os_log_impl(&dword_24A929000, v23, OS_LOG_TYPE_INFO, "%s: Given item is not a file (type = %lu). Error = %d.", buf, 0x1Cu);
        }

        (*(v14 + 2))(v14, v22, 0, 0, 0);
      }
    }

    else
    {
      v21 = fskit_std_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector writeTo:atOffset:fromBuffer:requestID:replyHandler:];
      }

      (*(v14 + 2))(v14, 70, 0, 0, 0);
    }
  }

  else
  {
    v20 = fskit_std_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector writeTo:atOffset:fromBuffer:requestID:replyHandler:];
    }

    (*(v14 + 2))(v14, 45, 0, 0, 0);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __72__FSVolumeConnector_writeTo_atOffset_fromBuffer_requestID_replyHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    [a3 fs_posixCode];
    v4 = fskit_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __72__FSVolumeConnector_writeTo_atOffset_fromBuffer_requestID_replyHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = fskit_std_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __72__FSVolumeConnector_writeTo_atOffset_fromBuffer_requestID_replyHandler___block_invoke_cold_2();
    }

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(v8 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__FSVolumeConnector_writeTo_atOffset_fromBuffer_requestID_replyHandler___block_invoke_408;
    v10[3] = &unk_278FEDC08;
    v10[4] = v8;
    v11 = v7;
    v12 = *(a1 + 48);
    v13 = a2;
    [v9 enqueue:v10];
  }
}

void __72__FSVolumeConnector_writeTo_atOffset_fromBuffer_requestID_replyHandler___block_invoke_408(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__FSVolumeConnector_writeTo_atOffset_fromBuffer_requestID_replyHandler___block_invoke_2;
  v6[3] = &unk_278FEDBE0;
  v6[4] = v2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = v4;
  v8 = v5;
  [v2 getIOItemAttributesSubsetData:v3 replyHandler:v6];
}

void __72__FSVolumeConnector_writeTo_atOffset_fromBuffer_requestID_replyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__FSVolumeConnector_writeTo_atOffset_fromBuffer_requestID_replyHandler___block_invoke_3;
  v8[3] = &unk_278FEDBB8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v9 = v3;
  v7 = v3;
  [v4 getFreeSpaceInVolumeWithReplyHandler:v8];
}

- (void)readFrom:(id)a3 atOffset:(unint64_t)a4 intoBuffer:(id)a5 requestID:(unint64_t)a6 replyHandler:(id)a7
{
  v42 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = fskit_std_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v33 = "[FSVolumeConnector readFrom:atOffset:intoBuffer:requestID:replyHandler:]";
    v34 = 2112;
    v35 = v12;
    v36 = 2048;
    v37 = a4;
    v38 = 2112;
    v39 = v13;
    v40 = 2048;
    v41 = a6;
    _os_log_debug_impl(&dword_24A929000, v15, OS_LOG_TYPE_DEBUG, "%s:start:theFile:%@:atOffset:%llu:buffer:%@:reqID:%llu", buf, 0x34u);
  }

  v16 = self->_ourVolume;
  if ([(FSModuleVolume *)v16 supportsReadWriteOps])
  {
    v17 = [(FSModuleVolume *)v16 volume];
    v18 = [(FSModuleVolume *)v16 getItemForFH:v12];
    v19 = v18;
    if (v18)
    {
      if ([v18 type] == 1)
      {
        v20 = [v13 length];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __73__FSVolumeConnector_readFrom_atOffset_intoBuffer_requestID_replyHandler___block_invoke;
        v27[3] = &unk_278FEDC80;
        v28 = v13;
        v31 = v14;
        v29 = self;
        v30 = v19;
        [v17 readFromFile:v30 offset:a4 length:v20 intoBuffer:v28 replyHandler:v27];
      }

      else
      {
        if ([v19 type] == 2)
        {
          v23 = 21;
        }

        else
        {
          v23 = 22;
        }

        v24 = fskit_std_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [v19 type];
          *buf = 136315650;
          v33 = "[FSVolumeConnector readFrom:atOffset:intoBuffer:requestID:replyHandler:]";
          v34 = 2048;
          v35 = v25;
          v36 = 1024;
          LODWORD(v37) = v23;
          _os_log_impl(&dword_24A929000, v24, OS_LOG_TYPE_INFO, "%s: Given item is not a file (type = %lu). Error = %d.", buf, 0x1Cu);
        }

        (*(v14 + 2))(v14, v23, 0, 0);
      }
    }

    else
    {
      v22 = fskit_std_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector readFrom:atOffset:intoBuffer:requestID:replyHandler:];
      }

      (*(v14 + 2))(v14, 70, 0, 0);
    }
  }

  else
  {
    v21 = fskit_std_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector readFrom:atOffset:intoBuffer:requestID:replyHandler:];
    }

    (*(v14 + 2))(v14, 45, 0, 0);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __73__FSVolumeConnector_readFrom_atOffset_intoBuffer_requestID_replyHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    [a3 fs_posixCode];
    v4 = fskit_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __73__FSVolumeConnector_readFrom_atOffset_intoBuffer_requestID_replyHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = fskit_std_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __73__FSVolumeConnector_readFrom_atOffset_intoBuffer_requestID_replyHandler___block_invoke_cold_2();
    }

    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(v8 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73__FSVolumeConnector_readFrom_atOffset_intoBuffer_requestID_replyHandler___block_invoke_409;
    v10[3] = &unk_278FEDC08;
    v10[4] = v8;
    v11 = v7;
    v12 = *(a1 + 56);
    v13 = a2;
    [v9 enqueue:v10];
  }
}

void __73__FSVolumeConnector_readFrom_atOffset_intoBuffer_requestID_replyHandler___block_invoke_409(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__FSVolumeConnector_readFrom_atOffset_intoBuffer_requestID_replyHandler___block_invoke_2;
  v6[3] = &unk_278FEDC58;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = v4;
  v8 = v5;
  [v2 getIOItemAttributesSubsetData:v3 replyHandler:v6];
}

- (void)setFileAttributesOf:(id)a3 to:(id)a4 requestID:(unint64_t)a5 replyHandler:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = fskit_std_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v26 = "[FSVolumeConnector setFileAttributesOf:to:requestID:replyHandler:]";
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = v11;
    v31 = 2048;
    v32 = a5;
    _os_log_debug_impl(&dword_24A929000, v13, OS_LOG_TYPE_DEBUG, "%s:start:theItem:%@:setAttrs:%@:reqID:%llu", buf, 0x2Au);
  }

  v14 = self->_ourVolume;
  v15 = [(FSModuleVolume *)v14 getItemForFH:v10];
  if (v15)
  {
    v16 = [(FSItemAttributes *)FSItemSetAttributesRequest requestWithData:v11];
    v17 = [(FSModuleVolume *)v14 volume];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __67__FSVolumeConnector_setFileAttributesOf_to_requestID_replyHandler___block_invoke;
    v21[3] = &unk_278FEDCA8;
    v24 = v12;
    v21[4] = self;
    v22 = v11;
    v23 = v16;
    v18 = v16;
    [v17 setAttributes:v18 onItem:v15 replyHandler:v21];
  }

  else
  {
    v19 = fskit_std_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector setFileAttributesOf:to:requestID:replyHandler:];
    }

    (*(v12 + 2))(v12, 70, 0, 0, 0);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __67__FSVolumeConnector_setFileAttributesOf_to_requestID_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    [v6 fs_posixCode];
    v8 = fskit_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __67__FSVolumeConnector_setFileAttributesOf_to_requestID_replyHandler___block_invoke_cold_1();
    }

    v9 = *(*(a1 + 56) + 16);
LABEL_5:
    v9();
    goto LABEL_6;
  }

  if (!v5)
  {
    v12 = fskit_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __67__FSVolumeConnector_setFileAttributesOf_to_requestID_replyHandler___block_invoke_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    v9 = *(*(a1 + 56) + 16);
    goto LABEL_5;
  }

  atomic_fetch_add((*(a1 + 32) + 16), 1uLL);
  [v5 setAttributeSeqno:?];
  if ((*([*(a1 + 40) bytes] + 8) & 0x40) != 0)
  {
    v20 = *(a1 + 32);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __67__FSVolumeConnector_setFileAttributesOf_to_requestID_replyHandler___block_invoke_410;
    v21[3] = &unk_278FED8C0;
    v24 = *(a1 + 56);
    v22 = v5;
    v23 = *(a1 + 48);
    [v20 getFreeSpaceInVolumeWithReplyHandler:v21];
  }

  else
  {
    v10 = *(a1 + 56);
    v11 = [v5 attrsData];
    (*(v10 + 16))(v10, 0, v11, [*(a1 + 48) consumedAttributes], 0);
  }

LABEL_6:
}

void __67__FSVolumeConnector_setFileAttributesOf_to_requestID_replyHandler___block_invoke_410(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 attrsData];
  (*(v3 + 16))(v3, 0, v6, [*(a1 + 40) consumedAttributes], v5);
}

- (void)fileAttributes:(id)a3 requestedAttributes:(unint64_t)a4 requestID:(unint64_t)a5 replyHandler:(id)a6
{
  v9 = a6;
  v10 = self->_ourVolume;
  v11 = [(FSModuleVolume *)v10 getItemForFH:a3];
  if (v11)
  {
    v12 = [[FSItemGetAttributesRequest alloc] initWithWantedLIAttributes:a4];
    v13 = [(FSModuleVolume *)v10 volume];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __79__FSVolumeConnector_fileAttributes_requestedAttributes_requestID_replyHandler___block_invoke;
    v15[3] = &unk_278FED7A8;
    v15[4] = self;
    v16 = v9;
    [v13 getAttributes:v12 ofItem:v11 replyHandler:v15];

    v10 = v12;
  }

  else
  {
    v14 = fskit_std_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector fileAttributes:requestedAttributes:requestID:replyHandler:];
    }

    (*(v9 + 2))(v9, 70, 0);
  }
}

void __79__FSVolumeConnector_fileAttributes_requestedAttributes_requestID_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), [v6 fs_posixCode], 0);
  }

  else if (v5)
  {
    atomic_fetch_add((*(a1 + 32) + 16), 1uLL);
    [v5 setAttributeSeqno:?];
    v8 = *(a1 + 40);
    v9 = [v5 attrsData];
    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    v10 = fskit_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __79__FSVolumeConnector_fileAttributes_requestedAttributes_requestID_replyHandler___block_invoke_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), 43, 0);
  }
}

void __114__FSVolumeConnector_readDirectory_withAttr_requestedAttributes_intoBuffer_cookie_verifier_requestID_replyHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = (a1 + 32);
  if (![*(a1 + 32) outOfSpace])
  {
    if (v5)
    {
      v10 = [v5 domain];
      if ([v10 isEqualToString:@"FSKitErrorDomain"])
      {
        v11 = [v5 code];

        if (v11 == 4506)
        {
          v12 = fskit_std_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            __114__FSVolumeConnector_readDirectory_withAttr_requestedAttributes_intoBuffer_cookie_verifier_requestID_replyHandler___block_invoke_cold_2();
          }

          v13 = *(*(a1 + 40) + 16);
          goto LABEL_20;
        }
      }

      else
      {
      }

      [v5 fs_posixCode];
      v15 = fskit_std_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __114__FSVolumeConnector_readDirectory_withAttr_requestedAttributes_intoBuffer_cookie_verifier_requestID_replyHandler___block_invoke_cold_1();
      }

      v13 = *(*(a1 + 40) + 16);
      goto LABEL_20;
    }

    if ([*v6 bytesPacked])
    {
      [*(a1 + 32) setLastEntryAsEOF];
      v14 = *(a1 + 40);
      [*(a1 + 32) bytesPacked];
      v13 = *(v14 + 16);
    }

    else
    {
      v13 = *(*(a1 + 40) + 16);
    }

LABEL_20:
    v13();
    goto LABEL_21;
  }

  v7 = fskit_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __114__FSVolumeConnector_readDirectory_withAttr_requestedAttributes_intoBuffer_cookie_verifier_requestID_replyHandler___block_invoke_cold_3((a1 + 32));
  }

  v8 = [*(a1 + 32) bytesPacked];
  v9 = *(a1 + 40);
  if (v8)
  {
    (*(v9 + 16))(v9, 0, [*v6 bytesPacked], a2);
  }

  else
  {
    (*(v9 + 16))(v9, 4294966295, 0, a2);
  }

LABEL_21:
}

- (void)readDirectory:(id)a3 intoBuffer:(id)a4 cookie:(unint64_t)a5 verifier:(unint64_t)a6 requestID:(unint64_t)a7 replyHandler:(id)a8
{
  v14 = a8;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__FSVolumeConnector_readDirectory_intoBuffer_cookie_verifier_requestID_replyHandler___block_invoke;
  v16[3] = &unk_278FEDCF8;
  v17 = v14;
  v15 = v14;
  [(FSVolumeConnector *)self readDirectory:a3 withAttr:0 requestedAttributes:0 intoBuffer:a4 cookie:a5 verifier:a6 requestID:a7 replyHandler:v16];
}

- (void)readDirectory:(id)a3 requestedAttributes:(unint64_t)a4 intoBuffer:(id)a5 cookie:(unint64_t)a6 verifier:(unint64_t)a7 requestID:(unint64_t)a8 replyHandler:(id)a9
{
  v16 = a9;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __105__FSVolumeConnector_readDirectory_requestedAttributes_intoBuffer_cookie_verifier_requestID_replyHandler___block_invoke;
  v18[3] = &unk_278FEDCF8;
  v19 = v16;
  v17 = v16;
  [(FSVolumeConnector *)self readDirectory:a3 withAttr:1 requestedAttributes:a4 intoBuffer:a5 cookie:a6 verifier:a7 requestID:a8 replyHandler:v18];
}

- (void)readSymbolicLinkOf:(id)a3 requestID:(unint64_t)a4 replyHandler:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = fskit_std_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [FSVolumeConnector readSymbolicLinkOf:requestID:replyHandler:];
  }

  v10 = self->_ourVolume;
  v11 = [(FSModuleVolume *)v10 getItemForFH:v7];
  v12 = v11;
  if (v11)
  {
    if ([v11 type] == 3)
    {
      v13 = [(FSModuleVolume *)v10 volume];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __63__FSVolumeConnector_readSymbolicLinkOf_requestID_replyHandler___block_invoke;
      v17[3] = &unk_278FEDD20;
      v19 = v8;
      v17[4] = self;
      v18 = v12;
      [v13 readSymbolicLink:v18 replyHandler:v17];
    }

    else
    {
      v15 = fskit_std_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v21 = "[FSVolumeConnector readSymbolicLinkOf:requestID:replyHandler:]";
        v22 = 2048;
        v23 = [v12 type];
        v24 = 1024;
        v25 = 22;
        _os_log_impl(&dword_24A929000, v15, OS_LOG_TYPE_INFO, "%s: Given item is not a symlink (type = %lu). Error = %d.", buf, 0x1Cu);
      }

      (*(v8 + 2))(v8, 22, 0, 0);
    }
  }

  else
  {
    v14 = fskit_std_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector readSymbolicLinkOf:requestID:replyHandler:];
    }

    (*(v8 + 2))(v8, 70, 0, 0);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __63__FSVolumeConnector_readSymbolicLinkOf_requestID_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    [v6 fs_posixCode];
    v8 = fskit_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __63__FSVolumeConnector_readSymbolicLinkOf_requestID_replyHandler___block_invoke_cold_1();
    }

    v9 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (v5)
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = *(v11 + 48);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __63__FSVolumeConnector_readSymbolicLinkOf_requestID_replyHandler___block_invoke_413;
      v21[3] = &unk_278FED0C0;
      v21[4] = v11;
      v22 = v10;
      v23 = v5;
      v24 = *(a1 + 48);
      [v12 enqueue:v21];

      goto LABEL_8;
    }

    v13 = fskit_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      __63__FSVolumeConnector_readSymbolicLinkOf_requestID_replyHandler___block_invoke_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    v9 = *(*(a1 + 48) + 16);
  }

  v9();
LABEL_8:
}

void __63__FSVolumeConnector_readSymbolicLinkOf_requestID_replyHandler___block_invoke_413(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__FSVolumeConnector_readSymbolicLinkOf_requestID_replyHandler___block_invoke_2;
  v4[3] = &unk_278FEDB40;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 getStandardItemAttributesDataForItem:v3 replyHandler:v4];
}

void __63__FSVolumeConnector_readSymbolicLinkOf_requestID_replyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __63__FSVolumeConnector_readSymbolicLinkOf_requestID_replyHandler___block_invoke_2_cold_1(a1, v3, v4);
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) data];
  (*(v5 + 16))(v5, 0, v6, v3);
}

- (void)makeSymlinkIn:(id)a3 named:(id)a4 contents:(id)a5 attributes:(id)a6 requestID:(unint64_t)a7 replyHandler:(id)a8
{
  v48 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = fskit_std_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v37 = "[FSVolumeConnector makeSymlinkIn:named:contents:attributes:requestID:replyHandler:]";
    v38 = 2112;
    v39 = v14;
    v40 = 2112;
    v41 = v15;
    v42 = 2112;
    v43 = v16;
    v44 = 2112;
    v45 = v17;
    v46 = 2048;
    v47 = a7;
    _os_log_debug_impl(&dword_24A929000, v19, OS_LOG_TYPE_DEBUG, "%s:start:theDirectory:%@:name:%@:contents:%@:setAttrs:%@:reqID:%llu", buf, 0x3Eu);
  }

  v20 = self->_ourVolume;
  v21 = [(FSModuleVolume *)v20 getItemForFH:v14];
  v22 = v21;
  if (v21)
  {
    if ([v21 type] == 2)
    {
      [(FSItemAttributes *)FSItemSetAttributesRequest requestWithData:v17];
      v24 = v23 = v15;
      v31 = v16;
      v25 = [[FSFileName alloc] initWithData:v16];
      v26 = [(FSModuleVolume *)v20 volume];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __84__FSVolumeConnector_makeSymlinkIn_named_contents_attributes_requestID_replyHandler___block_invoke;
      v32[3] = &unk_278FEDA00;
      v35 = v18;
      v32[4] = self;
      v33 = v22;
      v34 = v20;
      [v26 createSymbolicLinkNamed:v23 inDirectory:v33 attributes:v24 linkContents:v25 replyHandler:v32];

      v16 = v31;
      v15 = v23;
    }

    else
    {
      v28 = fskit_std_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [v22 type];
        *buf = 136315650;
        v37 = "[FSVolumeConnector makeSymlinkIn:named:contents:attributes:requestID:replyHandler:]";
        v38 = 2048;
        v39 = v29;
        v40 = 1024;
        LODWORD(v41) = 20;
        _os_log_impl(&dword_24A929000, v28, OS_LOG_TYPE_INFO, "%s: Given parent item is not a directory (type = %lu). Error = %d.", buf, 0x1Cu);
      }

      (*(v18 + 2))(v18, 20, 0, 0, 0, 0);
    }
  }

  else
  {
    v27 = fskit_std_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector makeSymlinkIn:named:contents:attributes:requestID:replyHandler:];
    }

    (*(v18 + 2))(v18, 70, 0, 0, 0, 0);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __84__FSVolumeConnector_makeSymlinkIn_named_contents_attributes_requestID_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 fs_posixCode];
    v12 = v11;
    if (v11)
    {
      if (v11 == 17)
      {
        v13 = fskit_std_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          __84__FSVolumeConnector_makeSymlinkIn_named_contents_attributes_requestID_replyHandler___block_invoke_cold_1();
        }
      }

      else
      {
        v13 = fskit_std_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v25 = "[FSVolumeConnector makeSymlinkIn:named:contents:attributes:requestID:replyHandler:]_block_invoke";
          v26 = 1024;
          v27 = v12;
          _os_log_impl(&dword_24A929000, v13, OS_LOG_TYPE_INFO, "%s:reply:error:%d", buf, 0x12u);
        }
      }

      v17 = *(*(a1 + 56) + 16);
LABEL_14:
      v17();
      goto LABEL_15;
    }
  }

  if (!v7)
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      __84__FSVolumeConnector_makeSymlinkIn_named_contents_attributes_requestID_replyHandler___block_invoke_cold_2();
    }

    v17 = *(*(a1 + 56) + 16);
    goto LABEL_14;
  }

  v14 = *(a1 + 32);
  v15 = *(v14 + 48);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __84__FSVolumeConnector_makeSymlinkIn_named_contents_attributes_requestID_replyHandler___block_invoke_414;
  v19[3] = &unk_278FEDD48;
  v19[4] = v14;
  v20 = v7;
  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  [v15 enqueue:v19];

LABEL_15:
  v18 = *MEMORY[0x277D85DE8];
}

void __84__FSVolumeConnector_makeSymlinkIn_named_contents_attributes_requestID_replyHandler___block_invoke_414(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__FSVolumeConnector_makeSymlinkIn_named_contents_attributes_requestID_replyHandler___block_invoke_2;
  v9[3] = &unk_278FED9B0;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 64);
  [v3 getStandardItemAttributesDataForNewItem:v2 replyHandler:v9];
}

void __84__FSVolumeConnector_makeSymlinkIn_named_contents_attributes_requestID_replyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__FSVolumeConnector_makeSymlinkIn_named_contents_attributes_requestID_replyHandler___block_invoke_3;
  v11[3] = &unk_278FED9D8;
  v10 = *(a1 + 32);
  v4 = *(v10 + 48);
  v5 = *(&v10 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  v14 = v3;
  v15 = *(a1 + 64);
  v9 = v3;
  [v4 enqueue:v11];
}

void __84__FSVolumeConnector_makeSymlinkIn_named_contents_attributes_requestID_replyHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__FSVolumeConnector_makeSymlinkIn_named_contents_attributes_requestID_replyHandler___block_invoke_4;
  v6[3] = &unk_278FED9B0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 72);
  [v2 getStandardItemAttributesDataForItem:v3 replyHandler:v6];
}

void __84__FSVolumeConnector_makeSymlinkIn_named_contents_attributes_requestID_replyHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) insertIntoFHCache:*(a1 + 40)];
  v4 = fskit_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = [*(a1 + 40) fileHandle];
    v9 = *(a1 + 48);
    *buf = 136315906;
    v16 = "[FSVolumeConnector makeSymlinkIn:named:contents:attributes:requestID:replyHandler:]_block_invoke_4";
    v17 = 2112;
    v18 = v3;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_debug_impl(&dword_24A929000, v4, OS_LOG_TYPE_DEBUG, "%s:reply:error:0:directoryAttrs:%@:theItem:%@:theAttrs:%@", buf, 0x2Au);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__FSVolumeConnector_makeSymlinkIn_named_contents_attributes_requestID_replyHandler___block_invoke_415;
  v10[3] = &unk_278FED988;
  v5 = *(a1 + 56);
  v14 = *(a1 + 64);
  v11 = v3;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v6 = v3;
  [v5 getFreeSpaceInVolumeWithReplyHandler:v10];

  v7 = *MEMORY[0x277D85DE8];
}

void __84__FSVolumeConnector_makeSymlinkIn_named_contents_attributes_requestID_replyHandler___block_invoke_415(void *a1, void *a2)
{
  v3 = a1[7];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2;
  v7 = [v5 fileHandle];
  (*(v3 + 16))(v3, 0, v4, v7, a1[6], v6);
}

- (void)makeLinkOf:(id)a3 named:(id)a4 inDirectory:(id)a5 requestID:(unint64_t)a6 replyHandler:(id)a7
{
  v41 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = fskit_std_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v32 = "[FSVolumeConnector makeLinkOf:named:inDirectory:requestID:replyHandler:]";
    v33 = 2112;
    v34 = v12;
    v35 = 2112;
    v36 = v13;
    v37 = 2112;
    v38 = v14;
    v39 = 2048;
    v40 = a6;
    _os_log_debug_impl(&dword_24A929000, v16, OS_LOG_TYPE_DEBUG, "%s:start:targetFile:%@:name:%@:theDirectory:%@:reqID:%llu", buf, 0x34u);
  }

  v17 = self->_ourVolume;
  v18 = [(FSModuleVolume *)v17 getItemForFH:v12];
  if (v18)
  {
    v19 = [(FSModuleVolume *)v17 getItemForFH:v14];
    v20 = v19;
    if (v19)
    {
      if ([v19 type] == 2)
      {
        v21 = [(FSModuleVolume *)v17 volume];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __73__FSVolumeConnector_makeLinkOf_named_inDirectory_requestID_replyHandler___block_invoke;
        v27[3] = &unk_278FEDD70;
        v30 = v15;
        v27[4] = self;
        v28 = v18;
        v29 = v20;
        [v21 createLinkToItem:v28 named:v13 inDirectory:v29 replyHandler:v27];
      }

      else
      {
        v24 = fskit_std_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [v20 type];
          *buf = 136315650;
          v32 = "[FSVolumeConnector makeLinkOf:named:inDirectory:requestID:replyHandler:]";
          v33 = 2048;
          v34 = v25;
          v35 = 1024;
          LODWORD(v36) = 20;
          _os_log_impl(&dword_24A929000, v24, OS_LOG_TYPE_INFO, "%s: Given parent item is not a directory (type = %lu). Error = %d.", buf, 0x1Cu);
        }

        (*(v15 + 2))(v15, 20, 0, 0, 0);
      }
    }

    else
    {
      v23 = fskit_std_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector makeLinkOf:named:inDirectory:requestID:replyHandler:];
      }

      (*(v15 + 2))(v15, 70, 0, 0, 0);
    }
  }

  else
  {
    v22 = fskit_std_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector makeLinkOf:named:inDirectory:requestID:replyHandler:];
    }

    (*(v15 + 2))(v15, 70, 0, 0, 0);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __73__FSVolumeConnector_makeLinkOf_named_inDirectory_requestID_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    [v6 fs_posixCode];
    v8 = fskit_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __73__FSVolumeConnector_makeLinkOf_named_inDirectory_requestID_replyHandler___block_invoke_cold_1();
    }

    v9 = *(*(a1 + 56) + 16);
  }

  else
  {
    if (v5)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __73__FSVolumeConnector_makeLinkOf_named_inDirectory_requestID_replyHandler___block_invoke_416;
      v24[3] = &unk_278FED0C0;
      v23 = *(a1 + 32);
      v10 = *(v23 + 48);
      v11 = *(&v23 + 1);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      *&v14 = v12;
      *(&v14 + 1) = v13;
      v25 = v23;
      v26 = v14;
      [v10 enqueue:v24];

      goto LABEL_8;
    }

    v15 = fskit_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      __73__FSVolumeConnector_makeLinkOf_named_inDirectory_requestID_replyHandler___block_invoke_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    v9 = *(*(a1 + 56) + 16);
  }

  v9();
LABEL_8:
}

void __73__FSVolumeConnector_makeLinkOf_named_inDirectory_requestID_replyHandler___block_invoke_416(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__FSVolumeConnector_makeLinkOf_named_inDirectory_requestID_replyHandler___block_invoke_2;
  v4[3] = &unk_278FEDB68;
  v4[4] = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 getStandardItemAttributesDataForItem:v3 replyHandler:v4];
}

void __73__FSVolumeConnector_makeLinkOf_named_inDirectory_requestID_replyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__FSVolumeConnector_makeLinkOf_named_inDirectory_requestID_replyHandler___block_invoke_3;
  v9[3] = &unk_278FED910;
  v9[4] = v5;
  v10 = v4;
  v7 = *(a1 + 48);
  v11 = v3;
  v12 = v7;
  v8 = v3;
  [v6 enqueue:v9];
}

void __73__FSVolumeConnector_makeLinkOf_named_inDirectory_requestID_replyHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__FSVolumeConnector_makeLinkOf_named_inDirectory_requestID_replyHandler___block_invoke_4;
  v4[3] = &unk_278FED8E8;
  v4[4] = v2;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 getStandardItemAttributesDataForItem:v3 replyHandler:v4];
}

void __73__FSVolumeConnector_makeLinkOf_named_inDirectory_requestID_replyHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__FSVolumeConnector_makeLinkOf_named_inDirectory_requestID_replyHandler___block_invoke_5;
  v6[3] = &unk_278FED8C0;
  v9 = *(a1 + 48);
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 getFreeSpaceInVolumeWithReplyHandler:v6];
}

- (void)xattrOf:(id)a3 named:(id)a4 requestID:(unint64_t)a5 replyHandler:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = fskit_std_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v23 = "[FSVolumeConnector xattrOf:named:requestID:replyHandler:]";
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = v11;
    v28 = 2048;
    v29 = a5;
    _os_log_debug_impl(&dword_24A929000, v13, OS_LOG_TYPE_DEBUG, "%s:start:theItem:%@:name:%@:reqID:%llu", buf, 0x2Au);
  }

  v14 = self->_ourVolume;
  if ([(FSModuleVolume *)v14 supportsXattrOps])
  {
    v15 = [(FSModuleVolume *)v14 volume];
    v16 = [(FSModuleVolume *)v14 getItemForFH:v10];
    if (v16)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __58__FSVolumeConnector_xattrOf_named_requestID_replyHandler___block_invoke;
      v20[3] = &unk_278FEDD98;
      v21 = v12;
      [v15 getXattrNamed:v11 ofItem:v16 replyHandler:v20];
    }

    else
    {
      v18 = fskit_std_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector xattrOf:named:requestID:replyHandler:];
      }

      (*(v12 + 2))(v12, 70, 0);
    }
  }

  else
  {
    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector xattrOf:named:requestID:replyHandler:];
    }

    (*(v12 + 2))(v12, 45, 0);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __58__FSVolumeConnector_xattrOf_named_requestID_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    [v6 fs_posixCode];
    v8 = fskit_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __58__FSVolumeConnector_xattrOf_named_requestID_replyHandler___block_invoke_cold_1();
    }

    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    v10 = fskit_std_log();
    v11 = v10;
    if (v5)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __58__FSVolumeConnector_xattrOf_named_requestID_replyHandler___block_invoke_cold_2();
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __58__FSVolumeConnector_xattrOf_named_requestID_replyHandler___block_invoke_cold_3(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v9 = *(*(a1 + 32) + 16);
  }

  v9();
}

- (void)setXattrOf:(id)a3 named:(id)a4 value:(id)a5 how:(unint64_t)a6 requestID:(unint64_t)a7 replyHandler:(id)a8
{
  v37 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v18 = fskit_std_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v28 = "[FSVolumeConnector setXattrOf:named:value:how:requestID:replyHandler:]";
    v29 = 2112;
    v30 = v14;
    v31 = 2112;
    v32 = v15;
    v33 = 2112;
    v34 = v16;
    v35 = 2048;
    v36 = a7;
    _os_log_debug_impl(&dword_24A929000, v18, OS_LOG_TYPE_DEBUG, "%s:start:theItem:%@:name:%@:value:%@:reqID:%llu", buf, 0x34u);
  }

  v19 = self->_ourVolume;
  if ([(FSModuleVolume *)v19 supportsXattrOps])
  {
    v20 = [(FSModuleVolume *)v19 volume];
    v21 = [(FSModuleVolume *)v19 getItemForFH:v14];
    if (v21)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __71__FSVolumeConnector_setXattrOf_named_value_how_requestID_replyHandler___block_invoke;
      v25[3] = &unk_278FECE20;
      v26 = v17;
      [v20 setXattrNamed:v15 toData:v16 onItem:v21 policy:a6 replyHandler:v25];
    }

    else
    {
      v23 = fskit_std_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector setXattrOf:named:value:how:requestID:replyHandler:];
      }

      (*(v17 + 2))(v17, 70);
    }
  }

  else
  {
    v22 = fskit_std_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector setXattrOf:named:value:how:requestID:replyHandler:];
    }

    (*(v17 + 2))(v17, 45);
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __71__FSVolumeConnector_setXattrOf_named_value_how_requestID_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 fs_posixCode];
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __71__FSVolumeConnector_setXattrOf_named_value_how_requestID_replyHandler___block_invoke_cold_1();
    }

    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    return v6();
  }
}

- (void)listXattrsOf:(id)a3 requestID:(unint64_t)a4 replyHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = fskit_std_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [FSVolumeConnector listXattrsOf:requestID:replyHandler:];
  }

  v10 = self->_ourVolume;
  if ([(FSModuleVolume *)v10 supportsXattrOps])
  {
    v11 = [(FSModuleVolume *)v10 volume];
    v12 = [(FSModuleVolume *)v10 getItemForFH:v7];
    if (v12)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __57__FSVolumeConnector_listXattrsOf_requestID_replyHandler___block_invoke;
      v15[3] = &unk_278FED020;
      v16 = v8;
      [v11 listXattrsOfItem:v12 replyHandler:v15];
    }

    else
    {
      v14 = fskit_std_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector listXattrsOf:requestID:replyHandler:];
      }

      (*(v8 + 2))(v8, 70, 0);
    }
  }

  else
  {
    v13 = fskit_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector listXattrsOf:requestID:replyHandler:];
    }

    (*(v8 + 2))(v8, 45, 0);
  }
}

void __57__FSVolumeConnector_listXattrsOf_requestID_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    [v6 fs_posixCode];
    v8 = fskit_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __57__FSVolumeConnector_listXattrsOf_requestID_replyHandler___block_invoke_cold_1();
    }

    v9 = *(*(a1 + 32) + 16);
LABEL_5:
    v9();
    goto LABEL_10;
  }

  if (!v5)
  {
    v12 = fskit_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __57__FSVolumeConnector_listXattrsOf_requestID_replyHandler___block_invoke_cold_3(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    v9 = *(*(a1 + 32) + 16);
    goto LABEL_5;
  }

  v10 = [v5 fs_map:&__block_literal_global_13];
  v11 = fskit_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __57__FSVolumeConnector_listXattrsOf_requestID_replyHandler___block_invoke_cold_2();
  }

  (*(*(a1 + 32) + 16))();
LABEL_10:
}

- (void)getRootFileHandle:(id)a3
{
  ourVolume = self->_ourVolume;
  v5 = a3;
  v6 = [(FSModuleVolume *)ourVolume rootFSItem];

  if (v6)
  {
    v8 = [(FSModuleVolume *)self->_ourVolume rootFSItem];
    v7 = [v8 fileHandle];
    v5[2](v5, v7, 0);

    v5 = v7;
  }

  else
  {
    v8 = fs_errorForPOSIXError(2);
    (v5[2])(v5, 0);
  }
}

- (void)mount:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FSVolumeConnector mount:replyHandler:];
  }

  v9 = self->_ourVolume;
  v10 = [(FSModuleVolume *)v9 volume];
  v11 = [v6 taskOptions];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__FSVolumeConnector_mount_replyHandler___block_invoke;
  v13[3] = &unk_278FECE20;
  v14 = v7;
  v12 = v7;
  [v10 mountWithOptions:v11 replyHandler:v13];
}

void __40__FSVolumeConnector_mount_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = fskit_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __40__FSVolumeConnector_mount_replyHandler___block_invoke_cold_1(v3);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)synchronize:(unsigned int)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = [(FSModuleVolume *)self->_ourVolume volume];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__FSVolumeConnector_synchronize_replyHandler___block_invoke;
  v9[3] = &unk_278FECE20;
  v10 = v6;
  v8 = v6;
  [v7 synchronizeWithFlags:a3 replyHandler:v9];
}

- (void)unmount:(id)a3
{
  v4 = a3;
  v5 = fskit_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FSVolumeConnector unmount:];
  }

  v6 = self->_ourVolume;
  v7 = [(FSModuleVolume *)v6 volume];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __29__FSVolumeConnector_unmount___block_invoke;
  v10[3] = &unk_278FED618;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  [v7 unmountWithReplyHandler:v10];
}

uint64_t __29__FSVolumeConnector_unmount___block_invoke(uint64_t a1)
{
  v2 = fskit_std_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __29__FSVolumeConnector_unmount___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) stopUsingVolume];
  return (*(*(a1 + 40) + 16))();
}

void __96__FSVolumeConnector_makeCloneOf_named_inDirectory_attributes_usingFlags_requestID_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    [a3 fs_posixCode];
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __96__FSVolumeConnector_makeCloneOf_named_inDirectory_attributes_usingFlags_requestID_replyHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __96__FSVolumeConnector_makeCloneOf_named_inDirectory_attributes_usingFlags_requestID_replyHandler___block_invoke_422;
    v10[3] = &unk_278FEDD48;
    v10[4] = v8;
    v11 = v5;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    [v9 enqueue:v10];
  }
}

void __96__FSVolumeConnector_makeCloneOf_named_inDirectory_attributes_usingFlags_requestID_replyHandler___block_invoke_422(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __96__FSVolumeConnector_makeCloneOf_named_inDirectory_attributes_usingFlags_requestID_replyHandler___block_invoke_2;
  v9[3] = &unk_278FED9B0;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 64);
  [v3 getStandardItemAttributesDataForNewItem:v2 replyHandler:v9];
}

void __96__FSVolumeConnector_makeCloneOf_named_inDirectory_attributes_usingFlags_requestID_replyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __96__FSVolumeConnector_makeCloneOf_named_inDirectory_attributes_usingFlags_requestID_replyHandler___block_invoke_3;
  v12[3] = &unk_278FEDE08;
  v11 = *(a1 + 32);
  v4 = *(v11 + 48);
  v5 = *(&v11 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v13 = v11;
  v14 = v8;
  v9 = *(a1 + 64);
  v15 = v3;
  v16 = v9;
  v10 = v3;
  [v4 enqueue:v12];
}

void __96__FSVolumeConnector_makeCloneOf_named_inDirectory_attributes_usingFlags_requestID_replyHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __96__FSVolumeConnector_makeCloneOf_named_inDirectory_attributes_usingFlags_requestID_replyHandler___block_invoke_4;
  v6[3] = &unk_278FEDDE0;
  v7 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v11 = *(a1 + 72);
  v10 = *(a1 + 64);
  [v2 getStandardItemAttributesDataForItem:v3 replyHandler:v6];
}

void __96__FSVolumeConnector_makeCloneOf_named_inDirectory_attributes_usingFlags_requestID_replyHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertIntoFHCache:*(a1 + 40)];
  v4 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __96__FSVolumeConnector_makeCloneOf_named_inDirectory_attributes_usingFlags_requestID_replyHandler___block_invoke_5;
  v6[3] = &unk_278FED988;
  v10 = *(a1 + 64);
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v5 = v3;
  [v4 getFreeSpaceInVolumeWithReplyHandler:v6];
}

void __96__FSVolumeConnector_makeCloneOf_named_inDirectory_attributes_usingFlags_requestID_replyHandler___block_invoke_5(void *a1, void *a2)
{
  v3 = a1[7];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2;
  v7 = [v5 fileHandle];
  (*(v3 + 16))(v3, 0, v4, v7, a1[6], v6);
}

- (void)setUpdateInterest:(id)a3 interest:(BOOL)a4 requestID:(unint64_t)a5 replyHandler:(id)a6
{
  v6 = a6;
  v7 = fskit_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [FSVolumeConnector setUpdateInterest:interest:requestID:replyHandler:];
  }

  v8 = fs_errorForPOSIXError(45);
  v6[2](v6, v8);
}

- (void)fetchVolumeMachPortLabeled:(id)a3 requestID:(unint64_t)a4 replyHandler:(id)a5
{
  v7 = a5;
  if ([*MEMORY[0x277D23D58] isEqualToString:a3])
  {
    WeakRetained = objc_loadWeakRetained(&self->_ourConnection);
    v9 = [WeakRetained valueForEntitlement:@"com.apple.private.LiveFS.setmachport"];

    if (v9 && ([v9 BOOLValue] & 1) != 0)
    {
      if ([(FSModuleVolume *)self->_ourVolume supportsKOIOOps]|| [(FSModuleVolume *)self->_ourVolume useMetaDataIO])
      {
        v10 = [(FSModuleVolume *)self->_ourVolume ourExtension];
        v11 = [v10 getFSMachPort];

        if (v11)
        {
          v7[2](v7, 0, v11);
        }

        else
        {
          v14 = fskit_std_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [FSVolumeConnector fetchVolumeMachPortLabeled:requestID:replyHandler:];
          }

          v7[2](v7, 102, 0);
        }
      }

      else
      {
        v15 = fskit_std_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [FSVolumeConnector fetchVolumeMachPortLabeled:requestID:replyHandler:];
        }

        v7[2](v7, 45, 0);
      }
    }

    else
    {
      v13 = fskit_std_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector fetchVolumeMachPortLabeled:requestID:replyHandler:];
      }

      v7[2](v7, 13, 0);
    }
  }

  else
  {
    v12 = fskit_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector fetchVolumeMachPortLabeled:requestID:replyHandler:];
    }

    v7[2](v7, 102, 0);
  }
}

- (void)parentsAndAttributesForItemsByID:(id)a3 requestID:(unint64_t)a4 replyHandler:(id)a5
{
  v5 = a5;
  v6 = fskit_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [FSVolumeConnector parentsAndAttributesForItemsByID:requestID:replyHandler:];
  }

  v5[2](v5, 45, 0);
}

- (void)pathConfigurationOf:(id)a3 propertyName:(int)a4 requestID:(unint64_t)a5 replyHandler:(id)a6
{
  v24 = a3;
  v9 = a6;
  v10 = v9;
  if (a4 <= 7)
  {
    switch(a4)
    {
      case 1:
        v11 = [(FSModuleVolume *)self->_ourVolume volume];
        v17 = [v11 maximumLinkCount];
        break;
      case 4:
        v11 = [(FSModuleVolume *)self->_ourVolume volume];
        v17 = [v11 maximumNameLength];
        break;
      case 7:
        v11 = [(FSModuleVolume *)self->_ourVolume volume];
        v13 = [v11 restrictsOwnershipChanges];
        v14 = v10[2];
        goto LABEL_20;
      default:
        goto LABEL_17;
    }

    v13 = v17;
    v14 = v10[2];
    v19 = v10;
    goto LABEL_25;
  }

  if (a4 > 11)
  {
    if (a4 == 12)
    {
      v20 = [(FSModuleVolume *)self->_ourVolume volume];
      v21 = [v20 supportedVolumeCapabilities];
      if ([v21 caseFormat])
      {
        v22 = [(FSModuleVolume *)self->_ourVolume volume];
        v23 = [v22 supportedVolumeCapabilities];
        (v10[2])(v10, 0, [v23 caseFormat] == 2);
      }

      else
      {
        (v10[2])(v10, 0, 1);
      }

      goto LABEL_27;
    }

    if (a4 == 18)
    {
      v15 = [(FSModuleVolume *)self->_ourVolume getMaxFileSizeInBits];
      if (v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = 45;
      }

      (v10[2])(v10, v16, v15);
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  if (a4 == 8)
  {
    v11 = [(FSModuleVolume *)self->_ourVolume volume];
    v18 = [v11 truncatesLongNames];
    v14 = v10[2];
    v13 = v18 ^ 1u;
LABEL_20:
    v19 = v10;
LABEL_25:
    v14(v19, 0, v13);
    goto LABEL_26;
  }

  if (a4 == 11)
  {
    v11 = [(FSModuleVolume *)self->_ourVolume volume];
    v12 = [v11 supportedVolumeCapabilities];
    (v10[2])(v10, 0, [v12 caseFormat] == 0);

LABEL_26:
    goto LABEL_27;
  }

LABEL_17:
  (v9[2])(v9, 45, 0);
LABEL_27:
}

- (void)renameItemIn:(id)a3 named:(id)a4 item:(id)a5 toDirectory:(id)a6 newName:(id)a7 toItem:(id)a8 usingFlags:(unsigned int)a9 requestID:(unint64_t)a10 replyHandler:(id)a11
{
  v61 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a11;
  v24 = self->_ourVolume;
  v25 = [(FSModuleVolume *)v24 getItemForFH:v17];
  v26 = v25;
  if (!v25)
  {
    v28 = fskit_std_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector renameItemIn:named:item:toDirectory:newName:toItem:usingFlags:requestID:replyHandler:];
    }

    goto LABEL_9;
  }

  if ([v25 type] == 2)
  {
    if (v17 == v20)
    {
      v27 = v26;
    }

    else
    {
      v27 = [(FSModuleVolume *)v24 getItemForFH:v20];
      if (!v27)
      {
        v28 = fskit_std_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [FSVolumeConnector renameItemIn:named:item:toDirectory:newName:toItem:usingFlags:requestID:replyHandler:];
        }

LABEL_9:

        (*(v23 + 2))(v23, 70, 0, 0, 0, 0, 0);
        goto LABEL_13;
      }
    }

    v48 = v27;
    if ([v27 type] == 2)
    {
      v31 = [(FSModuleVolume *)v24 getItemForFH:v19];
      v46 = v19;
      v47 = v31;
      if (!v31)
      {
        v33 = fskit_std_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [FSVolumeConnector renameItemIn:named:item:toDirectory:newName:toItem:usingFlags:requestID:replyHandler:];
        }

        goto LABEL_27;
      }

      if (!v22)
      {
        v41 = 0;
        v42 = v21;
        v43 = v18;
        v45 = 0;
LABEL_33:
        v37 = [(FSModuleVolume *)self->_ourVolume volume];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke;
        v49[3] = &unk_278FEDF70;
        v54 = v23;
        v49[4] = self;
        v50 = v47;
        v51 = v26;
        v36 = v48;
        v52 = v48;
        v53 = v45;
        v18 = v43;
        v21 = v42;
        v38 = v45;
        [v37 renameItem:v50 inDirectory:v51 named:v43 toNewName:v49 inDirectory:? overItem:? replyHandler:?];

        v35 = v47;
        v22 = v41;
        goto LABEL_34;
      }

      if (v19 == v22)
      {
        v32 = v31;
      }

      else
      {
        v32 = [(FSModuleVolume *)v24 getItemForFH:v22];
        if (!v32)
        {
          v33 = fskit_std_log();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [FSVolumeConnector renameItemIn:named:item:toDirectory:newName:toItem:usingFlags:requestID:replyHandler:];
          }

LABEL_27:

          (*(v23 + 2))(v23, 70, 0, 0, 0, 0, 0);
LABEL_28:
          v35 = v47;
          v36 = v48;
LABEL_34:

          v19 = v46;
          goto LABEL_13;
        }
      }

      v45 = v32;
      v44 = [v32 type];
      if (v44 == [v47 type])
      {
LABEL_32:
        v41 = v22;
        v42 = v21;
        v43 = v18;
        goto LABEL_33;
      }

      if ([v45 type] == 2)
      {
        v39 = fskit_std_log();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v56 = "[FSVolumeConnector renameItemIn:named:item:toDirectory:newName:toItem:usingFlags:requestID:replyHandler:]";
          v57 = 1024;
          LODWORD(v58) = 21;
          _os_log_impl(&dword_24A929000, v39, OS_LOG_TYPE_INFO, "%s: Given fromItem is not a directory, but toItem is a directory. Error = %d.", buf, 0x12u);
        }

        (*(v23 + 2))(v23, 21, 0, 0, 0, 0, 0);
      }

      else
      {
        if ([v47 type] != 2)
        {
          goto LABEL_32;
        }

        v40 = fskit_std_log();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v56 = "[FSVolumeConnector renameItemIn:named:item:toDirectory:newName:toItem:usingFlags:requestID:replyHandler:]";
          v57 = 1024;
          LODWORD(v58) = 20;
          _os_log_impl(&dword_24A929000, v40, OS_LOG_TYPE_INFO, "%s: Given fromItem is a directory, but toItem is not a directory. Error = %d.", buf, 0x12u);
        }

        (*(v23 + 2))(v23, 20, 0, 0, 0, 0, 0);
      }

      goto LABEL_28;
    }

    v34 = fskit_std_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v56 = "[FSVolumeConnector renameItemIn:named:item:toDirectory:newName:toItem:usingFlags:requestID:replyHandler:]";
      v57 = 2048;
      v58 = [v48 type];
      v59 = 1024;
      v60 = 20;
      _os_log_impl(&dword_24A929000, v34, OS_LOG_TYPE_INFO, "%s: Given toDirectory item is not a directory (type = %lu). Error = %d.", buf, 0x1Cu);
    }

    (*(v23 + 2))(v23, 20, 0, 0, 0, 0, 0);
  }

  else
  {
    v29 = fskit_std_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v56 = "[FSVolumeConnector renameItemIn:named:item:toDirectory:newName:toItem:usingFlags:requestID:replyHandler:]";
      v57 = 2048;
      v58 = [v26 type];
      v59 = 1024;
      v60 = 20;
      _os_log_impl(&dword_24A929000, v29, OS_LOG_TYPE_INFO, "%s: Given fromDirectory item is not a directory (type = %lu). Error = %d.", buf, 0x1Cu);
    }

    (*(v23 + 2))(v23, 20, 0, 0, 0, 0, 0);
  }

LABEL_13:

  v30 = *MEMORY[0x277D85DE8];
}

void __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    (*(*(a1 + 72) + 16))(*(a1 + 72), [v6 fs_posixCode], 0, 0, 0, 0, 0);
  }

  else if (v5)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke_427;
    v23[3] = &unk_278FEDF48;
    v22 = *(a1 + 32);
    v8 = *(v22 + 48);
    v9 = *(&v22 + 1);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    v24 = v22;
    v25 = v12;
    v26 = *(a1 + 64);
    v13 = *(a1 + 72);
    v27 = 0;
    v28 = v13;
    [v8 enqueue:v23];
  }

  else
  {
    v14 = fskit_std_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    (*(*(a1 + 72) + 16))(*(a1 + 72), 43, 0, 0, 0, 0, 0);
  }
}

void __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke_427(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke_2;
  v4[3] = &unk_278FEDF20;
  v4[4] = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v9 = *(a1 + 80);
  v8 = *(a1 + 72);
  [v2 getStandardItemAttributesDataForItem:v3 replyHandler:v4];
}

void __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke_3;
  v11[3] = &unk_278FEDEF8;
  v10 = *(a1 + 32);
  v4 = *(v10 + 48);
  v5 = *(&v10 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  v16 = *(a1 + 72);
  v14 = *(a1 + 64);
  v15 = v3;
  v9 = v3;
  [v4 enqueue:v11];
}

void __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke_4;
  v4[3] = &unk_278FEDED0;
  v4[4] = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = *(a1 + 80);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  [v2 getStandardItemAttributesDataForItem:v3 replyHandler:v4];
}

void __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke_5;
  v11[3] = &unk_278FEDA50;
  v10 = *(a1 + 32);
  v4 = *(v10 + 48);
  v5 = *(&v10 + 1);
  v6 = *(a1 + 48);
  v16 = *(a1 + 72);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  v14 = *(a1 + 64);
  v15 = v3;
  v9 = v3;
  [v4 enqueue:v11];
}

void __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke_6;
  v4[3] = &unk_278FEDA28;
  v4[4] = v2;
  v5 = *(a1 + 48);
  v9 = *(a1 + 80);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  [v2 getStandardItemAttributesDataForItem:v3 replyHandler:v4];
}

void __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke_7;
  v11[3] = &unk_278FEDEA8;
  v10 = *(a1 + 32);
  v4 = *(v10 + 48);
  v5 = *(&v10 + 1);
  v16 = *(a1 + 72);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  v14 = *(a1 + 64);
  v15 = v3;
  v9 = v3;
  [v4 enqueue:v11];
}

void __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke_8;
  v4[3] = &unk_278FEDE80;
  v4[4] = v2;
  v9 = *(a1 + 80);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  [v2 getStandardItemAttributesDataForItem:v3 replyHandler:v4];
}

void __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke_9;
  v12[3] = &unk_278FEDE58;
  v16 = *(a1 + 72);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v13 = v10;
  v14 = v9;
  v15 = v3;
  v11 = v3;
  [v4 getFreeSpaceInVolumeWithReplyHandler:v12];
}

void __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke_9(void *a1, void *a2)
{
  v3 = a1[9];
  v4 = a1[4];
  v5 = a2;
  (*(v3 + 16))(v3, [v4 fs_posixCode], a1[5], a1[6], a1[7], a1[8], v5);
}

- (void)replenishSearchCreditsFor:(id)a3 credits:(unsigned int)a4 requestID:(unint64_t)a5 replyHandler:(id)a6
{
  v6 = a6;
  v7 = fskit_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [FSVolumeConnector replenishSearchCreditsFor:credits:requestID:replyHandler:];
  }

  v6[2](v6, 45);
}

- (void)abortSearch:(id)a3 requestID:(unint64_t)a4 replyHandler:(id)a5
{
  v5 = a5;
  v6 = fskit_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [FSVolumeConnector abortSearch:requestID:replyHandler:];
  }

  v5[2](v5, 45);
}

- (void)search:(id)a3 token:(id)a4 criteria:(id)a5 resumeAt:(id)a6 maxData:(unsigned int)a7 maxDelay:(double)a8 initialCredits:(unsigned int)a9 requestID:(unint64_t)a10 replyHandler:(id)a11
{
  v11 = a11;
  v12 = fskit_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [FSVolumeConnector search:token:criteria:resumeAt:maxData:maxDelay:initialCredits:requestID:replyHandler:];
  }

  v11[2](v11, 45);
}

- (NSXPCConnection)ourConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_ourConnection);

  return WeakRetained;
}

void __67__FSVolumeConnector_getStandardItemAttributesForItem_replyHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 fs_posixCode];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__FSVolumeConnector_getStandardItemAttributesForItem_replyHandler___block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_1(&dword_24A929000, a1, a3, "%s: Reported attributes are incomplete", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __67__FSVolumeConnector_getStandardItemAttributesForItem_replyHandler___block_invoke_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_1(&dword_24A929000, a1, a3, "%s:nil attributes", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __64__FSVolumeConnector_getIOItemAttributesSubsetData_replyHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __58__FSVolumeConnector_getFreeSpaceInVolumeWithReplyHandler___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*(*a1 + 24) volume];
  v2 = [v1 name];
  v3 = [v2 debugDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)blockmapFile:range:flags:operationID:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)blockmapFile:range:flags:operationID:replyHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__FSVolumeConnector_blockmapFile_range_flags_operationID_replyHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__FSVolumeConnector_blockmapFile_range_flags_operationID_replyHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)checkAccessTo:requestedAccess:requestID:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)checkAccessTo:requestedAccess:requestID:replyHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __74__FSVolumeConnector_checkAccessTo_requestedAccess_requestID_replyHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)endIO:range:status:flags:operationID:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)endIO:range:status:flags:operationID:replyHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__FSVolumeConnector_endIO_range_status_flags_operationID_replyHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)otherAttributeOf:named:requestID:replyHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)otherAttributeOf:(void *)a1 named:requestID:replyHandler:.cold.3(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 volume];
  v2 = [v1 name];
  v3 = [v2 debugDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)otherAttributeOf:named:requestID:replyHandler:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setOtherAttributeOf:named:value:requestID:replyHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __76__FSVolumeConnector_setOtherAttributeOf_named_value_requestID_replyHandler___block_invoke_6_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_1(&dword_24A929000, a1, a3, "%s:nil innerNewName", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)volumeStatistics:(id *)a1 requestID:replyHandler:.cold.1(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*a1 volume];
  v2 = [v1 name];
  v3 = [v2 debugDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)createIn:named:type:attributes:requestID:replyHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __75__FSVolumeConnector_createIn_named_type_attributes_requestID_replyHandler___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_24A929000, v2, v3, "%s:error:%@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __75__FSVolumeConnector_createIn_named_type_attributes_requestID_replyHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __75__FSVolumeConnector_createIn_named_type_attributes_requestID_replyHandler___block_invoke_3_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)lookupIn:name:flags:requestID:replyHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__FSVolumeConnector_lookupIn_name_flags_requestID_replyHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __64__FSVolumeConnector_lookupIn_name_flags_requestID_replyHandler___block_invoke_4_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeDirectory:from:named:usingFlags:requestID:replyHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:file:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeDirectory:from:named:usingFlags:requestID:replyHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:dir:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __82__FSVolumeConnector_removeDirectory_from_named_usingFlags_requestID_replyHandler___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeItem:from:named:usingFlags:requestID:replyHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:file:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeItem:from:named:usingFlags:requestID:replyHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:dir:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __77__FSVolumeConnector_removeItem_from_named_usingFlags_requestID_replyHandler___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)reclaim:requestID:replyHandler:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6(&dword_24A929000, v0, v1, "%s:start:theItem:%@:reqID:%llu", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)reclaim:requestID:replyHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__FSVolumeConnector_reclaim_requestID_replyHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)open:withMode:requestID:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)open:withMode:requestID:replyHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __58__FSVolumeConnector_open_withMode_requestID_replyHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __58__FSVolumeConnector_open_withMode_requestID_replyHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)close:keepingMode:requestID:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)close:keepingMode:requestID:replyHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__FSVolumeConnector_close_keepingMode_requestID_replyHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__FSVolumeConnector_close_keepingMode_requestID_replyHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeTo:atOffset:fromBuffer:requestID:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeTo:atOffset:fromBuffer:requestID:replyHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __72__FSVolumeConnector_writeTo_atOffset_fromBuffer_requestID_replyHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __72__FSVolumeConnector_writeTo_atOffset_fromBuffer_requestID_replyHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)readFrom:atOffset:intoBuffer:requestID:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)readFrom:atOffset:intoBuffer:requestID:replyHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __73__FSVolumeConnector_readFrom_atOffset_intoBuffer_requestID_replyHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __73__FSVolumeConnector_readFrom_atOffset_intoBuffer_requestID_replyHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setFileAttributesOf:to:requestID:replyHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__FSVolumeConnector_setFileAttributesOf_to_requestID_replyHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__FSVolumeConnector_setFileAttributesOf_to_requestID_replyHandler___block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_1(&dword_24A929000, a1, a3, "%s:nil attributes", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)fileAttributes:requestedAttributes:requestID:replyHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __79__FSVolumeConnector_fileAttributes_requestedAttributes_requestID_replyHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_1(&dword_24A929000, a1, a3, "%s:nil attributes", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)readDirectory:withAttr:requestedAttributes:intoBuffer:cookie:verifier:requestID:replyHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __114__FSVolumeConnector_readDirectory_withAttr_requestedAttributes_intoBuffer_cookie_verifier_requestID_replyHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __114__FSVolumeConnector_readDirectory_withAttr_requestedAttributes_intoBuffer_cookie_verifier_requestID_replyHandler___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __114__FSVolumeConnector_readDirectory_withAttr_requestedAttributes_intoBuffer_cookie_verifier_requestID_replyHandler___block_invoke_cold_3(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [*a1 bytesPacked];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_3(&dword_24A929000, v1, v2, "%s: Packer is out of space, bytes packed (%ld)", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)readSymbolicLinkOf:requestID:replyHandler:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6(&dword_24A929000, v0, v1, "%s:start:theDirectory:%@:reqID:%llu", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)readSymbolicLinkOf:requestID:replyHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__FSVolumeConnector_readSymbolicLinkOf_requestID_replyHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__FSVolumeConnector_readSymbolicLinkOf_requestID_replyHandler___block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_1(&dword_24A929000, a1, a3, "%s:nil contents", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __63__FSVolumeConnector_readSymbolicLinkOf_requestID_replyHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  *v4 = 136315650;
  *&v4[4] = "[FSVolumeConnector readSymbolicLinkOf:requestID:replyHandler:]_block_invoke_2";
  *&v4[12] = 2112;
  *&v4[14] = *(a1 + 32);
  *&v4[22] = 2112;
  OUTLINED_FUNCTION_6(&dword_24A929000, a2, a3, "%s:reply:error:0:linkData:%@:linkAttrs:%@", *v4, *&v4[8], *&v4[16], a2);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)makeSymlinkIn:named:contents:attributes:requestID:replyHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __84__FSVolumeConnector_makeSymlinkIn_named_contents_attributes_requestID_replyHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __84__FSVolumeConnector_makeSymlinkIn_named_contents_attributes_requestID_replyHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)makeLinkOf:named:inDirectory:requestID:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)makeLinkOf:named:inDirectory:requestID:replyHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __73__FSVolumeConnector_makeLinkOf_named_inDirectory_requestID_replyHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __73__FSVolumeConnector_makeLinkOf_named_inDirectory_requestID_replyHandler___block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_1(&dword_24A929000, a1, a3, "%s: linkName is nil", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)xattrOf:named:requestID:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)xattrOf:named:requestID:replyHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __58__FSVolumeConnector_xattrOf_named_requestID_replyHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __58__FSVolumeConnector_xattrOf_named_requestID_replyHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __58__FSVolumeConnector_xattrOf_named_requestID_replyHandler___block_invoke_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_1(&dword_24A929000, a1, a3, "%s:nil value", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setXattrOf:named:value:how:requestID:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setXattrOf:named:value:how:requestID:replyHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__FSVolumeConnector_setXattrOf_named_value_how_requestID_replyHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)listXattrsOf:requestID:replyHandler:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6(&dword_24A929000, v0, v1, "%s:start:theItem:%@:%llu", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)listXattrsOf:requestID:replyHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)listXattrsOf:requestID:replyHandler:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__FSVolumeConnector_listXattrsOf_requestID_replyHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__FSVolumeConnector_listXattrsOf_requestID_replyHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __57__FSVolumeConnector_listXattrsOf_requestID_replyHandler___block_invoke_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_1(&dword_24A929000, a1, a3, "%s:nil value", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)mount:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __40__FSVolumeConnector_mount_replyHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 fs_posixCode];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)unmount:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __29__FSVolumeConnector_unmount___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)makeCloneOf:named:inDirectory:attributes:usingFlags:requestID:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)makeCloneOf:named:inDirectory:attributes:usingFlags:requestID:replyHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:file:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)makeCloneOf:named:inDirectory:attributes:usingFlags:requestID:replyHandler:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __96__FSVolumeConnector_makeCloneOf_named_inDirectory_attributes_usingFlags_requestID_replyHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:reply:error:%d", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setUpdateInterest:interest:requestID:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchVolumeMachPortLabeled:requestID:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchVolumeMachPortLabeled:requestID:replyHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchVolumeMachPortLabeled:requestID:replyHandler:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchVolumeMachPortLabeled:requestID:replyHandler:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)parentsAndAttributesForItemsByID:requestID:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)renameItemIn:named:item:toDirectory:newName:toItem:usingFlags:requestID:replyHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:toDir:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)renameItemIn:named:item:toDirectory:newName:toItem:usingFlags:requestID:replyHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:file:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)renameItemIn:named:item:toDirectory:newName:toItem:usingFlags:requestID:replyHandler:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:fromItem:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)renameItemIn:named:item:toDirectory:newName:toItem:usingFlags:requestID:replyHandler:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_1(&dword_24A929000, v0, v1, "%s:fromDir:error:%d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_1(&dword_24A929000, a1, a3, "%s:nil newName", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)replenishSearchCreditsFor:credits:requestID:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)abortSearch:requestID:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)search:token:criteria:resumeAt:maxData:maxDelay:initialCredits:requestID:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end