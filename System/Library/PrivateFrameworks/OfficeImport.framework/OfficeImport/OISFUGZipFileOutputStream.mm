@interface OISFUGZipFileOutputStream
- (OISFUGZipFileOutputStream)initWithPath:(id)a3;
- (int64_t)offset;
- (void)close;
- (void)dealloc;
- (void)writeBuffer:(const char *)a3 size:(unint64_t)a4;
@end

@implementation OISFUGZipFileOutputStream

- (OISFUGZipFileOutputStream)initWithPath:(id)a3
{
  v4 = [(OISFUGZipFileOutputStream *)self init];
  if (v4)
  {
    unlink([a3 fileSystemRepresentation]);
    v5 = SFUOpen(a3, 1537, 438);
    v6 = gzdopen(v5, "w");
    v4->_file = v6;
    if (!v6)
    {
      close(v5);
      [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUFileOpenError" format:{@"Could not gzdopen %@", a3}];
    }

    v4->_path = [a3 copy];
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

- (void)writeBuffer:(const char *)a3 size:(unint64_t)a4
{
  v4 = a4;
  if (self->_file)
  {
    v7 = 1;
    if (!a4)
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
    if (!v4)
    {
      return;
    }
  }

  if (v7)
  {
    do
    {
      if (v4 >= 0xFFFFFFFF)
      {
        v9 = 0xFFFFFFFFLL;
      }

      else
      {
        v9 = v4;
      }

      v10 = gzwrite(self->_file, a3, v9);
      if (v9 != v10)
      {
        [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUFileWriteError" format:@"Could not gzwrite"];
      }

      self->_offset += v10;
      a3 += v10;
      v4 -= v10;
    }

    while (v4);
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