@interface BLFilesystemDownloadDataConsumer
- (BLFilesystemDownloadDataConsumer)initWithPath:(id)path MD5Hashes:(id)hashes numberOfBytesToHash:(int64_t)hash;
- (BOOL)_checkHashForByteCount:(int64_t)count;
- (BOOL)_hashAndWriteData:(id)data error:(id *)error;
- (BOOL)_openFile;
- (BOOL)consumeData:(id)data error:(id *)error;
- (BOOL)finish:(id *)finish;
- (void)_truncateToSize:(int64_t)size;
- (void)dealloc;
- (void)reset;
- (void)suspend;
@end

@implementation BLFilesystemDownloadDataConsumer

- (BLFilesystemDownloadDataConsumer)initWithPath:(id)path MD5Hashes:(id)hashes numberOfBytesToHash:(int64_t)hash
{
  pathCopy = path;
  hashesCopy = hashes;
  v16.receiver = self;
  v16.super_class = BLFilesystemDownloadDataConsumer;
  v10 = [(BLFilesystemDownloadDataConsumer *)&v16 init];
  if (v10)
  {
    v11 = [hashesCopy copy];
    v12 = *(v10 + 25);
    *(v10 + 25) = v11;

    *(v10 + 129) = hash;
    v13 = [pathCopy copy];
    v14 = *(v10 + 137);
    *(v10 + 137) = v13;

    [v10 _openFile];
    if (*(v10 + 17) == -1)
    {

      v10 = 0;
    }
  }

  return v10;
}

- (void)dealloc
{
  v3 = *(&self->_bytesWritten + 1);
  if (v3 != -1)
  {
    close(v3);
  }

  v4.receiver = self;
  v4.super_class = BLFilesystemDownloadDataConsumer;
  [(BLFilesystemDownloadDataConsumer *)&v4 dealloc];
}

- (BOOL)consumeData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = dataCopy;
  if (*(&self->_md5Context.num + 1) < 1)
  {
    v10 = write(*(&self->_bytesWritten + 1), [dataCopy bytes], objc_msgSend(dataCopy, "length"));
    if (v10 < 0)
    {
      v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
      v8 = 0;
    }

    else
    {
      v11 = v10;
      v9 = 0;
      *(&self->super._overrideProgress + 1) += v11;
      *(&self->_resumptionOffset + 1) += v11;
      v8 = 1;
    }
  }

  else
  {
    v15 = 0;
    v8 = [(BLFilesystemDownloadDataConsumer *)self _hashAndWriteData:dataCopy error:&v15];
    v9 = v15;
  }

  v12 = (self->_bytesWritten & 0x10000000000) != 0 || *(&self->super._overrideProgress + 1) > 0;
  BYTE5(self->_bytesWritten) = v12;
  if (error)
  {
    v13 = v8;
  }

  else
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    v9 = v9;
    *error = v9;
  }

  return v8;
}

- (BOOL)finish:(id *)finish
{
  v5 = BLServiceDownloadFilesystemLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(&self->_numberOfBytesToHash + 1);
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[Download-FileSys]: Finishing for file: %@", &v13, 0xCu);
  }

  if (*(&self->_bytesWritten + 1) == -1)
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    if (*(&self->_md5Context.num + 1) < 1 || *(&self->_resumptionOffset + 1) >= *(&self->super._overrideProgress + 1) || [(BLFilesystemDownloadDataConsumer *)self _checkHashForByteCount:?])
    {
      v7 = 0;
      v8 = 1;
    }

    else
    {
      v7 = sub_1000A8F44(8, 0, 0);
      [(BLFilesystemDownloadDataConsumer *)self _truncateToSize:*(&self->_resumptionOffset + 1)];
      v8 = 0;
    }

    close(*(&self->_bytesWritten + 1));
    *(&self->_bytesWritten + 1) = -1;
    if (finish && !v8)
    {
      v9 = v7;
      *finish = v7;
      v10 = BLServiceDownloadFilesystemLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(&self->_numberOfBytesToHash + 1);
        v13 = 138412546;
        v14 = v11;
        v15 = 2112;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[Download-FileSys]: Error finishing for file: %@, error:  %@", &v13, 0x16u);
      }

      v8 = 0;
    }
  }

  return v8;
}

- (void)reset
{
  v3 = BLServiceDownloadFilesystemLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(&self->_numberOfBytesToHash + 1);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[Download-FileSys]: Resetting file: %@", &v5, 0xCu);
  }

  [(BLFilesystemDownloadDataConsumer *)self suspend];
  [(BLFilesystemDownloadDataConsumer *)self _openFile];
  BYTE5(self->_bytesWritten) = *(&self->_path + 1) != 0;
}

- (void)suspend
{
  v3 = BLServiceDownloadFilesystemLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(&self->_numberOfBytesToHash + 1);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[Download-FileSys]: Suspending file: %@", &v6, 0xCu);
  }

  v5 = *(&self->_bytesWritten + 1);
  if (v5 != -1)
  {
    close(v5);
    *(&self->_bytesWritten + 1) = -1;
  }
}

