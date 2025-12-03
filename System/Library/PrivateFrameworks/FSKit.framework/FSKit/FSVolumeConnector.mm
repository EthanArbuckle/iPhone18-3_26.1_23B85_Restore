@interface FSVolumeConnector
+ (id)volumeConnectorModuleVolume:(id)volume connection:(id)connection;
+ (id)volumeWithName:(id)name resource:(id)resource connection:(id)connection;
- (FSVolumeConnector)initWithModuleVolume:(id)volume connection:(id)connection;
- (NSXPCConnection)ourConnection;
- (void)abortSearch:(id)search requestID:(unint64_t)d replyHandler:(id)handler;
- (void)blockmapFile:(id)file range:(_NSRange)range flags:(unint64_t)flags operationID:(unint64_t)d replyHandler:(id)handler;
- (void)checkAccessTo:(id)to requestedAccess:(unint64_t)access requestID:(unint64_t)d replyHandler:(id)handler;
- (void)close:(id)close keepingMode:(int)mode requestID:(unint64_t)d replyHandler:(id)handler;
- (void)createIn:(id)in named:(id)named type:(int64_t)type attributes:(id)attributes requestID:(unint64_t)d replyHandler:(id)handler;
- (void)endIO:(id)o range:(_NSRange)range status:(int)status flags:(unint64_t)flags operationID:(unint64_t)d replyHandler:(id)handler;
- (void)fetchVolumeMachPortLabeled:(id)labeled requestID:(unint64_t)d replyHandler:(id)handler;
- (void)fileAttributes:(id)attributes requestedAttributes:(unint64_t)requestedAttributes requestID:(unint64_t)d replyHandler:(id)handler;
- (void)getFreeSpaceInVolumeWithReplyHandler:(id)handler;
- (void)getIOItemAttributesSubsetData:(id)data replyHandler:(id)handler;
- (void)getRootFileHandle:(id)handle;
- (void)getStandardItemAttributesDataForItem:(id)item replyHandler:(id)handler;
- (void)getStandardItemAttributesDataForNewItem:(id)item replyHandler:(id)handler;
- (void)getStandardItemAttributesForItem:(id)item replyHandler:(id)handler;
- (void)listXattrsOf:(id)of requestID:(unint64_t)d replyHandler:(id)handler;
- (void)lookupIn:(id)in name:(id)name flags:(unsigned int)flags requestID:(unint64_t)d replyHandler:(id)handler;
- (void)makeLinkOf:(id)of named:(id)named inDirectory:(id)directory requestID:(unint64_t)d replyHandler:(id)handler;
- (void)makeSymlinkIn:(id)in named:(id)named contents:(id)contents attributes:(id)attributes requestID:(unint64_t)d replyHandler:(id)handler;
- (void)mount:(id)mount replyHandler:(id)handler;
- (void)open:(id)open withMode:(int)mode requestID:(unint64_t)d replyHandler:(id)handler;
- (void)otherAttributeOf:(id)of named:(id)named requestID:(unint64_t)d replyHandler:(id)handler;
- (void)parentsAndAttributesForItemsByID:(id)d requestID:(unint64_t)iD replyHandler:(id)handler;
- (void)pathConfigurationOf:(id)of propertyName:(int)name requestID:(unint64_t)d replyHandler:(id)handler;
- (void)readDirectory:(id)directory intoBuffer:(id)buffer cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d replyHandler:(id)handler;
- (void)readDirectory:(id)directory requestedAttributes:(unint64_t)attributes intoBuffer:(id)buffer cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d replyHandler:(id)handler;
- (void)readFrom:(id)from atOffset:(unint64_t)offset intoBuffer:(id)buffer requestID:(unint64_t)d replyHandler:(id)handler;
- (void)readSymbolicLinkOf:(id)of requestID:(unint64_t)d replyHandler:(id)handler;
- (void)reclaim:(id)reclaim requestID:(unint64_t)d replyHandler:(id)handler;
- (void)removeDirectory:(id)directory from:(id)from named:(id)named usingFlags:(int)flags requestID:(unint64_t)d replyHandler:(id)handler;
- (void)removeItem:(id)item from:(id)from named:(id)named usingFlags:(int)flags requestID:(unint64_t)d replyHandler:(id)handler;
- (void)renameItemIn:(id)in named:(id)named item:(id)item toDirectory:(id)directory newName:(id)name toItem:(id)toItem usingFlags:(unsigned int)flags requestID:(unint64_t)self0 replyHandler:(id)self1;
- (void)replenishSearchCreditsFor:(id)for credits:(unsigned int)credits requestID:(unint64_t)d replyHandler:(id)handler;
- (void)search:(id)search token:(id)token criteria:(id)criteria resumeAt:(id)at maxData:(unsigned int)data maxDelay:(double)delay initialCredits:(unsigned int)credits requestID:(unint64_t)self0 replyHandler:(id)self1;
- (void)setFileAttributesOf:(id)of to:(id)to requestID:(unint64_t)d replyHandler:(id)handler;
- (void)setOtherAttributeOf:(id)of named:(id)named value:(id)value requestID:(unint64_t)d replyHandler:(id)handler;
- (void)setUpdateInterest:(id)interest interest:(BOOL)a4 requestID:(unint64_t)d replyHandler:(id)handler;
- (void)setXattrOf:(id)of named:(id)named value:(id)value how:(unint64_t)how requestID:(unint64_t)d replyHandler:(id)handler;
- (void)synchronize:(unsigned int)synchronize replyHandler:(id)handler;
- (void)unmount:(id)unmount;
- (void)volumeStatistics:(id)statistics requestID:(unint64_t)d replyHandler:(id)handler;
- (void)writeTo:(id)to atOffset:(unint64_t)offset fromBuffer:(id)buffer requestID:(unint64_t)d replyHandler:(id)handler;
- (void)xattrOf:(id)of named:(id)named requestID:(unint64_t)d replyHandler:(id)handler;
@end

@implementation FSVolumeConnector

- (FSVolumeConnector)initWithModuleVolume:(id)volume connection:(id)connection
{
  volumeCopy = volume;
  connectionCopy = connection;
  v21.receiver = self;
  v21.super_class = FSVolumeConnector;
  v9 = [(FSVolumeConnector *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ourVolume, volume);
    objc_storeWeak(&v10->_ourConnection, connectionCopy);
    v11 = [[FSItemGetAttributesRequest alloc] initWithWantedLIAttributes:0x4000000000003FE7];
    standardGetAttrReq = v10->_standardGetAttrReq;
    v10->_standardGetAttrReq = v11;

    atomic_store(0, &v10->_nextFreeSpaceSeqno);
    atomic_store(0, &v10->_nextAttributeSeqno);
    v13 = [FSWorkQueue alloc];
    v14 = MEMORY[0x277CCACA8];
    volume = [volumeCopy volume];
    volumeID = [volume volumeID];
    v17 = [v14 stringWithFormat:@"connector.%@", volumeID];
    v18 = [(FSWorkQueue *)v13 initQueueWithDomain:v17 concurrency:16];
    workQueue = v10->_workQueue;
    v10->_workQueue = v18;
  }

  return v10;
}

+ (id)volumeConnectorModuleVolume:(id)volume connection:(id)connection
{
  connectionCopy = connection;
  volumeCopy = volume;
  v8 = [[self alloc] initWithModuleVolume:volumeCopy connection:connectionCopy];

  return v8;
}

+ (id)volumeWithName:(id)name resource:(id)resource connection:(id)connection
{
  connectionCopy = connection;
  v9 = [FSModuleVolume volumeWithName:name resource:resource];
  v10 = [[self alloc] initWithModuleVolume:v9 connection:connectionCopy];

  return v10;
}

- (void)getStandardItemAttributesForItem:(id)item replyHandler:(id)handler
{
  handlerCopy = handler;
  ourVolume = self->_ourVolume;
  itemCopy = item;
  volume = [(FSModuleVolume *)ourVolume volume];
  standardGetAttrReq = self->_standardGetAttrReq;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__FSVolumeConnector_getStandardItemAttributesForItem_replyHandler___block_invoke;
  v12[3] = &unk_278FED7A8;
  v12[4] = self;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [volume getAttributes:standardGetAttrReq ofItem:itemCopy replyHandler:v12];
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

- (void)getStandardItemAttributesDataForItem:(id)item replyHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__FSVolumeConnector_getStandardItemAttributesDataForItem_replyHandler___block_invoke;
  v8[3] = &unk_278FED7D0;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(FSVolumeConnector *)self getStandardItemAttributesForItem:item replyHandler:v8];
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

- (void)getStandardItemAttributesDataForNewItem:(id)item replyHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__FSVolumeConnector_getStandardItemAttributesDataForNewItem_replyHandler___block_invoke;
  v10[3] = &unk_278FED7F8;
  v11 = itemCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = itemCopy;
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

- (void)getIOItemAttributesSubsetData:(id)data replyHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__4;
  v14[4] = __Block_byref_object_dispose__4;
  v15 = 0;
  v8 = [[FSItemGetAttributesRequest alloc] initWithWantedLIAttributes:7616];
  volume = [(FSModuleVolume *)self->_ourVolume volume];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__FSVolumeConnector_getIOItemAttributesSubsetData_replyHandler___block_invoke;
  v11[3] = &unk_278FED820;
  v10 = handlerCopy;
  v11[4] = self;
  v12 = v10;
  v13 = v14;
  [volume getAttributes:v8 ofItem:dataCopy replyHandler:v11];

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

- (void)getFreeSpaceInVolumeWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__FSVolumeConnector_getFreeSpaceInVolumeWithReplyHandler___block_invoke;
  v7[3] = &unk_278FED618;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
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

