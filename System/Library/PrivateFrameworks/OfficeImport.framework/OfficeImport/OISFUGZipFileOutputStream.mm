@interface OISFUGZipFileOutputStream
- (OISFUGZipFileOutputStream)initWithPath:(id)path;
- (int64_t)offset;
- (void)close;
- (void)dealloc;
- (void)writeBuffer:(const char *)buffer size:(unint64_t)size;
@end

@implementation OISFUGZipFileOutputStream

- (OISFUGZipFileOutputStream)initWithPath:(id)path
{
  v4 = [(OISFUGZipFileOutputStream *)self init];
  if (v4)
  {
    unlink([path fileSystemRepresentation]);
    v5 = SFUOpen(path, 1537, 438);
    v6 = gzdopen(v5, "w");
    v4->_file = v6;
    if (!v6)
    {
      close(v5);
      [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUFileOpenError" format:{@"Could not gzdopen %@", path}];
    }

    v4->_path = [path copy];
  }

  return v4;
}

- (void)dealloc
{
  file = self->_file;
  if (file)
  {
    gzclose(file);
  }

  v4.receiver = self;
  v4.super_class = OISFUGZipFileOutputStream;
  [(OISFUGZipFileOutputStream *)&v4 dealloc];
}

- (void)writeBuffer:(const char *)buffer size:(unint64_t)size
{
  sizeCopy = size;
  if (self->_file)
  {
    v7 = 1;
    if (!size)
    {
      return;
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUGZipFileOutputStream writeBuffer:size:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUGZipFileOutputStream.m"], 64, 0, "Using a closed stream");
    +[OITSUAssertionHandler logBacktraceThrottled];
    v7 = self->_file != 0;
    if (!sizeCopy)
    {
      return;
    }
  }

  if (v7)
  {
    do
    {
      if (sizeCopy >= 0xFFFFFFFF)
      {
        v9 = 0xFFFFFFFFLL;
      }

      else
      {
        v9 = sizeCopy;
      }

      v10 = gzwrite(self->_file, buffer, v9);
      if (v9 != v10)
      {
        [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUFileWriteError" format:@"Could not gzwrite"];
      }

      self->_offset += v10;
      buffer += v10;
      sizeCopy -= v10;
    }

    while (sizeCopy);
  }
}

- (int64_t)offset
{
  if (!self->_file)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUGZipFileOutputStream offset]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUGZipFileOutputStream.m"], 80, 0, "Using a closed stream");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  return self->_offset;
}

- (void)close
{
  file = self->_file;
  if (file)
  {
    gzclose(file);
    self->_file = 0;
  }
}

@end