- (BOOL)_checkHashForByteCount:(int64_t)count
{
  CC_MD5_Final(md, (&self->_hashes + 1));
  v5 = sub_1000C45A0(md, 0x10u);
  v6 = count / *(&self->_md5Context.num + 1);
  v7 = (ceilf(v6) + -1.0);
  if ([*(&self->_fd + 1) count] <= v7)
  {
    v8 = BLServiceDownloadFilesystemLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = *(&self->_md5Context.num + 1);
      v14 = 134218496;
      v15 = v7;
      v16 = 2048;
      countCopy2 = count;
      v18 = 2048;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[Download-FileSys]: Invalid chunk index: %ld, for bytes written: %lld, bytes to hash: %ld", &v14, 0x20u);
    }

    v9 = 0;
  }

  else
  {
    v8 = [*(&self->_fd + 1) objectAtIndex:v7];
    v9 = [v5 isEqualToString:v8];
    if ((v9 & 1) == 0)
    {
      v10 = BLServiceDownloadFilesystemLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(&self->_md5Context.num + 1) * v7;
        v14 = 134218754;
        v15 = v11;
        v16 = 2048;
        countCopy2 = count;
        v18 = 2114;
        v19 = v5;
        v20 = 2114;
        v21 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[Download-FileSys]: Hash mismatch for chunk: (%lld:%lld), %{public}@ should be %{public}@", &v14, 0x2Au);
      }
    }
  }

  return v9;
}

- (BOOL)_hashAndWriteData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = *(&self->super._overrideProgress + 1);
  v8 = *(&self->_md5Context.num + 1);
  v9 = [dataCopy length];
  if (v9 < 1)
  {
LABEL_13:
    v16 = 0;
    v17 = 1;
    goto LABEL_19;
  }

  v10 = v9;
  errorCopy = error;
  v11 = 0;
  v12 = v7 % v8;
  while (1)
  {
    v13 = *(&self->_md5Context.num + 1);
    v14 = v13 - v12 >= v10 - v11 ? v10 - v11 : v13 - v12;
    if (v14 >= 1)
    {
      CC_MD5_Update((&self->_hashes + 1), [dataCopy bytes] + v11, v14);
      v13 = *(&self->_md5Context.num + 1);
    }

    if (v14 + v12 == v13)
    {
      break;
    }

LABEL_11:
    v15 = write(*(&self->_bytesWritten + 1), [dataCopy bytes] + v11, v14);
    if (v15 < v14)
    {
      v16 = sub_1000A8F44(7, 0, 0);
      goto LABEL_16;
    }

    v12 = 0;
    v11 += v14;
    *(&self->super._overrideProgress + 1) += v15;
    if (v11 >= v10)
    {
      goto LABEL_13;
    }
  }

  if ([(BLFilesystemDownloadDataConsumer *)self _checkHashForByteCount:*(&self->super._overrideProgress + 1) + v14])
  {
    CC_MD5_Init((&self->_hashes + 1));
    *(&self->_resumptionOffset + 1) += v13;
    goto LABEL_11;
  }

  v16 = sub_1000A8F44(8, 0, 0);
  [(BLFilesystemDownloadDataConsumer *)self _truncateToSize:*(&self->_resumptionOffset + 1)];
LABEL_16:
  if (errorCopy)
  {
    v18 = v16;
    v17 = 0;
    *errorCopy = v16;
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

- (BOOL)_openFile
{
  fileSystemRepresentation = [*(&self->_numberOfBytesToHash + 1) fileSystemRepresentation];
  *(&self->_bytesWritten + 1) = open(fileSystemRepresentation, 522, 420);
  v4 = BLServiceDownloadFilesystemLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(&self->_numberOfBytesToHash + 1);
    buf.st_dev = 138412290;
    *&buf.st_mode = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[Download-FileSys]: Opening file: %@", &buf, 0xCu);
  }

  v6 = *(&self->_bytesWritten + 1);
  if (v6 == -1)
  {
    return 0;
  }

  fcntl(v6, 48, 1);
  fcntl(*(&self->_bytesWritten + 1), 76, 1);
  CC_MD5_Init((&self->_hashes + 1));
  memset(&buf, 0, sizeof(buf));
  if (stat(fileSystemRepresentation, &buf) != -1)
  {
    st_size = buf.st_size;
    *(&self->super._overrideProgress + 1) = buf.st_size;
    *(&self->_path + 1) = st_size;
  }

  v8 = *(&self->_md5Context.num + 1);
  if (v8 >= 1)
  {
    v9 = *(&self->_path + 1);
    if (v9)
    {
      v10 = v9 / v8 * v8;
      *(&self->_resumptionOffset + 1) = v10;
      if (v10 != *(&self->_path + 1))
      {
        if (lseek(*(&self->_bytesWritten + 1), v10, 0) == -1)
        {
          goto LABEL_23;
        }

        v11 = *(&self->_resumptionOffset + 1);
        v12 = *(&self->_path + 1) - v11;
        v13 = v12 >= 0x4000 ? 0x4000 : (*(&self->_path + 1) - v11);
        v14 = malloc_type_malloc(v13, 0x100004077774924uLL);
        if (!v14)
        {
          goto LABEL_23;
        }

        v15 = v14;
        if (v12 < 1)
        {
          i = 0;
        }

        else
        {
          for (i = 0; i < v12; i += v18)
          {
            v17 = read(*(&self->_bytesWritten + 1), v15, v13);
            if (!v17)
            {
              break;
            }

            v18 = v17;
            if (!CC_MD5_Update((&self->_hashes + 1), v15, v17))
            {
              break;
            }
          }
        }

        free(v15);
        if (i != v12)
        {
LABEL_23:
          [(BLFilesystemDownloadDataConsumer *)self _truncateToSize:0];
        }
      }
    }
  }

  return *(&self->_bytesWritten + 1) != -1;
}

- (void)_truncateToSize:(int64_t)size
{
  ftruncate(*(&self->_bytesWritten + 1), size);
  CC_MD5_Init((&self->_hashes + 1));
  *(&self->super._overrideProgress + 1) = size;
  BYTE5(self->_bytesWritten) = size > 0;
  *(&self->_path + 1) = size;
  *(&self->_resumptionOffset + 1) = size;
}

@end