- (void)blockmapFile:(id)file range:(_NSRange)range flags:(unint64_t)flags operationID:(unint64_t)d replyHandler:(id)handler
{
  length = range.length;
  location = range.location;
  v45 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  handlerCopy = handler;
  v15 = fskit_std_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v34 = "[FSVolumeConnector blockmapFile:range:flags:operationID:replyHandler:]";
    v35 = 2112;
    v36 = fileCopy;
    v37 = 2048;
    v38 = location;
    v39 = 2048;
    v40 = length;
    v41 = 2048;
    flagsCopy = flags;
    v43 = 2048;
    dCopy = d;
    _os_log_debug_impl(&dword_24A929000, v15, OS_LOG_TYPE_DEBUG, "%s:start:theFile:%@:theRangeLocation:%lu:theRangeLength:%lu:flags:%lu:operationID:%llu", buf, 0x3Eu);
  }

  v16 = self->_ourVolume;
  if ([(FSModuleVolume *)v16 supportsKOIOOps])
  {
    volume = [(FSModuleVolume *)v16 volume];
    v18 = [(FSModuleVolume *)v16 getItemForFH:fileCopy];
    v19 = v18;
    if (v18)
    {
      if ([v18 type] == 1)
      {
        v28 = volume;
        v20 = [[FSExtentPacker alloc] initWithBlockmapFlags:flags];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __71__FSVolumeConnector_blockmapFile_range_flags_operationID_replyHandler___block_invoke;
        v29[3] = &unk_278FED870;
        selfCopy = self;
        v32 = handlerCopy;
        v30 = v20;
        v21 = v20;
        [v28 blockmapFile:v19 offset:location length:length flags:flags operationID:d packer:v21 replyHandler:v29];

        volume = v28;
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
          type = [v19 type];
          *buf = 136315650;
          v34 = "[FSVolumeConnector blockmapFile:range:flags:operationID:replyHandler:]";
          v35 = 2048;
          v36 = type;
          v37 = 1024;
          LODWORD(v38) = v24;
          _os_log_impl(&dword_24A929000, v25, OS_LOG_TYPE_INFO, "%s: Given item is not a file (type = %lu). Error = %d.", buf, 0x1Cu);
        }

        (*(handlerCopy + 2))(handlerCopy, v24, 0, 0);
      }
    }

    else
    {
      v23 = fskit_std_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector blockmapFile:range:flags:operationID:replyHandler:];
      }

      (*(handlerCopy + 2))(handlerCopy, 70, 0, 0);
    }
  }

  else
  {
    v22 = fskit_std_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector blockmapFile:range:flags:operationID:replyHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 45, 0, 0);
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

- (void)checkAccessTo:(id)to requestedAccess:(unint64_t)access requestID:(unint64_t)d replyHandler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  toCopy = to;
  handlerCopy = handler;
  v12 = fskit_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v22 = "[FSVolumeConnector checkAccessTo:requestedAccess:requestID:replyHandler:]";
    v23 = 2112;
    v24 = toCopy;
    v25 = 2048;
    accessCopy = access;
    v27 = 2048;
    dCopy = d;
    _os_log_debug_impl(&dword_24A929000, v12, OS_LOG_TYPE_DEBUG, "%s:start:theItem:%@:access:%ld:reqID:%llu", buf, 0x2Au);
  }

  v13 = self->_ourVolume;
  if ([(FSModuleVolume *)v13 supportsAccessOps])
  {
    volume = [(FSModuleVolume *)v13 volume];
    v15 = [(FSModuleVolume *)v13 getItemForFH:toCopy];
    if (v15)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __74__FSVolumeConnector_checkAccessTo_requestedAccess_requestID_replyHandler___block_invoke;
      v19[3] = &unk_278FECE48;
      v20 = handlerCopy;
      [volume checkAccessToItem:v15 requestedAccess:access replyHandler:v19];
    }

    else
    {
      v17 = fskit_std_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector checkAccessTo:requestedAccess:requestID:replyHandler:];
      }

      (*(handlerCopy + 2))(handlerCopy, 70);
    }
  }

  else
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector checkAccessTo:requestedAccess:requestID:replyHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 45);
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

- (void)endIO:(id)o range:(_NSRange)range status:(int)status flags:(unint64_t)flags operationID:(unint64_t)d replyHandler:(id)handler
{
  length = range.length;
  location = range.location;
  v46 = *MEMORY[0x277D85DE8];
  oCopy = o;
  handlerCopy = handler;
  v16 = fskit_std_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316674;
    v33 = "[FSVolumeConnector endIO:range:status:flags:operationID:replyHandler:]";
    v34 = 2112;
    v35 = oCopy;
    v36 = 2048;
    v37 = location;
    v38 = 2048;
    v39 = length;
    v40 = 1024;
    statusCopy = status;
    v42 = 2048;
    flagsCopy = flags;
    v44 = 2048;
    dCopy = d;
    _os_log_debug_impl(&dword_24A929000, v16, OS_LOG_TYPE_DEBUG, "%s:start:theFile:%@:originalRangeLocation:%lu:originalRangeLength:%lu:ioStatus:%d:flags:%lu:operationID:%llu", buf, 0x44u);
  }

  v17 = self->_ourVolume;
  if ([(FSModuleVolume *)v17 supportsKOIOOps])
  {
    volume = [(FSModuleVolume *)v17 volume];
    v18 = [(FSModuleVolume *)v17 getItemForFH:oCopy];
    v19 = v18;
    if (v18)
    {
      if ([v18 type] == 1)
      {
        if (status)
        {
          v27 = fs_errorForPOSIXError(status);
        }

        else
        {
          v27 = 0;
        }

        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __71__FSVolumeConnector_endIO_range_status_flags_operationID_replyHandler___block_invoke;
        v29[3] = &unk_278FED870;
        v31 = handlerCopy;
        v29[4] = self;
        v30 = v19;
        v25 = volume;
        [volume completeIOForFile:v30 offset:location length:length status:v27 flags:flags operationID:d replyHandler:v29];
        if (status)
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
        type = [v19 type];
        *buf = 136315650;
        v33 = "[FSVolumeConnector endIO:range:status:flags:operationID:replyHandler:]";
        v34 = 2048;
        v35 = type;
        v36 = 1024;
        LODWORD(v37) = v22;
        _os_log_impl(&dword_24A929000, v23, OS_LOG_TYPE_INFO, "%s: Given item is not a file (type = %lu). Error = %d.", buf, 0x1Cu);
      }

      (*(handlerCopy + 2))(handlerCopy, v22, 0);
    }

    else
    {
      v21 = fskit_std_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector endIO:range:status:flags:operationID:replyHandler:];
      }

      (*(handlerCopy + 2))(handlerCopy, 70, 0);
    }

    v25 = volume;
LABEL_25:

    goto LABEL_26;
  }

  v20 = fskit_std_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [FSVolumeConnector endIO:range:status:flags:operationID:replyHandler:];
  }

  (*(handlerCopy + 2))(handlerCopy, 45, 0);
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

