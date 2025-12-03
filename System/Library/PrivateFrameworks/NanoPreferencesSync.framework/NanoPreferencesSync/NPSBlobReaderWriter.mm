@interface NPSBlobReaderWriter
- (BOOL)isFileGood;
- (NPSBlobReaderWriter)initWithPathToCreateBlobFile:(id)file;
- (NPSBlobReaderWriter)initWithPathToLoadBlobFile:(id)file;
- (id)readBlob;
- (void)close;
- (void)writeBlob:(id)blob;
@end

@implementation NPSBlobReaderWriter

- (NPSBlobReaderWriter)initWithPathToCreateBlobFile:(id)file
{
  fileCopy = file;
  v5 = [(NPSBlobReaderWriter *)self init];
  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    path = [fileCopy path];
    [v6 createFileAtPath:path contents:0 attributes:0];

    v15 = 0;
    v8 = [NSFileHandle fileHandleForWritingToURL:fileCopy error:&v15];
    v9 = v15;
    fh = v5->_fh;
    v5->_fh = v8;

    if (!v9)
    {
      v12 = v5;
      goto LABEL_8;
    }

    v11 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_ERROR))
    {
      sub_100026BCC(v9, v11);
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = 0;
LABEL_8:
  v13 = v12;

  return v13;
}

- (NPSBlobReaderWriter)initWithPathToLoadBlobFile:(id)file
{
  fileCopy = file;
  v5 = [(NPSBlobReaderWriter *)self init];
  if (v5)
  {
    v13 = 0;
    v6 = [NSFileHandle fileHandleForReadingFromURL:fileCopy error:&v13];
    v7 = v13;
    fh = v5->_fh;
    v5->_fh = v6;

    if (!v7)
    {
      v10 = v5;
      goto LABEL_8;
    }

    v9 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_ERROR))
    {
      sub_100026C44(v7, v9);
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = 0;
LABEL_8:
  v11 = v10;

  return v11;
}

- (void)writeBlob:(id)blob
{
  blobCopy = blob;
  v9 = [blobCopy length];
  fh = self->_fh;
  v6 = [NSData dataWithBytes:&v9 length:4];
  [(NSFileHandle *)fh writeData:v6];

  v7 = self->_fh;
  self->_offset += 4;
  [(NSFileHandle *)v7 writeData:blobCopy];
  v8 = [blobCopy length];

  self->_offset += v8;
}

- (id)readBlob
{
  if (self->_done)
  {
    v2 = 0;
  }

  else
  {
    v4 = [(NSFileHandle *)self->_fh readDataOfLength:4];
    if ([v4 length] == 4 && (self->_offset += objc_msgSend(v4, "length"), v5 = *objc_msgSend(v4, "bytes"), (v5 - 1048577) > 0xFFFFFFFFFFEFFFFFLL))
    {
      v6 = [(NSFileHandle *)self->_fh readDataOfLength:v5];
      if ([v6 length] == v5)
      {
        self->_offset += [v6 length];
        v2 = v6;
      }

      else
      {
        v2 = 0;
        self->_done = 1;
      }
    }

    else
    {
      v2 = 0;
      self->_done = 1;
    }
  }

  return v2;
}

- (void)close
{
  [(NSFileHandle *)self->_fh closeFile];
  fh = self->_fh;
  self->_fh = 0;
}

- (BOOL)isFileGood
{
  offsetInFile = [(NSFileHandle *)self->_fh offsetInFile];
  offset = self->_offset;
  v5 = nps_daemon_log;
  if (offsetInFile == offset)
  {
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = offsetInFile;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "File length is %ld bytes as expected", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_ERROR))
  {
    sub_100026CBC(v5);
  }

  return offsetInFile == offset;
}

@end