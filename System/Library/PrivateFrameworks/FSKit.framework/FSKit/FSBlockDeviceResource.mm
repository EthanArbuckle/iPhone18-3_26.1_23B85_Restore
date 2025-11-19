@interface FSBlockDeviceResource
+ (id)getDeviceName:(id)a3;
+ (void)openWithBSDName:(id)a3 writable:(BOOL)a4 auditToken:(id)a5 replyHandler:(id)a6;
- (BOOL)asynchronousMetadataFlushWithError:(id *)a3;
- (BOOL)delayedMetadataWriteFrom:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 error:(id *)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)metadataClear:(id)a3 withDelayedWrites:(BOOL)a4 error:(id *)a5;
- (BOOL)metadataFlushWithError:(id *)a3;
- (BOOL)metadataPurge:(id)a3 error:(id *)a4;
- (BOOL)metadataReadInto:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 error:(id *)a6;
- (BOOL)metadataReadInto:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 readAheadExtents:(id *)a6 readAheadCount:(int64_t)a7 error:(id *)a8;
- (BOOL)metadataWriteFrom:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 error:(id *)a6;
- (BOOL)terminated;
- (FSBlockDeviceResource)initWithBSDName:(id)a3 devicePath:(id)a4 fileDescriptor:(int)a5 writable:(BOOL)a6;
- (FSBlockDeviceResource)initWithCoder:(id)a3;
- (FSBlockDeviceResource)initWithResource:(id)a3;
- (id)getProgressURLKey;
- (id)makeProxy;
- (id)startUsingResource:(id)a3;
- (id)stopUsingResource:(id)a3;
- (unint64_t)readInto:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 error:(id *)a6;
- (unint64_t)writeFrom:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 error:(id *)a6;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)readFirstSectorAndLog;
- (void)readInto:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 completionHandler:(id)a6;
- (void)releaseNotification;
- (void)revoke;
- (void)terminate;
- (void)terminateLocked;
- (void)writeFrom:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 completionHandler:(id)a6;
@end

@implementation FSBlockDeviceResource

+ (id)getDeviceName:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if ([v3 hasPrefix:@"/dev/"])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"/dev/", "length")}];
  }

  memset(&v15, 0, sizeof(v15));
  if ([v4 hasPrefix:@"fd/"])
  {
    v5 = [v4 substringFromIndex:{objc_msgSend(@"fd/", "length")}];
    v6 = [v5 intValue];

    if (v6 >= 1)
    {
      if (fstat(v6, &v15))
      {
        v7 = fskit_std_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          +[FSBlockDeviceResource getDeviceName:];
        }

LABEL_8:

        v8 = 0;
        goto LABEL_18;
      }

      if (fcntl(v6, 50, v16) == -1)
      {
        v7 = fskit_std_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [(FSBlockDeviceResource *)v6 getDeviceName:v7];
        }

        goto LABEL_8;
      }

      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v16];

      v10 = fskit_std_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(FSBlockDeviceResource *)v9 getDeviceName:v6, v10];
      }

      if ([v9 hasPrefix:@"/dev/"])
      {
        v11 = [v9 substringFromIndex:{objc_msgSend(@"/dev/", "length")}];

        v9 = v11;
      }

      v4 = v9;
    }
  }

  if ([v4 hasPrefix:@"r"])
  {
    v12 = [v4 substringFromIndex:1];

    v4 = v12;
  }

  v4 = v4;
  v8 = v4;
LABEL_18:

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FSBlockDeviceResource;
  [(FSResource *)&v13 encodeWithCoder:v4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v12);
  }

  fileDescriptor = self->_fileDescriptor;
  if ((fileDescriptor & 0x80000000) == 0)
  {
    v6 = xpc_fd_create(fileDescriptor);
    if (v6)
    {
      [v4 encodeXPCObject:v6 forKey:@"FSResource.fd"];
    }

    else
    {
      v7 = *__error();
      v8 = fskit_std_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v10 = self->_fileDescriptor;
        devicePath = self->_devicePath;
        *buf = 67109634;
        v15 = v10;
        v16 = 2114;
        v17 = devicePath;
        v18 = 1024;
        v19 = v7;
        _os_log_fault_impl(&dword_24A929000, v8, OS_LOG_TYPE_FAULT, "error creating fdWrapper for fd %d(%{public}@), maybe error: %d", buf, 0x18u);
      }
    }
  }

  [v4 encodeObject:self->_BSDName forKey:@"FSResource.bsdName"];
  [v4 encodeObject:self->_devicePath forKey:@"FSResource.path"];
  [v4 encodeBool:self->_writable forKey:@"FSResource.writable"];
  [v4 encodeBool:self->_supportsBarrier forKey:@"FSResource.supportsBarrier"];
  [v4 encodeBool:self->_supportsPriority forKey:@"FSResource.supportsPriority"];
  [v4 encodeBool:self->_supportsUnmap forKey:@"FSResource.supportsUnmap"];
  [v4 encodeInteger:self->_blockSize forKey:@"FSResource.blockSize"];
  [v4 encodeInteger:self->_blockCount forKey:@"FSResource.blockCount"];
  [v4 encodeInteger:self->_physicalBlockSize forKey:@"FSResource.physicalBlockSize"];
  [v4 encodeInteger:self->_queueDepth forKey:@"FSResource.queueDepth"];
  [v4 encodeInteger:self->_partitionBase forKey:@"FSResource.partitionBase"];
  [v4 encodeBool:self->_limited forKey:@"FSResource.Limited"];

  v9 = *MEMORY[0x277D85DE8];
}