- (void)otherAttributeOf:(id)of named:(id)named requestID:(unint64_t)d replyHandler:(id)handler
{
  v116[3] = *MEMORY[0x277D85DE8];
  ofCopy = of;
  handlerCopy = handler;
  v12 = self->_ourVolume;
  string = [named string];
  v14 = fskit_std_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "[FSVolumeConnector otherAttributeOf:named:requestID:replyHandler:]";
    *&buf[12] = 2112;
    *&buf[14] = ofCopy;
    *&buf[22] = 2112;
    *&buf[24] = string;
    LOWORD(v116[0]) = 2048;
    *(v116 + 2) = d;
    _os_log_debug_impl(&dword_24A929000, v14, OS_LOG_TYPE_DEBUG, "%s:start:theItem:%@:name:%@:reqID:%llu", buf, 0x2Au);
  }

  if (![string isEqual:@"_S_f_location"])
  {
    if ([string isEqualToString:@"_N_mntflags"])
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
        volume = [(FSModuleVolume *)v12 volume];
        if ([volume itemDeactivationPolicy] == -1)
        {
          v23 |= 0x80000000uLL;
        }

        else
        {
          itemDeactivationPolicy = [volume itemDeactivationPolicy];
          v23 |= ([volume itemDeactivationPolicy] << 32) & 0x200000000 | ((itemDeactivationPolicy & 1) << 32);
        }
      }

      useMetaDataIO = [(FSModuleVolume *)v12 useMetaDataIO];
      v43 = v23 | 0x400000000;
      if (!useMetaDataIO)
      {
        v43 = v23;
      }

      v44 = MEMORY[0x277CBEA90];
      v45 = v43 | 0x800000000;
      goto LABEL_52;
    }

    if ([string isEqual:@"_N_PC_LINK_MAX"])
    {
      v29 = MEMORY[0x277CBEA90];
      volume2 = [(FSModuleVolume *)v12 volume];
      maximumLinkCount = [volume2 maximumLinkCount];
LABEL_29:
      v34 = maximumLinkCount;
LABEL_30:
      v35 = [v29 dataWithInteger:v34];
      goto LABEL_40;
    }

    if ([string isEqual:@"_N_PC_NAME_MAX"])
    {
      v29 = MEMORY[0x277CBEA90];
      volume2 = [(FSModuleVolume *)v12 volume];
      maximumLinkCount = [volume2 maximumNameLength];
      goto LABEL_29;
    }

    if ([string isEqual:@"_B_PC_NO_TRUNC"])
    {
      v29 = MEMORY[0x277CBEA90];
      volume2 = [(FSModuleVolume *)v12 volume];
      v34 = [volume2 truncatesLongNames] ^ 1;
      goto LABEL_30;
    }

    if ([string isEqual:@"_N_PC_FILESIZEBITS"])
    {
      getMaxFileSizeInBits = [(FSModuleVolume *)self->_ourVolume getMaxFileSizeInBits];
LABEL_59:
      if (!getMaxFileSizeInBits)
      {
        handlerCopy[2](handlerCopy, 45);
        goto LABEL_144;
      }

      volumeStatistics = [MEMORY[0x277CBEA90] dataWithInteger:getMaxFileSizeInBits];
      (handlerCopy[2])(handlerCopy, 0, volumeStatistics);
      goto LABEL_54;
    }

    if ([string isEqual:@"_N_PC_XATTR_SIZE_BITS"])
    {
      getMaxFileSizeInBits = [(FSModuleVolume *)self->_ourVolume getMaxXattrSizeInBits];
      goto LABEL_59;
    }

    if (([string isEqualToString:@"_N_f_bsize"] & 1) != 0 || (objc_msgSend(string, "isEqualToString:", @"_N_f_iosize") & 1) != 0 || (objc_msgSend(string, "isEqualToString:", @"_N_f_blocks") & 1) != 0 || (objc_msgSend(string, "isEqualToString:", @"_N_f_bavail") & 1) != 0 || (objc_msgSend(string, "isEqualToString:", @"_N_f_bfree") & 1) != 0 || (objc_msgSend(string, "isEqualToString:", @"_N_f_bused") & 1) != 0 || (objc_msgSend(string, "isEqualToString:", @"_N_f_subtype") & 1) != 0 || objc_msgSend(string, "isEqualToString:", @"_S_f_type"))
    {
      volume3 = [(FSModuleVolume *)v12 volume];
      volumeStatistics = [volume3 volumeStatistics];

      if (!volumeStatistics)
      {
        v52 = fskit_std_log();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          [FSVolumeConnector otherAttributeOf:v12 named:? requestID:? replyHandler:?];
        }

        (handlerCopy[2])(handlerCopy, 45, 0);
        goto LABEL_54;
      }

      if ([string isEqualToString:@"_N_f_bsize"])
      {
        v50 = MEMORY[0x277CBEA90];
        blockSize = [volumeStatistics blockSize];
LABEL_88:
        fileSystemTypeName = [v50 dataWithInteger:blockSize];
        (handlerCopy[2])(handlerCopy, 0, fileSystemTypeName);
LABEL_89:

        goto LABEL_54;
      }

      if ([string isEqualToString:@"_N_f_iosize"])
      {
        v50 = MEMORY[0x277CBEA90];
        blockSize = [volumeStatistics ioSize];
        goto LABEL_88;
      }

      if ([string isEqualToString:@"_N_f_blocks"])
      {
        v50 = MEMORY[0x277CBEA90];
        blockSize = [volumeStatistics totalBlocks];
        goto LABEL_88;
      }

      if ([string isEqualToString:@"_N_f_bavail"])
      {
        v50 = MEMORY[0x277CBEA90];
        blockSize = [volumeStatistics availableBlocks];
        goto LABEL_88;
      }

      if ([string isEqualToString:@"_N_f_bfree"])
      {
        v50 = MEMORY[0x277CBEA90];
        blockSize = [volumeStatistics freeBlocks];
        goto LABEL_88;
      }

      if ([string isEqualToString:@"_N_f_bused"])
      {
        v50 = MEMORY[0x277CBEA90];
        blockSize = [volumeStatistics usedBlocks];
        goto LABEL_88;
      }

      if ([string isEqualToString:@"_N_f_subtype"])
      {
        v50 = MEMORY[0x277CBEA90];
        blockSize = [volumeStatistics fileSystemSubType];
        goto LABEL_88;
      }

      if (![string isEqualToString:@"_S_f_type"])
      {
        goto LABEL_54;
      }

      fileSystemTypeName = [volumeStatistics fileSystemTypeName];
      uuidData = [fileSystemTypeName dataUsingEncoding:4];
      goto LABEL_92;
    }

    if (([string isEqualToString:@"_B_has_perm_enforcement"] & 1) != 0 || objc_msgSend(string, "isEqualToString:", @"_B_has_access_check"))
    {
      *buf = 0;
      v56 = MEMORY[0x277CBEA90];
      v57 = 8;
    }

    else
    {
      if (![string isEqualToString:@"_O_vol_attributes_attr"])
      {
        if ([string isEqualToString:@"_N_caps_format"])
        {
          volume4 = [(FSModuleVolume *)v12 volume];
          supportedVolumeCapabilities = [volume4 supportedVolumeCapabilities];
          capabilities = [supportedVolumeCapabilities capabilities];

          v44 = MEMORY[0x277CBEA90];
          v45 = capabilities;
LABEL_52:
          v46 = [v44 dataWithInteger:v45];
LABEL_53:
          volumeStatistics = v46;
          (handlerCopy[2])(handlerCopy, 0, v46);
LABEL_54:

          goto LABEL_144;
        }

        if ([string isEqualToString:@"_N_caps_interfaces"])
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

        if ([string isEqualToString:@"_S_f_vol_name"])
        {
          volume5 = [(FSModuleVolume *)v12 volume];
          name = [volume5 name];

          if (name)
          {
            volumeStatistics = [(FSModuleVolume *)v12 volume];
            fileSystemTypeName = [volumeStatistics name];
            string2 = [fileSystemTypeName string];
            v64 = [string2 dataUsingEncoding:4];
            (handlerCopy[2])(handlerCopy, 0, v64);

            goto LABEL_93;
          }
        }

        if (![string isEqualToString:@"_O_f_uuid"] || (-[FSModuleVolume volume](v12, "volume"), v65 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v65, "volumeID"), v66 = objc_claimAutoreleasedReturnValue(), v66, v65, !v66))
        {
          if ([string isEqualToString:@"_N_supported_xattr_namessize"])
          {
            if (![(FSModuleVolume *)v12 supportsLimitedXattrOps])
            {
              goto LABEL_143;
            }

            obj = [(FSModuleVolume *)v12 volume];
            v96 = [(FSModuleVolume *)v12 getItemForFH:ofCopy];
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

                      string3 = [*(*(&v108 + 1) + 8 * i) string];
                      v71 += [string3 lengthOfBytesUsingEncoding:4] + 1;
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
                (handlerCopy[2])(handlerCopy, 0, v85);
              }

              else
              {
                (handlerCopy[2])(handlerCopy, 45, 0);
              }
            }

            else
            {
              v83 = fskit_std_log();
              if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
              {
                [FSVolumeConnector otherAttributeOf:named:requestID:replyHandler:];
              }

              (handlerCopy[2])(handlerCopy, 70, 0);
            }

            v86 = obj;
          }

          else
          {
            if (![string isEqualToString:@"_O_supported_xattr_names"] || !-[FSModuleVolume supportsLimitedXattrOps](v12, "supportsLimitedXattrOps"))
            {
              goto LABEL_143;
            }

            volume6 = [(FSModuleVolume *)v12 volume];
            v95 = [(FSModuleVolume *)v12 getItemForFH:ofCopy];
            if (v95)
            {
              v94 = [volume6 supportedXattrNamesForItem:v95];
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

                      string4 = [*(*(&v104 + 1) + 8 * j) string];
                      v78 += [string4 lengthOfBytesUsingEncoding:4] + 1;
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

                      string5 = [*(*(&v100 + 1) + 8 * k) string];
                      uTF8String = [string5 UTF8String];

                      [v87 appendBytes:uTF8String length:strlen(uTF8String) + 1];
                    }

                    v89 = [obja countByEnumeratingWithState:&v100 objects:v112 count:16];
                  }

                  while (v89);
                }

                (handlerCopy[2])(handlerCopy, 0, v87);
              }

              else
              {
                (handlerCopy[2])(handlerCopy, 45, 0);
              }
            }

            else
            {
              v84 = fskit_std_log();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
              {
                [FSVolumeConnector otherAttributeOf:named:requestID:replyHandler:];
              }

              (handlerCopy[2])(handlerCopy, 70, 0);
            }

            v86 = volume6;
          }

          goto LABEL_144;
        }

        volumeStatistics = [(FSModuleVolume *)v12 volume];
        fileSystemTypeName = [volumeStatistics volumeID];
        uuidData = [fileSystemTypeName uuidData];
LABEL_92:
        string2 = uuidData;
        (handlerCopy[2])(handlerCopy, 0, uuidData);
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

  resource = [(FSModuleVolume *)self->_ourVolume resource];
  kind = [resource kind];

  if (kind == 1)
  {
    resource2 = [(FSModuleVolume *)self->_ourVolume resource];
    v18 = [(FSResource *)FSBlockDeviceResource dynamicCast:resource2];

    if (v18)
    {
      v19 = MEMORY[0x277CCACA8];
      bSDName = [v18 BSDName];
      v21 = [v19 stringWithFormat:@"/dev/%@", bSDName];
LABEL_35:
      volume2 = v21;

      goto LABEL_37;
    }
  }

  else
  {
    resource3 = [(FSModuleVolume *)self->_ourVolume resource];
    kind2 = [resource3 kind];

    if (kind2 == 2)
    {
      v28 = FSGenericURLResource;
    }

    else
    {
      resource4 = [(FSModuleVolume *)self->_ourVolume resource];
      kind3 = [resource4 kind];

      if (kind3 == 4)
      {
        v28 = FSPathURLResource;
      }

      else
      {
        resource5 = [(FSModuleVolume *)self->_ourVolume resource];
        kind4 = [resource5 kind];

        if (kind4 != 3)
        {
LABEL_143:
          (handlerCopy[2])(handlerCopy, 45, 0);
          goto LABEL_144;
        }

        v28 = FSServerURLResource;
      }
    }

    resource6 = [(FSModuleVolume *)self->_ourVolume resource];
    v18 = [(__objc2_class *)v28 dynamicCast:resource6];

    if (v18)
    {
      bSDName = [v18 url];
      v21 = [bSDName description];
      goto LABEL_35;
    }
  }

  volume2 = 0;
LABEL_37:

  if (!volume2)
  {
    goto LABEL_143;
  }

  uTF8String2 = [volume2 UTF8String];
  if (!uTF8String2)
  {
    v41 = fskit_std_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector otherAttributeOf:named:requestID:replyHandler:];
    }

    (handlerCopy[2])(handlerCopy, 22, 0);
    goto LABEL_44;
  }

  v35 = [MEMORY[0x277CBEA90] dataWithBytes:uTF8String2 length:strlen(uTF8String2) + 1];
LABEL_40:
  v40 = v35;
  (handlerCopy[2])(handlerCopy, 0, v35);

LABEL_44:
LABEL_144:

  v82 = *MEMORY[0x277D85DE8];
}

