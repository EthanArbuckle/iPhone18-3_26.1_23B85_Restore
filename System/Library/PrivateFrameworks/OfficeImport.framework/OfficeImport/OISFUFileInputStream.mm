@interface OISFUFileInputStream
- (OISFUFileInputStream)initWithFileDescriptor:(int)descriptor offset:(int64_t)offset length:(int64_t)length;
- (OISFUFileInputStream)initWithPath:(id)path offset:(int64_t)offset;
- (OISFUFileInputStream)initWithPath:(id)path offset:(int64_t)offset length:(int64_t)length;
- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size;
- (void)close;
- (void)dealloc;
- (void)disableSystemCaching;
- (void)enableSystemCaching;
- (void)seekToOffset:(int64_t)offset;
@end

@implementation OISFUFileInputStream

- (OISFUFileInputStream)initWithFileDescriptor:(int)descriptor offset:(int64_t)offset length:(int64_t)length
{
  selfCopy = self;
  self->mFd = -1;
  v10.receiver = self;
  v10.super_class = OISFUFileInputStream;
  if (![(OISFUFileInputStream *)&v10 init])
  {
    return 0;
  }

  if ((length | offset) < 0 || (length ^ 0x7FFFFFFFFFFFFFFFLL) < offset)
  {

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Offset and/or length invalid."];
  }

  selfCopy->mFd = descriptor;
  selfCopy->mStartOffset = offset;
  selfCopy->mCurrentOffset = offset;
  selfCopy->mEndOffset = length + offset;
  return selfCopy;
}

- (OISFUFileInputStream)initWithPath:(id)path offset:(int64_t)offset length:(int64_t)length
{
  self->mFd = -1;
  if (path && ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) != 0)
  {
    v9 = SFUOpen(path, 0, 0);

    return [(OISFUFileInputStream *)self initWithFileDescriptor:v9 offset:offset length:length];
  }

  else
  {

    return 0;
  }
}

- (OISFUFileInputStream)initWithPath:(id)path offset:(int64_t)offset
{
  self->mFd = -1;
  v7 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  if (v7 && (v8 = [v7 objectForKey:*MEMORY[0x277CCA1C0]]) != 0 && (v9 = objc_msgSend(v8, "unsignedLongLongValue"), v9 >= offset))
  {

    return [(OISFUFileInputStream *)self initWithPath:path offset:offset length:v9 - offset];
  }

  else
  {

    return 0;
  }
}

- (void)dealloc
{
  [(OISFUFileInputStream *)self close];
  v3.receiver = self;
  v3.super_class = OISFUFileInputStream;
  [(OISFUFileInputStream *)&v3 dealloc];
}

- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size
{
  mFd = self->mFd;
  if (mFd == -1)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUFileInputStream readToBuffer:size:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUFileInputStream.m"], 98, 0, "Using a closed stream");
    +[OITSUAssertionHandler logBacktraceThrottled];
    mFd = self->mFd;
  }

  mCurrentOffset = self->mCurrentOffset;
  if (self->mEndOffset - mCurrentOffset < size)
  {
    size = self->mEndOffset - mCurrentOffset;
  }

  sizeCopy = size;
  do
  {
    v11 = pread(mFd, buffer, sizeCopy, mCurrentOffset);
    v12 = v11;
    if (v11 < 0 || sizeCopy && !v11)
    {
      [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUPReadError" format:@"Could not pread"];
    }

    mCurrentOffset += v12;
    buffer += v12;
    sizeCopy -= v12;
  }

  while (sizeCopy);
  self->mCurrentOffset += size;
  return size;
}

- (void)seekToOffset:(int64_t)offset
{
  if (self->mFd == -1)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUFileInputStream seekToOffset:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUFileInputStream.m"], 116, 0, "Using a closed stream");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v6 = self->mStartOffset + offset;
  mEndOffset = self->mEndOffset;
  if (v6 > mEndOffset)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUFileInputStream seekToOffset:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUFileInputStream.m"], 119, 0, "Offset is too large.");
    +[OITSUAssertionHandler logBacktraceThrottled];
    mEndOffset = self->mEndOffset;
  }

  if (v6 < mEndOffset)
  {
    mEndOffset = v6;
  }

  self->mCurrentOffset = mEndOffset;
}

- (void)disableSystemCaching
{
  mFd = self->mFd;
  if (mFd != -1)
  {
    if (fcntl(mFd, 48, 1) == -1)
    {
      [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUFcntlError" format:@"Could not set F_NOCACHE on read stream."];
    }

    self->mIsCachingDisabled = 1;
  }
}

- (void)enableSystemCaching
{
  mFd = self->mFd;
  if (mFd != -1)
  {
    if (fcntl(mFd, 48, 0) == -1)
    {
      [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUFcntlError" format:@"Could not unset F_NOCACHE on read stream."];
    }

    self->mIsCachingDisabled = 0;
  }
}

- (void)close
{
  mFd = self->mFd;
  if (mFd != -1)
  {
    if (self->mIsCachingDisabled)
    {
      fcntl(mFd, 48, 0);
      self->mIsCachingDisabled = 0;
      mFd = self->mFd;
    }

    if (close(mFd))
    {
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUFileInputStream close]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUFileInputStream.m"], 155, 0, "Failed to close SFUFileInputStream %p, fd = %d, errno = %d", self, self->mFd, *__error());
      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    self->mFd = -1;
  }
}

@end