- (FSBlockDeviceResource)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v18);
  }

  v19.receiver = self;
  v19.super_class = FSBlockDeviceResource;
  v5 = [(FSResource *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSResource.bsdName"];
    BSDName = v5->_BSDName;
    v5->_BSDName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSResource.path"];
    devicePath = v5->_devicePath;
    v5->_devicePath = v8;

    v5->_writable = [v4 decodeBoolForKey:@"FSResource.writable"];
    v5->_supportsBarrier = [v4 decodeBoolForKey:@"FSResource.supportsBarrier"];
    v5->_supportsPriority = [v4 decodeBoolForKey:@"FSResource.supportsPriority"];
    v5->_supportsUnmap = [v4 decodeBoolForKey:@"FSResource.supportsUnmap"];
    v5->_blockSize = [v4 decodeIntegerForKey:@"FSResource.blockSize"];
    v5->_blockCount = [v4 decodeIntegerForKey:@"FSResource.blockCount"];
    v5->_physicalBlockSize = [v4 decodeIntegerForKey:@"FSResource.physicalBlockSize"];
    v5->_queueDepth = [v4 decodeIntegerForKey:@"FSResource.queueDepth"];
    v5->_partitionBase = [v4 decodeIntegerForKey:@"FSResource.partitionBase"];
    v5->_limited = [v4 decodeBoolForKey:@"FSResource.Limited"];
    v10 = [v4 decodeXPCObjectOfType:MEMORY[0x277D86488] forKey:@"FSResource.fd"];
    v11 = v10;
    if (v10)
    {
      v12 = xpc_fd_dup(v10);
    }

    else
    {
      v12 = -1;
    }

    v5->_fileDescriptor = v12;
    v5->_terminated = 0;
    v13 = [FSWorkQueue alloc];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"fsblockdevice.%@", v5->_BSDName];
    v15 = [(FSWorkQueue *)v13 initQueueWithDomain:v14 concurrency:16];
    fsExecQueue = v5->_fsExecQueue;
    v5->_fsExecQueue = v15;
  }

  return v5;
}

- (id)makeProxy
{
  v3 = [(FSBlockDeviceResource *)self BSDName];
  v4 = [FSBlockDeviceResource newProxyForBSDName:v3 isWritable:[(FSBlockDeviceResource *)self isWritable]];

  return v4;
}

- (void)dealloc
{
  [(FSBlockDeviceResource *)self terminate];
  v3.receiver = self;
  v3.super_class = FSBlockDeviceResource;
  [(FSBlockDeviceResource *)&v3 dealloc];
}

- (void)revoke
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0(&dword_24A929000, a1, a3, "%s:end", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __31__FSBlockDeviceResource_revoke__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = fskit_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __31__FSBlockDeviceResource_revoke__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void __31__FSBlockDeviceResource_revoke__block_invoke_77(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __31__FSBlockDeviceResource_revoke__block_invoke_77_cold_1(v3);
  }

  *(*(*(a1 + 32) + 8) + 24) = [v3 code];
}

- (void)readInto:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = self;
  objc_sync_enter(v11);
  if (v11->_terminated)
  {
    v12 = fs_errorForPOSIXError(5);
    v10[2](v10, 0, v12);

    objc_sync_exit(v11);
LABEL_6:

    goto LABEL_7;
  }

  objc_sync_exit(v11);

  if (!a3)
  {
    v11 = fs_errorForPOSIXError(14);
    v10[2](v10, 0, v11);
    goto LABEL_6;
  }

  objc_initWeak(&location, v11);
  fsExecQueue = v11->_fsExecQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__FSBlockDeviceResource_readInto_startingAt_length_completionHandler___block_invoke;
  v14[3] = &unk_278FED420;
  objc_copyWeak(v16, &location);
  v16[1] = a3;
  v16[2] = a5;
  v16[3] = a4;
  v15 = v10;
  [(FSWorkQueue *)fsExecQueue enqueue:v14];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