- (void)setOtherAttributeOf:(id)of named:(id)named value:(id)value requestID:(unint64_t)d replyHandler:(id)handler
{
  v55 = *MEMORY[0x277D85DE8];
  ofCopy = of;
  namedCopy = named;
  valueCopy = value;
  handlerCopy = handler;
  string = [namedCopy string];
  v17 = fskit_std_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    *&buf[4] = "[FSVolumeConnector setOtherAttributeOf:named:value:requestID:replyHandler:]";
    *&buf[12] = 2112;
    *&buf[14] = ofCopy;
    *&buf[22] = 2112;
    v53 = string;
    *v54 = 2112;
    *&v54[2] = valueCopy;
    *&v54[10] = 2048;
    *&v54[12] = d;
    _os_log_debug_impl(&dword_24A929000, v17, OS_LOG_TYPE_DEBUG, "%s:start:theItem:%@:name:%@:value:%@:reqID:%llu", buf, 0x34u);
  }

  v18 = self->_ourVolume;
  v19 = [(FSModuleVolume *)v18 getItemForFH:ofCopy];
  if (v19)
  {
    if (!string)
    {
      goto LABEL_14;
    }

    if ([string isEqual:@"_N_SYNC"])
    {
      v20 = valueCopy;
      v21 = *[valueCopy bytes];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __76__FSVolumeConnector_setOtherAttributeOf_named_value_requestID_replyHandler___block_invoke;
      v50[3] = &unk_278FECE20;
      v51 = handlerCopy;
      [(FSVolumeConnector *)self synchronize:v21 replyHandler:v50];

      goto LABEL_22;
    }

    if ([string isEqual:@"_O_f_preallocate"] && -[FSModuleVolume supportsPreallocateOps](v18, "supportsPreallocateOps"))
    {
      if ([valueCopy length] <= 0xE7)
      {
LABEL_14:
        (*(handlerCopy + 2))(handlerCopy, 22, 0, 0, 0);
        goto LABEL_22;
      }

      v27 = valueCopy;
      bytes = [valueCopy bytes];
      if ((bytes[2] & 0x20) == 0)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v53 = __Block_byref_object_copy__4;
        *v54 = __Block_byref_object_dispose__4;
        *&v54[8] = 0;
        v28 = [MEMORY[0x277CBEB28] dataWithData:valueCopy];
        v29 = v28;
        mutableBytes = [v28 mutableBytes];
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __76__FSVolumeConnector_setOtherAttributeOf_named_value_requestID_replyHandler___block_invoke_2;
        aBlock[3] = &unk_278FED938;
        v48 = buf;
        v49 = mutableBytes;
        v47 = handlerCopy;
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

          volume = [(FSModuleVolume *)v18 volume];
          [volume preallocateSpaceForFile:v31 atOffset:*bytes length:bytes[1] flags:*(bytes + 4) packer:*(*&buf[8] + 40) replyHandler:v38];
        }

        else
        {
          volume = [(FSModuleVolume *)v18 volume];
          [volume preallocateSpaceForItem:v31 atOffset:*bytes length:bytes[1] flags:*(bytes + 4) replyHandler:v38];
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_22;
      }
    }

    else
    {
      if ([string isEqual:@"_S_f_vol_name"] && -[FSModuleVolume supportsVolumeRenameOps](v18, "supportsVolumeRenameOps"))
      {
        volume2 = [(FSModuleVolume *)v18 volume];
        v24 = [FSFileName nameWithData:valueCopy];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __76__FSVolumeConnector_setOtherAttributeOf_named_value_requestID_replyHandler___block_invoke_6;
        v42[3] = &unk_278FED960;
        v42[4] = self;
        v43 = handlerCopy;
        [volume2 setVolumeName:v24 replyHandler:v42];

        goto LABEL_22;
      }

      if ([string isEqualToString:@"_N_INACTIVE"] && -[FSModuleVolume supportsItemDeactivation](v18, "supportsItemDeactivation"))
      {
        volume3 = [(FSModuleVolume *)v18 volume];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __76__FSVolumeConnector_setOtherAttributeOf_named_value_requestID_replyHandler___block_invoke_394;
        v40[3] = &unk_278FECE20;
        v41 = handlerCopy;
        [volume3 deactivateItem:v19 replyHandler:v40];

        goto LABEL_22;
      }
    }

    (*(handlerCopy + 2))(handlerCopy, 45, 0, 0, 0);
    goto LABEL_22;
  }

  v22 = fskit_std_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [FSVolumeConnector setOtherAttributeOf:named:value:requestID:replyHandler:];
  }

  (*(handlerCopy + 2))(handlerCopy, 70, 0, 0, 0);
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

- (void)volumeStatistics:(id)statistics requestID:(unint64_t)d replyHandler:(id)handler
{
  handlerCopy = handler;
  ourVolume = self->_ourVolume;
  p_ourVolume = &self->_ourVolume;
  volume = [(FSModuleVolume *)ourVolume volume];
  volumeStatistics = [volume volumeStatistics];

  if (volumeStatistics)
  {
    handlerCopy[2](handlerCopy, 0, volumeStatistics);
  }

  else
  {
    v11 = fskit_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector volumeStatistics:? requestID:? replyHandler:?];
    }

    handlerCopy[2](handlerCopy, 45, 0);
  }
}

- (void)createIn:(id)in named:(id)named type:(int64_t)type attributes:(id)attributes requestID:(unint64_t)d replyHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  inCopy = in;
  namedCopy = named;
  attributesCopy = attributes;
  handlerCopy = handler;
  v18 = fskit_std_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v33 = "[FSVolumeConnector createIn:named:type:attributes:requestID:replyHandler:]";
    v34 = 2112;
    v35 = inCopy;
    v36 = 2112;
    v37 = namedCopy;
    v38 = 2048;
    dCopy = d;
    _os_log_debug_impl(&dword_24A929000, v18, OS_LOG_TYPE_DEBUG, "%s:start:theDirectory:%@:named:%@:reqID:%llu", buf, 0x2Au);
  }

  v19 = self->_ourVolume;
  v20 = [(FSModuleVolume *)v19 getItemForFH:inCopy];
  v21 = v20;
  if (v20)
  {
    if ([v20 type] == 2)
    {
      v22 = [(FSItemAttributes *)FSItemSetAttributesRequest requestWithData:attributesCopy];
      volume = [(FSModuleVolume *)v19 volume];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __75__FSVolumeConnector_createIn_named_type_attributes_requestID_replyHandler___block_invoke;
      v28[3] = &unk_278FEDA00;
      v31 = handlerCopy;
      v28[4] = self;
      v29 = v21;
      v30 = v19;
      [volume createItemNamed:namedCopy type:type inDirectory:v29 attributes:v22 replyHandler:v28];
    }

    else
    {
      v25 = fskit_std_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        type = [v21 type];
        *buf = 136315650;
        v33 = "[FSVolumeConnector createIn:named:type:attributes:requestID:replyHandler:]";
        v34 = 2048;
        v35 = type;
        v36 = 1024;
        LODWORD(v37) = 20;
        _os_log_impl(&dword_24A929000, v25, OS_LOG_TYPE_INFO, "%s: Given parent item is not a directory (type = %lu). Error = %d.", buf, 0x1Cu);
      }

      (*(handlerCopy + 2))(handlerCopy, 20, 0, 0, 0, 0);
    }
  }

  else
  {
    v24 = fskit_std_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector createIn:named:type:attributes:requestID:replyHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 70, 0, 0, 0, 0);
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

- (void)lookupIn:(id)in name:(id)name flags:(unsigned int)flags requestID:(unint64_t)d replyHandler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  inCopy = in;
  nameCopy = name;
  handlerCopy = handler;
  v14 = self->_ourVolume;
  v15 = [(FSModuleVolume *)v14 getItemForFH:inCopy];
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
      v31 = handlerCopy;
      aBlock[4] = self;
      v17 = v14;
      v28 = v17;
      v32 = buf;
      flagsCopy = flags;
      v18 = nameCopy;
      v29 = v18;
      v19 = v16;
      v30 = v19;
      v20 = _Block_copy(aBlock);
      if ((flags & 0x10000000) != 0 && [(FSModuleVolume *)v17 supportsKOIOOps])
      {
        v21 = [[FSExtentPacker alloc] initWithExtentCount:2];
        v22 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v21;

        volume = [(FSModuleVolume *)v17 volume];
        [volume lookupItemNamed:v18 inDirectory:v19 packer:*(*&buf[8] + 40) replyHandler:v20];
      }

      else
      {
        volume = [(FSModuleVolume *)v17 volume];
        [volume lookupItemNamed:v18 inDirectory:v19 replyHandler:v20];
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

      (*(handlerCopy + 2))(handlerCopy, 20, 0xFFFFFFFFLL, 0, 0, 0, 0, 0, 0, 0);
    }
  }

  else
  {
    v24 = fskit_std_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector lookupIn:name:flags:requestID:replyHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 70, 0xFFFFFFFFLL, 0, 0, 0, 0, 0, 0, 0);
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

- (void)removeDirectory:(id)directory from:(id)from named:(id)named usingFlags:(int)flags requestID:(unint64_t)d replyHandler:(id)handler
{
  v44 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  fromCopy = from;
  namedCopy = named;
  handlerCopy = handler;
  v18 = fskit_std_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v33 = "[FSVolumeConnector removeDirectory:from:named:usingFlags:requestID:replyHandler:]";
    v34 = 2112;
    v35 = fromCopy;
    v36 = 2112;
    v37 = directoryCopy;
    v38 = 2112;
    v39 = namedCopy;
    v40 = 1024;
    flagsCopy = flags;
    v42 = 2048;
    dCopy = d;
    _os_log_debug_impl(&dword_24A929000, v18, OS_LOG_TYPE_DEBUG, "%s:start:parentDirectory:%@:theDirectory:%@:name:%@:flags:%d:reqID:%llu", buf, 0x3Au);
  }

  v19 = self->_ourVolume;
  v20 = [(FSModuleVolume *)v19 getItemForFH:directoryCopy];
  if (v20)
  {
    v21 = [(FSModuleVolume *)v19 getItemForFH:fromCopy];
    v22 = v21;
    if (v21)
    {
      if ([v21 type] == 2)
      {
        volume = [(FSModuleVolume *)v19 volume];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __82__FSVolumeConnector_removeDirectory_from_named_usingFlags_requestID_replyHandler___block_invoke;
        v29[3] = &unk_278FED870;
        v31 = handlerCopy;
        v29[4] = self;
        v30 = v22;
        [volume removeItem:v20 named:namedCopy fromDirectory:v30 replyHandler:v29];
      }

      else
      {
        v26 = fskit_std_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          type = [v22 type];
          *buf = 136315650;
          v33 = "[FSVolumeConnector removeDirectory:from:named:usingFlags:requestID:replyHandler:]";
          v34 = 2048;
          v35 = type;
          v36 = 1024;
          LODWORD(v37) = 20;
          _os_log_impl(&dword_24A929000, v26, OS_LOG_TYPE_INFO, "%s: Given parent item is not a directory (type = %lu). Error = %d.", buf, 0x1Cu);
        }

        (*(handlerCopy + 2))(handlerCopy, 20, 0, 0);
      }
    }

    else
    {
      v25 = fskit_std_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector removeDirectory:from:named:usingFlags:requestID:replyHandler:];
      }

      (*(handlerCopy + 2))(handlerCopy, 70, 0, 0);
    }
  }

  else
  {
    v24 = fskit_std_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector removeDirectory:from:named:usingFlags:requestID:replyHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 70, 0, 0);
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

