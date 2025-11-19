@interface OISFUOffsetInputStream
- (OISFUOffsetInputStream)initWithInputStream:(id)a3;
- (OISFUOffsetInputStream)initWithInputStream:(id)a3 initialOffset:(int64_t)a4;
- (int64_t)offset;
- (void)dealloc;
@end

@implementation OISFUOffsetInputStream

- (OISFUOffsetInputStream)initWithInputStream:(id)a3
{
  v5 = [a3 offset];

  return [(OISFUOffsetInputStream *)self initWithInputStream:a3 initialOffset:v5];
}

- (OISFUOffsetInputStream)initWithInputStream:(id)a3 initialOffset:(int64_t)a4
{
  v6 = [(OISFUOffsetInputStream *)self init];
  if (v6)
  {
    v7 = a3;
    v6->mInputStream = v7;
    v6->mInitialOffset = a4;
    [(SFUInputStream *)v7 seekToOffset:a4];
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
  v3 = [(SFUInputStream *)self->mInputStream offset];
  mInitialOffset = self->mInitialOffset;
  if (v3 < mInitialOffset)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUOffsetInputStream offset]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUOffsetInputStream.m"], 42, 0, "SFUOffsetInputStream points before its offset");
    +[OITSUAssertionHandler logBacktraceThrottled];
    mInitialOffset = self->mInitialOffset;
  }

  return v3 - mInitialOffset;
}

@end