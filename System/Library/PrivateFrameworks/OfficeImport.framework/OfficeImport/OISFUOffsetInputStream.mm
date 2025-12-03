@interface OISFUOffsetInputStream
- (OISFUOffsetInputStream)initWithInputStream:(id)stream;
- (OISFUOffsetInputStream)initWithInputStream:(id)stream initialOffset:(int64_t)offset;
- (int64_t)offset;
- (void)dealloc;
@end

@implementation OISFUOffsetInputStream

- (OISFUOffsetInputStream)initWithInputStream:(id)stream
{
  offset = [stream offset];

  return [(OISFUOffsetInputStream *)self initWithInputStream:stream initialOffset:offset];
}

- (OISFUOffsetInputStream)initWithInputStream:(id)stream initialOffset:(int64_t)offset
{
  v6 = [(OISFUOffsetInputStream *)self init];
  if (v6)
  {
    streamCopy = stream;
    v6->mInputStream = streamCopy;
    v6->mInitialOffset = offset;
    [(SFUInputStream *)streamCopy seekToOffset:offset];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OISFUOffsetInputStream;
  [(OISFUOffsetInputStream *)&v3 dealloc];
}

- (int64_t)offset
{
  offset = [(SFUInputStream *)self->mInputStream offset];
  mInitialOffset = self->mInitialOffset;
  if (offset < mInitialOffset)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUOffsetInputStream offset]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUOffsetInputStream.m"], 42, 0, "SFUOffsetInputStream points before its offset");
    +[OITSUAssertionHandler logBacktraceThrottled];
    mInitialOffset = self->mInitialOffset;
  }

  return offset - mInitialOffset;
}

@end