- (void)removeItem:(id)item from:(id)from named:(id)named usingFlags:(int)flags requestID:(unint64_t)d replyHandler:(id)handler
{
  v45 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  fromCopy = from;
  namedCopy = named;
  handlerCopy = handler;
  v18 = fskit_std_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v34 = "[FSVolumeConnector removeItem:from:named:usingFlags:requestID:replyHandler:]";
    v35 = 2112;
    v36 = itemCopy;
    v37 = 2112;
    v38 = fromCopy;
    v39 = 2112;
    v40 = namedCopy;
    v41 = 1024;
    flagsCopy = flags;
    v43 = 2048;
    dCopy = d;
    _os_log_debug_impl(&dword_24A929000, v18, OS_LOG_TYPE_DEBUG, "%s:start:theFile:%@:theDirectory:%@:name:%@:flags:%d:reqID:%llu", buf, 0x3Au);
  }

  v19 = self->_ourVolume;
  v20 = [(FSModuleVolume *)v19 getItemForFH:fromCopy];
  v21 = v20;
  if (v20)
  {
    if ([v20 type] == 2)
    {
      v22 = [(FSModuleVolume *)v19 getItemForFH:itemCopy];
      if (v22)
      {
        volume = [(FSModuleVolume *)v19 volume];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __77__FSVolumeConnector_removeItem_from_named_usingFlags_requestID_replyHandler___block_invoke;
        v29[3] = &unk_278FEDB90;
        v32 = handlerCopy;
        v29[4] = self;
        v30 = v22;
        v31 = v21;
        [volume removeItem:v30 named:namedCopy fromDirectory:v31 replyHandler:v29];
      }

      else
      {
        v27 = fskit_std_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [FSVolumeConnector removeItem:from:named:usingFlags:requestID:replyHandler:];
        }

        (*(handlerCopy + 2))(handlerCopy, 70, 0, 0, 0);
      }
    }

    else
    {
      v25 = fskit_std_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        type = [v21 type];
        *buf = 136315650;
        v34 = "[FSVolumeConnector removeItem:from:named:usingFlags:requestID:replyHandler:]";
        v35 = 2048;
        v36 = type;
        v37 = 1024;
        LODWORD(v38) = 20;
        _os_log_impl(&dword_24A929000, v25, OS_LOG_TYPE_INFO, "%s: Given parent item is not a directory (type = %lu). Error = %d.", buf, 0x1Cu);
      }

      (*(handlerCopy + 2))(handlerCopy, 20, 0, 0, 0);
    }
  }

  else
  {
    v24 = fskit_std_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector removeItem:from:named:usingFlags:requestID:replyHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 70, 0, 0, 0);
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

- (void)reclaim:(id)reclaim requestID:(unint64_t)d replyHandler:(id)handler
{
  reclaimCopy = reclaim;
  handlerCopy = handler;
  v9 = fskit_std_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [FSVolumeConnector reclaim:requestID:replyHandler:];
  }

  v10 = self->_ourVolume;
  v11 = [(FSModuleVolume *)v10 getAndRemoveItemForFH:reclaimCopy];
  if (v11)
  {
    volume = [(FSModuleVolume *)v10 volume];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__FSVolumeConnector_reclaim_requestID_replyHandler___block_invoke;
    v14[3] = &unk_278FED6E0;
    v14[4] = self;
    v15 = handlerCopy;
    [volume reclaimItem:v11 replyHandler:v14];
  }

  else
  {
    v13 = fskit_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector reclaim:requestID:replyHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 70, 0);
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

- (void)open:(id)open withMode:(int)mode requestID:(unint64_t)d replyHandler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  openCopy = open;
  handlerCopy = handler;
  v12 = fskit_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v22 = "[FSVolumeConnector open:withMode:requestID:replyHandler:]";
    v23 = 2112;
    v24 = openCopy;
    v25 = 1024;
    modeCopy = mode;
    v27 = 2048;
    dCopy = d;
    _os_log_debug_impl(&dword_24A929000, v12, OS_LOG_TYPE_DEBUG, "%s:start:theFile:%@:mode:%d:reqID:%llu", buf, 0x26u);
  }

  v13 = self->_ourVolume;
  if ([(FSModuleVolume *)v13 supportsOpenCloseOps])
  {
    volume = [(FSModuleVolume *)v13 volume];
    v15 = [(FSModuleVolume *)v13 getItemForFH:openCopy];
    if (v15)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __58__FSVolumeConnector_open_withMode_requestID_replyHandler___block_invoke;
      v19[3] = &unk_278FECE20;
      v20 = handlerCopy;
      [volume openItem:v15 withModes:mode replyHandler:v19];
    }

    else
    {
      v17 = fskit_std_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector open:withMode:requestID:replyHandler:];
      }

      (*(handlerCopy + 2))(handlerCopy, 70);
    }
  }

  else
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector open:withMode:requestID:replyHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 45);
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

- (void)close:(id)close keepingMode:(int)mode requestID:(unint64_t)d replyHandler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  closeCopy = close;
  handlerCopy = handler;
  v12 = fskit_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v22 = "[FSVolumeConnector close:keepingMode:requestID:replyHandler:]";
    v23 = 2112;
    v24 = closeCopy;
    v25 = 1024;
    modeCopy = mode;
    v27 = 2048;
    dCopy = d;
    _os_log_debug_impl(&dword_24A929000, v12, OS_LOG_TYPE_DEBUG, "%s:start:theFile:%@:mode:%d:reqID:%llu", buf, 0x26u);
  }

  v13 = self->_ourVolume;
  if ([(FSModuleVolume *)v13 supportsOpenCloseOps])
  {
    volume = [(FSModuleVolume *)v13 volume];
    v15 = [(FSModuleVolume *)v13 getItemForFH:closeCopy];
    if (v15)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __62__FSVolumeConnector_close_keepingMode_requestID_replyHandler___block_invoke;
      v19[3] = &unk_278FECE20;
      v20 = handlerCopy;
      [volume closeItem:v15 keepingModes:mode replyHandler:v19];
    }

    else
    {
      v17 = fskit_std_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector close:keepingMode:requestID:replyHandler:];
      }

      (*(handlerCopy + 2))(handlerCopy, 70);
    }
  }

  else
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector close:keepingMode:requestID:replyHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 45);
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

- (void)writeTo:(id)to atOffset:(unint64_t)offset fromBuffer:(id)buffer requestID:(unint64_t)d replyHandler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  toCopy = to;
  bufferCopy = buffer;
  handlerCopy = handler;
  v15 = fskit_std_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v30 = "[FSVolumeConnector writeTo:atOffset:fromBuffer:requestID:replyHandler:]";
    v31 = 2112;
    v32 = toCopy;
    v33 = 2048;
    offsetCopy = offset;
    v35 = 2112;
    v36 = bufferCopy;
    v37 = 2048;
    dCopy = d;
    _os_log_debug_impl(&dword_24A929000, v15, OS_LOG_TYPE_DEBUG, "%s:start:theFile:%@:atOffset:%llu:buffer:%@:reqID:%llu", buf, 0x34u);
  }

  v16 = self->_ourVolume;
  if ([(FSModuleVolume *)v16 supportsReadWriteOps])
  {
    volume = [(FSModuleVolume *)v16 volume];
    v18 = [(FSModuleVolume *)v16 getItemForFH:toCopy];
    v19 = v18;
    if (v18)
    {
      if ([v18 type] == 1)
      {
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __72__FSVolumeConnector_writeTo_atOffset_fromBuffer_requestID_replyHandler___block_invoke;
        v26[3] = &unk_278FEDC30;
        v28 = handlerCopy;
        v26[4] = self;
        v27 = v19;
        [volume writeContents:bufferCopy toFile:v27 atOffset:offset replyHandler:v26];
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
          type = [v19 type];
          *buf = 136315650;
          v30 = "[FSVolumeConnector writeTo:atOffset:fromBuffer:requestID:replyHandler:]";
          v31 = 2048;
          v32 = type;
          v33 = 1024;
          LODWORD(offsetCopy) = v22;
          _os_log_impl(&dword_24A929000, v23, OS_LOG_TYPE_INFO, "%s: Given item is not a file (type = %lu). Error = %d.", buf, 0x1Cu);
        }

        (*(handlerCopy + 2))(handlerCopy, v22, 0, 0, 0);
      }
    }

    else
    {
      v21 = fskit_std_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector writeTo:atOffset:fromBuffer:requestID:replyHandler:];
      }

      (*(handlerCopy + 2))(handlerCopy, 70, 0, 0, 0);
    }
  }

  else
  {
    v20 = fskit_std_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector writeTo:atOffset:fromBuffer:requestID:replyHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 45, 0, 0, 0);
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

