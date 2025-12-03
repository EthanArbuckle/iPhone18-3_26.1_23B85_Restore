@interface OISFUOffsetOutputStream
- (OISFUOffsetOutputStream)initWithOutputStream:(id)stream;
- (id)inputStream;
- (int64_t)offset;
- (void)dealloc;
- (void)seekToOffset:(int64_t)offset whence:(int)whence;
@end

@implementation OISFUOffsetOutputStream

- (OISFUOffsetOutputStream)initWithOutputStream:(id)stream
{
  v4 = [(OISFUOffsetOutputStream *)self init];
  if (v4)
  {
    v4->mOutputStream = stream;
    v4->mInitialOffset = [stream offset];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OISFUOffsetOutputStream;
  [(OISFUOffsetOutputStream *)&v3 dealloc];
}

- (void)seekToOffset:(int64_t)offset whence:(int)whence
{
  if (!whence)
  {
    offset += self->mInitialOffset;
  }

  [(SFUOutputStream *)self->mOutputStream seekToOffset:offset whence:?];
}

- (int64_t)offset
{
  offset = [(SFUOutputStream *)self->mOutputStream offset];
  mInitialOffset = self->mInitialOffset;
  if (offset < mInitialOffset)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUOffsetOutputStream offset]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUOffsetOutputStream.m"], 54, 0, "SFUOffsetOutputStream points before its offset");
    +[OITSUAssertionHandler logBacktraceThrottled];
    mInitialOffset = self->mInitialOffset;
  }

  return offset - mInitialOffset;
}

- (id)inputStream
{
  if (![(OISFUOffsetOutputStream *)self canCreateInputStream])
  {
    return 0;
  }

  v3 = [[OISFUOffsetInputStream alloc] initWithInputStream:[(SFUOutputStream *)self->mOutputStream inputStream] initialOffset:self->mInitialOffset];

  return v3;
}

@end