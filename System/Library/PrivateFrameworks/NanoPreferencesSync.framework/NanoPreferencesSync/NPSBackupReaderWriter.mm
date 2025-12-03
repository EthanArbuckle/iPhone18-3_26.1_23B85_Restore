@interface NPSBackupReaderWriter
+ (BOOL)losslessFileCompressionFrom:(id)from to:(id)to shouldCompress:(BOOL)compress;
+ (id)tempFilePath;
- (BOOL)doneWriting;
- (BOOL)enumerateMessages:(id)messages;
- (NPSBackupReaderWriter)initWithPathToCreateBackup:(id)backup;
- (NPSBackupReaderWriter)initWithPathToLoadBackup:(id)backup;
- (void)writeMessage:(unint64_t)message data:(id)data;
@end

@implementation NPSBackupReaderWriter

- (NPSBackupReaderWriter)initWithPathToCreateBackup:(id)backup
{
  backupCopy = backup;
  v5 = [(NPSBackupReaderWriter *)self init];
  if (v5)
  {
    if (backupCopy)
    {
      tempFilePath = backupCopy;
    }

    else
    {
      tempFilePath = [objc_opt_class() tempFilePath];
    }

    compressedPath = v5->_compressedPath;
    v5->_compressedPath = tempFilePath;

    tempFilePath2 = [objc_opt_class() tempFilePath];
    uncompressedPath = v5->_uncompressedPath;
    v5->_uncompressedPath = tempFilePath2;

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

- (NPSBackupReaderWriter)initWithPathToLoadBackup:(id)backup
{
  backupCopy = backup;
  v6 = [(NPSBackupReaderWriter *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_compressedPath, backup);
    tempFilePath = [objc_opt_class() tempFilePath];
    uncompressedPath = v7->_uncompressedPath;
    v7->_uncompressedPath = tempFilePath;

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
  uUIDString = [v3 UUIDString];
  v5 = [v2 stringByAppendingString:uUIDString];
  v6 = [NSURL fileURLWithPath:v5];

  return v6;
}

+ (BOOL)losslessFileCompressionFrom:(id)from to:(id)to shouldCompress:(BOOL)compress
{
  compressCopy = compress;
  fromCopy = from;
  toCopy = to;
  v27 = 0;
  v9 = [NSFileHandle fileHandleForReadingFromURL:fromCopy error:&v27];
  v10 = v27;
  if (!v10)
  {
    v13 = +[NSFileManager defaultManager];
    path = [toCopy path];
    [v13 createFileAtPath:path contents:0 attributes:0];

    v26 = 0;
    v15 = [NSFileHandle fileHandleForWritingToURL:toCopy error:&v26];
    v11 = v26;
    if (v11)
    {
      [v9 closeFile];
    }

    else
    {
      memset(&stream, 0, sizeof(stream));
      if (compression_stream_init(&stream, !compressCopy, COMPRESSION_ZLIB) == COMPRESSION_STATUS_OK)
      {
        v24 = toCopy;
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

        toCopy = v24;
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

- (void)writeMessage:(unint64_t)message data:(id)data
{
  messageCopy = message;
  dataCopy = data;
  v7 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v10[0] = 67109376;
    v10[1] = messageCopy;
    v11 = 1024;
    v12 = [dataCopy length];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NPSBackupReaderWriter writing type %d length %u", v10, 0xEu);
  }

  LOBYTE(v10[0]) = messageCopy;
  v9 = [NSMutableData dataWithBytes:v10 length:1];
  [v9 appendData:dataCopy];
  [(NPSBlobReaderWriter *)self->_fh writeBlob:v9];
}

- (BOOL)enumerateMessages:(id)messages
{
  messagesCopy = messages;
  readBlob = [(NPSBlobReaderWriter *)self->_fh readBlob];
  if ([readBlob length] >= 2)
  {
    do
    {
      v6 = *[readBlob bytes];
      v7 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = [readBlob length];
        *buf = 67109376;
        v17 = v6;
        v18 = 1024;
        v19 = v9 - 1;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NPSBackupReaderWriter reading type %d length %u", buf, 0xEu);
      }

      v10 = objc_autoreleasePoolPush();
      v11 = [readBlob subdataWithRange:{1, objc_msgSend(readBlob, "length") - 1}];
      messagesCopy[2](messagesCopy, v6, v11);

      objc_autoreleasePoolPop(v10);
      readBlob = [(NPSBlobReaderWriter *)self->_fh readBlob];
    }

    while ([readBlob length] > 1);
  }

  isFileGood = [(NPSBlobReaderWriter *)self->_fh isFileGood];
  [(NPSBlobReaderWriter *)self->_fh close];
  fh = self->_fh;
  self->_fh = 0;

  v14 = +[NSFileManager defaultManager];
  [v14 removeItemAtURL:self->_uncompressedPath error:0];

  return isFileGood;
}

- (BOOL)doneWriting
{
  isFileGood = [(NPSBlobReaderWriter *)self->_fh isFileGood];
  [(NPSBlobReaderWriter *)self->_fh close];
  fh = self->_fh;
  self->_fh = 0;

  if (isFileGood && (p_compressedPath = &self->_uncompressedPath, [objc_opt_class() losslessFileCompressionFrom:self->_uncompressedPath to:self->_compressedPath shouldCompress:1]))
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