LABEL_7:
}

void __70__FSBlockDeviceResource_readInto_startingAt_length_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = pread([WeakRetained fileDescriptor], *(a1 + 48), *(a1 + 56), *(a1 + 64));
    v4 = *(a1 + 32);
    if (v3 < 0)
    {
      v5 = __error();
      v6 = fs_errorForPOSIXError(*v5);
      (*(v4 + 16))(v4, 0, v6);
    }

    else
    {
      (*(v4 + 16))(v4, v3, 0);
    }

    WeakRetained = v7;
  }
}

- (unint64_t)readInto:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 error:(id *)a6
{
  v10 = self;
  objc_sync_enter(v10);
  if (v10->_terminated)
  {
    v11 = fs_errorForPOSIXError(5);
    if (a6)
    {
      v11 = v11;
      *a6 = v11;
    }

    objc_sync_exit(v10);
    return 0;
  }

  objc_sync_exit(v10);

  result = pread([(FSBlockDeviceResource *)v10 fileDescriptor], a3, a5, a4);
  if ((result & 0x8000000000000000) != 0)
  {
    v13 = __error();
    v14 = fs_errorForPOSIXError(*v13);
    if (a6)
    {
      v14 = v14;
      *a6 = v14;
    }

    return 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  return result;
}

- (void)writeFrom:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = self;
  objc_sync_enter(v11);
  if (v11->_terminated)
  {
    v12 = fs_errorForPOSIXError(5);
    v10[2](v10, 0, v12);

    objc_sync_exit(v11);
LABEL_6:

    goto LABEL_7;
  }

  objc_sync_exit(v11);

  if (!a3)
  {
    v11 = fs_errorForPOSIXError(14);
    v10[2](v10, 0, v11);
    goto LABEL_6;
  }

  objc_initWeak(&location, v11);
  fsExecQueue = v11->_fsExecQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__FSBlockDeviceResource_writeFrom_startingAt_length_completionHandler___block_invoke;
  v14[3] = &unk_278FED420;
  objc_copyWeak(v16, &location);
  v16[1] = a3;
  v16[2] = a5;
  v16[3] = a4;
  v15 = v10;
  [(FSWorkQueue *)fsExecQueue enqueue:v14];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
LABEL_7:
}

void __71__FSBlockDeviceResource_writeFrom_startingAt_length_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = pwrite([WeakRetained fileDescriptor], *(a1 + 48), *(a1 + 56), *(a1 + 64));
    v4 = *(a1 + 32);
    if (v3 < 0)
    {
      v5 = __error();
      v6 = fs_errorForPOSIXError(*v5);
      (*(v4 + 16))(v4, 0, v6);
    }

    else
    {
      (*(v4 + 16))(v4, v3, 0);
    }

    WeakRetained = v7;
  }
}

- (unint64_t)writeFrom:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 error:(id *)a6
{
  v10 = self;
  objc_sync_enter(v10);
  if (v10->_terminated)
  {
    v11 = fs_errorForPOSIXError(5);
    if (a6)
    {
      v11 = v11;
      *a6 = v11;
    }

    objc_sync_exit(v10);
    return 0;
  }

  objc_sync_exit(v10);

  result = pwrite([(FSBlockDeviceResource *)v10 fileDescriptor], a3, a5, a4);
  if ((result & 0x8000000000000000) != 0)
  {
    v13 = __error();
    v14 = fs_errorForPOSIXError(*v13);
    if (a6)
    {
      v14 = v14;
      *a6 = v14;
    }

    return 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  return result;
}

- (BOOL)metadataReadInto:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 error:(id *)a6
{
  v11 = [MEMORY[0x277D23DB8] defaultClient];
  v12 = [v11 readMeta:self->_fileDescriptor buffer:a3 offset:a4 length:a5];
  if (v12)
  {
    v13 = fs_errorForPOSIXError(5);
    if (a6)
    {
      v13 = v13;
      *a6 = v13;
    }
  }

  else if (a6)
  {
    *a6 = 0;
  }

  return v12 == 0;
}

- (BOOL)metadataWriteFrom:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 error:(id *)a6
{
  v11 = [MEMORY[0x277D23DB8] defaultClient];
  v12 = [v11 writeMeta:self->_fileDescriptor buffer:a3 offset:a4 length:a5];
  if (v12)
  {
    v13 = fs_errorForPOSIXError(5);
    if (a6)
    {
      v13 = v13;
      *a6 = v13;
    }
  }

  else if (a6)
  {
    *a6 = 0;
  }

  return v12 == 0;
}

- (BOOL)delayedMetadataWriteFrom:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 error:(id *)a6
{
  v11 = [MEMORY[0x277D23DB8] defaultClient];
  v12 = [v11 writeMetaDelayed:self->_fileDescriptor buffer:a3 offset:a4 length:a5];
  if (v12)
  {
    v13 = fs_errorForPOSIXError(5);
    if (a6)
    {
      v13 = v13;
      *a6 = v13;
    }
  }

  else if (a6)
  {
    *a6 = 0;
  }

  return v12 == 0;
}

- (BOOL)asynchronousMetadataFlushWithError:(id *)a3
{
  v5 = [MEMORY[0x277D23DB8] defaultClient];
  v6 = [v5 flushMeta:self->_fileDescriptor wait:0];
  if (v6)
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [FSBlockDeviceResource asynchronousMetadataFlushWithError:];
    }

    v8 = fs_errorForPOSIXError(5);
    if (a3)
    {
      v8 = v8;
      *a3 = v8;
    }
  }

  else if (a3)
  {
    *a3 = 0;
  }

  return v6 == 0;
}

