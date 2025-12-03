@interface BMFrameStore
+ (BOOL)writeEmptyFrameStoreWithFileHandle:(id)handle fileSize:(unint64_t)size datastoreVersion:(unint64_t)version;
+ (BOOL)writeEmptySegmentHeaderWithFileHandleV1:(id)v1 segmentHeaderSize:(unint64_t *)size;
+ (BOOL)writeEmptySegmentHeaderWithFileHandleV2:(id)v2 segmentHeaderSize:(unint64_t *)size;
+ (unint64_t)maxEventsPerFrameStoreVersion:(unint64_t)version averageEventSize:(unint64_t)size segmentSize:(unint64_t)segmentSize;
+ (unsigned)getSegmentVersion:(id)version config:(id)config stream:(id)stream;
- ($327AC5C1B3A50B4987650045CBFB5127)offsetTablePtrFromFrameNumberV2:(unsigned int)v2;
- (BMFrameStore)initWithFileHandle:(id)handle permission:(unint64_t)permission datastoreVersion:(unint64_t)version;
- (BMFrameStore)initWithFileHandleV1:(id)v1 permission:(unint64_t)permission;
- (BMFrameStore)initWithFileHandleV2:(id)v2 permission:(unint64_t)permission;
- (BOOL)getSegmentHeader:(id *)header fromFileV1:(id)v1 fileSize:(unint64_t *)size;
- (BOOL)getSegmentHeader:(id *)header fromFileV2:(id)v2 fileSize:(unint64_t *)size;
- (BOOL)isCheckSumValidAtOffsetV1:(unint64_t)v1;
- (BOOL)isValidFrameV1:(void *)v1 expectedState:(unsigned int)state copyOfData:(id *)data frameStatus:(id)status validations:(BOOL)validations enumerationOptions:(unint64_t)options errorCode:(int *)code;
- (BOOL)offsetIsStartOfFrameStore:(unint64_t)store;
- (BOOL)validOffsetTableEntry:(id)entry frameNumber:(int)number;
- (NSString)segmentName;
- (NSString)segmentPath;
- (double)creationTimeOfFrameV2:(unsigned int)v2;
- (id)_printablePath;
- (id)_printablePathV2;
- (int)eraseFrameAtOffsetTableV2:(id *)v2;
- (int)findValidOffsetTableEntryToReplaceMidFrame:(int)frame bottomFrame:(int)bottomFrame topFrame:(int)topFrame reverse:(BOOL)reverse;
- (int)frameCount;
- (int)frameCountFromStartTime:(double)time endTime:(double)endTime;
- (int)frameCountFromStartTimeV2:(double)v2 endTime:(double)time;
- (int)frameCountV2;
- (int)frameNumberFromFrameOffsetV2:(unsigned int)v2;
- (int)frameNumberFromOffsetToOffsetTableEntryV2:(unsigned int)v2;
- (int64_t)getReverseOffsetIndex:(unint64_t)index;
- (uint64_t)atomicReadSixteenByteValueAtAddress:;
- (uint64_t)sizeToNextWord:(uint64_t)result;
- (uint64_t)updateFrameStoreIndex;
- (unsigned)appendFrameHeaderV1:(id *)v1 offset:(unint64_t *)offset;
- (unsigned)atomicReadTotalFramesV2;
- (unsigned)bytesUsed;
- (unsigned)bytesUsedV1;
- (unsigned)bytesUsedV2;
- (unsigned)checkBoundsLength:(unint64_t)length;
- (unsigned)determineFrameNumberToBeWritten:(unsigned int *)written;
- (unsigned)frameOffsetFromOffsetTableV2:(id *)v2;
- (unsigned)offsetOfFrameV2:(unsigned int)v2;
- (unsigned)offsetTableOffsetFromFrameNumberV2:(unsigned int)v2;
- (unsigned)reserveSpaceAndAssignAnOffsetTableEntryForTimestamp:(double)timestamp state:(unsigned int)state length:(unsigned int)length outFrameNumber:(unsigned int *)number;
- (unsigned)sizeOfFrameV2:(unsigned int)v2;
- (unsigned)stateOfFrameV2:(unsigned int)v2;
- (unsigned)validateOrUpdateTimestamp:(double *)timestamp frameNumberToBeWritten:(unsigned int)written;
- (unsigned)writeFrameV1ForBytes:(const void *)bytes length:(unint64_t)length dataVersion:(unsigned int)version timestamp:(double)timestamp outOffset:(unint64_t *)offset;
- (void)addToValueAtOffset:(unsigned int)offset increment:(unsigned int)increment;
- (void)dealloc;
- (void)enumerateWithOptions:(unint64_t)options fromOffset:(unint64_t)offset usingBlock:(id)block;
- (void)enumerateWithOptionsV1:(unint64_t)v1 fromOffset:(unint64_t)offset usingBlock:(id)block;
- (void)enumerateWithOptionsV2:(unint64_t)v2 fromOffset:(unint64_t)offset usingBlock:(id)block;
- (void)markFrameAsRemoved:(id)removed;
- (void)markFrameAsRemovedV1:(id)v1;
- (void)markFrameAsRemovedV2:(id)v2;
- (void)setBackingFile:(id)file;
- (void)sync;
- (void)updateFrameStoreIndex;
- (void)updateHeader;
- (void)updateHighestDeletedFrame:(id)frame;
- (void)updateToMaxOfValueAtOffset:(unsigned int)offset newValue:(int)value;
@end

@implementation BMFrameStore

- (NSString)segmentName
{
  attributes = [(BMFileHandle *)self->_backingFile attributes];
  filename = [attributes filename];

  return filename;
}

- (unsigned)atomicReadTotalFramesV2
{
  v16 = *MEMORY[0x1E69E9840];
  header = [(BMFrameStore *)self header];
  start = [header start];

  if (*(start + 16) == 10)
  {
    result = atomic_load((start + 4));
  }

  else
  {
    v6 = __biome_log_for_category();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v14 = 0x2020000000;
    v15 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__BMFrameStore_V2__atomicReadTotalFramesV2__block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = &buf;
    if (atomicReadTotalFramesV2_onceToken != -1)
    {
      dispatch_once(&atomicReadTotalFramesV2_onceToken, block);
    }

    v7 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = MEMORY[0x1E698E9C8];
      segmentPath = [(BMFrameStore *)self segmentPath];
      v10 = [v8 privacyPathname:segmentPath];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_1C928A000, v6, v7, "Seeking totalFrames but not a V2 frameStore: %{public}@", &buf, 0xCu);
    }

    result = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)segmentPath
{
  attributes = [(BMFileHandle *)self->_backingFile attributes];
  path = [attributes path];

  return path;
}

- (void)dealloc
{
  if (self->_permission)
  {
    [(BMFrameStore *)self sync];
  }

  v3.receiver = self;
  v3.super_class = BMFrameStore;
  [(BMFrameStore *)&v3 dealloc];
}

- (int)frameCount
{
  if ([(BMFrameStore *)self datastoreVersion]== 9)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __26__BMFrameStore_frameCount__block_invoke;
    v5[3] = &unk_1E8338C10;
    v5[4] = &v6;
    [(BMFrameStore *)self enumerateFromOffset:0 withCallback:v5];
    v3 = *(v7 + 6);
    _Block_object_dispose(&v6, 8);
    return v3;
  }

  if ([(BMFrameStore *)self datastoreVersion]!= 10)
  {
    return 0;
  }

  return [(BMFrameStore *)self frameCountV2];
}

- (int)frameCountV2
{
  start = [(BMFrameStore *)self start];
  v3 = atomic_load(start - 7);
  v4 = atomic_load(start - 2);
  return v3 - v4;
}

- (void)sync
{
  obj = self;
  objc_sync_enter(obj);
  [(BMMemoryMapping *)obj->_header sync];
  [(BMMemoryMapping *)obj->_frames sync];
  objc_sync_exit(obj);
}

+ (unsigned)getSegmentVersion:(id)version config:(id)config stream:(id)stream
{
  v25 = *MEMORY[0x1E69E9840];
  configCopy = config;
  versionCopy = version;
  v9 = [configCopy resolvedPathWithStreamIdentifier:stream];
  if (([MEMORY[0x1E698E9C8] isTestPathOverridden] & 1) != 0 || (objc_msgSend(MEMORY[0x1E698E9D8], "current"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "reliesOnDirectAccessForDomain:", objc_msgSend(configCopy, "domain")), v10, v11))
  {
    v12 = [MEMORY[0x1E698E9B8] fileManagerWithDirectAccessToDirectory:v9 cachingOptions:0];
  }

  else
  {
    v12 = [MEMORY[0x1E698E9B8] fileManagerWithMediatedAccessToDirectory:v9 useCase:*MEMORY[0x1E698E958] domain:0 user:geteuid()];
  }

  v13 = v12;
  v14 = [[BMSegmentManager alloc] initWithDirectory:v9 fileManager:v12 permission:0 config:configCopy];
  path = [(BMSegmentManager *)v14 path];
  v16 = [path stringByAppendingPathComponent:versionCopy];

  v17 = [v13 fileHandleForFileAtPath:v16 flags:0 protection:objc_msgSend(MEMORY[0x1E698E998] error:{"biomeProtectionClassToOSProtectionClass:", objc_msgSend(configCopy, "protectionClass")), 0}];

  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  if (pread([v17 fd], &v21, 0x38uLL, 0) < 0)
  {
    v18 = -1;
  }

  else
  {
    v18 = v22;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)getSegmentHeader:(id *)header fromFileV1:(id)v1 fileSize:(unint64_t *)size
{
  v23 = *MEMORY[0x1E69E9840];
  v1Copy = v1;
  memset(&v18.st_size, 0, 48);
  if (fstat([v1Copy fd], &v18))
  {
    v8 = *__error();
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore getSegmentHeader:fromFileV1:fileSize:];
    }

LABEL_4:

LABEL_24:
    v14 = 0;
    goto LABEL_25;
  }

  if (!v18.st_size)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore getSegmentHeader:v1Copy fromFileV1:? fileSize:?];
    }

    goto LABEL_23;
  }

  if (v18.st_size <= 0x37uLL)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore getSegmentHeader:v1Copy fromFileV1:? fileSize:?];
    }

LABEL_23:

    goto LABEL_24;
  }

  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  __buf = 0u;
  v11 = pread([v1Copy fd], &__buf, 0x38uLL, 0);
  if (v11 < 0)
  {
    v13 = *__error();
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore getSegmentHeader:fromFileV1:fileSize:];
    }

    goto LABEL_4;
  }

  if (v11 != 56)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore getSegmentHeader:v1Copy fromFileV1:? fileSize:?];
    }

    goto LABEL_23;
  }

  if (v20 == 9)
  {
    v12 = 52;
  }

  else
  {
    v12 = 0;
  }

  if (*(&__buf + v12) != 1111967059)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore getSegmentHeader:v1Copy fromFileV1:v10 fileSize:?];
    }

    goto LABEL_23;
  }

  if (size)
  {
    *size = v18.st_size;
  }

  if (header)
  {
    v17 = v20;
    *header->var0.var0 = __buf;
    *&header->var2.var3 = v17;
    *(&header->var2 + 2) = v21;
    *(&header->var2 + 6) = v22;
  }

  v14 = 1;
LABEL_25:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (BOOL)writeEmptyFrameStoreWithFileHandle:(id)handle fileSize:(unint64_t)size datastoreVersion:(unint64_t)version
{
  v35 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  memset(&v32, 0, sizeof(v32));
  if (!fstat([handleCopy fd], &v32))
  {
    if (v32.st_size)
    {
      v10 = __biome_log_for_category();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v34 = 16;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __77__BMFrameStore_writeEmptyFrameStoreWithFileHandle_fileSize_datastoreVersion___block_invoke;
      block[3] = &unk_1E8338B28;
      block[4] = buf;
      if (writeEmptyFrameStoreWithFileHandle_fileSize_datastoreVersion__onceToken != -1)
      {
        dispatch_once(&writeEmptyFrameStoreWithFileHandle_fileSize_datastoreVersion__onceToken, block);
      }

      v11 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (os_log_type_enabled(v10, v11))
      {
        v12 = MEMORY[0x1E698E9C8];
        attributes = [handleCopy attributes];
        path = [attributes path];
        v15 = [v12 privacyPathname:path];
        *buf = 138543362;
        *&buf[4] = v15;
        _os_log_impl(&dword_1C928A000, v10, v11, "Attempted to write a non-empty file %{public}@ with an empty frame store", buf, 0xCu);
      }
    }

    else
    {
      if (version - 11 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v9 = __biome_log_for_category();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v34 = 16;
        v26 = MEMORY[0x1E69E9820];
        v27 = 3221225472;
        v28 = __77__BMFrameStore_writeEmptyFrameStoreWithFileHandle_fileSize_datastoreVersion___block_invoke_32;
        v29 = &unk_1E8338B28;
        v30 = buf;
        if (writeEmptyFrameStoreWithFileHandle_fileSize_datastoreVersion__onceToken_31 != -1)
        {
          dispatch_once(&writeEmptyFrameStoreWithFileHandle_fileSize_datastoreVersion__onceToken_31, &v26);
        }

        v19 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);
        if (os_log_type_enabled(v9, v19))
        {
          v20 = MEMORY[0x1E698E9C8];
          attributes2 = [handleCopy attributes];
          path2 = [attributes2 path];
          v23 = [v20 privacyPathname:path2];
          *buf = 138543618;
          *&buf[4] = v23;
          *&buf[12] = 2048;
          *&buf[14] = version;
          _os_log_impl(&dword_1C928A000, v9, v19, "Segment version of %{public}@ doesn't match expected versions: %lu.", buf, 0x16u);
        }

        goto LABEL_4;
      }

      *buf = -1;
      v24 = objc_opt_class();
      if (version == 9)
      {
        if (([v24 writeEmptySegmentHeaderWithFileHandleV1:handleCopy segmentHeaderSize:buf] & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (![v24 writeEmptySegmentHeaderWithFileHandleV2:handleCopy segmentHeaderSize:buf])
      {
        goto LABEL_11;
      }

      if (*buf <= size)
      {
        if (!ftruncate([handleCopy fd], size))
        {
          v16 = 1;
          goto LABEL_12;
        }

        v25 = *__error();
        v10 = __biome_log_for_category();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          +[BMFrameStore writeEmptyFrameStoreWithFileHandle:fileSize:datastoreVersion:];
        }
      }

      else
      {
        v10 = __biome_log_for_category();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [BMFrameStore writeEmptyFrameStoreWithFileHandle:handleCopy fileSize:? datastoreVersion:?];
        }
      }
    }

    goto LABEL_11;
  }

  v8 = *__error();
  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [BMFrameStore getSegmentHeader:fromFileV1:fileSize:];
  }

LABEL_4:

LABEL_11:
  v16 = 0;
LABEL_12:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (BOOL)writeEmptySegmentHeaderWithFileHandleV1:(id)v1 segmentHeaderSize:(unint64_t *)size
{
  v25 = *MEMORY[0x1E69E9840];
  v1Copy = v1;
  v6 = v1Copy;
  if (size)
  {
    *size = 56;
  }

  attributes = [v1Copy attributes];
  filename = [attributes filename];
  v9 = filename;
  memset(v23, 0, sizeof(v23));
  v24 = 1111967059;
  v21[0] = 56;
  v21[1] = 0;
  v22 = 9;
  if (filename)
  {
    v10 = strlen([filename UTF8String]);
    if (v10 >= 0x20)
    {
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[BMFrameStore writeEmptySegmentHeaderWithFileHandleV1:segmentHeaderSize:];
      }

      v10 = 31;
    }

    __memcpy_chk();
    bzero(v23 + v10, 32 - v10);
  }

  else
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C928A000, v12, OS_LOG_TYPE_INFO, "No segment name provided for the segment header", buf, 2u);
    }
  }

  v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v21 length:56];
  v19 = 0;
  v14 = [v6 overwriteWithData:v13 error:&v19];
  v15 = v19;
  if (v15)
  {
    v14 = 0;
  }

  if ((v14 & 1) == 0)
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore writeEmptySegmentHeaderWithFileHandleV1:v6 segmentHeaderSize:?];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BMFrameStore)initWithFileHandle:(id)handle permission:(unint64_t)permission datastoreVersion:(unint64_t)version
{
  v22 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (version == 10)
  {
    v9 = [(BMFrameStore *)self initWithFileHandleV2:handleCopy permission:permission];
    goto LABEL_5;
  }

  if (version == 9)
  {
    v9 = [(BMFrameStore *)self initWithFileHandleV1:handleCopy permission:permission];
LABEL_5:
    self = v9;
    selfCopy = self;
    goto LABEL_11;
  }

  v11 = __biome_log_for_category();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v21 = 16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__BMFrameStore_initWithFileHandle_permission_datastoreVersion___block_invoke;
  block[3] = &unk_1E8338B28;
  block[4] = buf;
  if (initWithFileHandle_permission_datastoreVersion__onceToken != -1)
  {
    dispatch_once(&initWithFileHandle_permission_datastoreVersion__onceToken, block);
  }

  v12 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = MEMORY[0x1E698E9C8];
    attributes = [handleCopy attributes];
    path = [attributes path];
    v16 = [v13 privacyPathname:path];
    *buf = 138543618;
    *&buf[4] = v16;
    *&buf[12] = 2048;
    *&buf[14] = version;
    _os_log_impl(&dword_1C928A000, v11, v12, "Segment version of %{public}@ doesn't match expected versions: %lu.", buf, 0x16u);
  }

  selfCopy = 0;
