@interface OISFUGZipFileInputStream
- (OISFUGZipFileInputStream)initWithPath:(id)path;
- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size;
- (void)close;
- (void)dealloc;
- (void)disableSystemCaching;
- (void)enableSystemCaching;
@end

@implementation OISFUGZipFileInputStream

- (OISFUGZipFileInputStream)initWithPath:(id)path
{
  self->_fd = -1;
  v4 = [(OISFUGZipFileInputStream *)self init];
  if (v4)
  {
    v5 = SFUOpen(path, 0, 0);
    v6 = gzdopen(v5, "r");
    v4->_file = v6;
    if (!v6)
    {
      close(v5);
      [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUFileOpenError" format:{@"Could not gzdopen %@", path}];
    }

    v4->_fd = v5;
  }

  return v4;
}

- (void)dealloc
{
  [(OISFUGZipFileInputStream *)self close];
  v3.receiver = self;
  v3.super_class = OISFUGZipFileInputStream;
  [(OISFUGZipFileInputStream *)&v3 dealloc];
}

- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size
{
  file = self->_file;
  if (!file)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUGZipFileInputStream readToBuffer:size:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUGZipFileInputStream.m"], 54, 0, "Using a closed stream");
    +[OITSUAssertionHandler logBacktraceThrottled];
    file = self->_file;
    if (!file)
    {
      [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUGZReadError" format:@"Closed stream"];
      file = self->_file;
    }
  }

  if (size >= 0xFFFFFFFF)
  {
    sizeCopy = -1;
  }

  else
  {
    sizeCopy = size;
  }

  v10 = gzread(file, buffer, sizeCopy);
  if (v10 < 0)
  {
    [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUGZReadError" format:@"Could not gzread"];
  }

  result = v10;
  self->_offset += v10;
  return result;
}

- (void)disableSystemCaching
{
  fd = self->_fd;
  if (fd != -1)
  {
    if (fcntl(fd, 48, 1) == -1)
    {
      [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUFcntlError" format:@"Could not set F_NOCACHE on read stream."];
    }

    self->_isCachingDisabled = 1;
  }
}

- (void)enableSystemCaching
{
  fd = self->_fd;
  if (fd != -1)
  {
    if (fcntl(fd, 48, 0) == -1)
    {
      [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUFcntlError" format:@"Could not unset F_NOCACHE on read stream."];
    }

    self->_isCachingDisabled = 0;
  }
}

- (void)close
{
  fd = self->_fd;
  if (fd != -1)
  {
    if (self->_isCachingDisabled)
    {
      fcntl(fd, 48, 0);
      self->_isCachingDisabled = 0;
    }

    self->_fd = -1;
  }

  file = self->_file;
  if (file)
  {
    gzclose(file);
    self->_file = 0;
  }
}

@end