- (BOOL)metadataFlushWithError:(id *)a3
{
  v5 = [MEMORY[0x277D23DB8] defaultClient];
  v6 = [v5 flushMeta:self->_fileDescriptor wait:1];
  if (v6)
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [FSBlockDeviceResource metadataFlushWithError:];
    }

    v8 = fs_errorForPOSIXError(5);
    if (a3)
    {
      v8 = v8;
      *a3 = v8;
    }
  }

  else if (a3)
  {
    *a3 = 0;
  }

  return v6 == 0;
}

- (BOOL)metadataClear:(id)a3 withDelayedWrites:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [MEMORY[0x277D23DB8] defaultClient];
  if ([v8 count] < 9)
  {
    v26 = self;
    v27 = v9;
    memset(v33, 0, sizeof(v33));
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v29;
      do
      {
        v18 = 0;
        v19 = ((v33 | 0xC) + 16 * v16);
        v16 += v15;
        do
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v28 + 1) + 8 * v18);
          *(v19 - 3) = [v20 startOffset];
          *(v19 - 1) = [v20 segmentLength];
          *v19 = [v20 segmentCount];
          v19 += 4;
          ++v18;
        }

        while (v15 != v18);
        v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v15);
    }

    v9 = v27;
    v21 = [v27 clearMetaBlocks:v26->_fileDescriptor ranges:v33 rangesCount:objc_msgSend(v13 wait:{"count"), v6}];
    v12 = v21 == 0;
    if (v21)
    {
      v22 = fskit_std_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [FSBlockDeviceResource metadataClear:withDelayedWrites:error:];
      }

      v23 = fs_errorForPOSIXError(5);
      if (a5)
      {
        v23 = v23;
        *a5 = v23;
      }
    }

    else if (a5)
    {
      *a5 = 0;
    }
  }

  else
  {
    v10 = fskit_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [FSBlockDeviceResource metadataClear:withDelayedWrites:error:];
    }

    v11 = fs_errorForPOSIXError(22);
    if (a5)
    {
      v11 = v11;
      *a5 = v11;
    }

    v12 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)metadataPurge:(id)a3 error:(id *)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277D23DB8] defaultClient];
  if ([v6 count] < 9)
  {
    v24 = self;
    v25 = v7;
    memset(v31, 0, sizeof(v31));
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v27;
      do
      {
        v16 = 0;
        v17 = ((v31 | 0xC) + 16 * v14);
        v14 += v13;
        do
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v26 + 1) + 8 * v16);
          *(v17 - 3) = [v18 startOffset];
          *(v17 - 1) = [v18 segmentLength];
          *v17 = [v18 segmentCount];
          v17 += 4;
          ++v16;
        }

        while (v13 != v16);
        v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v13);
    }

    v7 = v25;
    v19 = [v25 purgeMetaBlocks:v24->_fileDescriptor ranges:v31 rangesCount:{objc_msgSend(v11, "count")}];
    v10 = v19 == 0;
    if (v19)
    {
      v20 = fskit_std_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [FSBlockDeviceResource metadataPurge:error:];
      }

      v21 = fs_errorForPOSIXError(5);
      if (a4)
      {
        v21 = v21;
        *a4 = v21;
      }
    }

    else if (a4)
    {
      *a4 = 0;
    }
  }

  else
  {
    v8 = fskit_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FSBlockDeviceResource metadataPurge:error:];
    }

    v9 = fs_errorForPOSIXError(22);
    if (a4)
    {
      v9 = v9;
      *a4 = v9;
    }

    v10 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)releaseNotification
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0(&dword_24A929000, a1, a3, "%s:released", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = [(FSResource *)FSBlockDeviceResource dynamicCast:a3];
  v5 = v4;
  if (v4)
  {
    BSDName = self->_BSDName;
    v7 = [v4 BSDName];
    v8 = [(NSString *)BSDName isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getProgressURLKey
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = MEMORY[0x277CCACA8];
  v4 = [(FSBlockDeviceResource *)self bsdName];
  v5 = [v3 stringWithFormat:@"/dev/r%@", v4];
  v6 = [v2 fileURLWithPath:v5];

  return v6;
}

- (FSBlockDeviceResource)initWithBSDName:(id)a3 devicePath:(id)a4 fileDescriptor:(int)a5 writable:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v30.receiver = self;
  v30.super_class = FSBlockDeviceResource;
  v13 = [(FSResource *)&v30 initResource];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(v13 + 6, a3);
    objc_storeStrong(&v14->_devicePath, a4);
    v14->_fileDescriptor = a5;
    v14->_writable = a6;
    v29 = 0;
    v28 = 0;
    if (ioctl(a5, 0x40046418uLL, &v29))
    {
      v15 = 512;
    }

    else
    {
      v15 = v29;
    }

    v14->_blockSize = v15;
    v16 = ioctl(v14->_fileDescriptor, 0x40086419uLL, &v28);
    v17 = v28;
    if (v16)
    {
      v17 = 0;
    }

    v14->_blockCount = v17;
    if (ioctl(v14->_fileDescriptor, 0x4004644DuLL, &v29))
    {
      blockSize = v14->_blockSize;
    }

    else
    {
      blockSize = v29;
    }

    v14->_physicalBlockSize = blockSize;
    if (ioctl(v14->_fileDescriptor, 0x4004644EuLL, &v29))
    {
      v19 = 0;
    }

    else
    {
      v19 = v29;
    }

    v14->_queueDepth = v19;
    if (ioctl(v14->_fileDescriptor, 0x4004644CuLL, &v29))
    {
      v14->_supportsUnmap = 0;
      v14->_supportsPriority = 0;
      v14->_supportsBarrier = 0;
    }

    else
    {
      v20 = v29;
      v14->_supportsBarrier = (v29 & 2) != 0;
      v14->_supportsPriority = (v20 & 4) != 0;
      v14->_supportsUnmap = (v20 & 0x10) != 0;
    }

    v21 = ioctl(v14->_fileDescriptor, 0x40086449uLL, &v28);
    v22 = v28;
    if (v21)
    {
      v22 = 0;
    }

    v14->_partitionBase = v22;
    v14->_notification = 0;
    v14->_terminated = 0;
    v23 = [FSWorkQueue alloc];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"fsblockdevice.%@", v14->_BSDName];
    v25 = [(FSWorkQueue *)v23 initQueueWithDomain:v24 concurrency:16];
    fsExecQueue = v14->_fsExecQueue;
    v14->_fsExecQueue = v25;
  }

  return v14;
}