LABEL_11:

  v17 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (BMFrameStore)initWithFileHandleV1:(id)v1 permission:(unint64_t)permission
{
  v54 = *MEMORY[0x1E69E9840];
  v1Copy = v1;
  v47.receiver = self;
  v47.super_class = BMFrameStore;
  v7 = [(BMFrameStore *)&v47 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_52;
  }

  [(BMFrameStore *)v7 setBackingFile:v1Copy];
  *(v8 + 28) = 9;
  v46 = 0;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  if (([v8 getSegmentHeader:&v50 fromFileV1:v1Copy fileSize:&v46] & 1) == 0)
  {
    v11 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v49) = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__BMFrameStore_initWithFileHandleV1_permission___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (initWithFileHandleV1_permission__onceToken != -1)
    {
      dispatch_once(&initWithFileHandleV1_permission__onceToken, block);
    }

    v12 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = MEMORY[0x1E698E9C8];
    attributes = [v1Copy attributes];
    path = [attributes path];
    v16 = [v13 privacyPathname:path];
    *buf = 138543362;
    *&buf[4] = v16;
    v17 = "Cannot create frame store from segment file: %{public}@";
    v18 = v11;
    v19 = v12;
    v20 = 12;
    goto LABEL_17;
  }

  v9 = v51;
  *(v8 + 28) = v51;
  if (v9 != 9)
  {
    if (v9 == 10)
    {
      v10 = [v8 initWithFileHandleV2:v1Copy permission:permission];
LABEL_53:
      v8 = v10;
      v29 = v10;
      goto LABEL_54;
    }

    v11 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v49) = 16;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __48__BMFrameStore_initWithFileHandleV1_permission___block_invoke_35;
    v44[3] = &unk_1E8338B28;
    v44[4] = buf;
    if (initWithFileHandleV1_permission__onceToken_34 != -1)
    {
      dispatch_once(&initWithFileHandleV1_permission__onceToken_34, v44);
    }

    v26 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (!os_log_type_enabled(v11, v26))
    {
      goto LABEL_18;
    }

    v27 = MEMORY[0x1E698E9C8];
    attributes = [*(v8 + 64) attributes];
    path = [attributes path];
    v16 = [v27 privacyPathname:path];
    v28 = *(v8 + 28);
    *buf = 138543874;
    *&buf[4] = v16;
    *&buf[12] = 1026;
    *&buf[14] = v51;
    *&buf[18] = 1026;
    *&buf[20] = v28;
    v17 = "Segment version of %{public}@ doesn't match expected versions. Header set to %{public}d, preferred %{public}d.";
    v18 = v11;
    v19 = v26;
    v20 = 24;
LABEL_17:
    _os_log_impl(&dword_1C928A000, v18, v19, v17, buf, v20);

    goto LABEL_18;
  }

  v21 = v46;
  if (v50 <= v46)
  {
    if (permission == 1 && v46 - 1 < v50)
    {
      v11 = __biome_log_for_category();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        goto LABEL_18;
      }

      v30 = MEMORY[0x1E698E9C8];
      attributes2 = [*(v8 + 64) attributes];
      path2 = [attributes2 path];
      v25 = [v30 privacyPathname:path2];
      *buf = 138543874;
      *&buf[4] = v25;
      *&buf[12] = 2048;
      *&buf[14] = v50;
      *&buf[22] = 2048;
      v49 = v46;
      _os_log_impl(&dword_1C928A000, v11, OS_LOG_TYPE_INFO, "Attempted to open %{public}@ for writing but the file is already full, byteUsed:%llu, fileSize:%zu", buf, 0x20u);
LABEL_24:

      goto LABEL_18;
    }

    if (!(v50 | permission & 0xFFFFFFFFFFFFFFFDLL))
    {
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [BMFrameStore initWithFileHandleV1:v8 permission:?];
      }

      goto LABEL_18;
    }

    *(v8 + 40) = v46;
    *(v8 + 72) = permission;
    v31 = memoryMappingsForPermissionV1(permission, &v50, v21);
    lastObject = [v31 lastObject];
    v33 = *(v8 + 56);
    *(v8 + 56) = lastObject;

    if ([v31 count] >= 2)
    {
      firstObject = [v31 firstObject];
      v35 = *(v8 + 48);
      *(v8 + 48) = firstObject;
    }

    v36 = *(v8 + 48);
    if (permission && !v36)
    {
      v37 = __biome_log_for_category();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [BMFrameStore initWithFileHandleV1:permission:];
      }

      v36 = *(v8 + 48);
    }

    if (v36 && ([v36 mapWithFileHandle:*(v8 + 64) fileSize:v46] & 1) == 0)
    {
      v38 = __biome_log_for_category();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [BMFrameStore initWithFileHandleV1:permission:];
      }
    }

    if (([*(v8 + 56) mapWithFileHandle:*(v8 + 64) fileSize:v46] & 1) == 0)
    {
      v39 = __biome_log_for_category();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [BMFrameStore initWithFileHandleV1:permission:];
      }

      goto LABEL_19;
    }

    if (*(v8 + 28) == 9)
    {
      *(v8 + 80) = *(&v50 + 1);
    }

    else
    {
      v40 = *(v8 + 80);
    }

    if (![BMFrameStore expectedTimestamp:?])
    {
      v41 = __biome_log_for_category();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [BMFrameStore initWithFileHandleV1:permission:];
      }

      *(v8 + 80) = CFAbsoluteTimeGetCurrent();
    }

LABEL_52:
    v10 = v8;
    goto LABEL_53;
  }

  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v22 = MEMORY[0x1E698E9C8];
    attributes2 = [*(v8 + 64) attributes];
    path2 = [attributes2 path];
    v25 = [v22 privacyPathname:path2];
    *buf = 138543874;
    *&buf[4] = v25;
    *&buf[12] = 2050;
    *&buf[14] = v50;
    *&buf[22] = 2050;
    v49 = v46;
    _os_log_error_impl(&dword_1C928A000, v11, OS_LOG_TYPE_ERROR, "Segment header in %{public}@ says file size is %{public}llu but that is larger than the actual file size(%{public}lu).", buf, 0x20u);
    goto LABEL_24;
  }

LABEL_18:

LABEL_19:
  v29 = 0;
LABEL_54:

  v42 = *MEMORY[0x1E69E9840];
  return v29;
}

- (void)setBackingFile:(id)file
{
  fileCopy = file;
  objc_storeStrong(&self->_backingFile, file);
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  remoteDevices = [MEMORY[0x1E698EA08] remoteDevices];
  v7 = [v5 initWithFormat:@"/%@/", remoteDevices];

  segmentPath = [(BMFrameStore *)self segmentPath];
  v9 = [segmentPath containsString:v7];

  if (v9)
  {
    self->_isRemoteSegment = 1;
  }

  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  tombstones = [MEMORY[0x1E698EA08] tombstones];
  v12 = [v10 initWithFormat:@"/%@/", tombstones];

  segmentPath2 = [(BMFrameStore *)self segmentPath];
  v14 = [segmentPath2 containsString:v12];

  if (v14)
  {
    self->_isTombstoneSegment = 1;
  }
}

- (id)_printablePath
{
  cachedPrintablePath = self->_cachedPrintablePath;
  if (!cachedPrintablePath)
  {
    v4 = MEMORY[0x1E698E9C8];
    attributes = [(BMFileHandle *)self->_backingFile attributes];
    path = [attributes path];
    v7 = [v4 privacyPathname:path];
    v8 = self->_cachedPrintablePath;
    self->_cachedPrintablePath = v7;

    cachedPrintablePath = self->_cachedPrintablePath;
  }

  return cachedPrintablePath;
}

- (BOOL)isValidFrameV1:(void *)v1 expectedState:(unsigned int)state copyOfData:(id *)data frameStatus:(id)status validations:(BOOL)validations enumerationOptions:(unint64_t)options errorCode:(int *)code
{
  optionsCopy = options;
  selfCopy3 = self;
  v64[1] = *MEMORY[0x1E69E9840];
  if ((v1 & 7) != 0)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"isValidFrame: Frame is not 8-byte aligned:%d", v1];
    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v63 = *MEMORY[0x1E696A578];
    v64[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1];
    v14 = [v12 initWithDomain:@"com.apple.Biome.BMFramestore" code:1 userInfo:v13];

    p_frames = &selfCopy3->_frames;
    [(BMMemoryMapping *)selfCopy3->_frames end];
    goto LABEL_19;
  }

  validationsCopy = validations;
  p_frames = &self->_frames;
  v20 = [(BMMemoryMapping *)self->_frames end]- (v1 + 32);
  if (v20 < 0 || status.var0 > v20)
  {
    v23 = (v1 - [(BMMemoryMapping *)*p_frames start]);
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"isValidFrame: Frame size:%d runs past the remaining free space in the segment:%td, frame intended to start at offset:%td", status, v20, v23];
    v25 = objc_alloc(MEMORY[0x1E696ABC0]);
    v61 = *MEMORY[0x1E696A578];
    v62 = v24;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v26 = selfCopy3 = self;
    v14 = [v25 initWithDomain:@"com.apple.Biome.BMFramestore" code:2 userInfo:v26];

    goto LABEL_19;
  }

  if (validationsCopy && status.var1 != state)
  {
    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (state >= 6)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"BMFrameStateUnknown(%lu)", state];
      v22 = selfCopy3 = self;
    }

    else
    {
      v22 = off_1E8338C90[state];
      selfCopy3 = self;
    }

    if (*&status >> 33 >= 3)
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BMFrameStateUnknown(%lu)", HIDWORD(*&status)];
    }

    else
    {
      v33 = off_1E8338C90[HIDWORD(*&status)];
    }

    v34 = [v21 initWithFormat:@"isValidFrame: Unexpected frame state. Expected: %@, found: %@", v22, v33];

    v35 = objc_alloc(MEMORY[0x1E696ABC0]);
    v59 = *MEMORY[0x1E696A578];
    v60 = v34;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v14 = [v35 initWithDomain:@"com.apple.Biome.BMFramestore" code:3 userInfo:v36];

    goto LABEL_19;
  }

  if (data)
  {
    v27 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v1 + 32 length:status.var0];
    v28 = *data;
    *data = v27;

    v14 = 0;
    v29 = state - 1;
    v30 = 1;
    if (v29 <= 1 && validationsCopy)
    {
      v31 = *data;
      v32 = crc32(0, [v31 bytes], status.var0);

LABEL_40:
      selfCopy3 = self;
      if (*(v1 + 6) == v32)
      {
        v14 = 0;
        goto LABEL_36;
      }

      v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Checksums don't match. Header: %u, Generated checksum: %u. Skipping frame.", *(v1 + 6), v32];
      v49 = objc_alloc(MEMORY[0x1E696ABC0]);
      v57 = *MEMORY[0x1E696A578];
      v58 = v48;
      v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v14 = [v49 initWithDomain:@"com.apple.Biome.BMFramestore" code:5 userInfo:v50];

      if (data)
      {
        v51 = *data;
        *data = 0;
      }

LABEL_19:
      code = [v14 code];
      if (code)
      {
        *code = code;
      }

      if (code == 3 || code == 5)
      {
        v38 = atomic_load(v1);
        v39 = HIDWORD(v38);
        if ((optionsCopy & 1) != 0 && v39 == 3 || (optionsCopy & 2) != 0 && v39 == 2)
        {
          [(BMMemoryMapping *)*p_frames start];
          v30 = 1;
          goto LABEL_36;
        }

        v41 = v38 >> 33 == 1;
        start = [(BMMemoryMapping *)*p_frames start];
        if (v41)
        {
LABEL_35:
          v30 = 0;
          goto LABEL_36;
        }
      }

      else
      {
        start = [(BMMemoryMapping *)*p_frames start];
      }

      v42 = __biome_log_for_category();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v56) = 16;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __109__BMFrameStore_isValidFrameV1_expectedState_copyOfData_frameStatus_validations_enumerationOptions_errorCode___block_invoke;
      block[3] = &unk_1E8338B28;
      block[4] = buf;
      if (isValidFrameV1_expectedState_copyOfData_frameStatus_validations_enumerationOptions_errorCode__onceToken != -1)
      {
        dispatch_once(&isValidFrameV1_expectedState_copyOfData_frameStatus_validations_enumerationOptions_errorCode__onceToken, block);
      }

      v43 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (os_log_type_enabled(v42, v43))
      {
        _printablePath = [(BMFrameStore *)selfCopy3 _printablePath];
        *buf = 138543874;
        *&buf[4] = _printablePath;
        *&buf[12] = 2048;
        *&buf[14] = v1 - start;
        *&buf[22] = 2112;
        v56 = v14;
        _os_log_impl(&dword_1C928A000, v42, v43, "isValidFrame failed, path:%{public}@, offset:%td error:%@", buf, 0x20u);
      }

      goto LABEL_35;
    }
  }

  else
  {
    v14 = 0;
    v47 = state - 1;
    v30 = 1;
    if (v47 <= 1 && validationsCopy)
    {
      v32 = crc32(0, v1 + 32, status.var0);
      goto LABEL_40;
    }
  }

LABEL_36:

  v45 = *MEMORY[0x1E69E9840];
  return v30;
}

- (void)updateFrameStoreIndex
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_datastoreVersion == 9)
  {
    p_framePointers = &self->_framePointers;
    framePointers = self->_framePointers;
    if (framePointers)
    {
      if ([(NSMutableOrderedSet *)framePointers count])
      {
        [BMFrameStore updateFrameStoreIndex];
        v5 = *buf;
LABEL_12:
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __37__BMFrameStore_updateFrameStoreIndex__block_invoke_65;
        v12[3] = &unk_1E8338BC8;
        v12[4] = self;
        [(BMFrameStore *)self enumerateWithOptions:35 fromOffset:v5 usingBlock:v12];
        goto LABEL_13;
      }
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      v10 = *p_framePointers;
      *p_framePointers = v9;
    }

    v5 = 0;
    goto LABEL_12;
  }

  v6 = __biome_log_for_category();
  *buf = 0;
  v15 = buf;
  v16 = 0x2020000000;
  v17 = 16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__BMFrameStore_updateFrameStoreIndex__block_invoke;
  block[3] = &unk_1E8338B28;
  block[4] = buf;
  if (updateFrameStoreIndex_onceToken != -1)
  {
    dispatch_once(&updateFrameStoreIndex_onceToken, block);
  }

  v7 = v15[24];
  _Block_object_dispose(buf, 8);
  if (os_log_type_enabled(v6, v7))
  {
    datastoreVersion = self->_datastoreVersion;
    *buf = 67109120;
    *&buf[4] = datastoreVersion;
    _os_log_impl(&dword_1C928A000, v6, v7, "updateFrameStoreIndex called with unexpected dataVersion:%d", buf, 8u);
  }

LABEL_13:
  v11 = *MEMORY[0x1E69E9840];
}

void __37__BMFrameStore_updateFrameStoreIndex__block_invoke_65(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(a2, "framePtr")}];
  [v2 addObject:v3];
}

- (int64_t)getReverseOffsetIndex:(unint64_t)index
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_datastoreVersion != 9)
  {
    v8 = __biome_log_for_category();
    *buf = 0;
    v16 = buf;
    v17 = 0x2020000000;
    v18 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__BMFrameStore_getReverseOffsetIndex___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (getReverseOffsetIndex__onceToken != -1)
    {
      dispatch_once(&getReverseOffsetIndex__onceToken, block);
    }

    v9 = v16[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v8, v9))
    {
      datastoreVersion = self->_datastoreVersion;
      *buf = 67109120;
      *&buf[4] = datastoreVersion;
      _os_log_impl(&dword_1C928A000, v8, v9, "updateFrameStoreIndex called with unexpected dataVersion:%d", buf, 8u);
    }

    goto LABEL_11;
  }

  [(BMFrameStore *)self updateFrameStoreIndex];
  framePointers = self->_framePointers;
  if (!framePointers || ![(NSMutableOrderedSet *)framePointers count])
  {
LABEL_11:
    result = -1;
    goto LABEL_12;
  }

  v6 = self->_framePointers;
  if (index == 0xFFFFFFFF)
  {
    result = [(NSMutableOrderedSet *)self->_framePointers count]- 1;
  }

  else
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[BMMemoryMapping start](self->_frames, "start") + index}];
    v13 = [(NSMutableOrderedSet *)v6 indexOfObject:v12];

    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      result = -1;
    }

    else
    {
      result = v13;
    }
  }

LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)enumerateWithOptions:(unint64_t)options fromOffset:(unint64_t)offset usingBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  datastoreVersion = self->_datastoreVersion;
  if (datastoreVersion == 10)
  {
    [(BMFrameStore *)self enumerateWithOptionsV2:options fromOffset:offset usingBlock:blockCopy];
  }

  else if (datastoreVersion == 9)
  {
    [(BMFrameStore *)self enumerateWithOptionsV1:options fromOffset:offset usingBlock:blockCopy];
  }

  else
  {
    v10 = __biome_log_for_category();
    *buf = 0;
    v16 = buf;
    v17 = 0x2020000000;
    v18 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__BMFrameStore_enumerateWithOptions_fromOffset_usingBlock___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (enumerateWithOptions_fromOffset_usingBlock__onceToken != -1)
    {
      dispatch_once(&enumerateWithOptions_fromOffset_usingBlock__onceToken, block);
    }

    v11 = v16[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = self->_datastoreVersion;
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&dword_1C928A000, v10, v11, "[BMFrameStore enumerateWithOptions:fromOffset:usingBlock:] called with unexpected dataVersion:%d", buf, 8u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)enumerateWithOptionsV1:(unint64_t)v1 fromOffset:(unint64_t)offset usingBlock:(id)block
{
  v135 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (!blockCopy)
  {
    [BMFrameStore enumerateWithOptionsV1:a2 fromOffset:self usingBlock:?];
  }

  if ([(BMFrameStore *)self bytesUsed]>= 0x38)
  {
    bytesUsed = [(BMFrameStore *)self bytesUsed];
    if (offset != 4294967294)
    {
      if (offset == 0xFFFFFFFF)
      {
        offsetCopy = 0;
      }

      else
      {
        offsetCopy = offset;
      }

      if ((offsetCopy & 7) != 0)
      {
        v12 = __biome_log_for_category();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        buf[24] = 16;
        v121[0] = MEMORY[0x1E69E9820];
        v121[1] = 3221225472;
        v121[2] = __61__BMFrameStore_enumerateWithOptionsV1_fromOffset_usingBlock___block_invoke;
        v121[3] = &unk_1E8338B28;
        v121[4] = buf;
        if (enumerateWithOptionsV1_fromOffset_usingBlock__onceToken != -1)
        {
          dispatch_once(&enumerateWithOptionsV1_fromOffset_usingBlock__onceToken, v121);
        }

        v13 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);
        if (os_log_type_enabled(v12, v13))
        {
          *buf = 134217984;
          *&buf[4] = offsetCopy;
          _os_log_impl(&dword_1C928A000, v12, v13, "enumerateWithOptions: startingOffset (%lu) is not 8-byte aligned", buf, 0xCu);
        }

        goto LABEL_26;
      }

      v14 = bytesUsed;
      if (offsetCopy == [(BMMemoryMapping *)self->_frames size])
      {
        goto LABEL_26;
      }

      if (offsetCopy > [(BMMemoryMapping *)self->_frames size])
      {
        v15 = __biome_log_for_category();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        buf[24] = 16;
        v120[0] = MEMORY[0x1E69E9820];
        v120[1] = 3221225472;
        v120[2] = __61__BMFrameStore_enumerateWithOptionsV1_fromOffset_usingBlock___block_invoke_79;
        v120[3] = &unk_1E8338B28;
        v120[4] = buf;
        if (enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_78 != -1)
        {
          dispatch_once(&enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_78, v120);
        }

        v16 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);
        if (os_log_type_enabled(v15, v16))
        {
          v17 = [(BMMemoryMapping *)self->_frames size];
          v18 = MEMORY[0x1E698E9C8];
          segmentPath = [(BMFrameStore *)self segmentPath];
          v20 = [v18 privacyPathname:segmentPath];
          *buf = 134218498;
          *&buf[4] = offsetCopy;
          *&buf[12] = 2048;
          *&buf[14] = v17;
          *&buf[22] = 2112;
          *&buf[24] = v20;
          _os_log_impl(&dword_1C928A000, v15, v16, "enumerateWithOptions: offset (%lu) beyond segment size (%lu) segment:%@", buf, 0x20u);
        }

LABEL_25:

        goto LABEL_26;
      }

      v21 = v14 - 56;
      if (offsetCopy > v21)
      {
        v15 = __biome_log_for_category();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        buf[24] = 16;
        v119[0] = MEMORY[0x1E69E9820];
        v119[1] = 3221225472;
        v119[2] = __61__BMFrameStore_enumerateWithOptionsV1_fromOffset_usingBlock___block_invoke_81;
        v119[3] = &unk_1E8338B28;
        v119[4] = buf;
        if (enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_80 != -1)
        {
          dispatch_once(&enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_80, v119);
        }

        v22 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);
        if (os_log_type_enabled(v15, v22))
        {
          v23 = MEMORY[0x1E698E9C8];
          segmentPath2 = [(BMFrameStore *)self segmentPath];
          v25 = [v23 privacyPathname:segmentPath2];
          *buf = 134218498;
          *&buf[4] = offsetCopy;
          *&buf[12] = 1024;
          *&buf[14] = v21;
          *&buf[18] = 2112;
          *&buf[20] = v25;
          _os_log_impl(&dword_1C928A000, v15, v22, "enumerateWithOptions: offset (%lu) beyond the bytesUsed (%u) segment:%@", buf, 0x1Cu);
        }

        goto LABEL_25;
      }

      if (offsetCopy == v21)
      {
        goto LABEL_26;
      }

      v118 = 0;
      distantPast = [MEMORY[0x1E695DF00] distantPast];
      [distantPast timeIntervalSinceReferenceDate];
      v29 = v28;

      start = [(BMMemoryMapping *)self->_frames start];
      v31 = v1 & 8;
      if (!self->_permission && self->_pruneOnAccess && self->_filterByAgeOnRead && self->_maxAge > 0.0)
      {
        v96 = 0;
        v29 = CFAbsoluteTimeGetCurrent() - self->_maxAge;
      }

      else
      {
        v96 = 1;
      }

      if ((v1 & 8) == 0)
      {
        v32 = -1;
LABEL_44:
        if (v118)
        {
          goto LABEL_26;
        }

        v106 = 0;
        v102 = 0;
        v89 = v31 >> 3;
        v101 = 1;
        while (1)
        {
          v39 = objc_autoreleasePoolPush();
          v116 = 0;
          if (v31)
          {
            if (v32 < 0)
            {
              goto LABEL_156;
            }

            v41 = v32--;
            v42 = [(NSMutableOrderedSet *)self->_framePointers objectAtIndexedSubscript:v41];
            integerValue = [v42 integerValue];
          }

          else if (v106)
          {
            integerValue = v102 + offsetCopy;
          }

          else
          {
            integerValue = start + offsetCopy;
          }

          v43 = integerValue - [(BMMemoryMapping *)self->_frames start];
          if (v43 >= v21 || ([(BMMemoryMapping *)self->_frames end]- integerValue) < 0x20)
          {
LABEL_156:

            objc_autoreleasePoolPop(v39);
            goto LABEL_26;
          }

          v100 = v32;
          v44 = atomic_load(integerValue);
          v45 = HIDWORD(v44);
          v115 = 0uLL;
          v46 = *(integerValue + 8);
          v115 = *(integerValue + 16);
          v47 = [(BMFrameStore *)self sizeToNextWord:v44];
          v48 = v45;
          v49 = 0;
          v97 = v47;
          v99 = v39;
          v93 = v48;
          if (v48 > 2)
          {
            break;
          }

          if (!v48)
          {
            v49 = 1;
            v50 = 1;
            if (v47)
            {
              goto LABEL_77;
            }

LABEL_75:
            v50 = 0;
LABEL_76:
            v118 = 1;
            goto LABEL_77;
          }

          if (v48 == 1)
          {
            v53 = v96;
            if (v46 >= v29)
            {
              v53 = 1;
            }

            v50 = v53 ^ 1;
            v49 = 1;
            if ((v1 & 8) != 0 && (v53 & 1) == 0)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v50 = 0;
            if (v48 == 2)
            {
              v49 = 1;
              v50 = (v1 & 2) == 0;
            }
          }

LABEL_77:
          v105 = integerValue + 32;
          frameStoreSize = [(BMFrameStore *)self frameStoreSize];
          v55 = 8;
          v56 = v97;
          if ((v106 & 1) == 0)
          {
            v55 = v97;
          }

          if (frameStoreSize >= v97)
          {
            v55 = v97;
          }

          v92 = v55;
          if (!v49 || frameStoreSize < v97)
          {
            if (v106)
            {
              v39 = v99;
              v32 = v100;
              start = (integerValue + 32);
              v58 = v93;
            }

            else
            {
              v39 = v99;
              v87 = frameStoreSize;
              if (v102)
              {
                v78 = atomic_load(v102);
                v86 = [(BMFrameStore *)self sizeToNextWord:v78];
                v85 = HIDWORD(v78);
                if (HIDWORD(v78) == 1)
                {
                  *buf = 0;
                  v79 = [(BMFrameStore *)self isValidFrameV1:v102 expectedState:1 copyOfData:buf frameStatus:v78 validations:1 enumerationOptions:v1 errorCode:0];
                  v80 = @"Not Valid";
                  if (v79)
                  {
                    v80 = @"Valid";
                  }

                  v88 = v80;
                  v81 = *buf;
                  *buf = 0;

                  v85 = 1;
                }

                else
                {
                  v88 = @"Not Checked";
                }

                v39 = v99;
              }

              else
              {
                v86 = 0;
                v88 = @"Not Checked";
                v85 = 5;
              }

              v59 = __biome_log_for_category();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                osloga = [(BMFrameStore *)self _printablePath];
                *buf = 67109378;
                *&buf[4] = v93;
                *&buf[8] = 2114;
                *&buf[10] = osloga;
                _os_log_error_impl(&dword_1C928A000, v59, OS_LOG_TYPE_ERROR, "Unrecognized frame state:%d in segment: %{public}@", buf, 0x12u);
              }

              oslog = __biome_log_for_category();
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              buf[24] = 16;
              v113[0] = MEMORY[0x1E69E9820];
              v113[1] = 3221225472;
              v113[2] = __61__BMFrameStore_enumerateWithOptionsV1_fromOffset_usingBlock___block_invoke_97;
              v113[3] = &unk_1E8338B28;
              v113[4] = buf;
              if (enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_96 != -1)
              {
                dispatch_once(&enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_96, v113);
              }

              v60 = *(*&buf[8] + 24);
              _Block_object_dispose(buf, 8);
              if (os_log_type_enabled(oslog, v60))
              {
                _printablePath = [(BMFrameStore *)self _printablePath];
                v84 = _printablePath;
                if (v102)
                {
                  if (v85 >= 6)
                  {
                    v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BMFrameStateUnknown(%lu)", v85];
                    v62 = v83;
                    _printablePath = v84;
                  }

                  else
                  {
                    v62 = off_1E8338C90[v85];
                    v83 = v62;
                  }
                }

                else
                {
                  v62 = @"no prev frame";
                }

                *buf = 67111426;
                *&buf[4] = v93;
                *&buf[8] = 2114;
                *&buf[10] = _printablePath;
                *&buf[18] = 2048;
                *&buf[20] = v43;
                *&buf[28] = 2048;
                *&buf[30] = v92;
                v123 = 1024;
                v124 = v89;
                v125 = 1024;
                v126 = v101;
                v127 = 2114;
                v128 = v62;
                v129 = 2114;
                v130 = v88;
                v131 = 2048;
                v132 = offsetCopy;
                v133 = 2048;
                v134 = v86;
                _os_log_impl(&dword_1C928A000, oslog, v60, "Unrecognized frame state: %d, segment:%{public}@ frame offset:%td frame size:%zu reverse:%d, frameCount=%d, prevFrameState:%{public}@, prevFrameValid:%{public}@ prevLastSize/offset:%zu prevStateSize:%zu", buf, 0x5Au);
                if (v102)
                {
                }
              }

              v32 = v100;
              start = (integerValue + 32);

              v58 = v93;
              v56 = v97;
              frameStoreSize = v87;
            }

            v118 = 1;
            goto LABEL_128;
          }

          if (v106)
          {
            v57 = 0;
          }

          else
          {
            v57 = v106;
          }

          if (v118)
          {
            v106 = v57;
            v39 = v99;
            v32 = v100;
            start = (integerValue + 32);
            v58 = v93;
LABEL_128:
            if ((v1 & 0x10) != 0 || frameStoreSize >= v56 && (v58 == 1 || v58 == 4) || start - [(BMMemoryMapping *)self->_frames start]+ 8 >= v21)
            {
              goto LABEL_156;
            }

            v118 = 0;
            if (v106)
            {
              offsetCopy = 8;
            }

            else
            {
              v69 = __biome_log_for_category();
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              buf[24] = 16;
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __61__BMFrameStore_enumerateWithOptionsV1_fromOffset_usingBlock___block_invoke_102;
              block[3] = &unk_1E8338B28;
              block[4] = buf;
              if (enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_101 != -1)
              {
                dispatch_once(&enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_101, block);
              }

              v70 = *(*&buf[8] + 24);
              _Block_object_dispose(buf, 8);
              if (os_log_type_enabled(v69, v70))
              {
                _printablePath2 = [(BMFrameStore *)self _printablePath];
                *buf = 138543362;
                *&buf[4] = _printablePath2;
                _os_log_impl(&dword_1C928A000, v69, v70, "After unrecognized frame in %{public}@, skipping ahead to find valid frames", buf, 0xCu);
              }

              v106 = 1;
              offsetCopy = 8;
              v39 = v99;
              v32 = v100;
            }

            goto LABEL_140;
          }

          v32 = v100;
          if ((v50 & 1) == 0)
          {
            v63 = atomic_load(integerValue);
            v64 = HIDWORD(v63);
            v111 = 0;
            if ((v1 & 0x20) == 0 && HIDWORD(v63) == 1)
            {
              v65 = &v116;
            }

            else
            {
              v65 = 0;
            }

            v103 = v63;
            if ([BMFrameStore isValidFrameV1:"isValidFrameV1:expectedState:copyOfData:frameStatus:validations:enumerationOptions:errorCode:" expectedState:integerValue copyOfData:1 frameStatus:v65 validations:&v111 enumerationOptions:? errorCode:?])
            {
              v98 = v64;
              if (v106)
              {
                start2 = [(BMMemoryMapping *)self->_frames start];
                v66 = __biome_log_for_category();
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2020000000;
                buf[24] = 16;
                v110[0] = MEMORY[0x1E69E9820];
                v110[1] = 3221225472;
                v110[2] = __61__BMFrameStore_enumerateWithOptionsV1_fromOffset_usingBlock___block_invoke_104;
                v110[3] = &unk_1E8338B28;
                v110[4] = buf;
                if (enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_103 != -1)
                {
                  dispatch_once(&enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_103, v110);
                }

                v67 = *(*&buf[8] + 24);
                _Block_object_dispose(buf, 8);
                if (os_log_type_enabled(v66, v67))
                {
                  v94 = integerValue - start2;
                  _printablePath3 = [(BMFrameStore *)self _printablePath];
                  *buf = 138543618;
                  *&buf[4] = _printablePath3;
                  *&buf[12] = 2048;
                  *&buf[14] = v94;
                  _os_log_impl(&dword_1C928A000, v66, v67, "After a corrupted frame found a valid frame in %{public}@ at offset: %td", buf, 0x16u);
                }

                v32 = v100;
              }

              if ((v1 & 8) != 0)
              {
                if (v32 < 0)
                {
                  goto LABEL_145;
                }

                v72 = [(NSMutableOrderedSet *)self->_framePointers objectAtIndexedSubscript:v32];
                integerValue2 = [v72 integerValue];
                v109 = integerValue2 - [(BMMemoryMapping *)self->_frames start];
              }

              else
              {
                if (v105 < [(BMMemoryMapping *)self->_frames end]- v92)
                {
                  v68 = v105 + v92 - [(BMMemoryMapping *)self->_frames start];
                  goto LABEL_146;
                }

LABEL_145:
                v68 = 4294967294;
LABEL_146:
                v109 = v68;
              }

              v74 = [BMFrame alloc];
              attributes = [(BMFileHandle *)self->_backingFile attributes];
              path = [attributes path];
              *buf = v103;
              *&buf[8] = v46;
              *&buf[16] = v115;
              LODWORD(v82) = v98;
              v76 = [(BMFrame *)v74 initWithHeader:buf storePath:path data:v116 framePtr:integerValue offset:v43 nextOffset:v109 timestamp:v46 datastoreVersion:9 state:v82];

              v77 = v116;
              v116 = 0;

              blockCopy[2](blockCopy, v76, &v118);
              v32 = v100;
LABEL_148:
              start = (integerValue + 32);
              v39 = v99;
            }

            else
            {
              if ((v1 & 0x10) != 0 || v111 > 5)
              {
                goto LABEL_148;
              }

              start = (integerValue + 32);
              v39 = v99;
              if (((1 << v111) & 0x2C) != 0)
              {
                if ((v57 & 1) == 0)
                {
                  v57 = 1;
                }

                v92 = 8;
              }
            }

            v106 = v57;
            offsetCopy = v92;
            goto LABEL_141;
          }

          v106 = v57;
          start = (integerValue + 32);
          v39 = v99;
          offsetCopy = v55;
LABEL_140:

LABEL_141:
          objc_autoreleasePoolPop(v39);
          ++v101;
          v102 = integerValue;
          v31 = v1 & 8;
          if (v118)
          {
            goto LABEL_26;
          }
        }

        if (v48 == 3)
        {
          v49 = 1;
          v50 = v1 ^ 1;
          goto LABEL_77;
        }

        if (v48 != 4)
        {
          v50 = 0;
          if (v48 != 5)
          {
            goto LABEL_77;
          }

          v51 = __biome_log_for_category();
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          buf[24] = 16;
          v114[0] = MEMORY[0x1E69E9820];
          v114[1] = 3221225472;
          v114[2] = __61__BMFrameStore_enumerateWithOptionsV1_fromOffset_usingBlock___block_invoke_86;
          v114[3] = &unk_1E8338B28;
          v114[4] = buf;
          if (enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_85 != -1)
          {
            dispatch_once(&enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_85, v114);
          }

          v52 = *(*&buf[8] + 24);
          _Block_object_dispose(buf, 8);
          if (os_log_type_enabled(v51, v52))
          {
            *buf = 0;
            _os_log_impl(&dword_1C928A000, v51, v52, "Found frame with state: BMFrameStateUnknown", buf, 2u);
          }
        }

        v50 = 0;
        v49 = 1;
        goto LABEL_76;
      }

      if (self->_permission)
      {
        v104 = start;
        v33 = __biome_log_for_category();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        buf[24] = 16;
        v117[0] = MEMORY[0x1E69E9820];
        v117[1] = 3221225472;
        v117[2] = __61__BMFrameStore_enumerateWithOptionsV1_fromOffset_usingBlock___block_invoke_84;
        v117[3] = &unk_1E8338B28;
        v117[4] = buf;
        if (enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_83 != -1)
        {
          dispatch_once(&enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_83, v117);
        }

        v34 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);
        if (!os_log_type_enabled(v33, v34))
        {
          goto LABEL_42;
        }

        *buf = 0;
        v35 = "Use of reverse enumeration is only supported for reading.";
        v36 = v33;
        v37 = v34;
        v38 = 2;
      }

      else
      {
        v32 = [(BMFrameStore *)self getReverseOffsetIndex:offset];
        if (v32 != -1)
        {
          goto LABEL_44;
        }

        v104 = start;
        v33 = __biome_log_for_category();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          goto LABEL_42;
        }

        *buf = 134217984;
        *&buf[4] = offset;
        v35 = "Reverse enumeration offset not found %zu.";
        v36 = v33;
        v37 = OS_LOG_TYPE_INFO;
        v38 = 12;
      }

      _os_log_impl(&dword_1C928A000, v36, v37, v35, buf, v38);
LABEL_42:

      v32 = -1;
      start = v104;
      goto LABEL_44;
    }
  }

LABEL_26:

  v26 = *MEMORY[0x1E69E9840];
}

- (void)updateHeader
{
  OUTLINED_FUNCTION_1_1();
  v8 = *MEMORY[0x1E69E9840];
  attributes = [*(v2 + 64) attributes];
  filename = [attributes filename];
  OUTLINED_FUNCTION_3_0();
  v7 = v1;
  _os_log_debug_impl(&dword_1C928A000, v0, OS_LOG_TYPE_DEBUG, "Frame store: %@, bytesUsed: %llu", v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

- (unsigned)appendFrameHeaderV1:(id *)v1 offset:(unint64_t *)offset
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_datastoreVersion != 9)
  {
    v5 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v30) = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__BMFrameStore_appendFrameHeaderV1_offset___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (appendFrameHeaderV1_offset__onceToken != -1)
    {
      dispatch_once(&appendFrameHeaderV1_offset__onceToken, block);
    }

    v6 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v5, v6))
    {
      datastoreVersion = self->_datastoreVersion;
      *buf = 67109120;
      *&buf[4] = datastoreVersion;
      _os_log_impl(&dword_1C928A000, v5, v6, "[BMFrameStore appendFrameHeaderV1:offset:] called with unexpected dataVersion:%d", buf, 8u);
    }

