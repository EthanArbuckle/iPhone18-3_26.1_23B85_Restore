@interface NPSBackupReaderWriter
+ (BOOL)losslessFileCompressionFrom:(id)a3 to:(id)a4 shouldCompress:(BOOL)a5;
+ (id)tempFilePath;
- (BOOL)doneWriting;
- (BOOL)enumerateMessages:(id)a3;
- (NPSBackupReaderWriter)initWithPathToCreateBackup:(id)a3;
- (NPSBackupReaderWriter)initWithPathToLoadBackup:(id)a3;
- (void)writeMessage:(unint64_t)a3 data:(id)a4;
@end

@implementation NPSBackupReaderWriter

- (NPSBackupReaderWriter)initWithPathToCreateBackup:(id)a3
{
  v4 = a3;
  v5 = [(NPSBackupReaderWriter *)self init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [objc_opt_class() tempFilePath];
    }

    compressedPath = v5->_compressedPath;
    v5->_compressedPath = v6;

    v8 = [objc_opt_class() tempFilePath];
    uncompressedPath = v5->_uncompressedPath;
    v5->_uncompressedPath = v8;

    v10 = [[NPSBlobReaderWriter alloc] initWithPathToCreateBlobFile:v5->_uncompressedPath];
    fh = v5->_fh;
    v5->_fh = v10;
  }

  if (v5->_fh)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v13;
}

- (NPSBackupReaderWriter)initWithPathToLoadBackup:(id)a3
{
  v5 = a3;
  v6 = [(NPSBackupReaderWriter *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_compressedPath, a3);
    v8 = [objc_opt_class() tempFilePath];
    uncompressedPath = v7->_uncompressedPath;
    v7->_uncompressedPath = v8;

    if ([objc_opt_class() losslessFileCompressionFrom:v7->_compressedPath to:v7->_uncompressedPath shouldCompress:0])
    {
      v10 = [[NPSBlobReaderWriter alloc] initWithPathToLoadBlobFile:v7->_uncompressedPath];
      fh = v7->_fh;
      v7->_fh = v10;
    }
  }

  if (v7->_fh)
  {
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v13;
}

+ (id)tempFilePath
{
  v2 = NSTemporaryDirectory();
  v3 = objc_opt_new();
  v4 = [v3 UUIDString];
  v5 = [v2 stringByAppendingString:v4];
  v6 = [NSURL fileURLWithPath:v5];

  return v6;
}

+ (BOOL)losslessFileCompressionFrom:(id)a3 to:(id)a4 shouldCompress:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v27 = 0;
  v9 = [NSFileHandle fileHandleForReadingFromURL:v7 error:&v27];
  v10 = v27;
  if (!v10)
  {
    v13 = +[NSFileManager defaultManager];
    v14 = [v8 path];
    [v13 createFileAtPath:v14 contents:0 attributes:0];

    v26 = 0;
    v15 = [NSFileHandle fileHandleForWritingToURL:v8 error:&v26];
    v11 = v26;
    if (v11)
    {
      [v9 closeFile];
    }

    else
    {
      memset(&stream, 0, sizeof(stream));
      if (compression_stream_init(&stream, !v5, COMPRESSION_ZLIB) == COMPRESSION_STATUS_OK)
      {
        v24 = v8;
        v16 = [NSMutableData dataWithLength:0x10000];
        stream.dst_ptr = [v16 bytes];
        stream.dst_size = [v16 length];
        do
        {
          v17 = objc_autoreleasePoolPush();
          v18 = [v9 readDataOfLength:0x10000];
          v19 = [v18 length] == 0;
          stream.src_ptr = [v18 bytes];
          stream.src_size = [v18 length];
          do
          {
            v20 = compression_stream_process(&stream, v19);
            v21 = [v16 length];
            v22 = [v16 subdataWithRange:{0, &v21[-stream.dst_size]}];
            [v15 writeData:v22];

            stream.dst_ptr = [v16 bytes];
            stream.dst_size = [v16 length];
          }

          while (stream.src_size && v20 == COMPRESSION_STATUS_OK);

          objc_autoreleasePoolPop(v17);
        }

        while (v20 == COMPRESSION_STATUS_OK);
        [v9 closeFile];
        [v15 closeFile];

        v8 = v24;
        if (v20 == COMPRESSION_STATUS_END)
        {
          v12 = 1;
LABEL_14:

          goto LABEL_15;
        }
      }
    }

    v12 = 0;
    goto LABEL_14;
  }

  v11 = v10;
  v12 = 0;
LABEL_15:

  return v12;
}

- (void)writeMessage:(unint64_t)a3 data:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v10[0] = 67109376;
    v10[1] = v4;
    v11 = 1024;
    v12 = [v6 length];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NPSBackupReaderWriter writing type %d length %u", v10, 0xEu);
  }

  LOBYTE(v10[0]) = v4;
  v9 = [NSMutableData dataWithBytes:v10 length:1];
  [v9 appendData:v6];
  [(NPSBlobReaderWriter *)self->_fh writeBlob:v9];
}

- (BOOL)enumerateMessages:(id)a3
{
  v4 = a3;
  v5 = [(NPSBlobReaderWriter *)self->_fh readBlob];
  if ([v5 length] >= 2)
  {
    do
    {
      v6 = *[v5 bytes];
      v7 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = [v5 length];
        *buf = 67109376;
        v17 = v6;
        v18 = 1024;
        v19 = v9 - 1;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NPSBackupReaderWriter reading type %d length %u", buf, 0xEu);
      }

      v10 = objc_autoreleasePoolPush();
      v11 = [v5 subdataWithRange:{1, objc_msgSend(v5, "length") - 1}];
      v4[2](v4, v6, v11);

      objc_autoreleasePoolPop(v10);
      v5 = [(NPSBlobReaderWriter *)self->_fh readBlob];
    }

    while ([v5 length] > 1);
  }

  v12 = [(NPSBlobReaderWriter *)self->_fh isFileGood];
  [(NPSBlobReaderWriter *)self->_fh close];
  fh = self->_fh;
  self->_fh = 0;

  v14 = +[NSFileManager defaultManager];
  [v14 removeItemAtURL:self->_uncompressedPath error:0];

  return v12;
}

- (BOOL)doneWriting
{
  v3 = [(NPSBlobReaderWriter *)self->_fh isFileGood];
  [(NPSBlobReaderWriter *)self->_fh close];
  fh = self->_fh;
  self->_fh = 0;

  if (v3 && (p_compressedPath = &self->_uncompressedPath, [objc_opt_class() losslessFileCompressionFrom:self->_uncompressedPath to:self->_compressedPath shouldCompress:1]))
  {
    v6 = +[NSFileManager defaultManager];
    v7 = 1;
  }

  else
  {
    v8 = +[NSFileManager defaultManager];
    [v8 removeItemAtURL:self->_uncompressedPath error:0];

    v6 = +[NSFileManager defaultManager];
    v7 = 0;
    p_compressedPath = &self->_compressedPath;
  }

  [v6 removeItemAtURL:*p_compressedPath error:0];

  return v7;
}

@end