@interface FCKeyValueStoreWriter
- (BOOL)_moveTempFileToPath:(id)path;
- (BOOL)writeKVS:(id)s codables:(id)codables toFile:(id)file size:(unint64_t *)size;
- (FCKeyValueStoreWriter)init;
- (unint64_t)_flushToDisk;
- (unint64_t)_flushToDiskIfNeeded;
@end

@implementation FCKeyValueStoreWriter

- (FCKeyValueStoreWriter)init
{
  v6.receiver = self;
  v6.super_class = FCKeyValueStoreWriter;
  v2 = [(FCKeyValueStoreWriter *)&v6 init];
  if (v2)
  {
    if (qword_1EDB277A0 != -1)
    {
      dispatch_once(&qword_1EDB277A0, &__block_literal_global_137);
    }

    objc_storeStrong(&v2->_dataWriter, _MergedGlobals_188);
    objc_storeStrong(&v2->_tempFilePath, qword_1EDB27798);
    v3 = [MEMORY[0x1E695DFC0] outputStreamToFileAtPath:qword_1EDB27798 append:0];
    tempFileOutputStream = v2->_tempFileOutputStream;
    v2->_tempFileOutputStream = v3;
  }

  return v2;
}

void __29__FCKeyValueStoreWriter_init__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  v1 = _MergedGlobals_188;
  _MergedGlobals_188 = v0;

  v8 = NSTemporaryDirectory();
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v5 = [v2 stringWithFormat:@"kvs-%@.tmp", v4];
  v6 = [v8 stringByAppendingPathComponent:v5];
  v7 = qword_1EDB27798;
  qword_1EDB27798 = v6;
}

- (unint64_t)_flushToDisk
{
  dataWriter = [(FCKeyValueStoreWriter *)self dataWriter];
  data = [dataWriter data];

  v5 = [data length];
  tempFileOutputStream = [(FCKeyValueStoreWriter *)self tempFileOutputStream];
  [tempFileOutputStream write:objc_msgSend(data maxLength:{"bytes"), v5}];

  dataWriter2 = [(FCKeyValueStoreWriter *)self dataWriter];
  data2 = [dataWriter2 data];
  [data2 setLength:0];

  return v5;
}

- (unint64_t)_flushToDiskIfNeeded
{
  dataWriter = [(FCKeyValueStoreWriter *)self dataWriter];
  data = [dataWriter data];
  v5 = [data length];
  if (qword_1EDB277B0 != -1)
  {
    dispatch_once(&qword_1EDB277B0, &__block_literal_global_38_2);
  }

  v6 = qword_1EDB277A8;

  if (v5 < v6)
  {
    return 0;
  }

  return [(FCKeyValueStoreWriter *)self _flushToDisk];
}

- (BOOL)writeKVS:(id)s codables:(id)codables toFile:(id)file size:(unint64_t *)size
{
  sCopy = s;
  codablesCopy = codables;
  fileCopy = file;
  v13 = FCPersistenceQueue();
  dispatch_assert_queue_V2(v13);

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  tempFileOutputStream = [(FCKeyValueStoreWriter *)self tempFileOutputStream];
  [tempFileOutputStream open];

  dataWriter = [(FCKeyValueStoreWriter *)self dataWriter];
  [sCopy version];
  PBDataWriterWriteInt64Field();

  dataWriter2 = [(FCKeyValueStoreWriter *)self dataWriter];
  [sCopy clientVersion];
  PBDataWriterWriteInt64Field();

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __55__FCKeyValueStoreWriter_writeKVS_codables_toFile_size___block_invoke;
  v25[3] = &unk_1E7C44AB0;
  v25[4] = self;
  v25[5] = &v26;
  [codablesCopy enumerateKeysAndObjectsUsingBlock:v25];
  plistSidecar = [sCopy plistSidecar];

  if (plistSidecar)
  {
    dataWriter3 = [(FCKeyValueStoreWriter *)self dataWriter];
    plistSidecar2 = [sCopy plistSidecar];
    PBDataWriterWriteDataField();
  }

  _flushToDisk = [(FCKeyValueStoreWriter *)self _flushToDisk];
  v27[3] += _flushToDisk;
  tempFileOutputStream2 = [(FCKeyValueStoreWriter *)self tempFileOutputStream];
  [tempFileOutputStream2 close];

  v22 = [(FCKeyValueStoreWriter *)self _moveTempFileToPath:fileCopy];
  v23 = !v22;
  if (!size)
  {
    v23 = 1;
  }

  if ((v23 & 1) == 0)
  {
    *size = v27[3];
  }

  _Block_object_dispose(&v26, 8);

  return v22;
}

void __55__FCKeyValueStoreWriter_writeKVS_codables_toFile_size___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [*(a1 + 32) dataWriter];
    PBDataWriterPlaceMark();

    v8 = [*(a1 + 32) dataWriter];
    PBDataWriterWriteStringField();

    v9 = [*(a1 + 32) dataWriter];
    [objc_opt_class() keyValuePairType];
    PBDataWriterWriteInt32Field();

    v10 = [*(a1 + 32) dataWriter];
    [v6 writeValueToDataWriter:v10];

    v11 = [*(a1 + 32) dataWriter];
    PBDataWriterRecallMark();
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = objc_alloc_init(MEMORY[0x1E69B6E70]);
    [v13 setKey:v5];
    [v6 writeToKeyValuePair:v13];
    v14 = [*(a1 + 32) dataWriter];
    PBDataWriterWriteSubmessage();

    objc_autoreleasePoolPop(v12);
  }

  *(*(*(a1 + 40) + 8) + 24) += [*(a1 + 32) _flushToDiskIfNeeded];
}

- (BOOL)_moveTempFileToPath:(id)path
{
  pathCopy = path;
  tempFilePath = [(FCKeyValueStoreWriter *)self tempFilePath];
  fileSystemRepresentation = [tempFilePath fileSystemRepresentation];
  fileSystemRepresentation2 = [pathCopy fileSystemRepresentation];

  rename(fileSystemRepresentation, fileSystemRepresentation2, v8);
  LODWORD(pathCopy) = v9;

  return pathCopy == 0;
}

@end