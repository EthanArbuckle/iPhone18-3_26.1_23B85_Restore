@interface MBBasicFileHandle
- (BOOL)closeWithError:(id *)error;
- (BOOL)statWithBuffer:(stat *)buffer error:(id *)error;
- (MBBasicFileHandle)initWithPath:(id)path fd:(int)fd;
- (id)encryptionKeyWithError:(id *)error;
- (int64_t)readWithBytes:(void *)bytes length:(unint64_t)length error:(id *)error;
- (int64_t)writeWithBytes:(const void *)bytes length:(unint64_t)length error:(id *)error;
@end

@implementation MBBasicFileHandle

- (MBBasicFileHandle)initWithPath:(id)path fd:(int)fd
{
  pathCopy = path;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v14 = pathCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Opened file at %@", buf, 0xCu);
    _MBLog();
  }

  v12.receiver = self;
  v12.super_class = MBBasicFileHandle;
  v9 = [(MBBasicFileHandle *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_path, path);
    v10->_fd = fd;
  }

  return v10;
}

- (id)encryptionKeyWithError:(id *)error
{
  if (error)
  {
    *error = [MBError errorWithCode:4 format:@"File has no encryption key"];
  }

  return 0;
}

- (BOOL)statWithBuffer:(stat *)buffer error:(id *)error
{
  v5 = fstat(self->_fd, buffer);
  v6 = v5;
  if (error && v5)
  {
    *error = [MBError posixErrorWithFormat:@"fstat error"];
  }

  return v6 == 0;
}

- (int64_t)readWithBytes:(void *)bytes length:(unint64_t)length error:(id *)error
{
  if (IsDatalessFault(self->_fd))
  {
    return 0;
  }

  result = read(self->_fd, bytes, length);
  if (result < 0)
  {
    if (error)
    {
      *error = [MBError posixErrorWithFormat:@"read error"];
    }

    return -1;
  }

  return result;
}

- (int64_t)writeWithBytes:(const void *)bytes length:(unint64_t)length error:(id *)error
{
  result = write(self->_fd, bytes, length);
  if (result < 0)
  {
    if (error)
    {
      *error = [MBError posixErrorWithFormat:@"write error"];
    }

    return -1;
  }

  return result;
}

- (BOOL)closeWithError:(id *)error
{
  v5 = close(self->_fd);
  if (v5)
  {
    if (error)
    {
      *error = [MBError posixErrorWithFormat:@"close error"];
    }
  }

  else
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      path = self->_path;
      *buf = 138412290;
      v11 = path;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Closed file at %@", buf, 0xCu);
      v9 = self->_path;
      _MBLog();
    }
  }

  return v5 == 0;
}

@end