- (void)readFrom:(id)from atOffset:(unint64_t)offset intoBuffer:(id)buffer requestID:(unint64_t)d replyHandler:(id)handler
{
  v42 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  bufferCopy = buffer;
  handlerCopy = handler;
  v15 = fskit_std_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v33 = "[FSVolumeConnector readFrom:atOffset:intoBuffer:requestID:replyHandler:]";
    v34 = 2112;
    v35 = fromCopy;
    v36 = 2048;
    offsetCopy = offset;
    v38 = 2112;
    v39 = bufferCopy;
    v40 = 2048;
    dCopy = d;
    _os_log_debug_impl(&dword_24A929000, v15, OS_LOG_TYPE_DEBUG, "%s:start:theFile:%@:atOffset:%llu:buffer:%@:reqID:%llu", buf, 0x34u);
  }

  v16 = self->_ourVolume;
  if ([(FSModuleVolume *)v16 supportsReadWriteOps])
  {
    volume = [(FSModuleVolume *)v16 volume];
    v18 = [(FSModuleVolume *)v16 getItemForFH:fromCopy];
    v19 = v18;
    if (v18)
    {
      if ([v18 type] == 1)
      {
        v20 = [bufferCopy length];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __73__FSVolumeConnector_readFrom_atOffset_intoBuffer_requestID_replyHandler___block_invoke;
        v27[3] = &unk_278FEDC80;
        v28 = bufferCopy;
        v31 = handlerCopy;
        selfCopy = self;
        v30 = v19;
        [volume readFromFile:v30 offset:offset length:v20 intoBuffer:v28 replyHandler:v27];
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
          type = [v19 type];
          *buf = 136315650;
          v33 = "[FSVolumeConnector readFrom:atOffset:intoBuffer:requestID:replyHandler:]";
          v34 = 2048;
          v35 = type;
          v36 = 1024;
          LODWORD(offsetCopy) = v23;
          _os_log_impl(&dword_24A929000, v24, OS_LOG_TYPE_INFO, "%s: Given item is not a file (type = %lu). Error = %d.", buf, 0x1Cu);
        }

        (*(handlerCopy + 2))(handlerCopy, v23, 0, 0);
      }
    }

    else
    {
      v22 = fskit_std_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector readFrom:atOffset:intoBuffer:requestID:replyHandler:];
      }

      (*(handlerCopy + 2))(handlerCopy, 70, 0, 0);
    }
  }

  else
  {
    v21 = fskit_std_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector readFrom:atOffset:intoBuffer:requestID:replyHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 45, 0, 0);
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

- (void)setFileAttributesOf:(id)of to:(id)to requestID:(unint64_t)d replyHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  ofCopy = of;
  toCopy = to;
  handlerCopy = handler;
  v13 = fskit_std_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v26 = "[FSVolumeConnector setFileAttributesOf:to:requestID:replyHandler:]";
    v27 = 2112;
    v28 = ofCopy;
    v29 = 2112;
    v30 = toCopy;
    v31 = 2048;
    dCopy = d;
    _os_log_debug_impl(&dword_24A929000, v13, OS_LOG_TYPE_DEBUG, "%s:start:theItem:%@:setAttrs:%@:reqID:%llu", buf, 0x2Au);
  }

  v14 = self->_ourVolume;
  v15 = [(FSModuleVolume *)v14 getItemForFH:ofCopy];
  if (v15)
  {
    v16 = [(FSItemAttributes *)FSItemSetAttributesRequest requestWithData:toCopy];
    volume = [(FSModuleVolume *)v14 volume];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __67__FSVolumeConnector_setFileAttributesOf_to_requestID_replyHandler___block_invoke;
    v21[3] = &unk_278FEDCA8;
    v24 = handlerCopy;
    v21[4] = self;
    v22 = toCopy;
    v23 = v16;
    v18 = v16;
    [volume setAttributes:v18 onItem:v15 replyHandler:v21];
  }

  else
  {
    v19 = fskit_std_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector setFileAttributesOf:to:requestID:replyHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 70, 0, 0, 0);
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

- (void)fileAttributes:(id)attributes requestedAttributes:(unint64_t)requestedAttributes requestID:(unint64_t)d replyHandler:(id)handler
{
  handlerCopy = handler;
  v10 = self->_ourVolume;
  v11 = [(FSModuleVolume *)v10 getItemForFH:attributes];
  if (v11)
  {
    v12 = [[FSItemGetAttributesRequest alloc] initWithWantedLIAttributes:requestedAttributes];
    volume = [(FSModuleVolume *)v10 volume];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __79__FSVolumeConnector_fileAttributes_requestedAttributes_requestID_replyHandler___block_invoke;
    v15[3] = &unk_278FED7A8;
    v15[4] = self;
    v16 = handlerCopy;
    [volume getAttributes:v12 ofItem:v11 replyHandler:v15];

    v10 = v12;
  }

  else
  {
    v14 = fskit_std_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector fileAttributes:requestedAttributes:requestID:replyHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 70, 0);
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

- (void)readDirectory:(id)directory intoBuffer:(id)buffer cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d replyHandler:(id)handler
{
  handlerCopy = handler;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__FSVolumeConnector_readDirectory_intoBuffer_cookie_verifier_requestID_replyHandler___block_invoke;
  v16[3] = &unk_278FEDCF8;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [(FSVolumeConnector *)self readDirectory:directory withAttr:0 requestedAttributes:0 intoBuffer:buffer cookie:cookie verifier:verifier requestID:d replyHandler:v16];
}

- (void)readDirectory:(id)directory requestedAttributes:(unint64_t)attributes intoBuffer:(id)buffer cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d replyHandler:(id)handler
{
  handlerCopy = handler;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __105__FSVolumeConnector_readDirectory_requestedAttributes_intoBuffer_cookie_verifier_requestID_replyHandler___block_invoke;
  v18[3] = &unk_278FEDCF8;
  v19 = handlerCopy;
  v17 = handlerCopy;
  [(FSVolumeConnector *)self readDirectory:directory withAttr:1 requestedAttributes:attributes intoBuffer:buffer cookie:cookie verifier:verifier requestID:d replyHandler:v18];
}

- (void)readSymbolicLinkOf:(id)of requestID:(unint64_t)d replyHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  ofCopy = of;
  handlerCopy = handler;
  v9 = fskit_std_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [FSVolumeConnector readSymbolicLinkOf:requestID:replyHandler:];
  }

  v10 = self->_ourVolume;
  v11 = [(FSModuleVolume *)v10 getItemForFH:ofCopy];
  v12 = v11;
  if (v11)
  {
    if ([v11 type] == 3)
    {
      volume = [(FSModuleVolume *)v10 volume];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __63__FSVolumeConnector_readSymbolicLinkOf_requestID_replyHandler___block_invoke;
      v17[3] = &unk_278FEDD20;
      v19 = handlerCopy;
      v17[4] = self;
      v18 = v12;
      [volume readSymbolicLink:v18 replyHandler:v17];
    }

    else
    {
      v15 = fskit_std_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v21 = "[FSVolumeConnector readSymbolicLinkOf:requestID:replyHandler:]";
        v22 = 2048;
        type = [v12 type];
        v24 = 1024;
        v25 = 22;
        _os_log_impl(&dword_24A929000, v15, OS_LOG_TYPE_INFO, "%s: Given item is not a symlink (type = %lu). Error = %d.", buf, 0x1Cu);
      }

      (*(handlerCopy + 2))(handlerCopy, 22, 0, 0);
    }
  }

  else
  {
    v14 = fskit_std_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector readSymbolicLinkOf:requestID:replyHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 70, 0, 0);
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

- (void)makeSymlinkIn:(id)in named:(id)named contents:(id)contents attributes:(id)attributes requestID:(unint64_t)d replyHandler:(id)handler
{
  v48 = *MEMORY[0x277D85DE8];
  inCopy = in;
  namedCopy = named;
  contentsCopy = contents;
  attributesCopy = attributes;
  handlerCopy = handler;
  v19 = fskit_std_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v37 = "[FSVolumeConnector makeSymlinkIn:named:contents:attributes:requestID:replyHandler:]";
    v38 = 2112;
    v39 = inCopy;
    v40 = 2112;
    v41 = namedCopy;
    v42 = 2112;
    v43 = contentsCopy;
    v44 = 2112;
    v45 = attributesCopy;
    v46 = 2048;
    dCopy = d;
    _os_log_debug_impl(&dword_24A929000, v19, OS_LOG_TYPE_DEBUG, "%s:start:theDirectory:%@:name:%@:contents:%@:setAttrs:%@:reqID:%llu", buf, 0x3Eu);
  }

  v20 = self->_ourVolume;
  v21 = [(FSModuleVolume *)v20 getItemForFH:inCopy];
  v22 = v21;
  if (v21)
  {
    if ([v21 type] == 2)
    {
      [(FSItemAttributes *)FSItemSetAttributesRequest requestWithData:attributesCopy];
      v24 = v23 = namedCopy;
      v31 = contentsCopy;
      v25 = [[FSFileName alloc] initWithData:contentsCopy];
      volume = [(FSModuleVolume *)v20 volume];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __84__FSVolumeConnector_makeSymlinkIn_named_contents_attributes_requestID_replyHandler___block_invoke;
      v32[3] = &unk_278FEDA00;
      v35 = handlerCopy;
      v32[4] = self;
      v33 = v22;
      v34 = v20;
      [volume createSymbolicLinkNamed:v23 inDirectory:v33 attributes:v24 linkContents:v25 replyHandler:v32];

      contentsCopy = v31;
      namedCopy = v23;
    }

    else
    {
      v28 = fskit_std_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        type = [v22 type];
        *buf = 136315650;
        v37 = "[FSVolumeConnector makeSymlinkIn:named:contents:attributes:requestID:replyHandler:]";
        v38 = 2048;
        v39 = type;
        v40 = 1024;
        LODWORD(v41) = 20;
        _os_log_impl(&dword_24A929000, v28, OS_LOG_TYPE_INFO, "%s: Given parent item is not a directory (type = %lu). Error = %d.", buf, 0x1Cu);
      }

      (*(handlerCopy + 2))(handlerCopy, 20, 0, 0, 0, 0);
    }
  }

  else
  {
    v27 = fskit_std_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector makeSymlinkIn:named:contents:attributes:requestID:replyHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 70, 0, 0, 0, 0);
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