- (FSBlockDeviceResource)initWithResource:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = FSBlockDeviceResource;
  v5 = [(FSResource *)&v15 initResource];
  if (v5)
  {
    v6 = [v4 BSDName];
    BSDName = v5->_BSDName;
    v5->_BSDName = v6;

    v8 = [v4 devicePath];
    devicePath = v5->_devicePath;
    v5->_devicePath = v8;

    v5->_fileDescriptor = [v4 fileDescriptor];
    v5->_writable = [v4 isWritable];
    v5->_blockSize = [v4 blockSize];
    v5->_blockCount = [v4 blockCount];
    v5->_physicalBlockSize = [v4 physicalBlockSize];
    v5->_queueDepth = *(v4 + 3);
    v5->_supportsBarrier = *(v4 + 17);
    v5->_supportsUnmap = *(v4 + 19);
    v5->_supportsPriority = *(v4 + 18);
    v5->_partitionBase = [v4 partitionBase];
    v5->_notification = 0;
    v5->_terminated = [v4 terminated];
    v10 = [FSWorkQueue alloc];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"fsblockdevice.%@", v5->_BSDName];
    v12 = [(FSWorkQueue *)v10 initQueueWithDomain:v11 concurrency:16];
    fsExecQueue = v5->_fsExecQueue;
    v5->_fsExecQueue = v12;
  }

  return v5;
}