LABEL_7:
    result = 1;
    goto LABEL_8;
  }

  v27 = 0;
  v12 = [(BMFrameStore *)self sizeToNextWord:?]+ 32;
  if ([(BMMemoryMapping *)self->_frames atomicWriteEightBytes:v1->var0.var1 toOffset:*offset expected:&v27]== 1)
  {
LABEL_10:
    [(BMMemoryMapping *)self->_frames updateToMaxOfCurrentWriteOffsetAnd:v12 + *offset];
    self->_lastAbsoluteTimestamp = v1->var1.var0;
    var0 = v1->var1.var0;
    start = [(BMMemoryMapping *)self->_frames start];
    v15 = *offset;
    v16 = *&start[*offset + 8];
    v26 = v16;
    v17 = [(BMMemoryMapping *)self->_frames atomicWriteEightBytes:*&var0 toOffset:v15 + 8 expected:&v26];
    if (v17 == 1)
    {
      [(BMMemoryMapping *)self->_frames writeBytes:&v1->var1.var1 toOffset:*offset + 16 length:16];
      result = 2 * (v1->var0.var0.var1 == 4);
      goto LABEL_8;
    }

    v23 = v17;
    v24 = __biome_log_for_category();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      *&buf[4] = v16;
      *&buf[12] = 2048;
      *&buf[14] = v26;
      *&buf[22] = 1024;
      v30 = v23;
      _os_log_error_impl(&dword_1C928A000, v24, OS_LOG_TYPE_ERROR, "Unable to update creationTimestamp. We expect to see %llu, but instead are seeing %llu. The write status is %d", buf, 0x1Cu);
    }

    goto LABEL_7;
  }

  while (1)
  {
    v18 = *([(BMMemoryMapping *)self->_frames start]+ *offset + 8);
    Current = CFAbsoluteTimeGetCurrent();
    if (v18 >= Current)
    {
      Current = v18;
    }

    v1->var1.var0 = Current;
    v1->var1.var1 = Current;
    if (HIDWORD(v27) == 4)
    {
      break;
    }

    v20 = *offset;
    *offset = v20 + [(BMFrameStore *)self sizeToNextWord:v27]+ 32;
    v27 = 0;
    if (![BMMemoryMapping isValidReadFromOffset:"isValidReadFromOffset:withLength:" withLength:?])
    {
      if (![(BMMemoryMapping *)self->_frames isValidReadFromOffset:*offset withLength:32])
      {
        v25 = __biome_log_for_category();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [BMFrameStore appendFrameHeaderV1:offset:];
        }

        break;
      }

      v21 = [(BMMemoryMapping *)self->_frames size]- *offset - 32;
      v22 = v1->var1.var0;
      v1->var0.var0.var0 = v21;
      v1->var0.var0.var1 = 4;
      v1->var1.var1 = v22;
      *&v1->var1.var2 = 0;
    }

    if ([(BMMemoryMapping *)self->_frames atomicWriteEightBytes:v1->var0.var1 toOffset:*offset expected:&v27]== 1)
    {
      goto LABEL_10;
    }
  }

  result = 2;
LABEL_8:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)offsetIsStartOfFrameStore:(unint64_t)store
{
  if (!store)
  {
    return 1;
  }

  return [(BMFrameStore *)self datastoreVersion]== 10 && [(BMFrameStore *)self frameStoreSize]- 48 == store;
}

- (unsigned)writeFrameV1ForBytes:(const void *)bytes length:(unint64_t)length dataVersion:(unsigned int)version timestamp:(double)timestamp outOffset:(unint64_t *)offset
{
  v63 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (length >> 31)
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:];
    }

LABEL_27:

LABEL_28:
    LOBYTE(v15) = 1;
    goto LABEL_29;
  }

  if (!length)
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:];
    }

    goto LABEL_27;
  }

  if (length + 88 <= selfCopy->_frameStoreSize)
  {
    if (![(BMMemoryMapping *)selfCopy->_header start])
    {
      v13 = __biome_log_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [BMFrameStore writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:];
      }

      goto LABEL_27;
    }

    currentWriteOffset = [(BMMemoryMapping *)selfCopy->_frames currentWriteOffset];
    if ([(BMMemoryMapping *)selfCopy->_frames isValidReadFromOffset:currentWriteOffset withLength:length + 32])
    {
      if (selfCopy->_lastAbsoluteTimestamp > timestamp)
      {
        if ([(BMFrameStore *)selfCopy isRemoteSegment]&& ![(BMFrameStore *)selfCopy isTombstoneSegment])
        {
          v22 = objc_alloc_init(MEMORY[0x1E696AB78]);
          [v22 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
          v23 = __biome_log_for_category();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            lastAbsoluteTimestamp = selfCopy->_lastAbsoluteTimestamp;
            v45 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:timestamp];
            v46 = [v22 stringFromDate:v45];
            v44 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:selfCopy->_lastAbsoluteTimestamp];
            v39 = [v22 stringFromDate:v44];
            v40 = MEMORY[0x1E698E9C8];
            segmentPath = [(BMFrameStore *)selfCopy segmentPath];
            v42 = [v40 privacyPathname:segmentPath];
            *buf = 136316418;
            *&buf[4] = "[BMFrameStore writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:]";
            *&buf[12] = 2048;
            *&buf[14] = timestamp;
            *&buf[22] = 2048;
            v56 = *&lastAbsoluteTimestamp;
            v57 = 2112;
            v58 = v46;
            v59 = 2112;
            v60 = v39;
            v61 = 2114;
            v62 = v42;
            _os_log_error_impl(&dword_1C928A000, v23, OS_LOG_TYPE_ERROR, "[%s] WARNING (remote data) frame should come in chronological order. Input %f < last %f, (%@ < %@) segment:%{public}@", buf, 0x3Eu);
          }
        }

        else
        {
          if (selfCopy->_lastAbsoluteTimestamp - timestamp >= 3.0)
          {
            goto LABEL_22;
          }

          v16 = CFAbsoluteTimeGetCurrent() - timestamp;
          if (v16 < 0.0)
          {
            v16 = -v16;
          }

          if (v16 > 60.0)
          {
LABEL_22:
            v17 = objc_alloc_init(MEMORY[0x1E696AB78]);
            [v17 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
            v18 = __biome_log_for_category();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v31 = selfCopy->_lastAbsoluteTimestamp;
              v32 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:timestamp];
              v33 = [v17 stringFromDate:v32];
              v34 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:selfCopy->_lastAbsoluteTimestamp];
              v35 = [v17 stringFromDate:v34];
              v36 = MEMORY[0x1E698E9C8];
              segmentPath2 = [(BMFrameStore *)selfCopy segmentPath];
              v38 = [v36 privacyPathname:segmentPath2];
              *buf = 136316418;
              *&buf[4] = "[BMFrameStore writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:]";
              *&buf[12] = 2048;
              *&buf[14] = timestamp;
              *&buf[22] = 2048;
              v56 = *&v31;
              v57 = 2112;
              v58 = v33;
              v59 = 2112;
              v60 = v35;
              v61 = 2114;
              v62 = v38;
              _os_log_error_impl(&dword_1C928A000, v18, OS_LOG_TYPE_ERROR, "[%s] Frame should come in chronological order. Input %f < last %f, (%@ < %@) segment:%{public}@", buf, 0x3Eu);
            }

            goto LABEL_28;
          }

          timestamp = selfCopy->_lastAbsoluteTimestamp + 0.0000001;
        }
      }

      v24 = crc32(0, bytes, length);
      *buf = length;
      *&buf[4] = 0;
      *&buf[8] = timestamp;
      *&buf[16] = timestamp;
      v56 = __PAIR64__(version, v24);
      v15 = [(BMFrameStore *)selfCopy appendFrameHeaderV1:buf offset:&currentWriteOffset];
      if (v15)
      {
        v25 = __biome_log_for_category();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v26 = NSStringFromBMFrameWriteStatus(v15);
          [BMFrameStore writeFrameV1ForBytes:v26 length:v49 dataVersion:v25 timestamp:? outOffset:?];
        }
      }

      else
      {
        [(BMMemoryMapping *)selfCopy->_frames writeBytes:bytes toOffset:currentWriteOffset + 32 length:length];
        v47 = *buf;
        *&buf[4] = 1;
        v27 = *buf;
        v28 = [(BMMemoryMapping *)selfCopy->_frames atomicWriteEightBytes:*buf toOffset:currentWriteOffset expected:&v47];
        [(BMFrameStore *)selfCopy updateHeader];
        if (v28 != 1)
        {
          v30 = __biome_log_for_category();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *v49 = 134218496;
            v50 = v47;
            v51 = 2048;
            v52 = v27;
            v53 = 1024;
            v54 = v28;
            _os_log_error_impl(&dword_1C928A000, v30, OS_LOG_TYPE_ERROR, "Unable to update status to written, someone else seems to have overwritten the value. We expect to see %llu, but instead are seeing %llu. The write status is %d", v49, 0x1Cu);
          }

          goto LABEL_28;
        }

        if (offset)
        {
          offset = [(BMMemoryMapping *)selfCopy->_frames offset];
          LOBYTE(v15) = 0;
          *offset = currentWriteOffset + offset;
        }

        else
        {
          LOBYTE(v15) = 0;
        }
      }
    }

    else
    {
      if ([(BMMemoryMapping *)selfCopy->_frames isValidReadFromOffset:currentWriteOffset withLength:32])
      {
        *buf = [(BMMemoryMapping *)selfCopy->_frames freeSpace]- 32;
        *&buf[4] = 4;
        *&buf[8] = timestamp;
        *&buf[16] = timestamp;
        v56 = 0;
        [(BMFrameStore *)selfCopy appendFrameHeaderV1:buf offset:&currentWriteOffset];
      }

      v21 = __biome_log_for_category();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [BMFrameStore appendFrameHeaderV1:offset:];
      }

      LOBYTE(v15) = 2;
    }
  }

  else
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:];
    }

    LOBYTE(v15) = 3;
  }

LABEL_29:
  objc_sync_exit(selfCopy);

  v19 = *MEMORY[0x1E69E9840];
  return v15;
}

- (int)frameCountFromStartTime:(double)time endTime:(double)endTime
{
  if ([(BMFrameStore *)self datastoreVersion]== 9)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__BMFrameStore_frameCountFromStartTime_endTime___block_invoke;
    v9[3] = &unk_1E8338C38;
    *&v9[5] = endTime;
    *&v9[6] = time;
    v9[4] = &v10;
    [(BMFrameStore *)self enumerateFromOffset:0 withCallback:v9];
    v7 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
    return v7;
  }

  if ([(BMFrameStore *)self datastoreVersion]!= 10)
  {
    return 0;
  }

  return [(BMFrameStore *)self frameCountFromStartTimeV2:time endTime:endTime];
}

void __48__BMFrameStore_frameCountFromStartTime_endTime___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  [v7 creationTimestamp];
  if (v5 <= *(a1 + 40))
  {
    [v7 creationTimestamp];
    if (v6 >= *(a1 + 48))
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }

  else
  {
    *a3 = 1;
  }
}

- (void)markFrameAsRemoved:(id)removed
{
  v17 = *MEMORY[0x1E69E9840];
  removedCopy = removed;
  datastoreVersion = self->_datastoreVersion;
  if (datastoreVersion == 10)
  {
    [(BMFrameStore *)self markFrameAsRemovedV2:removedCopy];
  }

  else if (datastoreVersion == 9)
  {
    [(BMFrameStore *)self markFrameAsRemovedV1:removedCopy];
  }

  else
  {
    v6 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v16 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__BMFrameStore_markFrameAsRemoved___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (markFrameAsRemoved__onceToken != -1)
    {
      dispatch_once(&markFrameAsRemoved__onceToken, block);
    }

    v7 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = MEMORY[0x1E698E9C8];
      attributes = [(BMFileHandle *)self->_backingFile attributes];
      path = [attributes path];
      v11 = [v8 privacyPathname:path];
      v12 = self->_datastoreVersion;
      *buf = 138543618;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      *&buf[14] = v12;
      _os_log_impl(&dword_1C928A000, v6, v7, "Segment version of %{public}@ doesn't match expected versions: %lu.", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)markFrameAsRemovedV1:(id)v1
{
  v22 = *MEMORY[0x1E69E9840];
  v1Copy = v1;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = atomic_load([v1Copy framePtr]);
  framePtr = [v1Copy framePtr];
  v8 = v6 | 0x200000000;
  v9 = v6;
  atomic_compare_exchange_strong(framePtr, &v9, v8);
  if (v9 == v6)
  {
    framePtr2 = [v1Copy framePtr];
    framePtr3 = [v1Copy framePtr];
    *(framePtr2 + 24) = 0;
    v12 = memset_s((framePtr3 + 32), v6, 0, v6);
    if (v12)
    {
      v13 = __biome_log_for_category();
      *buf = 0;
      v19 = buf;
      v20 = 0x2020000000;
      v21 = 16;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __37__BMFrameStore_markFrameAsRemovedV1___block_invoke;
      block[3] = &unk_1E8338B28;
      block[4] = buf;
      if (markFrameAsRemovedV1__onceToken != -1)
      {
        dispatch_once(&markFrameAsRemovedV1__onceToken, block);
      }

      v14 = v19[24];
      _Block_object_dispose(buf, 8);
      if (os_log_type_enabled(v13, v14))
      {
        *buf = 67240192;
        *&buf[4] = v12;
        _os_log_impl(&dword_1C928A000, v13, v14, "Failed to zero out memory. %{public, darwin.errno}d", buf, 8u);
      }
    }

    else
    {
      v16 = v6 | 0x200000000;
      atomic_compare_exchange_strong(framePtr, &v16, v6 | 0x300000000);
      if (v16 == v8)
      {
        goto LABEL_10;
      }

      v13 = __biome_log_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [BMFrameStore markFrameAsRemovedV1:];
      }
    }
  }

  else
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore markFrameAsRemovedV1:];
    }
  }

LABEL_10:
  objc_sync_exit(selfCopy);

  v15 = *MEMORY[0x1E69E9840];
}

+ (unint64_t)maxEventsPerFrameStoreVersion:(unint64_t)version averageEventSize:(unint64_t)size segmentSize:(unint64_t)segmentSize
{
  v5 = 3;
  if (version == 9)
  {
    v5 = 7;
  }

  v6 = -4;
  if (version == 9)
  {
    v6 = -8;
  }

  v7 = -32;
  if (version == 9)
  {
    v7 = -56;
  }

  v8 = 24;
  if (version == 9)
  {
    v8 = 32;
  }

  return (v7 + segmentSize) / (v8 + ((v5 + size) & v6));
}

- (unsigned)bytesUsed
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(BMFrameStore *)self datastoreVersion]== 9)
  {
    v3 = *MEMORY[0x1E69E9840];

    return [(BMFrameStore *)self bytesUsedV1];
  }

  else if ([(BMFrameStore *)self datastoreVersion]== 10)
  {
    v5 = *MEMORY[0x1E69E9840];

    return [(BMFrameStore *)self bytesUsedV2];
  }

  else
  {
    v6 = __biome_log_for_category();
    *buf = 0;
    v12 = buf;
    v13 = 0x2020000000;
    v14 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__BMFrameStore_Inspection__bytesUsed__block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (bytesUsed_onceToken != -1)
    {
      dispatch_once(&bytesUsed_onceToken, block);
    }

    v7 = v12[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v6, v7))
    {
      datastoreVersion = self->_datastoreVersion;
      *buf = 67109120;
      *&buf[4] = datastoreVersion;
      _os_log_impl(&dword_1C928A000, v6, v7, "bytesUsed called with a framestore with an unexpected datastoreVersion:%d", buf, 8u);
    }

    result = [(BMFrameStore *)self frameStoreSize];
    v9 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (unsigned)bytesUsedV1
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  if ([(BMMemoryMapping *)self->_header atomicReadAtOffset:0 value:&v9]== 1)
  {
    result = v9;
  }

  else
  {
    v4 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v11 = 16;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__BMFrameStore_Inspection__bytesUsedV1__block_invoke;
    v8[3] = &unk_1E8338B28;
    v8[4] = buf;
    if (bytesUsedV1_onceToken != -1)
    {
      dispatch_once(&bytesUsedV1_onceToken, v8);
    }

    v5 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v4, v5))
    {
      header = self->_header;
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = header;
      _os_log_impl(&dword_1C928A000, v4, v5, "Unable to atomically read the bytesUsed value from the frame header %@ %@", buf, 0x16u);
    }

    result = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)bytesUsedV2
{
  atomicReadTotalFramesV2 = [(BMFrameStore *)self atomicReadTotalFramesV2];
  frames = [(BMFrameStore *)self frames];
  v5 = ([frames end] - (16 * atomicReadTotalFramesV2));

  return ((*v5 + 3) & 0xFFFFFFFC) + 16 * atomicReadTotalFramesV2 + 32;
}

- (BOOL)isCheckSumValidAtOffsetV1:(unint64_t)v1
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_datastoreVersion != 9)
  {
    v8 = __biome_log_for_category();
    *buf = 0;
    v14 = buf;
    v15 = 0x2020000000;
    v16 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__BMFrameStore_Inspection__isCheckSumValidAtOffsetV1___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (isCheckSumValidAtOffsetV1__onceToken != -1)
    {
      dispatch_once(&isCheckSumValidAtOffsetV1__onceToken, block);
    }

    v9 = v14[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v8, v9))
    {
      datastoreVersion = self->_datastoreVersion;
      *buf = 67109120;
      *&buf[4] = datastoreVersion;
      _os_log_impl(&dword_1C928A000, v8, v9, "isCheckSumValidAtOffsetV1 called with unexpected dataVersion:%d", buf, 8u);
    }

    goto LABEL_12;
  }

  if ((v1 & 7) != 0 || (v5 = [(BMMemoryMapping *)self->_frames start]+ v1, (v5 + 8) > [(BMMemoryMapping *)self->_frames end]) || (v6 = atomic_load(v5), v1 + v6 > [(BMMemoryMapping *)self->_frames size]))
  {
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  result = HIDWORD(v6) != 1 || *(v5 + 6) == crc32(0, v5 + 32, v6);
LABEL_13:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)atomicReadSixteenByteValueAtAddress:
{
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X2] }

  return result;
}

- (int)frameNumberFromFrameOffsetV2:(unsigned int)v2
{
  atomicReadTotalFramesV2 = [(BMFrameStore *)self atomicReadTotalFramesV2];
  if (!atomicReadTotalFramesV2)
  {
    return -1;
  }

  v6 = atomicReadTotalFramesV2;
  v7 = -1;
  if ([(BMFrameStore *)self offsetOfFrameV2:atomicReadTotalFramesV2]> v2)
  {
    v8 = v6 - 1;
    if ((v8 & 0x80000000) == 0)
    {
      v9 = 0;
      while (1)
      {
        v7 = v9 + (v8 - v9) / 2;
        v10 = [(BMFrameStore *)self offsetOfFrameV2:v7];
        if (v10 == v2)
        {
          break;
        }

        if (v10 < v2)
        {
          v9 = v7 + 1;
        }

        else
        {
          v8 = v7 - 1;
        }

        if (v8 < v9)
        {
          return -1;
        }
      }
    }
  }

  return v7;
}