- (void)makeLinkOf:(id)of named:(id)named inDirectory:(id)directory requestID:(unint64_t)d replyHandler:(id)handler
{
  v41 = *MEMORY[0x277D85DE8];
  ofCopy = of;
  namedCopy = named;
  directoryCopy = directory;
  handlerCopy = handler;
  v16 = fskit_std_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v32 = "[FSVolumeConnector makeLinkOf:named:inDirectory:requestID:replyHandler:]";
    v33 = 2112;
    v34 = ofCopy;
    v35 = 2112;
    v36 = namedCopy;
    v37 = 2112;
    v38 = directoryCopy;
    v39 = 2048;
    dCopy = d;
    _os_log_debug_impl(&dword_24A929000, v16, OS_LOG_TYPE_DEBUG, "%s:start:targetFile:%@:name:%@:theDirectory:%@:reqID:%llu", buf, 0x34u);
  }

  v17 = self->_ourVolume;
  v18 = [(FSModuleVolume *)v17 getItemForFH:ofCopy];
  if (v18)
  {
    v19 = [(FSModuleVolume *)v17 getItemForFH:directoryCopy];
    v20 = v19;
    if (v19)
    {
      if ([v19 type] == 2)
      {
        volume = [(FSModuleVolume *)v17 volume];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __73__FSVolumeConnector_makeLinkOf_named_inDirectory_requestID_replyHandler___block_invoke;
        v27[3] = &unk_278FEDD70;
        v30 = handlerCopy;
        v27[4] = self;
        v28 = v18;
        v29 = v20;
        [volume createLinkToItem:v28 named:namedCopy inDirectory:v29 replyHandler:v27];
      }

      else
      {
        v24 = fskit_std_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          type = [v20 type];
          *buf = 136315650;
          v32 = "[FSVolumeConnector makeLinkOf:named:inDirectory:requestID:replyHandler:]";
          v33 = 2048;
          v34 = type;
          v35 = 1024;
          LODWORD(v36) = 20;
          _os_log_impl(&dword_24A929000, v24, OS_LOG_TYPE_INFO, "%s: Given parent item is not a directory (type = %lu). Error = %d.", buf, 0x1Cu);
        }

        (*(handlerCopy + 2))(handlerCopy, 20, 0, 0, 0);
      }
    }

    else
    {
      v23 = fskit_std_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector makeLinkOf:named:inDirectory:requestID:replyHandler:];
      }

      (*(handlerCopy + 2))(handlerCopy, 70, 0, 0, 0);
    }
  }

  else
  {
    v22 = fskit_std_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector makeLinkOf:named:inDirectory:requestID:replyHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 70, 0, 0, 0);
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

- (void)xattrOf:(id)of named:(id)named requestID:(unint64_t)d replyHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  ofCopy = of;
  namedCopy = named;
  handlerCopy = handler;
  v13 = fskit_std_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v23 = "[FSVolumeConnector xattrOf:named:requestID:replyHandler:]";
    v24 = 2112;
    v25 = ofCopy;
    v26 = 2112;
    v27 = namedCopy;
    v28 = 2048;
    dCopy = d;
    _os_log_debug_impl(&dword_24A929000, v13, OS_LOG_TYPE_DEBUG, "%s:start:theItem:%@:name:%@:reqID:%llu", buf, 0x2Au);
  }

  v14 = self->_ourVolume;
  if ([(FSModuleVolume *)v14 supportsXattrOps])
  {
    volume = [(FSModuleVolume *)v14 volume];
    v16 = [(FSModuleVolume *)v14 getItemForFH:ofCopy];
    if (v16)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __58__FSVolumeConnector_xattrOf_named_requestID_replyHandler___block_invoke;
      v20[3] = &unk_278FEDD98;
      v21 = handlerCopy;
      [volume getXattrNamed:namedCopy ofItem:v16 replyHandler:v20];
    }

    else
    {
      v18 = fskit_std_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector xattrOf:named:requestID:replyHandler:];
      }

      (*(handlerCopy + 2))(handlerCopy, 70, 0);
    }
  }

  else
  {
    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector xattrOf:named:requestID:replyHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 45, 0);
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

- (void)setXattrOf:(id)of named:(id)named value:(id)value how:(unint64_t)how requestID:(unint64_t)d replyHandler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  ofCopy = of;
  namedCopy = named;
  valueCopy = value;
  handlerCopy = handler;
  v18 = fskit_std_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v28 = "[FSVolumeConnector setXattrOf:named:value:how:requestID:replyHandler:]";
    v29 = 2112;
    v30 = ofCopy;
    v31 = 2112;
    v32 = namedCopy;
    v33 = 2112;
    v34 = valueCopy;
    v35 = 2048;
    dCopy = d;
    _os_log_debug_impl(&dword_24A929000, v18, OS_LOG_TYPE_DEBUG, "%s:start:theItem:%@:name:%@:value:%@:reqID:%llu", buf, 0x34u);
  }

  v19 = self->_ourVolume;
  if ([(FSModuleVolume *)v19 supportsXattrOps])
  {
    volume = [(FSModuleVolume *)v19 volume];
    v21 = [(FSModuleVolume *)v19 getItemForFH:ofCopy];
    if (v21)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __71__FSVolumeConnector_setXattrOf_named_value_how_requestID_replyHandler___block_invoke;
      v25[3] = &unk_278FECE20;
      v26 = handlerCopy;
      [volume setXattrNamed:namedCopy toData:valueCopy onItem:v21 policy:how replyHandler:v25];
    }

    else
    {
      v23 = fskit_std_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector setXattrOf:named:value:how:requestID:replyHandler:];
      }

      (*(handlerCopy + 2))(handlerCopy, 70);
    }
  }

  else
  {
    v22 = fskit_std_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector setXattrOf:named:value:how:requestID:replyHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 45);
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

- (void)listXattrsOf:(id)of requestID:(unint64_t)d replyHandler:(id)handler
{
  ofCopy = of;
  handlerCopy = handler;
  v9 = fskit_std_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [FSVolumeConnector listXattrsOf:requestID:replyHandler:];
  }

  v10 = self->_ourVolume;
  if ([(FSModuleVolume *)v10 supportsXattrOps])
  {
    volume = [(FSModuleVolume *)v10 volume];
    v12 = [(FSModuleVolume *)v10 getItemForFH:ofCopy];
    if (v12)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __57__FSVolumeConnector_listXattrsOf_requestID_replyHandler___block_invoke;
      v15[3] = &unk_278FED020;
      v16 = handlerCopy;
      [volume listXattrsOfItem:v12 replyHandler:v15];
    }

    else
    {
      v14 = fskit_std_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector listXattrsOf:requestID:replyHandler:];
      }

      (*(handlerCopy + 2))(handlerCopy, 70, 0);
    }
  }

  else
  {
    v13 = fskit_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector listXattrsOf:requestID:replyHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 45, 0);
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

- (void)getRootFileHandle:(id)handle
{
  ourVolume = self->_ourVolume;
  handleCopy = handle;
  rootFSItem = [(FSModuleVolume *)ourVolume rootFSItem];

  if (rootFSItem)
  {
    rootFSItem2 = [(FSModuleVolume *)self->_ourVolume rootFSItem];
    fileHandle = [rootFSItem2 fileHandle];
    handleCopy[2](handleCopy, fileHandle, 0);

    handleCopy = fileHandle;
  }

  else
  {
    rootFSItem2 = fs_errorForPOSIXError(2);
    (handleCopy[2])(handleCopy, 0);
  }
}

- (void)mount:(id)mount replyHandler:(id)handler
{
  mountCopy = mount;
  handlerCopy = handler;
  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FSVolumeConnector mount:replyHandler:];
  }

  v9 = self->_ourVolume;
  volume = [(FSModuleVolume *)v9 volume];
  taskOptions = [mountCopy taskOptions];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__FSVolumeConnector_mount_replyHandler___block_invoke;
  v13[3] = &unk_278FECE20;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [volume mountWithOptions:taskOptions replyHandler:v13];
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

- (void)synchronize:(unsigned int)synchronize replyHandler:(id)handler
{
  handlerCopy = handler;
  volume = [(FSModuleVolume *)self->_ourVolume volume];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__FSVolumeConnector_synchronize_replyHandler___block_invoke;
  v9[3] = &unk_278FECE20;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [volume synchronizeWithFlags:synchronize replyHandler:v9];
}

- (void)unmount:(id)unmount
{
  unmountCopy = unmount;
  v5 = fskit_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FSVolumeConnector unmount:];
  }

  v6 = self->_ourVolume;
  volume = [(FSModuleVolume *)v6 volume];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __29__FSVolumeConnector_unmount___block_invoke;
  v10[3] = &unk_278FED618;
  v11 = v6;
  v12 = unmountCopy;
  v8 = unmountCopy;
  v9 = v6;
  [volume unmountWithReplyHandler:v10];
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

- (void)setUpdateInterest:(id)interest interest:(BOOL)a4 requestID:(unint64_t)d replyHandler:(id)handler
{
  handlerCopy = handler;
  v7 = fskit_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [FSVolumeConnector setUpdateInterest:interest:requestID:replyHandler:];
  }

  v8 = fs_errorForPOSIXError(45);
  handlerCopy[2](handlerCopy, v8);
}