+ (void)openWithBSDName:(id)a3 writable:(BOOL)a4 auditToken:(id)a5 replyHandler:(id)a6
{
  v8 = a4;
  v83 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = fskit_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    +[FSBlockDeviceResource(Project) openWithBSDName:writable:auditToken:replyHandler:];
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"/dev/r%@", v9];
  v14 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.fskit.fskit_helper" options:4096];
  v15 = +[FSKitConstants FSKitHelperProtocol];
  [v14 setRemoteObjectInterface:v15];

  [v14 resume];
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__1;
  v75 = __Block_byref_object_dispose__1;
  v76 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__1;
  v69 = __Block_byref_object_dispose__1;
  v70 = 0;
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __83__FSBlockDeviceResource_Project__openWithBSDName_writable_auditToken_replyHandler___block_invoke;
  v64[3] = &unk_278FECF30;
  v64[4] = &v71;
  v16 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v64];
  v17 = v16;
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __83__FSBlockDeviceResource_Project__openWithBSDName_writable_auditToken_replyHandler___block_invoke_209;
  v63[3] = &unk_278FED448;
  if (v8)
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  v63[4] = &v65;
  v63[5] = &v71;
  [v16 openDevice:v9 devicePath:v13 flags:v18 auditToken:v10 replyHandler:v63];
  v19 = v66[5];
  if (!v19 || ([v19 fileDescriptor] & 0x80000000) != 0)
  {
    v22 = fskit_std_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v39 = v72[5];
      notification = 136315650;
      v78 = "+[FSBlockDeviceResource(Project) openWithBSDName:writable:auditToken:replyHandler:]";
      v79 = 2112;
      v80 = v9;
      v81 = 2112;
      v82 = v39;
      _os_log_impl(&dword_24A929000, v22, OS_LOG_TYPE_INFO, "%s: failed to open device %@, %@", &notification, 0x20u);
    }
  }

  else
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = [v66[5] BSDName];
    v22 = [v20 stringWithFormat:@"com.apple.fskit.iokit.queue.%@.%d", v21, objc_msgSend(v66[5], "fileDescriptor")];

    v23 = v22;
    v24 = dispatch_queue_create([v22 UTF8String], 0);
    [v66[5] setIoKitQueue:v24];

    v25 = [v66[5] ioKitQueue];

    if (v25)
    {
      v26 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
      v27 = fskit_std_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        +[FSBlockDeviceResource(Project) openWithBSDName:writable:auditToken:replyHandler:];
      }

      v28 = [v66[5] ioKitQueue];
      IONotificationPortSetDispatchQueue(v26, v28);

      [v66[5] setNotifyPort:v26];
      v29 = v9;
      v30 = [v9 UTF8String];
      v31 = *MEMORY[0x277CD28A0];
      v32 = IOBSDNameMatching(*MEMORY[0x277CD28A0], 0, v30);
      MatchingService = IOServiceGetMatchingService(v31, v32);
      notification = 0;
      if (MatchingService)
      {
        v34 = [v66[5] notifyPort];
        v35 = IOServiceAddInterestNotification(v34, MatchingService, "IOGeneralInterest", deviceNotificationCallback, v66[5], &notification);
        IOObjectRelease(MatchingService);
        if (!v35)
        {
          [v66[5] setNotification:notification];
          v46 = fskit_std_log();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            [(FSBlockDeviceResource(Project) *)v46 openWithBSDName:v56 writable:v57 auditToken:v58 replyHandler:v59, v60, v61, v62];
          }

          goto LABEL_25;
        }

        v36 = fskit_std_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          +[FSBlockDeviceResource(Project) openWithBSDName:writable:auditToken:replyHandler:];
        }

        [v66[5] terminate];
        v37 = v66[5];
        v66[5] = 0;

        v38 = fs_errorForMachError(v35);
      }

      else
      {
        v44 = fskit_std_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          +[FSBlockDeviceResource(Project) openWithBSDName:writable:auditToken:replyHandler:];
        }

        [v66[5] terminate];
        v45 = v66[5];
        v66[5] = 0;

        v38 = fs_errorForPOSIXError(2);
      }

      v46 = v72[5];
      v72[5] = v38;
LABEL_25:

      goto LABEL_26;
    }

    v40 = fskit_std_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      +[FSBlockDeviceResource(Project) openWithBSDName:writable:auditToken:replyHandler:];
    }

    [v66[5] terminate];
    v41 = v66[5];
    v66[5] = 0;

    v42 = fs_errorForPOSIXError(12);
    v43 = v72[5];
    v72[5] = v42;
  }