- (BOOL)validOffsetTableEntry:(id)entry frameNumber:(int)number
{
  v25 = *MEMORY[0x1E69E9840];
  if (!(entry.var0.var0.var0.var1 | *&entry.var0.var0.var1))
  {
    goto LABEL_15;
  }

  var0 = entry.var0.var0.var0.var0.var0;
  var1 = entry.var0.var0.var0.var0.var1;
  if (entry.var0.var0.var0.var0.var1 < 5)
  {
    v13 = entry.var0.var0.var1;
    if ([(BMFrameStore *)self frameStoreSize]>= entry.var0.var0.var0.var0.var0)
    {
      if (CFAbsoluteTimeGetCurrent() + 315360000.0 >= v13)
      {
        if (v13 >= 599558401.0)
        {
          result = 1;
          goto LABEL_16;
        }

        v8 = __biome_log_for_category();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        v21 = MEMORY[0x1E698E9C8];
        segmentPath = [(BMFrameStore *)self segmentPath];
        v17 = [v21 privacyPathname:segmentPath];
        v22 = 134218498;
        *v23 = v13;
        *&v23[8] = 1024;
        *v24 = number;
        *&v24[4] = 2112;
        *&v24[6] = v17;
        v18 = "Invalid timestamp (%f), too far in the past, for frame %d in segment: %@";
      }

      else
      {
        v8 = __biome_log_for_category();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        v15 = MEMORY[0x1E698E9C8];
        segmentPath = [(BMFrameStore *)self segmentPath];
        v17 = [v15 privacyPathname:segmentPath];
        v22 = 134218498;
        *v23 = v13;
        *&v23[8] = 1024;
        *v24 = number;
        *&v24[4] = 2112;
        *&v24[6] = v17;
        v18 = "Invalid timestamp (%f), too far in the future, for frame %d in segment: %@";
      }

      _os_log_error_impl(&dword_1C928A000, v8, OS_LOG_TYPE_ERROR, v18, &v22, 0x1Cu);

      goto LABEL_14;
    }

    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E698E9C8];
      segmentPath2 = [(BMFrameStore *)self segmentPath];
      v11 = [v14 privacyPathname:segmentPath2];
      v22 = 67109634;
      *v23 = var0;
      *&v23[4] = 1024;
      *&v23[6] = number;
      *v24 = 2112;
      *&v24[2] = v11;
      v12 = "Invalid offset (%d) for frame %d in segment: %@";
      goto LABEL_8;
    }
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = MEMORY[0x1E698E9C8];
      segmentPath2 = [(BMFrameStore *)self segmentPath];
      v11 = [v9 privacyPathname:segmentPath2];
      v22 = 67109634;
      *v23 = var1;
      *&v23[4] = 1024;
      *&v23[6] = number;
      *v24 = 2112;
      *&v24[2] = v11;
      v12 = "Invalid BMFrameState (%d) for frame %d in segment: %@";
LABEL_8:
      _os_log_error_impl(&dword_1C928A000, v8, OS_LOG_TYPE_ERROR, v12, &v22, 0x18u);
    }
  }

LABEL_14:

LABEL_15:
  result = 0;
LABEL_16:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)findValidOffsetTableEntryToReplaceMidFrame:(int)frame bottomFrame:(int)bottomFrame topFrame:(int)topFrame reverse:(BOOL)reverse
{
  frameCopy = frame;
  if (reverse)
  {
    LODWORD(v12) = frame;
    while (1)
    {
      v13 = v12;
      v12 = (v12 - 1);
      if (bottomFrame == v13)
      {
        break;
      }

      if ([(BMFrameStore *)self validOffsetTableEntryAtFrame:v12])
      {
        return v12;
      }
    }

    frameCopy = v12;
  }

  LODWORD(v12) = frame;
  while (topFrame != v12)
  {
    v12 = (v12 + 1);
    if ([(BMFrameStore *)self validOffsetTableEntryAtFrame:v12])
    {
      return v12;
    }
  }

  if (!reverse)
  {
    LODWORD(v12) = frameCopy;
    while (bottomFrame != v12)
    {
      v12 = (v12 - 1);
      if ([(BMFrameStore *)self validOffsetTableEntryAtFrame:v12])
      {
        return v12;
      }
    }
  }

  LODWORD(v12) = frame;
  return v12;
}

- (unsigned)frameOffsetFromOffsetTableV2:(id *)v2
{
  if (!v2)
  {
    return 0;
  }

  v3 = v2 + 1;
  frames = [(BMFrameStore *)self frames];
  v5 = [frames end];

  if (v5 == v3)
  {
    return 0;
  }

  else
  {
    return (v3->var0.var0.var0.var0.var0 + 3) & 0xFFFFFFFC;
  }
}

- (int)frameNumberFromOffsetToOffsetTableEntryV2:(unsigned int)v2
{
  frames = [(BMFrameStore *)self frames];
  v6 = [frames size];

  if (v6 < v2)
  {
    return -1;
  }

  frames2 = [(BMFrameStore *)self frames];
  v7 = (([frames2 size] - v2) >> 4) - 1;

  return v7;
}

- (unsigned)offsetTableOffsetFromFrameNumberV2:(unsigned int)v2
{
  v4 = 16 * (v2 + 1);
  frames = [(BMFrameStore *)self frames];
  v6 = [frames size];

  if (v4 > v6)
  {
    return -2;
  }

  frames2 = [(BMFrameStore *)self frames];
  v7 = [frames2 size] - v4;

  return v7;
}

- ($327AC5C1B3A50B4987650045CBFB5127)offsetTablePtrFromFrameNumberV2:(unsigned int)v2
{
  v4 = 16 * (v2 + 1);
  frames = [(BMFrameStore *)self frames];
  v6 = [frames size];

  if (v4 > v6)
  {
    return 0;
  }

  frames2 = [(BMFrameStore *)self frames];
  v7 = ([frames2 end] - v4);

  return v7;
}

- (int)frameCountFromStartTimeV2:(double)v2 endTime:(double)time
{
  result = [(BMFrameStore *)self atomicReadTotalFramesV2];
  if (result)
  {
    v8 = result;
    v9 = [(BMFrameStore *)self firstFrameNumberForTimestampV2:0 reverse:v2];
    v10 = [(BMFrameStore *)self firstFrameNumberForTimestampV2:1 reverse:time];
    start = [(BMFrameStore *)self start];
    v12 = atomic_load(start - 2);
    v13 = atomic_load(start - 3);
    if (v12)
    {
      v14 = v13 >= v9;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      if (v9 || v10 != v8 - 1)
      {

        return [(BMFrameStore *)self countFrameStateInOffsetTable:1 startingFrame:v9 endingFrame:v10];
      }

      else
      {
        return v8 - v12;
      }
    }

    else
    {
      return v10 - v9 + 1;
    }
  }

  return result;
}

- (int)eraseFrameAtOffsetTableV2:(id *)v2
{
  v5 = v2 + 1;
  frames = [(BMFrameStore *)self frames];
  if ([frames end] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v5->var0.var0.var0.var0.var0 + 3) & 0xFFFFFFFC;
  }

  v8 = v2->var0.var0.var0.var0.var0 - v7 - 8;
  frames2 = [(BMFrameStore *)self frames];
  v10 = ([frames2 start] + v7);

  result = memset_s(v10 + 2, v8, 0, v8);
  *v10 = 0;
  return result;
}

- (unsigned)stateOfFrameV2:(unsigned int)v2
{
  v25 = *MEMORY[0x1E69E9840];
  atomicReadTotalFramesV2 = [(BMFrameStore *)self atomicReadTotalFramesV2];
  if (atomicReadTotalFramesV2 <= v2)
  {
    v13 = atomicReadTotalFramesV2;
    v14 = __biome_log_for_category();
    *buf = 0;
    v22 = buf;
    v23 = 0x2020000000;
    v24 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__BMFrameStore_V2__stateOfFrameV2___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (stateOfFrameV2__onceToken != -1)
    {
      dispatch_once(&stateOfFrameV2__onceToken, block);
    }

    v15 = v22[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = MEMORY[0x1E698E9C8];
      segmentPath = [(BMFrameStore *)self segmentPath];
      v18 = [v16 privacyPathname:segmentPath];
      *buf = 67109634;
      *&buf[4] = v2;
      LOWORD(v22) = 1024;
      *(&v22 + 2) = v13;
      HIWORD(v22) = 2114;
      v23 = v18;
      _os_log_impl(&dword_1C928A000, v14, v15, "stateOfFrame requested for frame:%u is beyond totalFrames:%u: %{public}@", buf, 0x18u);
    }

    goto LABEL_11;
  }

  v6 = 16 * (v2 + 1);
  frames = [(BMFrameStore *)self frames];
  v8 = [frames size];

  if (v6 > v8)
  {
LABEL_11:
    v19 = *MEMORY[0x1E69E9840];
    return 5;
  }

  frames2 = [(BMFrameStore *)self frames];
  v10 = [frames2 end];

  v11 = *MEMORY[0x1E69E9840];

  return [(BMFrameStore *)self atomicReadFourByteValueAtAddress:v10 - v6 + 4];
}

- (double)creationTimeOfFrameV2:(unsigned int)v2
{
  v27 = *MEMORY[0x1E69E9840];
  atomicReadTotalFramesV2 = [(BMFrameStore *)self atomicReadTotalFramesV2];
  if (atomicReadTotalFramesV2 <= v2)
  {
    v12 = atomicReadTotalFramesV2;
    v13 = __biome_log_for_category();
    *buf = 0;
    v24 = buf;
    v25 = 0x2020000000;
    v26 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__BMFrameStore_V2__creationTimeOfFrameV2___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (creationTimeOfFrameV2__onceToken != -1)
    {
      dispatch_once(&creationTimeOfFrameV2__onceToken, block);
    }

    v14 = v24[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = MEMORY[0x1E698E9C8];
      segmentPath = [(BMFrameStore *)self segmentPath];
      v17 = [v15 privacyPathname:segmentPath];
      *buf = 67109634;
      *&buf[4] = v2;
      LOWORD(v24) = 1024;
      *(&v24 + 2) = v12;
      HIWORD(v24) = 2114;
      v25 = v17;
      _os_log_impl(&dword_1C928A000, v13, v14, "creationTimeOfFrame requested for frame:%u is beyond totalFrames:%u: %{public}@", buf, 0x18u);
    }

    distantPast = [MEMORY[0x1E695DF00] distantPast];
    [distantPast timeIntervalSinceReferenceDate];
    v9 = v19;
  }

  else
  {
    v6 = 16 * (v2 + 1);
    frames = [(BMFrameStore *)self frames];
    v8 = [frames size];

    v9 = 0.0;
    if (v6 <= v8)
    {
      frames2 = [(BMFrameStore *)self frames];
      v11 = [frames2 end] - v6;

      v9 = *(v11 + 8);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v9;
}

- (unsigned)sizeOfFrameV2:(unsigned int)v2
{
  v24 = *MEMORY[0x1E69E9840];
  atomicReadTotalFramesV2 = [(BMFrameStore *)self atomicReadTotalFramesV2];
  if (atomicReadTotalFramesV2 <= v2)
  {
    v12 = atomicReadTotalFramesV2;
    v13 = __biome_log_for_category();
    *buf = 0;
    v21 = buf;
    v22 = 0x2020000000;
    v23 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__BMFrameStore_V2__sizeOfFrameV2___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (sizeOfFrameV2__onceToken != -1)
    {
      dispatch_once(&sizeOfFrameV2__onceToken, block);
    }

    v14 = v21[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = MEMORY[0x1E698E9C8];
      segmentPath = [(BMFrameStore *)self segmentPath];
      v17 = [v15 privacyPathname:segmentPath];
      *buf = 67109634;
      *&buf[4] = v2;
      LOWORD(v21) = 1024;
      *(&v21 + 2) = v12;
      HIWORD(v21) = 2114;
      v22 = v17;
      _os_log_impl(&dword_1C928A000, v13, v14, "sizeOfFrame requested for frame:%u is beyond totalFrames:%u: %{public}@", buf, 0x18u);
    }

    goto LABEL_10;
  }

  v6 = 16 * (v2 + 1);
  frames = [(BMFrameStore *)self frames];
  v8 = [frames size];

  if (v6 > v8)
  {
LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  frames2 = [(BMFrameStore *)self frames];
  v10 = ([frames2 end] - v6);

  result = *v10;
  if (v2)
  {
    result -= (v10[4] + 3) & 0xFFFFFFFC;
  }

LABEL_11:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)offsetOfFrameV2:(unsigned int)v2
{
  v25 = *MEMORY[0x1E69E9840];
  if (!v2)
  {
    goto LABEL_9;
  }

  atomicReadTotalFramesV2 = [(BMFrameStore *)self atomicReadTotalFramesV2];
  if (atomicReadTotalFramesV2 < v2)
  {
    v6 = atomicReadTotalFramesV2;
    v7 = __biome_log_for_category();
    *buf = 0;
    v22 = buf;
    v23 = 0x2020000000;
    v24 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__BMFrameStore_V2__offsetOfFrameV2___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (offsetOfFrameV2__onceToken != -1)
    {
      dispatch_once(&offsetOfFrameV2__onceToken, block);
    }

    v8 = v22[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = MEMORY[0x1E698E9C8];
      segmentPath = [(BMFrameStore *)self segmentPath];
      v11 = [v9 privacyPathname:segmentPath];
      *buf = 67109634;
      *&buf[4] = v2;
      LOWORD(v22) = 1024;
      *(&v22 + 2) = v6;
      HIWORD(v22) = 2114;
      v23 = v11;
      _os_log_impl(&dword_1C928A000, v7, v8, "offsetOfFrame requested for frame:%u is beyond totalFrames:%u: %{public}@", buf, 0x18u);
    }

    goto LABEL_9;
  }

  v12 = 16 * v2;
  frames = [(BMFrameStore *)self frames];
  v14 = [frames size];

  if (v12 > v14)
  {
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  frames2 = [(BMFrameStore *)self frames];
  v18 = ([frames2 end] - v12);

  v19 = *v18;
  if (!*v18)
  {
    if ([(BMFrameStore *)self atomicReadFourByteValueAtAddress:v18 + 1]== 4)
    {
      v19 = [(BMFrameStore *)self offsetOfFrameV2:v2 - 1];
    }

    else
    {
      v19 = 0;
    }
  }

  result = (v19 + 3) & 0xFFFFFFFC;
LABEL_10:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)getSegmentHeader:(id *)header fromFileV2:(id)v2 fileSize:(unint64_t *)size
{
  v23 = *MEMORY[0x1E69E9840];
  v2Copy = v2;
  memset(&v18.st_size, 0, 48);
  if (fstat([v2Copy fd], &v18))
  {
    v8 = *__error();
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore(V2) getSegmentHeader:v2Copy fromFileV2:? fileSize:?];
    }

LABEL_4:

LABEL_24:
    v14 = 0;
    goto LABEL_25;
  }

  if (!v18.st_size)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore getSegmentHeader:v2Copy fromFileV1:? fileSize:?];
    }

    goto LABEL_23;
  }

  if (v18.st_size <= 0x37uLL)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore(V2) getSegmentHeader:v2Copy fromFileV2:? fileSize:?];
    }

LABEL_23:

    goto LABEL_24;
  }

  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  __buf = 0u;
  v11 = pread([v2Copy fd], &__buf, 0x38uLL, 0);
  if (v11 < 0)
  {
    v13 = *__error();
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore(V2) getSegmentHeader:v2Copy fromFileV2:? fileSize:?];
    }

    goto LABEL_4;
  }

  if (v11 != 56)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore(V2) getSegmentHeader:v2Copy fromFileV2:? fileSize:?];
    }

    goto LABEL_23;
  }

  if (v20 == 9)
  {
    v12 = 52;
  }

  else
  {
    v12 = 0;
  }

  if (*(&__buf + v12) != *"SEGB")
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore(V2) getSegmentHeader:v2Copy fromFileV2:v10 fileSize:?];
    }

    goto LABEL_23;
  }

  if (size)
  {
    *size = v18.st_size;
  }

  if (header)
  {
    v17 = v20;
    *header->var0.var0 = __buf;
    *&header->var2.var3 = v17;
    *(&header->var2 + 2) = v21;
    *(&header->var2 + 6) = v22;
  }

  v14 = 1;
LABEL_25:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (BOOL)writeEmptySegmentHeaderWithFileHandleV2:(id)v2 segmentHeaderSize:(unint64_t *)size
{
  v2Copy = v2;
  if (size)
  {
    *size = 32;
  }

  v12[0] = *"SEGB";
  v12[1] = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v14 = xmmword_1C92B8400;
  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v12 length:32];
  v11 = 0;
  v7 = [v2Copy overwriteWithData:v6 error:&v11];
  v8 = v11;
  if (v8)
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore writeEmptySegmentHeaderWithFileHandleV1:v2Copy segmentHeaderSize:?];
    }
  }

  return v7;
}

