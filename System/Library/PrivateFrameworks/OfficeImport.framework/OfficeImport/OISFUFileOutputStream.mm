@interface OISFUFileOutputStream
- (OISFUFileOutputStream)initWithPath:(id)a3;
- (int64_t)offset;
- (void)close;
- (void)dealloc;
- (void)seekToOffset:(int64_t)a3 whence:(int)a4;
- (void)writeBuffer:(const char *)a3 size:(unint64_t)a4;
@end

@implementation OISFUFileOutputStream

- (OISFUFileOutputStream)initWithPath:(id)a3
{
  v4 = [(OISFUFileOutputStream *)self init];
  if (v4)
  {
    unlink([a3 fileSystemRepresentation]);
    v4->mFile = SFUFileOpen(a3, "w");
    v4->mPath = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  mFile = self->mFile;
  if (mFile)
  {
    fclose(mFile);
  }

  v4.receiver = self;
  v4.super_class = OISFUFileOutputStream;
  [(OISFUFileOutputStream *)&v4 dealloc];
}

- (void)writeBuffer:(const char *)a3 size:(unint64_t)a4
{
  mFile = self->mFile;
  if (!mFile)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUFileOutputStream writeBuffer:size:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUFileOutputStream.m"], 55, 0, "Using a closed stream");
    +[OITSUAssertionHandler logBacktraceThrottled];
    mFile = self->mFile;
  }

  if (fwrite(a3, 1uLL, a4, mFile) != a4)
  {
    v9 = MEMORY[0x277CBEAD8];

    [v9 sfu_errnoRaise:@"SFUFileWriteError" format:@"Could not write"];
  }
}

- (int64_t)offset
{
  mFile = self->mFile;
  if (!mFile)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUFileOutputStream offset]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUFileOutputStream.m"], 60, 0, "Using a closed stream");
    +[OITSUAssertionHandler logBacktraceThrottled];
    mFile = self->mFile;
  }

  v5 = ftello(mFile);
  if (v5 == -1)
  {
    [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUFileTellError" format:@"Could not tell"];
  }

  return v5;
}

- (void)seekToOffset:(int64_t)a3 whence:(int)a4
{
  mFile = self->mFile;
  if (!mFile)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUFileOutputStream seekToOffset:whence:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUFileOutputStream.m"], 70, 0, "Using a closed stream");
    +[OITSUAssertionHandler logBacktraceThrottled];
    mFile = self->mFile;
  }

  if (fseeko(mFile, a3, a4))
  {
    v9 = MEMORY[0x277CBEAD8];

    [v9 sfu_errnoRaise:@"SFUFileSeekError" format:@"Could not seek"];
  }
}

- (void)close
{
  mFile = self->mFile;
  if (mFile)
  {
    fclose(mFile);
    self->mFile = 0;
  }
}

@end