LABEL_26:

  [v14 invalidate];
  v47 = fskit_std_log();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    [(FSBlockDeviceResource(Project) *)v47 openWithBSDName:v48 writable:v49 auditToken:v50 replyHandler:v51, v52, v53, v54];
  }

  v11[2](v11, v66[5], v72[5]);
  _Block_object_dispose(&v65, 8);

  _Block_object_dispose(&v71, 8);
  v55 = *MEMORY[0x277D85DE8];
}

void __83__FSBlockDeviceResource_Project__openWithBSDName_writable_auditToken_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __31__FSBlockDeviceResource_revoke__block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void __83__FSBlockDeviceResource_Project__openWithBSDName_writable_auditToken_replyHandler___block_invoke_209(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v8 = fskit_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __83__FSBlockDeviceResource_Project__openWithBSDName_writable_auditToken_replyHandler___block_invoke_209_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  else
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315394;
      v21 = "+[FSBlockDeviceResource(Project) openWithBSDName:writable:auditToken:replyHandler:]_block_invoke";
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_24A929000, v16, OS_LOG_TYPE_DEFAULT, "%s: Open device returned error %@", &v20, 0x16u);
    }

    v17 = *(*(a1 + 40) + 8);
    v18 = v7;
    v8 = *(v17 + 40);
    *(v17 + 40) = v18;
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)startUsingResource:(id)a3
{
  v5 = a3;
  if (self->_usingResourcePurpose)
  {
    v6 = fskit_std_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [FSBlockDeviceResource(Project) startUsingResource:?];
    }

    v7 = 16;
LABEL_16:
    v16 = fs_errorForPOSIXError(v7);
    goto LABEL_17;
  }

  v8 = [MEMORY[0x277D23DB8] defaultClient];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FSBlockDeviceResource(Project) startUsingResource:];
    }

    v7 = 22;
    goto LABEL_16;
  }

  v10 = [MEMORY[0x277D23DB8] defaultClient];
  v11 = v10;
  if (self->_writable)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v10 openFileDescriptorForKernel:self->_fileDescriptor flags:v12];
  if (v13)
  {
    v14 = v13;
    v15 = fskit_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [FSBlockDeviceResource(Project) startUsingResource:];
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v14 userInfo:0];
  }

  else
  {
    objc_storeStrong(&self->_usingResourcePurpose, a3);
    v19 = fskit_std_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [(FSBlockDeviceResource(Project) *)self startUsingResource:?];
    }

    v16 = 0;
  }

LABEL_17:

  return v16;
}

- (id)stopUsingResource:(id)a3
{
  v4 = a3;
  usingResourcePurpose = self->_usingResourcePurpose;
  if (usingResourcePurpose && [(NSString *)usingResourcePurpose length])
  {
    if (-[NSString isEqualToString:](self->_usingResourcePurpose, "isEqualToString:", v4) || ([v4 isEqualToString:@"serviceTerminated"] & 1) != 0)
    {
      v6 = [MEMORY[0x277D23DB8] defaultClient];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v8 = [MEMORY[0x277D23DB8] defaultClient];
        v9 = [v8 closeFileDescriptorForKernel:self->_fileDescriptor];
        v10 = fskit_std_log();
        v11 = v10;
        if (v9)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [FSBlockDeviceResource(Project) stopUsingResource:];
          }

          v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v9 userInfo:0];
        }

        else
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            [FSBlockDeviceResource(Project) stopUsingResource:?];
          }

          v12 = 0;
        }

        goto LABEL_24;
      }

      v21 = fskit_std_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [FSBlockDeviceResource(Project) stopUsingResource:];
      }
    }

    else
    {
      v22 = fskit_std_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [FSBlockDeviceResource(Project) stopUsingResource:?];
      }
    }

    v12 = fs_errorForPOSIXError(22);
    goto LABEL_24;
  }

  v13 = fskit_std_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [(FSBlockDeviceResource(Project) *)v13 stopUsingResource:v14, v15, v16, v17, v18, v19, v20];
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (void)terminateLocked
{
  [(FSBlockDeviceResource *)self releaseNotification];
  notifyPort = self->_notifyPort;
  if (notifyPort)
  {
    IONotificationPortDestroy(notifyPort);
    self->_notifyPort = 0;
  }

  if (!self->_terminated)
  {
    fileDescriptor = self->_fileDescriptor;
    if ((fileDescriptor & 0x80000000) == 0)
    {
      close(fileDescriptor);
      self->_fileDescriptor = -1;
    }

    self->_terminated = 1;
  }
}