- (BMFrameStore)initWithFileHandleV2:(id)v2 permission:(unint64_t)permission
{
  v90 = *MEMORY[0x1E69E9840];
  v2Copy = v2;
  v82.receiver = self;
  v82.super_class = BMFrameStore;
  v8 = [(BMFrameStore *)&v82 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_57;
  }

  [(BMFrameStore *)v8 setBackingFile:v2Copy];
  [(BMFrameStore *)v9 setDatastoreVersion:10];
  v81 = 0;
  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  v86 = 0u;
  if (![(BMFrameStore *)v9 getSegmentHeader:&v86 fromFileV2:v2Copy fileSize:&v81])
  {
    v4 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__BMFrameStore_V2__initWithFileHandleV2_permission___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (initWithFileHandleV2_permission__onceToken != -1)
    {
      dispatch_once(&initWithFileHandleV2_permission__onceToken, block);
    }

    v11 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (!os_log_type_enabled(v4, v11))
    {
      goto LABEL_11;
    }

    v12 = MEMORY[0x1E698E9C8];
    attributes = [v2Copy attributes];
    path = [attributes path];
    v15 = [v12 privacyPathname:path];
    *buf = 138543362;
    *&buf[4] = v15;
    _os_log_impl(&dword_1C928A000, v4, v11, "Cannot create frame store from segment file: %{public}@", buf, 0xCu);

    goto LABEL_9;
  }

  [(BMFrameStore *)v9 setDatastoreVersion:v87];
  if ([(BMFrameStore *)v9 datastoreVersion]== 9)
  {
    v10 = [(BMFrameStore *)v9 initWithFileHandleV1:v2Copy permission:permission];
LABEL_58:
    v9 = v10;
    v16 = v10;
    goto LABEL_59;
  }

  if (v87 != 10)
  {
    v4 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 16;
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __52__BMFrameStore_V2__initWithFileHandleV2_permission___block_invoke_6;
    v79[3] = &unk_1E8338B28;
    v79[4] = buf;
    if (initWithFileHandleV2_permission__onceToken_5 != -1)
    {
      dispatch_once(&initWithFileHandleV2_permission__onceToken_5, v79);
    }

    v17 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v4, v17))
    {
      v18 = MEMORY[0x1E698E9C8];
      backingFile = [(BMFrameStore *)v9 backingFile];
      attributes2 = [backingFile attributes];
      path2 = [attributes2 path];
      v22 = [v18 privacyPathname:path2];
      v23 = v87;
      datastoreVersion = [(BMFrameStore *)v9 datastoreVersion];
      *buf = 138543874;
      *&buf[4] = v22;
      *&buf[12] = 1026;
      *&buf[14] = v23;
      *&buf[18] = 1026;
      *&buf[20] = datastoreVersion;
      _os_log_impl(&dword_1C928A000, v4, v17, "Segment version of %{public}@ doesn't match expected versions. Header set to %{public}d, preferred %{public}d.", buf, 0x18u);
    }

    goto LABEL_11;
  }

  if ((permission & 0xFFFFFFFFFFFFFFFDLL) == 0 && !DWORD1(v86))
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore(V2) initWithFileHandleV2:v9 permission:?];
    }

    goto LABEL_11;
  }

  v25 = (v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  [(BMFrameStore *)v9 setFrameStoreSize:v25];
  [(BMFrameStore *)v9 setPermission:permission];
  if (permission == 2 || permission == 1)
  {
    v26 = [[BMMemoryMapping alloc] initWithSize:32 protection:2 advice:1 offset:0];
    v27 = [BMMemoryMapping alloc];
    v28 = v25 - 32;
    v29 = 2;
    goto LABEL_26;
  }

  if (!permission)
  {
    v26 = [[BMMemoryMapping alloc] initWithSize:32 protection:1 advice:1 offset:0];
    v27 = [BMMemoryMapping alloc];
    v28 = v25 - 32;
    v29 = 1;
LABEL_26:
    v30 = [(BMMemoryMapping *)v27 initWithSize:v28 protection:v29 advice:2 offset:32];
    *buf = v26;
    *&buf[8] = v30;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  }

  lastObject = [v4 lastObject];
  [(BMFrameStore *)v9 setFrames:lastObject];

  if ([v4 count]>= 2)
  {
    firstObject = [v4 firstObject];
    [(BMFrameStore *)v9 setHeader:firstObject];
  }

  header = [(BMFrameStore *)v9 header];

  if (permission && !header)
  {
    v34 = __biome_log_for_category();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore initWithFileHandleV1:permission:];
    }
  }

  header2 = [(BMFrameStore *)v9 header];
  if (header2)
  {
    v36 = header2;
    header3 = [(BMFrameStore *)v9 header];
    backingFile2 = [(BMFrameStore *)v9 backingFile];
    v39 = [header3 mapWithFileHandle:backingFile2 fileSize:v25];

    if ((v39 & 1) == 0)
    {
      v40 = __biome_log_for_category();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [BMFrameStore(V2) initWithFileHandleV2:v9 permission:?];
      }
    }
  }

  frames = [(BMFrameStore *)v9 frames];
  backingFile3 = [(BMFrameStore *)v9 backingFile];
  v43 = [frames mapWithFileHandle:backingFile3 fileSize:v25];

  if ((v43 & 1) == 0)
  {
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore(V2) initWithFileHandleV2:v9 permission:?];
    }

    goto LABEL_10;
  }

  if (permission != 1 || !DWORD1(v86))
  {
    goto LABEL_56;
  }

  if (v25 < 16 * DWORD1(v86))
  {
    v15 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 16;
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __52__BMFrameStore_V2__initWithFileHandleV2_permission___block_invoke_8;
    v78[3] = &unk_1E8338B28;
    v78[4] = buf;
    if (initWithFileHandleV2_permission__onceToken_7 != -1)
    {
      dispatch_once(&initWithFileHandleV2_permission__onceToken_7, v78);
    }

    v44 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v15, v44))
    {
      v45 = MEMORY[0x1E698E9C8];
      backingFile4 = [(BMFrameStore *)v9 backingFile];
      attributes3 = [backingFile4 attributes];
      path3 = [attributes3 path];
      v49 = [v45 privacyPathname:path3];
      *buf = 138543874;
      *&buf[4] = v49;
      *&buf[12] = 2048;
      *&buf[14] = v81;
      *&buf[22] = 1024;
      *&buf[24] = DWORD1(v86);
      _os_log_impl(&dword_1C928A000, v15, v44, "Attempted to open %{public}@ for writing but the file size is: %zu, which lacks space for an offsetTable with %d frames", buf, 0x1Cu);
    }

    goto LABEL_10;
  }

  v50 = 16 * DWORD1(v86);
  frames2 = [(BMFrameStore *)v9 frames];
  v52 = ([frames2 end] - v50);

  if ([(BMFrameStore *)v9 atomicReadFourByteValueAtAddress:v52 + 1]== 4)
  {
    v15 = __biome_log_for_category();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    v53 = MEMORY[0x1E698E9C8];
    backingFile5 = [(BMFrameStore *)v9 backingFile];
    attributes4 = [backingFile5 attributes];
    path4 = [attributes4 path];
    attributes = [v53 privacyPathname:path4];
    *buf = 138543618;
    *&buf[4] = attributes;
    *&buf[12] = 2048;
    *&buf[14] = v81;
    v57 = "Attempted to open %{public}@ for writing but the file is already full, and has an EOF, fileSize:%zu";
    v58 = v15;
    v59 = 22;
    goto LABEL_52;
  }

  v60 = *v52 + 3;
  v61 = v60 & 0xFFFFFFFC;
  frames3 = [(BMFrameStore *)v9 frames];
  v63 = [frames3 size] - v50;

  if (v63 < (v60 & 0xFFFFFFFC) || v60 < 0)
  {
    v15 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 16;
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __52__BMFrameStore_V2__initWithFileHandleV2_permission___block_invoke_10;
    v77[3] = &unk_1E8338B28;
    v77[4] = buf;
    if (initWithFileHandleV2_permission__onceToken_9 != -1)
    {
      dispatch_once(&initWithFileHandleV2_permission__onceToken_9, v77);
    }

    v68 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v15, v68))
    {
      v69 = MEMORY[0x1E698E9C8];
      backingFile6 = [(BMFrameStore *)v9 backingFile];
      attributes5 = [backingFile6 attributes];
      path5 = [attributes5 path];
      v70 = [v69 privacyPathname:path5];
      frames4 = [(BMFrameStore *)v9 frames];
      start = [frames4 start];
      *buf = 138544130;
      *&buf[4] = v70;
      *&buf[12] = 1024;
      *&buf[14] = v61;
      *&buf[18] = 2048;
      *&buf[20] = v52 - start;
      v84 = 2048;
      v85 = v81;
      _os_log_impl(&dword_1C928A000, v15, v68, "Segment %{public}@ indicates an endOfFrames value: %d in the last offsetTableEntry (offset): %ld beyond the data space size: %zu", buf, 0x26u);
    }

    goto LABEL_10;
  }

  frames5 = [(BMFrameStore *)v9 frames];
  v65 = [frames5 size] - v50 - v61;

  if (v65 > 0x17)
  {
LABEL_56:

LABEL_57:
    v10 = v9;
    goto LABEL_58;
  }

  v15 = __biome_log_for_category();
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    goto LABEL_10;
  }

  v73 = MEMORY[0x1E698E9C8];
  backingFile5 = [(BMFrameStore *)v9 backingFile];
  attributes4 = [backingFile5 attributes];
  path4 = [attributes4 path];
  attributes = [v73 privacyPathname:path4];
  *buf = 138543874;
  *&buf[4] = attributes;
  *&buf[12] = 1024;
  *&buf[14] = v65;
  *&buf[18] = 2048;
  *&buf[20] = v81;
  v57 = "Attempted to open %{public}@ for writing but the file is already full, remaining space:%d, fileSize:%zu";
  v58 = v15;
  v59 = 28;
LABEL_52:
  _os_log_impl(&dword_1C928A000, v58, OS_LOG_TYPE_INFO, v57, buf, v59);

LABEL_9:
LABEL_10:

LABEL_11:
  v16 = 0;
LABEL_59:

  v66 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)_printablePathV2
{
  cachedPrintablePathV2 = [(BMFrameStore *)self cachedPrintablePathV2];

  if (!cachedPrintablePathV2)
  {
    v4 = MEMORY[0x1E698E9C8];
    backingFile = [(BMFrameStore *)self backingFile];
    attributes = [backingFile attributes];
    path = [attributes path];
    v8 = [v4 privacyPathname:path];
    [(BMFrameStore *)self setCachedPrintablePathV2:v8];
  }

  return [(BMFrameStore *)self cachedPrintablePathV2];
}