- (void)fetchVolumeMachPortLabeled:(id)labeled requestID:(unint64_t)d replyHandler:(id)handler
{
  handlerCopy = handler;
  if ([*MEMORY[0x277D23D58] isEqualToString:labeled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_ourConnection);
    v9 = [WeakRetained valueForEntitlement:@"com.apple.private.LiveFS.setmachport"];

    if (v9 && ([v9 BOOLValue] & 1) != 0)
    {
      if ([(FSModuleVolume *)self->_ourVolume supportsKOIOOps]|| [(FSModuleVolume *)self->_ourVolume useMetaDataIO])
      {
        ourExtension = [(FSModuleVolume *)self->_ourVolume ourExtension];
        getFSMachPort = [ourExtension getFSMachPort];

        if (getFSMachPort)
        {
          handlerCopy[2](handlerCopy, 0, getFSMachPort);
        }

        else
        {
          v14 = fskit_std_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [FSVolumeConnector fetchVolumeMachPortLabeled:requestID:replyHandler:];
          }

          handlerCopy[2](handlerCopy, 102, 0);
        }
      }

      else
      {
        v15 = fskit_std_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [FSVolumeConnector fetchVolumeMachPortLabeled:requestID:replyHandler:];
        }

        handlerCopy[2](handlerCopy, 45, 0);
      }
    }

    else
    {
      v13 = fskit_std_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [FSVolumeConnector fetchVolumeMachPortLabeled:requestID:replyHandler:];
      }

      handlerCopy[2](handlerCopy, 13, 0);
    }
  }

  else
  {
    v12 = fskit_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [FSVolumeConnector fetchVolumeMachPortLabeled:requestID:replyHandler:];
    }

    handlerCopy[2](handlerCopy, 102, 0);
  }
}

- (void)parentsAndAttributesForItemsByID:(id)d requestID:(unint64_t)iD replyHandler:(id)handler
{
  handlerCopy = handler;
  v6 = fskit_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [FSVolumeConnector parentsAndAttributesForItemsByID:requestID:replyHandler:];
  }

  handlerCopy[2](handlerCopy, 45, 0);
}

- (void)pathConfigurationOf:(id)of propertyName:(int)name requestID:(unint64_t)d replyHandler:(id)handler
{
  ofCopy = of;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (name <= 7)
  {
    switch(name)
    {
      case 1:
        volume = [(FSModuleVolume *)self->_ourVolume volume];
        maximumLinkCount = [volume maximumLinkCount];
        break;
      case 4:
        volume = [(FSModuleVolume *)self->_ourVolume volume];
        maximumLinkCount = [volume maximumNameLength];
        break;
      case 7:
        volume = [(FSModuleVolume *)self->_ourVolume volume];
        restrictsOwnershipChanges = [volume restrictsOwnershipChanges];
        v14 = v10[2];
        goto LABEL_20;
      default:
        goto LABEL_17;
    }

    restrictsOwnershipChanges = maximumLinkCount;
    v14 = v10[2];
    v19 = v10;
    goto LABEL_25;
  }

  if (name > 11)
  {
    if (name == 12)
    {
      volume2 = [(FSModuleVolume *)self->_ourVolume volume];
      supportedVolumeCapabilities = [volume2 supportedVolumeCapabilities];
      if ([supportedVolumeCapabilities caseFormat])
      {
        volume3 = [(FSModuleVolume *)self->_ourVolume volume];
        supportedVolumeCapabilities2 = [volume3 supportedVolumeCapabilities];
        (v10[2])(v10, 0, [supportedVolumeCapabilities2 caseFormat] == 2);
      }

      else
      {
        (v10[2])(v10, 0, 1);
      }

      goto LABEL_27;
    }

    if (name == 18)
    {
      getMaxFileSizeInBits = [(FSModuleVolume *)self->_ourVolume getMaxFileSizeInBits];
      if (getMaxFileSizeInBits)
      {
        v16 = 0;
      }

      else
      {
        v16 = 45;
      }

      (v10[2])(v10, v16, getMaxFileSizeInBits);
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  if (name == 8)
  {
    volume = [(FSModuleVolume *)self->_ourVolume volume];
    truncatesLongNames = [volume truncatesLongNames];
    v14 = v10[2];
    restrictsOwnershipChanges = truncatesLongNames ^ 1u;
LABEL_20:
    v19 = v10;
LABEL_25:
    v14(v19, 0, restrictsOwnershipChanges);
    goto LABEL_26;
  }

  if (name == 11)
  {
    volume = [(FSModuleVolume *)self->_ourVolume volume];
    supportedVolumeCapabilities3 = [volume supportedVolumeCapabilities];
    (v10[2])(v10, 0, [supportedVolumeCapabilities3 caseFormat] == 0);

LABEL_26:
    goto LABEL_27;
  }

LABEL_17:
  (handlerCopy[2])(handlerCopy, 45, 0);
LABEL_27:
}

- (void)renameItemIn:(id)in named:(id)named item:(id)item toDirectory:(id)directory newName:(id)name toItem:(id)toItem usingFlags:(unsigned int)flags requestID:(unint64_t)self0 replyHandler:(id)self1
{
  v61 = *MEMORY[0x277D85DE8];
  inCopy = in;
  namedCopy = named;
  itemCopy = item;
  directoryCopy = directory;
  nameCopy = name;
  toItemCopy = toItem;
  handlerCopy = handler;
  v24 = self->_ourVolume;
  v25 = [(FSModuleVolume *)v24 getItemForFH:inCopy];
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
    if (inCopy == directoryCopy)
    {
      v27 = v26;
    }

    else
    {
      v27 = [(FSModuleVolume *)v24 getItemForFH:directoryCopy];
      if (!v27)
      {
        v28 = fskit_std_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [FSVolumeConnector renameItemIn:named:item:toDirectory:newName:toItem:usingFlags:requestID:replyHandler:];
        }

LABEL_9:

        (*(handlerCopy + 2))(handlerCopy, 70, 0, 0, 0, 0, 0);
        goto LABEL_13;
      }
    }

    v48 = v27;
    if ([v27 type] == 2)
    {
      v31 = [(FSModuleVolume *)v24 getItemForFH:itemCopy];
      v46 = itemCopy;
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

      if (!toItemCopy)
      {
        v41 = 0;
        v42 = nameCopy;
        v43 = namedCopy;
        v45 = 0;
LABEL_33:
        volume = [(FSModuleVolume *)self->_ourVolume volume];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __106__FSVolumeConnector_renameItemIn_named_item_toDirectory_newName_toItem_usingFlags_requestID_replyHandler___block_invoke;
        v49[3] = &unk_278FEDF70;
        v54 = handlerCopy;
        v49[4] = self;
        v50 = v47;
        v51 = v26;
        v36 = v48;
        v52 = v48;
        v53 = v45;
        namedCopy = v43;
        nameCopy = v42;
        v38 = v45;
        [volume renameItem:v50 inDirectory:v51 named:v43 toNewName:v49 inDirectory:? overItem:? replyHandler:?];

        v35 = v47;
        toItemCopy = v41;
        goto LABEL_34;
      }

      if (itemCopy == toItemCopy)
      {
        v32 = v31;
      }

      else
      {
        v32 = [(FSModuleVolume *)v24 getItemForFH:toItemCopy];
        if (!v32)
        {
          v33 = fskit_std_log();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [FSVolumeConnector renameItemIn:named:item:toDirectory:newName:toItem:usingFlags:requestID:replyHandler:];
          }

LABEL_27:

          (*(handlerCopy + 2))(handlerCopy, 70, 0, 0, 0, 0, 0);
LABEL_28:
          v35 = v47;
          v36 = v48;
LABEL_34:

          itemCopy = v46;
          goto LABEL_13;
        }
      }

      v45 = v32;
      type = [v32 type];
      if (type == [v47 type])
      {
LABEL_32:
        v41 = toItemCopy;
        v42 = nameCopy;
        v43 = namedCopy;
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
          LODWORD(type2) = 21;
          _os_log_impl(&dword_24A929000, v39, OS_LOG_TYPE_INFO, "%s: Given fromItem is not a directory, but toItem is a directory. Error = %d.", buf, 0x12u);
        }

        (*(handlerCopy + 2))(handlerCopy, 21, 0, 0, 0, 0, 0);
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
          LODWORD(type2) = 20;
          _os_log_impl(&dword_24A929000, v40, OS_LOG_TYPE_INFO, "%s: Given fromItem is a directory, but toItem is not a directory. Error = %d.", buf, 0x12u);
        }

        (*(handlerCopy + 2))(handlerCopy, 20, 0, 0, 0, 0, 0);
      }

      goto LABEL_28;
    }

    v34 = fskit_std_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v56 = "[FSVolumeConnector renameItemIn:named:item:toDirectory:newName:toItem:usingFlags:requestID:replyHandler:]";
      v57 = 2048;
      type2 = [v48 type];
      v59 = 1024;
      v60 = 20;
      _os_log_impl(&dword_24A929000, v34, OS_LOG_TYPE_INFO, "%s: Given toDirectory item is not a directory (type = %lu). Error = %d.", buf, 0x1Cu);
    }

    (*(handlerCopy + 2))(handlerCopy, 20, 0, 0, 0, 0, 0);
  }

  else
  {
    v29 = fskit_std_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v56 = "[FSVolumeConnector renameItemIn:named:item:toDirectory:newName:toItem:usingFlags:requestID:replyHandler:]";
      v57 = 2048;
      type2 = [v26 type];
      v59 = 1024;
      v60 = 20;
      _os_log_impl(&dword_24A929000, v29, OS_LOG_TYPE_INFO, "%s: Given fromDirectory item is not a directory (type = %lu). Error = %d.", buf, 0x1Cu);
    }

    (*(handlerCopy + 2))(handlerCopy, 20, 0, 0, 0, 0, 0);
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

- (void)replenishSearchCreditsFor:(id)for credits:(unsigned int)credits requestID:(unint64_t)d replyHandler:(id)handler
{
  handlerCopy = handler;
  v7 = fskit_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [FSVolumeConnector replenishSearchCreditsFor:credits:requestID:replyHandler:];
  }

  handlerCopy[2](handlerCopy, 45);
}

- (void)abortSearch:(id)search requestID:(unint64_t)d replyHandler:(id)handler
{
  handlerCopy = handler;
  v6 = fskit_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [FSVolumeConnector abortSearch:requestID:replyHandler:];
  }

  handlerCopy[2](handlerCopy, 45);
}

- (void)search:(id)search token:(id)token criteria:(id)criteria resumeAt:(id)at maxData:(unsigned int)data maxDelay:(double)delay initialCredits:(unsigned int)credits requestID:(unint64_t)self0 replyHandler:(id)self1
{
  handlerCopy = handler;
  v12 = fskit_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [FSVolumeConnector search:token:criteria:resumeAt:maxData:maxDelay:initialCredits:requestID:replyHandler:];
  }

  handlerCopy[2](handlerCopy, 45);
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