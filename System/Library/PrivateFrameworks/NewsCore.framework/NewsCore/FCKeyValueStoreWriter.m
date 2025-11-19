@interface FCKeyValueStoreWriter
- (BOOL)_moveTempFileToPath:(id)a3;
- (BOOL)writeKVS:(id)a3 codables:(id)a4 toFile:(id)a5 size:(unint64_t *)a6;
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
  v3 = [(FCKeyValueStoreWriter *)self dataWriter];
  v4 = [v3 data];

  v5 = [v4 length];
  v6 = [(FCKeyValueStoreWriter *)self tempFileOutputStream];
  [v6 write:objc_msgSend(v4 maxLength:{"bytes"), v5}];

  v7 = [(FCKeyValueStoreWriter *)self dataWriter];
  v8 = [v7 data];
  [v8 setLength:0];

  return v5;
}

- (unint64_t)_flushToDiskIfNeeded
{
  v3 = [(FCKeyValueStoreWriter *)self dataWriter];
  v4 = [v3 data];
  v5 = [v4 length];
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

- (BOOL)writeKVS:(id)a3 codables:(id)a4 toFile:(id)a5 size:(unint64_t *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = FCPersistenceQueue();
  dispatch_assert_queue_V2(v13);

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v14 = [(FCKeyValueStoreWriter *)self tempFileOutputStream];
  [v14 open];

  v15 = [(FCKeyValueStoreWriter *)self dataWriter];
  [v10 version];
  PBDataWriterWriteInt64Field();

  v16 = [(FCKeyValueStoreWriter *)self dataWriter];
  [v10 clientVersion];
  PBDataWriterWriteInt64Field();

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __55__FCKeyValueStoreWriter_writeKVS_codables_toFile_size___block_invoke;
  v25[3] = &unk_1E7C44AB0;
  v25[4] = self;
  v25[5] = &v26;
  [v11 enumerateKeysAndObjectsUsingBlock:v25];
  v17 = [v10 plistSidecar];

  if (v17)
  {
    v18 = [(FCKeyValueStoreWriter *)self dataWriter];
    v19 = [v10 plistSidecar];
    PBDataWriterWriteDataField();
  }

  v20 = [(FCKeyValueStoreWriter *)self _flushToDisk];
  v27[3] += v20;
  v21 = [(FCKeyValueStoreWriter *)self tempFileOutputStream];
  [v21 close];

  v22 = [(FCKeyValueStoreWriter *)self _moveTempFileToPath:v12];
  v23 = !v22;
  if (!a6)
  {
    v23 = 1;
  }

  if ((v23 & 1) == 0)
  {
    *a6 = v27[3];
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

- (BOOL)_moveTempFileToPath:(id)a3
{
  v4 = a3;
  v5 = [(FCKeyValueStoreWriter *)self tempFilePath];
  v6 = [v5 fileSystemRepresentation];
  v7 = [v4 fileSystemRepresentation];

  rename(v6, v7, v8);
  LODWORD(v4) = v9;

  return v4 == 0;
}

@end