- (void)enumerateWithOptionsV2:(unint64_t)v2 fromOffset:(unint64_t)offset usingBlock:(id)block
{
  v151 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (!blockCopy)
  {
    [BMFrameStore(V2) enumerateWithOptionsV2:a2 fromOffset:self usingBlock:?];
  }

  if (offset == 4294967294)
  {
    goto LABEL_65;
  }

  atomicReadTotalFramesV2 = [(BMFrameStore *)self atomicReadTotalFramesV2];
  if (!atomicReadTotalFramesV2)
  {
    goto LABEL_65;
  }

  v11 = atomicReadTotalFramesV2;
  if ([(BMFrameStore *)self frameStoreSize]< 16 * atomicReadTotalFramesV2)
  {
    v12 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 16;
    v149[0] = MEMORY[0x1E69E9820];
    v149[1] = 3221225472;
    v149[2] = __65__BMFrameStore_V2__enumerateWithOptionsV2_fromOffset_usingBlock___block_invoke;
    v149[3] = &unk_1E8338B28;
    v149[4] = buf;
    if (enumerateWithOptionsV2_fromOffset_usingBlock__onceToken != -1)
    {
      dispatch_once(&enumerateWithOptionsV2_fromOffset_usingBlock__onceToken, v149);
    }

    v13 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_64;
    }

    frameStoreSize = [(BMFrameStore *)self frameStoreSize];
    v15 = MEMORY[0x1E698E9C8];
    segmentPath = [(BMFrameStore *)self segmentPath];
    v17 = [v15 privacyPathname:segmentPath];
    *buf = 67109634;
    *&buf[4] = v11;
    *&buf[8] = 2048;
    *&buf[10] = frameStoreSize;
    *&buf[18] = 2114;
    *&buf[20] = v17;
    v18 = "enumerateWithOptions: frameStore has totalFrames: %d but file size is too small: %zu in segment: %{public}@";
    v19 = v12;
    v20 = v13;
    v21 = 28;
    goto LABEL_10;
  }

  if (offset != 0xFFFFFFFF && offset)
  {
    LODWORD(v22) = [(BMFrameStore *)self frameNumberFromOffsetToOffsetTableEntryV2:offset];
    frames = [(BMFrameStore *)self frames];
    v24 = [frames start] + offset;
  }

  else
  {
    if ((v2 & 8) != 0)
    {
      v22 = (v11 - 1);
    }

    else
    {
      v22 = 0;
    }

    v23 = [(BMFrameStore *)self offsetTablePtrFromFrameNumberV2:v22];
    if (!v23)
    {
      v12 = __biome_log_for_category();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      buf[24] = 16;
      v148[0] = MEMORY[0x1E69E9820];
      v148[1] = 3221225472;
      v148[2] = __65__BMFrameStore_V2__enumerateWithOptionsV2_fromOffset_usingBlock___block_invoke_42;
      v148[3] = &unk_1E8338B28;
      v148[4] = buf;
      if (enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_41 != -1)
      {
        dispatch_once(&enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_41, v148);
      }

      v33 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (!os_log_type_enabled(v12, v33))
      {
        goto LABEL_64;
      }

      v34 = MEMORY[0x1E698E9C8];
      segmentPath2 = [(BMFrameStore *)self segmentPath];
      v36 = [v34 privacyPathname:segmentPath2];
      *buf = 67109378;
      *&buf[4] = v22;
      *&buf[8] = 2114;
      *&buf[10] = v36;
      v37 = "enumerateWithOptionsV2: offsetTableEntryPtr:NULL outside of range for frames, frameNumber=%d for segment: %{public}@";
      v38 = v12;
      v39 = v33;
      v40 = 18;
LABEL_39:
      _os_log_impl(&dword_1C928A000, v38, v39, v37, buf, v40);

      goto LABEL_64;
    }

    v24 = v23;
  }

  if (v22 == v11)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_65;
    }

    LODWORD(v22) = v11 - 1;
    v24 += 16;
  }

  if ((v22 & 0x80000000) != 0 || v22 > v11 || !v24)
  {
    v12 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 16;
    v147[0] = MEMORY[0x1E69E9820];
    v147[1] = 3221225472;
    v147[2] = __65__BMFrameStore_V2__enumerateWithOptionsV2_fromOffset_usingBlock___block_invoke_44;
    v147[3] = &unk_1E8338B28;
    v147[4] = buf;
    if (enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_43 != -1)
    {
      dispatch_once(&enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_43, v147);
    }

    v29 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v12, v29))
    {
      v30 = MEMORY[0x1E698E9C8];
      segmentPath3 = [(BMFrameStore *)self segmentPath];
      v32 = [v30 privacyPathname:segmentPath3];
      *buf = 134218754;
      *&buf[4] = offset;
      *&buf[12] = 1024;
      *&buf[14] = v22;
      *&buf[18] = 1024;
      *&buf[20] = v11;
      *&buf[24] = 2114;
      *&buf[26] = v32;
      _os_log_impl(&dword_1C928A000, v12, v29, "enumerateWithOptions: offset:%zu outside of range for frames, mapping to frame: %d when segment has only %d frames in segment: %{public}@", buf, 0x22u);
    }

    goto LABEL_64;
  }

  v26 = (v11 - 1);
  v27 = [(BMFrameStore *)self offsetTablePtrFromFrameNumberV2:v26];
  if (!v27)
  {
    v12 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 16;
    v146[0] = MEMORY[0x1E69E9820];
    v146[1] = 3221225472;
    v146[2] = __65__BMFrameStore_V2__enumerateWithOptionsV2_fromOffset_usingBlock___block_invoke_46;
    v146[3] = &unk_1E8338B28;
    v146[4] = buf;
    if (enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_45 != -1)
    {
      dispatch_once(&enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_45, v146);
    }

    v41 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (!os_log_type_enabled(v12, v41))
    {
      goto LABEL_64;
    }

    v42 = MEMORY[0x1E698E9C8];
    segmentPath = [(BMFrameStore *)self segmentPath];
    v17 = [v42 privacyPathname:segmentPath];
    *buf = 67109634;
    *&buf[4] = v22;
    *&buf[8] = 1024;
    *&buf[10] = v11;
    *&buf[14] = 2114;
    *&buf[16] = v17;
    v18 = "enumerateWithOptionsV2: lastOffsetTable:NULL outside of range for frames, mapping to frame: %d when segment has only %d frames in segment: %{public}@";
    v19 = v12;
    v20 = v41;
    v21 = 24;
LABEL_10:
    _os_log_impl(&dword_1C928A000, v19, v20, v18, buf, v21);

LABEL_64:
    goto LABEL_65;
  }

  v28 = v27;
  if ([(BMFrameStore *)self atomicReadFourByteValueAtAddress:&v27->var0.var0.var0.var1 + 4]!= 4)
  {
LABEL_45:
    v26 = v11;
    if ((v2 & 8) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_50;
  }

  ++v28;
  if ((v2 & 8) == 0 || v26 != v22)
  {
    v11 = (v11 - 1);
    goto LABEL_45;
  }

  LODWORD(v22) = v11 - 2;
  if (v11 - 2 < 0)
  {
    goto LABEL_65;
  }

  v24 += 16;
LABEL_50:
  while (![(BMFrameStore *)self atomicReadEightByteValueAtAddress:v24])
  {
    v24 += 16;
    v77 = v22 <= 0;
    LODWORD(v22) = v22 - 1;
    if (v77)
    {
      goto LABEL_65;
    }
  }

LABEL_46:
  if (v26)
  {
    while (![(BMFrameStore *)self atomicReadEightByteValueAtAddress:v28])
    {
      ++v28;
      v26 = (v26 - 1);
      if (!v26)
      {
        goto LABEL_65;
      }
    }

    v43 = (v28->var0.var0.var0.var0.var0 + 3) & 0xFFFFFFFC;
    if ([(BMFrameStore *)self frameStoreSize]< v43)
    {
      v12 = __biome_log_for_category();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      buf[24] = 16;
      v145[0] = MEMORY[0x1E69E9820];
      v145[1] = 3221225472;
      v145[2] = __65__BMFrameStore_V2__enumerateWithOptionsV2_fromOffset_usingBlock___block_invoke_48;
      v145[3] = &unk_1E8338B28;
      v145[4] = buf;
      if (enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_47 != -1)
      {
        dispatch_once(&enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_47, v145);
      }

      v44 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (!os_log_type_enabled(v12, v44))
      {
        goto LABEL_64;
      }

      frameStoreSize2 = [(BMFrameStore *)self frameStoreSize];
      v46 = MEMORY[0x1E698E9C8];
      segmentPath2 = [(BMFrameStore *)self segmentPath];
      v36 = [v46 privacyPathname:segmentPath2];
      *buf = 67109634;
      *&buf[4] = v43;
      *&buf[8] = 2048;
      *&buf[10] = frameStoreSize2;
      *&buf[18] = 2114;
      *&buf[20] = v36;
      v37 = "enumerateWithOptions: byteAfterLastFramesDataAtEnumerationStart: %u is larger than the segmentSize: %zu in segment: %{public}@";
      v38 = v12;
      v39 = v44;
      v40 = 28;
      goto LABEL_39;
    }

    v47 = [(BMFrameStore *)self offsetTableOffsetFromFrameNumberV2:(v26 - 1)];
    if (v47 < v43)
    {
      v48 = v47;
      v12 = __biome_log_for_category();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      buf[24] = 16;
      v144[0] = MEMORY[0x1E69E9820];
      v144[1] = 3221225472;
      v144[2] = __65__BMFrameStore_V2__enumerateWithOptionsV2_fromOffset_usingBlock___block_invoke_50;
      v144[3] = &unk_1E8338B28;
      v144[4] = buf;
      if (enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_49 != -1)
      {
        dispatch_once(&enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_49, v144);
      }

      v49 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (os_log_type_enabled(v12, v49))
      {
        v50 = MEMORY[0x1E698E9C8];
        segmentPath4 = [(BMFrameStore *)self segmentPath];
        v52 = [v50 privacyPathname:segmentPath4];
        *buf = 67109634;
        *&buf[4] = v43;
        *&buf[8] = 1024;
        *&buf[10] = v48;
        *&buf[14] = 2114;
        *&buf[16] = v52;
        _os_log_impl(&dword_1C928A000, v12, v49, "enumerateWithOptions: byteAfterLastFramesDataAtEnumerationStart: %u is beyond the offset for the last table offset entry %u in segment: %{public}@", buf, 0x18u);
      }

      goto LABEL_64;
    }

    v143 = 0;
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    [distantPast timeIntervalSinceReferenceDate];
    v56 = v55;

    if (![(BMFrameStore *)self permission]&& [(BMFrameStore *)self pruneOnAccess]&& [(BMFrameStore *)self filterByAgeOnRead]&& ([(BMFrameStore *)self maxAge], v57 > 0.0))
    {
      Current = CFAbsoluteTimeGetCurrent();
      [(BMFrameStore *)self maxAge];
      v56 = Current - v59;
      v117 = 1;
    }

    else
    {
      v117 = 0;
    }

    v127 = v43;
    v123 = v43 - 1;
    v60 = v22 - 1;
    if ((v2 & 8) != 0)
    {
      v61 = -16;
    }

    else
    {
      v61 = 16;
    }

    v62 = -16;
    if ((v2 & 8) != 0)
    {
      v62 = 16;
      v63 = -1;
    }

    else
    {
      v63 = 1;
    }

    if ((v2 & 8) != 0)
    {
      v60 = v22 + 1;
    }

    v64 = v60 + v63;
    v124 = v63;
    v65 = v60 + 2 * v63;
    v125 = v62;
    v129 = v24 + 2 * v62;
    v131 = v24 + v62;
    v135 = v24 + v62;
    v126 = v61;
    do
    {
      v130 = v65;
      context = objc_autoreleasePoolPush();
      if ((v64 & 0x80000000) != 0 || v64 >= v26)
      {
LABEL_161:
        objc_autoreleasePoolPop(context);
        break;
      }

      v134 = v64;
      if (v64)
      {
        v66 = *(v135 + v61 + 16);
        v67 = (v66 + 3) & 0xFFFFFFFC;
        if (v123 < v67)
        {
          if (v67 == v127)
          {
            goto LABEL_161;
          }

          v68 = __biome_log_for_category();
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          buf[24] = 16;
          v142[0] = MEMORY[0x1E69E9820];
          v142[1] = 3221225472;
          v142[2] = __65__BMFrameStore_V2__enumerateWithOptionsV2_fromOffset_usingBlock___block_invoke_52;
          v142[3] = &unk_1E8338B28;
          v142[4] = buf;
          if (enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_51 != -1)
          {
            dispatch_once(&enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_51, v142);
          }

          v69 = *(*&buf[8] + 24);
          _Block_object_dispose(buf, 8);
          if (os_log_type_enabled(v68, v69))
          {
            v70 = MEMORY[0x1E698E9C8];
            segmentPath5 = [(BMFrameStore *)self segmentPath];
            v72 = [v70 privacyPathname:segmentPath5];
            *buf = 67109890;
            *&buf[4] = (v66 + 3) & 0xFFFFFFFC;
            *&buf[8] = 1024;
            *&buf[10] = v127;
            *&buf[14] = 1024;
            *&buf[16] = v26;
            *&buf[20] = 2112;
            *&buf[22] = v72;
            _os_log_impl(&dword_1C928A000, v68, v69, "enumerateWithOptions: offset (%u) beyond the space used:%u by the currentFrameCount:%d  segment:%@", buf, 0x1Eu);
          }

          v61 = v126;
          v67 = (v66 + 3) & 0xFFFFFFFC;
          if ((v2 & 8) == 0)
          {
            goto LABEL_157;
          }
        }
      }

      else
      {
        v66 = 0;
        v67 = 0;
      }

      v73 = v135 + v61 + 4;
      v132 = v67;
      v74 = *(v135 + v61) - v67;
      v75 = [(BMFrameStore *)self atomicReadFourByteValueAtAddress:v73];
      v76 = v75;
      if (v127)
      {
        v77 = v74 > v127;
      }

      else
      {
        v77 = 0;
      }

      v78 = v77;
      if (v66)
      {
        v79 = 1;
      }

      else
      {
        v79 = v134 == 0;
      }

      if (!v79 || v78)
      {
        v81 = __biome_log_for_category();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        buf[24] = 16;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __65__BMFrameStore_V2__enumerateWithOptionsV2_fromOffset_usingBlock___block_invoke_54;
        block[3] = &unk_1E8338B28;
        block[4] = buf;
        if (enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_53 != -1)
        {
          dispatch_once(&enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_53, block);
        }

        v82 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);
        if (os_log_type_enabled(v81, v82))
        {
          v83 = MEMORY[0x1E698E9C8];
          [(BMFrameStore *)self segmentPath];
          v84 = loga = v81;
          v85 = [v83 privacyPathname:v84];
          *buf = 67110402;
          *&buf[4] = v132;
          *&buf[8] = 1024;
          *&buf[10] = v127;
          *&buf[14] = 1024;
          *&buf[16] = v26;
          *&buf[20] = 1024;
          *&buf[22] = v76;
          *&buf[26] = 1024;
          *&buf[28] = v66;
          *&buf[32] = 2112;
          *&buf[34] = v85;
          _os_log_impl(&dword_1C928A000, loga, v82, "enumerateWithOptions: offset (%u) beyond the space used:%u by the currentFrameCount:%d, state:%d prevOffsetToByteAFterFrame:%d  segment:%@", buf, 0x2Au);

          v81 = loga;
        }

LABEL_115:
        v61 = v126;
LABEL_116:

        goto LABEL_157;
      }

      if (v75 > 2)
      {
        v80 = v132;
        switch(v75)
        {
          case 3:
            if ((v2 & 1) == 0)
            {
              goto LABEL_157;
            }

            goto LABEL_135;
          case 4:
            goto LABEL_134;
          case 5:
            v86 = __biome_log_for_category();
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            buf[24] = 16;
            v140[0] = MEMORY[0x1E69E9820];
            v140[1] = 3221225472;
            v140[2] = __65__BMFrameStore_V2__enumerateWithOptionsV2_fromOffset_usingBlock___block_invoke_56;
            v140[3] = &unk_1E8338B28;
            v140[4] = buf;
            if (enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_55 != -1)
            {
              dispatch_once(&enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_55, v140);
            }

            v87 = *(*&buf[8] + 24);
            _Block_object_dispose(buf, 8);
            if (os_log_type_enabled(v86, v87))
            {
              v88 = MEMORY[0x1E698E9C8];
              segmentPath6 = [(BMFrameStore *)self segmentPath];
              v90 = [v88 privacyPathname:segmentPath6];
              *buf = 67109378;
              *&buf[4] = v132;
              *&buf[8] = 2114;
              *&buf[10] = v90;
              _os_log_impl(&dword_1C928A000, v86, v87, "Found frame with state: BMFrameStateUnknown at offset:%u in segment: %{public}@", buf, 0x12u);
            }

            v61 = v126;
            v81 = v86;
            goto LABEL_116;
        }

LABEL_127:
        v81 = __biome_log_for_category();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        buf[24] = 16;
        v139[0] = MEMORY[0x1E69E9820];
        v139[1] = 3221225472;
        v139[2] = __65__BMFrameStore_V2__enumerateWithOptionsV2_fromOffset_usingBlock___block_invoke_58;
        v139[3] = &unk_1E8338B28;
        v139[4] = buf;
        if (enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_57 != -1)
        {
          dispatch_once(&enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_57, v139);
        }

        v91 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);
        if (os_log_type_enabled(v81, v91))
        {
          _printablePathV2 = [(BMFrameStore *)self _printablePathV2];
          *buf = 67110402;
          *&buf[4] = v76;
          *&buf[8] = 1024;
          *&buf[10] = v134;
          *&buf[14] = 2114;
          *&buf[16] = _printablePathV2;
          *&buf[24] = 1024;
          *&buf[26] = v132;
          *&buf[30] = 1024;
          *&buf[32] = v74;
          *&buf[36] = 1024;
          *&buf[38] = (v2 & 8) >> 3;
          _os_log_impl(&dword_1C928A000, v81, v91, "Unrecognized frame state: %d, frame number:%d, segment:%{public}@ offset:%u frame size:%u reverse:%d", buf, 0x2Au);
        }

        goto LABEL_115;
      }

      v80 = v132;
      if (v75)
      {
        if (v75 == 1)
        {
          if (v117)
          {
            v93 = *(v135 + v61 + 8);
            if ((v2 & 8) != 0 && v93 < v56)
            {
LABEL_134:
              v143 = 1;
            }

            else if (v93 < v56)
            {
              goto LABEL_157;
            }
          }

LABEL_135:
          if (v143)
          {
            goto LABEL_161;
          }

          v94 = v74;
          v95 = v80;
          log = [(BMFrameStore *)self atomicReadFourByteValueAtAddress:v73];
          v138 = 0;
          frames2 = [(BMFrameStore *)self frames];
          v97 = [frames2 start] + v95;

          v98 = v97;
          v137 = 0;
          if (log == 1)
          {
            v99 = &v138;
          }

          else
          {
            v99 = 0;
          }

          LOBYTE(v115) = log == 1;
          if ([(BMFrameStore *)self isValidFrameV2:v97 currentFrame:v134 expectedState:1 copyOfData:v99 frameState:log frameSize:v94 validations:v115 enumerationOptions:v2 errorCode:&v137])
          {
            frames3 = [(BMFrameStore *)self frames];
            start = [frames3 start];

            if ((v130 & 0x80000000) != 0 || v130 > v26)
            {
              if ((v2 & 8) != 0)
              {
                v109 = 4294967294;
              }

              else
              {
                v109 = [(BMFrameStore *)self offsetTableOffsetFromFrameNumberV2:v26];
              }

              v133 = v109;
              v102 = v126;
            }

            else
            {
              v102 = v126;
              v133 = v126 + v129 - start;
            }

            v120 = v102 + v131 - start;
            v118 = *v98;
            v119 = [BMFrame alloc];
            backingFile = [(BMFrameStore *)self backingFile];
            attributes = [backingFile attributes];
            path = [attributes path];
            v113 = *(v135 + v102 + 8);
            *buf = v118;
            memset(&buf[8], 0, 24);
            LODWORD(v116) = log;
            v103 = [(BMFrame *)v119 initWithHeader:buf storePath:path data:v138 framePtr:v135 + v102 offset:v120 nextOffset:v133 timestamp:v113 datastoreVersion:10 state:v116];

            v114 = v138;
            v138 = 0;

            blockCopy[2](blockCopy, v103, &v143);
            v61 = v102;
            goto LABEL_155;
          }

          v61 = v126;
          if (v137 != 5 || [(BMFrameStore *)self atomicReadFourByteValueAtAddress:v73]== 1)
          {
            v103 = __biome_log_for_category();
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            buf[24] = 16;
            v136[0] = MEMORY[0x1E69E9820];
            v136[1] = 3221225472;
            v136[2] = __65__BMFrameStore_V2__enumerateWithOptionsV2_fromOffset_usingBlock___block_invoke_60;
            v136[3] = &unk_1E8338B28;
            v136[4] = buf;
            if (enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_59 != -1)
            {
              dispatch_once(&enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_59, v136);
            }

            v104 = *(*&buf[8] + 24);
            _Block_object_dispose(buf, 8);
            if (os_log_type_enabled(v103, v104))
            {
              v105 = v137;
              v106 = MEMORY[0x1E698E9C8];
              segmentPath7 = [(BMFrameStore *)self segmentPath];
              v108 = [v106 privacyPathname:segmentPath7];
              *buf = 67109890;
              *&buf[4] = v105;
              *&buf[8] = 1024;
              *&buf[10] = v134;
              *&buf[14] = 1024;
              *&buf[16] = v132;
              *&buf[20] = 2114;
              *&buf[22] = v108;
              _os_log_impl(&dword_1C928A000, v103, v104, "isValidFrame returned a %d error for frame number:%d at offset %u, skipping frame in segment: %{public}@", buf, 0x1Eu);
            }

            v61 = v126;
LABEL_155:
          }

          goto LABEL_157;
        }

        if (v75 == 2)
        {
          if ((v2 & 2) == 0)
          {
            goto LABEL_157;
          }

          goto LABEL_135;
        }

        goto LABEL_127;
      }

LABEL_157:
      objc_autoreleasePoolPop(context);
      v64 = v134 + v124;
      v65 = v130 + v124;
      v135 += v125;
      v131 += v125;
      v129 += v125;
    }

    while (!v143);
  }

LABEL_65:

  v53 = *MEMORY[0x1E69E9840];
}

- (void)updateToMaxOfValueAtOffset:(unsigned int)offset newValue:(int)value
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(BMFrameStore *)self datastoreVersion]== 10)
  {
    header = [(BMFrameStore *)self header];
    start = [header start];

    v9 = atomic_load((start + offset));
    if (v9 < value)
    {
      v10 = v9;
      do
      {
        atomic_compare_exchange_strong((start + offset), &v10, value);
        if (v10 == v9)
        {
          break;
        }

        v9 = v10;
      }

      while (v10 < value);
    }
  }

  else
  {
    v11 = __biome_log_for_category();
    *buf = 0;
    v17 = buf;
    v18 = 0x2020000000;
    v19 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__BMFrameStore_V2__updateToMaxOfValueAtOffset_newValue___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (updateToMaxOfValueAtOffset_newValue__onceToken != -1)
    {
      dispatch_once(&updateToMaxOfValueAtOffset_newValue__onceToken, block);
    }

    v12 = v17[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v11, v12))
    {
      datastoreVersion = [(BMFrameStore *)self datastoreVersion];
      *buf = 67109120;
      *&buf[4] = datastoreVersion;
      _os_log_impl(&dword_1C928A000, v11, v12, "updateToMaxOfValueAtOffset called with unexpected datastoreVersion:%d", buf, 8u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)addToValueAtOffset:(unsigned int)offset increment:(unsigned int)increment
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(BMFrameStore *)self datastoreVersion]== 10)
  {
    header = [(BMFrameStore *)self header];
    start = [header start];

    v9 = atomic_load((start + offset));
    if (increment)
    {
      v10 = v9;
      do
      {
        atomic_compare_exchange_strong((start + offset), &v10, v9 + increment);
        v11 = v10 == v9;
        v9 = v10;
      }

      while (!v11);
    }
  }

  else
  {
    v12 = __biome_log_for_category();
    *buf = 0;
    v18 = buf;
    v19 = 0x2020000000;
    v20 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__BMFrameStore_V2__addToValueAtOffset_increment___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (addToValueAtOffset_increment__onceToken != -1)
    {
      dispatch_once(&addToValueAtOffset_increment__onceToken, block);
    }

    v13 = v18[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v12, v13))
    {
      datastoreVersion = [(BMFrameStore *)self datastoreVersion];
      *buf = 67109120;
      *&buf[4] = datastoreVersion;
      _os_log_impl(&dword_1C928A000, v12, v13, "addToValueAtOffset called with unexpected datastoreVersion:%d", buf, 8u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (unsigned)determineFrameNumberToBeWritten:(unsigned int *)written
{
  v26 = *MEMORY[0x1E69E9840];
  if (!written)
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore(V2) determineFrameNumberToBeWritten:?];
    }

    goto LABEL_19;
  }

  atomicReadTotalFramesV2 = [(BMFrameStore *)self atomicReadTotalFramesV2];
  if (!atomicReadTotalFramesV2)
  {
    *written = 0;
    goto LABEL_25;
  }

  v6 = atomicReadTotalFramesV2;
  v7 = atomicReadTotalFramesV2 - 1;
  v8 = [(BMFrameStore *)self offsetTablePtrFromFrameNumberV2:v7];
  if (!v8)
  {
    v14 = __biome_log_for_category();
    *buf = 0;
    *&v24 = buf;
    *(&v24 + 1) = 0x2020000000;
    v25 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__BMFrameStore_V2__determineFrameNumberToBeWritten___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (determineFrameNumberToBeWritten__onceToken != -1)
    {
      dispatch_once(&determineFrameNumberToBeWritten__onceToken, block);
    }

    v15 = *(v24 + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = MEMORY[0x1E698E9C8];
      segmentPath = [(BMFrameStore *)self segmentPath];
      v18 = [v16 privacyPathname:segmentPath];
      *buf = 67109378;
      *&buf[4] = v7;
      LOWORD(v24) = 2114;
      *(&v24 + 2) = v18;
      _os_log_impl(&dword_1C928A000, v14, v15, "determineFrameNumberToBeWritten: offsetTableEntryPtr:NULL outside of range for frames, frameNumber=%d for segment: %{public}@", buf, 0x12u);
    }

LABEL_19:
    LOBYTE(atomicReadTotalFramesV2) = 1;
    goto LABEL_25;
  }

  if ((v7 & 0x80000000) != 0)
  {
LABEL_21:
    *written = v7 + 1;
    if (v7 + 1 != v6)
    {
      *buf = v6;
      header = [(BMFrameStore *)self header];
      [header atomicWriteFourBytes:*written toOffset:4 expected:buf];
    }

    LOBYTE(atomicReadTotalFramesV2) = 0;
  }

  else
  {
    v9 = v8;
    v10 = v6;
    while (1)
    {
      v11 = [(BMFrameStore *)self atomicReadSixteenByteValueAtAddress:v9];
      if (HIDWORD(v11) == 4)
      {
        break;
      }

      if (v11 | v12)
      {
        v7 = v10 - 1;
        if ([(BMFrameStore *)self validOffsetTableEntry:v11 frameNumber:v12, v7])
        {
          goto LABEL_21;
        }

        break;
      }

      ++v9;
      if (--v10 <= 0)
      {
        LODWORD(v7) = -1;
        goto LABEL_21;
      }
    }

    LOBYTE(atomicReadTotalFramesV2) = 2;
  }

LABEL_25:
  v20 = *MEMORY[0x1E69E9840];
  return atomicReadTotalFramesV2;
}

