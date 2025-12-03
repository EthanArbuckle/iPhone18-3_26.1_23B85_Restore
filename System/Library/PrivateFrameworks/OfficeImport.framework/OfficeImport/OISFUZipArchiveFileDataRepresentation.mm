@interface OISFUZipArchiveFileDataRepresentation
- (BOOL)hasSameLocationAs:(id)as;
- (OISFUZipArchiveFileDataRepresentation)initWithPath:(id)path;
- (id)bufferedInputStreamWithOffset:(int64_t)offset length:(int64_t)length;
- (id)inputStreamWithOffset:(int64_t)offset length:(int64_t)length;
- (void)dealloc;
@end

@implementation OISFUZipArchiveFileDataRepresentation

- (OISFUZipArchiveFileDataRepresentation)initWithPath:(id)path
{
  v9.receiver = self;
  v9.super_class = OISFUZipArchiveFileDataRepresentation;
  v4 = [(OISFUZipArchiveFileDataRepresentation *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->mFd = -1;
    v6 = SFUOpen(path, 0, 0);
    v5->mFd = v6;
    if (v6 == -1 || pread(v6, 0, 0, 0) == -1)
    {
      v7 = [[OISFUFileDataRepresentation alloc] initWithPath:path];
    }

    else
    {
      v7 = [[OISFUFileDataRepresentation alloc] initWithPath:path sharedFileDescriptor:v5->mFd];
    }

    v5->mFileRepresentation = v7;
  }

  return v5;
}

- (void)dealloc
{
  mFd = self->mFd;
  if (mFd != -1 && close(mFd))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipArchiveFileDataRepresentation dealloc]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipArchiveFileDataRepresentation.m"], 50, 0, "close failed on fd = %d with errorno = %d", self->mFd, *__error());
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v5.receiver = self;
  v5.super_class = OISFUZipArchiveFileDataRepresentation;
  [(OISFUZipArchiveFileDataRepresentation *)&v5 dealloc];
}

- (BOOL)hasSameLocationAs:(id)as
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    as = *(as + 4);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  if (!as)
  {
    return 0;
  }

  path = [(OISFUFileDataRepresentation *)self->mFileRepresentation path];
  path2 = [as path];

  return [path isEqualToString:path2];
}

- (id)inputStreamWithOffset:(int64_t)offset length:(int64_t)length
{
  dataLength = [(OISFUFileDataRepresentation *)self->mFileRepresentation dataLength];
  if ((length | offset) < 0 || (dataLength >= length ? (v8 = dataLength - length < offset) : (v8 = 1), v8))
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Bad input stream range."];
  }

  mFd = self->mFd;
  if (mFd == -1 || pread(mFd, 0, 0, 0) == -1)
  {
    v10 = [[OISFUFileInputStream alloc] initWithPath:[(OISFUFileDataRepresentation *)self->mFileRepresentation path] offset:offset length:length];
  }

  else
  {
    v10 = [[OISFUFileInputStream alloc] initWithFileDescriptor:SFUDup(self->mFd) offset:offset length:length];
  }

  return v10;
}

- (id)bufferedInputStreamWithOffset:(int64_t)offset length:(int64_t)length
{
  v4 = [[OISFUBufferedInputStream alloc] initWithStream:[(OISFUZipArchiveFileDataRepresentation *)self inputStreamWithOffset:offset length:?] dataLength:length];

  return v4;
}

@end