- (void)readFirstSectorAndLog
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = malloc_type_malloc(self->_blockSize, 0xBE4DBB4CuLL);
  blockSize = self->_blockSize;
  v15 = 0;
  v5 = [(FSBlockDeviceResource *)self readInto:v3 startingAt:0 length:blockSize error:&v15];
  v6 = v15;
  v7 = fskit_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    fileDescriptor = self->_fileDescriptor;
    *buf = 67109634;
    v17 = fileDescriptor;
    v18 = 2048;
    *v19 = v5;
    *&v19[8] = 2112;
    v20 = v6;
    _os_log_impl(&dword_24A929000, v7, OS_LOG_TYPE_DEFAULT, "readFirstSectorAndLog reading from %d got rv %zu error %@", buf, 0x1Cu);
  }

  if (v5 >= 5)
  {
    v9 = fskit_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *v3;
      v11 = v3[1];
      v12 = v3[2];
      v13 = v3[3];
      *buf = 67109888;
      v17 = v10;
      v18 = 1024;
      *v19 = v11;
      *&v19[4] = 1024;
      *&v19[6] = v12;
      LOWORD(v20) = 1024;
      *(&v20 + 2) = v13;
      _os_log_impl(&dword_24A929000, v9, OS_LOG_TYPE_DEFAULT, "Successful read, first characters %02x%02x:%02x%02x", buf, 0x1Au);
    }
  }

  if (v3)
  {
    free(v3);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)metadataReadInto:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 readAheadExtents:(id *)a6 readAheadCount:(int64_t)a7 error:(id *)a8
{
  if (a7)
  {
    v15 = [MEMORY[0x277D23DB8] defaultClient];
    v16 = [v15 readMetaWithRA:self->_fileDescriptor buffer:a3 offset:a4 length:a5 raList:a6 raListCount:a7];
    v17 = v16 == 0;
    if (v16)
    {
      v18 = fs_errorForPOSIXError(5);
      if (a8)
      {
        v18 = v18;
        *a8 = v18;
      }
    }

    else if (a8)
    {
      *a8 = 0;
    }
  }

  else
  {
    v19 = fskit_std_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FSBlockDeviceResource(Private) metadataReadInto:startingAt:length:readAheadExtents:readAheadCount:error:];
    }

    v20 = fs_errorForPOSIXError(22);
    if (a8)
    {
      v20 = v20;
      *a8 = v20;
    }

    return 0;
  }

  return v17;
}

- (BOOL)terminated
{
  v2 = self;
  objc_sync_enter(v2);
  terminated = v2->_terminated;
  objc_sync_exit(v2);

  return terminated;
}

- (void)terminate
{
  if (!self->_terminated)
  {
    ioKitQueue = self->_ioKitQueue;
    if (ioKitQueue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __43__FSBlockDeviceResource_Private__terminate__block_invoke;
      block[3] = &unk_278FED278;
      block[4] = self;
      dispatch_sync(ioKitQueue, block);
    }

    else
    {
      obj = self;
      objc_sync_enter(obj);
      [(FSBlockDeviceResource *)obj terminateLocked];
      fsExecQueue = obj->_fsExecQueue;
      obj->_fsExecQueue = 0;

      objc_sync_exit(obj);
    }
  }
}

void __43__FSBlockDeviceResource_Private__terminate__block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) terminateLocked];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  objc_sync_exit(obj);
}

+ (void)getDeviceName:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)getDeviceName:(os_log_t)log .cold.2(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 1024;
  v7 = a2;
  _os_log_debug_impl(&dword_24A929000, log, OS_LOG_TYPE_DEBUG, "Got device path %@ for fd: %d", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)getDeviceName:(int)a1 .cold.3(int a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = __error();
  v5 = strerror(*v4);
  v7[0] = 67109378;
  v7[1] = a1;
  v8 = 2080;
  v9 = v5;
  _os_log_error_impl(&dword_24A929000, a2, OS_LOG_TYPE_ERROR, "Unable to get device path from fd %d: %s", v7, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __31__FSBlockDeviceResource_revoke__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0(&dword_24A929000, a2, a3, "%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __31__FSBlockDeviceResource_revoke__block_invoke_77_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asynchronousMetadataFlushWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)metadataFlushWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)metadataClear:withDelayedWrites:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)metadataClear:withDelayedWrites:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)metadataPurge:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)metadataPurge:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __83__FSBlockDeviceResource_Project__openWithBSDName_writable_auditToken_replyHandler___block_invoke_209_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0(&dword_24A929000, a1, a3, "%s: created a block device resource sucessfully", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end