- (unsigned)validateOrUpdateTimestamp:(double *)timestamp frameNumberToBeWritten:(unsigned int)written
{
  v48 = *MEMORY[0x1E69E9840];
  if (!written)
  {
    goto LABEL_23;
  }

  v6 = written - 1;
  v7 = [(BMFrameStore *)self offsetTablePtrFromFrameNumberV2:written - 1];
  if (!v7)
  {
    v15 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v41) = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__BMFrameStore_V2__validateOrUpdateTimestamp_frameNumberToBeWritten___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (validateOrUpdateTimestamp_frameNumberToBeWritten__onceToken != -1)
    {
      dispatch_once(&validateOrUpdateTimestamp_frameNumberToBeWritten__onceToken, block);
    }

    v16 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = MEMORY[0x1E698E9C8];
      segmentPath = [(BMFrameStore *)self segmentPath];
      v19 = [v17 privacyPathname:segmentPath];
      *buf = 67109378;
      *&buf[4] = v6;
      *&buf[8] = 2114;
      *&buf[10] = v19;
      _os_log_impl(&dword_1C928A000, v15, v16, "validateOrUpdateTimestamp: offsetTableEntryPtr:NULL outside of range for frames, frameNumber=%d for segment: %{public}@", buf, 0x12u);
    }

    goto LABEL_19;
  }

  v8 = v7;
  if ([(BMFrameStore *)self atomicReadFourByteValueAtAddress:&v7->var0.var0.var0.var1 + 4]== 4)
  {
LABEL_19:
    result = 2;
    goto LABEL_24;
  }

  [(BMFrameStore *)self atomicReadDoubleByteValueAtAddress:&v8->var0.var0.var1];
  v10 = v9;
  if (*timestamp >= v9)
  {
LABEL_23:
    result = 0;
    goto LABEL_24;
  }

  if ([(BMFrameStore *)self isRemoteSegment]&& ![(BMFrameStore *)self isTombstoneSegment])
  {
    v20 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v20 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v31 = *timestamp;
      v32 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:*timestamp];
      v33 = [v20 stringFromDate:v32];
      v34 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v10];
      v35 = [v20 stringFromDate:v34];
      v36 = MEMORY[0x1E698E9C8];
      segmentPath2 = [(BMFrameStore *)self segmentPath];
      v38 = [v36 privacyPathname:segmentPath2];
      *buf = 136316418;
      *&buf[4] = "[BMFrameStore(V2) validateOrUpdateTimestamp:frameNumberToBeWritten:]";
      *&buf[12] = 2048;
      *&buf[14] = v31;
      *&buf[22] = 2048;
      v41 = v10;
      v42 = 2112;
      v43 = v33;
      v44 = 2112;
      v45 = v35;
      v46 = 2114;
      v47 = v38;
      _os_log_error_impl(&dword_1C928A000, v21, OS_LOG_TYPE_ERROR, "[%s] WARNING (remote data) frame should come in chronological order. Input %f < last %f, (%@ < %@) segment:%{public}@", buf, 0x3Eu);
    }

    goto LABEL_23;
  }

  if (v10 - *timestamp >= 3.0)
  {
    goto LABEL_11;
  }

  v11 = CFAbsoluteTimeGetCurrent() - *timestamp;
  if (v11 < 0.0)
  {
    v11 = -v11;
  }

  if (v11 <= 60.0)
  {
    result = 0;
    *timestamp = v10 + 0.0000001;
  }

  else
  {
LABEL_11:
    v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v12 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v23 = *timestamp;
      v24 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:*timestamp];
      v25 = [v12 stringFromDate:v24];
      v26 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v10];
      v27 = [v12 stringFromDate:v26];
      v28 = MEMORY[0x1E698E9C8];
      segmentPath3 = [(BMFrameStore *)self segmentPath];
      v30 = [v28 privacyPathname:segmentPath3];
      *buf = 136316418;
      *&buf[4] = "[BMFrameStore(V2) validateOrUpdateTimestamp:frameNumberToBeWritten:]";
      *&buf[12] = 2048;
      *&buf[14] = v23;
      *&buf[22] = 2048;
      v41 = v10;
      v42 = 2112;
      v43 = v25;
      v44 = 2112;
      v45 = v27;
      v46 = 2114;
      v47 = v30;
      _os_log_error_impl(&dword_1C928A000, v13, OS_LOG_TYPE_ERROR, "[%s] Frame should come in chronological order. Input %f < last %f, (%@ < %@) segment:%{public}@", buf, 0x3Eu);
    }

    result = 1;
  }

LABEL_24:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)reserveSpaceAndAssignAnOffsetTableEntryForTimestamp:(double)timestamp state:(unsigned int)state length:(unsigned int)length outFrameNumber:(unsigned int *)number
{
  LODWORD(v8) = state;
  v41 = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  if ([(BMFrameStore *)self datastoreVersion]!= 10)
  {
    v27 = __biome_log_for_category();
    *buf = 0;
    v38 = COERCE_DOUBLE(buf);
    v39 = 0x2020000000;
    v40 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__BMFrameStore_V2__reserveSpaceAndAssignAnOffsetTableEntryForTimestamp_state_length_outFrameNumber___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (reserveSpaceAndAssignAnOffsetTableEntryForTimestamp_state_length_outFrameNumber__onceToken != -1)
    {
      dispatch_once(&reserveSpaceAndAssignAnOffsetTableEntryForTimestamp_state_length_outFrameNumber__onceToken, block);
    }

    v28 = *(*&v38 + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v27, v28))
    {
      datastoreVersion = [(BMFrameStore *)self datastoreVersion];
      *buf = 67109120;
      *&buf[4] = datastoreVersion;
      _os_log_impl(&dword_1C928A000, v27, v28, "reserveSpaceAndAssignAnOffsetTableEntryForTimestamp called with unexpected dataVersion:%d", buf, 8u);
    }

LABEL_36:
    LOBYTE(v11) = 1;
    goto LABEL_37;
  }

  if (!number)
  {
    v26 = __biome_log_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore(V2) reserveSpaceAndAssignAnOffsetTableEntryForTimestamp:state:length:outFrameNumber:];
    }

LABEL_35:

    goto LABEL_36;
  }

  v34 = -1;
  v11 = [(BMFrameStore *)self determineFrameNumberToBeWritten:&v34];
  if (!v11)
  {
    v11 = [(BMFrameStore *)self validateOrUpdateTimestamp:&timestampCopy frameNumberToBeWritten:v34];
    if (!v11)
    {
      v12 = [(BMFrameStore *)self offsetOfFrameV2:v34];
      v13 = timestampCopy - timestamp;
      if (timestampCopy - timestamp > 3.0)
      {
LABEL_26:
        v26 = __biome_log_for_category();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [BMFrameStore(V2) reserveSpaceAndAssignAnOffsetTableEntryForTimestamp:? state:? length:? outFrameNumber:?];
        }

        goto LABEL_35;
      }

      v14 = v12;
      v15 = 0;
      v16 = timestampCopy;
      while (1)
      {
        frames = [(BMFrameStore *)self frames];
        v18 = [frames isValidReadFromOffsetV2:v14 withLength:(length + 3) & 0xFFFFFFFC currentFrameCount:v34];

        if (v18)
        {
          v19 = v8 == 4;
          if (v8 == 4)
          {
            v8 = 4;
          }

          else
          {
            v8 = v8;
          }

          if (!v19)
          {
            v15 = v14 + length + 8;
          }
        }

        else
        {
          frames2 = [(BMFrameStore *)self frames];
          v21 = [frames2 isValidReadFromOffsetV2:v14 withLength:0 currentFrameCount:v34];

          if ((v21 & 1) == 0)
          {
            v31 = __biome_log_for_category();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              [BMFrameStore(V2) reserveSpaceAndAssignAnOffsetTableEntryForTimestamp:state:length:outFrameNumber:];
            }

LABEL_43:
            LOBYTE(v11) = 2;
            break;
          }

          v15 = 0;
          length = 0;
          v8 = 4;
        }

        v22 = v34 + 1;
        *buf = 0;
        v38 = 0.0;
        frames3 = [(BMFrameStore *)self frames];
        frames4 = [(BMFrameStore *)self frames];
        v25 = [frames3 atomicWriteSixteenBytes:v15 | (v8 << 32) toOffset:*&v16 expected:{objc_msgSend(frames4, "size") - 16 * v22, buf}];

        if (v25 <= 1)
        {
          if (!v25)
          {
            goto LABEL_38;
          }

          if (v25 == 1)
          {
            v32 = v34;
            *number = v34;
            v34 = v32 + 1;
            [(BMFrameStore *)self updateToMaxOfTotalFramesAnd:?];
            LOBYTE(v11) = 2 * (v8 == 4);
            break;
          }
        }

        else if (v25 == 2)
        {
          if (*&buf[4] == 4)
          {
            goto LABEL_43;
          }
        }

        else if (v25 == 3)
        {
LABEL_38:
          v26 = __biome_log_for_category();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [BMFrameStore(V2) reserveSpaceAndAssignAnOffsetTableEntryForTimestamp:state:length:outFrameNumber:];
          }

          goto LABEL_35;
        }

        ++v34;
        if (v16 < v38)
        {
          v16 = v38;
        }

        v14 = (*buf + 3) & 0xFFFFFFFC;
        v13 = timestampCopy - timestamp;
        if (timestampCopy - timestamp > 3.0)
        {
          goto LABEL_26;
        }
      }
    }
  }

LABEL_37:
  v30 = *MEMORY[0x1E69E9840];
  return v11;
}

- (unsigned)checkBoundsLength:(unint64_t)length
{
  v20 = *MEMORY[0x1E69E9840];
  if (length >> 31)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore(V2) checkBoundsLength:];
    }

LABEL_20:
    v5 = 1;
LABEL_21:

    goto LABEL_22;
  }

  if (!length)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:];
    }

    goto LABEL_20;
  }

  if (((length + 3) & 0xFFFFFFFC) + 56 > [(BMFrameStore *)self frameStoreSize])
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:];
    }

    v5 = 3;
    goto LABEL_21;
  }

  header = [(BMFrameStore *)self header];
  start = [header start];

  if (!start)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:];
    }

    goto LABEL_20;
  }

  if (*(start + 16) != 10)
  {
    v3 = __biome_log_for_category();
    *buf = 0;
    v17 = buf;
    v18 = 0x2020000000;
    v19 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__BMFrameStore_V2__checkBoundsLength___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (checkBoundsLength__onceToken != -1)
    {
      dispatch_once(&checkBoundsLength__onceToken, block);
    }

    v8 = v17[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v3, v8))
    {
      v9 = *(start + 16);
      v10 = MEMORY[0x1E698E9C8];
      segmentPath = [(BMFrameStore *)self segmentPath];
      v12 = [v10 privacyPathname:segmentPath];
      *buf = 67109634;
      *&buf[4] = 10;
      LOWORD(v17) = 1024;
      *(&v17 + 2) = v9;
      HIWORD(v17) = 2114;
      v18 = v12;
      _os_log_impl(&dword_1C928A000, v3, v8, "Segment is the wrong version, expected: %d, found %d in segment: %{public}@", buf, 0x18u);
    }

    goto LABEL_20;
  }

  v5 = 0;
LABEL_22:
  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)updateHighestDeletedFrame:(id)frame
{
  frameCopy = frame;
  if ([(BMFrameStore *)self datastoreVersion]== 10)
  {
    framePtr = [frameCopy framePtr];
    frames = [(BMFrameStore *)self frames];
    v6 = framePtr - [frames start];

    [(BMFrameStore *)self updateToMaxOfHighestDeletedFrameAnd:[(BMFrameStore *)self frameNumberFromOffsetToOffsetTableEntryV2:v6]];
  }
}

- (void)markFrameAsRemovedV2:(id)v2
{
  v20 = *MEMORY[0x1E69E9840];
  v2Copy = v2;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  framePtr = [v2Copy framePtr];
  v7 = *framePtr;
  v8 = *framePtr | 0x200000000;
  v9 = *framePtr;
  atomic_compare_exchange_strong(framePtr, &v9, v8);
  if (v9 == v7)
  {
    v10 = [(BMFrameStore *)selfCopy eraseFrameAtOffsetTableV2:framePtr];
    if (v10)
    {
      v11 = __biome_log_for_category();
      *buf = 0;
      v17 = buf;
      v18 = 0x2020000000;
      v19 = 16;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __41__BMFrameStore_V2__markFrameAsRemovedV2___block_invoke;
      block[3] = &unk_1E8338B28;
      block[4] = buf;
      if (markFrameAsRemovedV2__onceToken != -1)
      {
        dispatch_once(&markFrameAsRemovedV2__onceToken, block);
      }

      v12 = v17[24];
      _Block_object_dispose(buf, 8);
      if (os_log_type_enabled(v11, v12))
      {
        *buf = 67240192;
        *&buf[4] = v10;
        _os_log_impl(&dword_1C928A000, v11, v12, "Failed to zero out memory. %{public, darwin.errno}d", buf, 8u);
      }
    }

    else
    {
      v14 = v8;
      atomic_compare_exchange_strong(framePtr, &v14, v7 | 0x300000000);
      if (v14 == v8)
      {
        goto LABEL_10;
      }

      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [BMFrameStore markFrameAsRemovedV1:];
      }
    }
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore markFrameAsRemovedV1:];
    }
  }

LABEL_10:
  objc_sync_exit(selfCopy);

  v13 = *MEMORY[0x1E69E9840];
}

- (uint64_t)sizeToNextWord:(uint64_t)result
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (*(result + 28) != 9)
    {
      v4 = __biome_log_for_category();
      *buf = 0;
      v10 = buf;
      v11 = 0x2020000000;
      v12 = 16;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __31__BMFrameStore_sizeToNextWord___block_invoke;
      block[3] = &unk_1E8338B28;
      block[4] = buf;
      if (sizeToNextWord__onceToken != -1)
      {
        dispatch_once(&sizeToNextWord__onceToken, block);
      }

      v5 = v10[24];
      _Block_object_dispose(buf, 8);
      if (os_log_type_enabled(v4, v5))
      {
        v6 = *(v3 + 28);
        *buf = 67109120;
        *&buf[4] = v6;
        _os_log_impl(&dword_1C928A000, v4, v5, "sizeToNextWord called with unexpected dataVersion:%d", buf, 8u);
      }
    }

    result = (a2 + 7) & 0xFFFFFFF8;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)getSegmentHeader:fromFileV1:fileSize:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v10 = *MEMORY[0x1E69E9840];
  v2 = [v1 attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_5_0() privacyPathname:?];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)getSegmentHeader:(void *)a1 fromFileV1:fileSize:.cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [a1 attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_2_1() privacyPathname:?];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)getSegmentHeader:(_DWORD *)a1 fromFileV1:(void *)a2 fileSize:(NSObject *)a3 .cold.3(_DWORD *a1, void *a2, NSObject *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = MEMORY[0x1E698E9C8];
  v7 = [a2 attributes];
  v8 = [v7 path];
  v9 = [v6 privacyPathname:v8];
  v11[0] = 68290050;
  v11[1] = 4;
  v12 = 2082;
  v13 = a1;
  v14 = 1024;
  v15 = v5;
  v16 = 2114;
  v17 = v9;
  v18 = 1042;
  v19 = 4;
  v20 = 2082;
  v21 = "SEGB";
  _os_log_error_impl(&dword_1C928A000, a3, OS_LOG_TYPE_ERROR, "Segment header magic '%{public}.4s' (0x%04X) in file %{public}@ doesn't match expected magic '%{public}.4s'.", v11, 0x32u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)getSegmentHeader:fromFileV1:fileSize:.cold.4()
{
  OUTLINED_FUNCTION_1_1();
  v10 = *MEMORY[0x1E69E9840];
  v2 = [v1 attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_5_0() privacyPathname:?];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)getSegmentHeader:(void *)a1 fromFileV1:fileSize:.cold.5(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [a1 attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_2_1() privacyPathname:?];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)getSegmentHeader:(void *)a1 fromFileV1:fileSize:.cold.6(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [a1 attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_2_1() privacyPathname:?];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)writeEmptyFrameStoreWithFileHandle:fileSize:datastoreVersion:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v10 = *MEMORY[0x1E69E9840];
  v2 = [v1 attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_5_0() privacyPathname:?];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)writeEmptyFrameStoreWithFileHandle:(void *)a1 fileSize:datastoreVersion:.cold.3(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [a1 attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_2_1() privacyPathname:?];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)writeEmptySegmentHeaderWithFileHandleV1:segmentHeaderSize:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)writeEmptySegmentHeaderWithFileHandleV1:(void *)a1 segmentHeaderSize:.cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [a1 attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_2_1() privacyPathname:?];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithFileHandleV1:permission:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithFileHandleV1:permission:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*v1 attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_5_0() privacyPathname:?];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithFileHandleV1:permission:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  v10 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E698E9C8];
  v2 = [v1 segmentPath];
  v3 = [v0 privacyPathname:v2];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithFileHandleV1:permission:.cold.4()
{
  OUTLINED_FUNCTION_1_1();
  v10 = *MEMORY[0x1E69E9840];
  v2 = [v1 _printablePath];
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithFileHandleV1:(uint64_t)a1 permission:.cold.5(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 64) attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_2_1() privacyPathname:?];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)frameWithOffsetV1:expectedState:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)frameWithOffsetV1:expectedState:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v7 = *MEMORY[0x1E69E9840];
  [*v0 size];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)frameWithOffsetV1:expectedState:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  v7 = *MEMORY[0x1E69E9840];
  [*v0 size];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (uint64_t)updateFrameStoreIndex
{
  OUTLINED_FUNCTION_1_1();
  lastObject = [*v2 lastObject];
  unsignedLongValue = [lastObject unsignedLongValue];

  LODWORD(lastObject) = atomic_load(unsignedLongValue);
  start = [*(v1 + 56) start];
  result = [(BMFrameStore *)v1 sizeToNextWord:lastObject];
  *v0 = unsignedLongValue + result - start + 32;
  return result;
}

- (void)enumerateWithOptionsV1:(uint64_t)a1 fromOffset:(uint64_t)a2 usingBlock:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BMFrameStore.m" lineNumber:925 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

- (void)writeFrameV1ForBytes:(os_log_t)log length:dataVersion:timestamp:outOffset:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1C928A000, log, OS_LOG_TYPE_DEBUG, "Unable to write frame for reason: %@", buf, 0xCu);
}

- (void)writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:.cold.3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:.cold.4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:.cold.5()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)markFrameAsRemovedV1:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)markFrameAsRemovedV1:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end