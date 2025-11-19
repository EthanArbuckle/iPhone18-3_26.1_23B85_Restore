@interface OISFUOffsetOutputStream
- (OISFUOffsetOutputStream)initWithOutputStream:(id)a3;
- (id)inputStream;
- (int64_t)offset;
- (void)dealloc;
- (void)seekToOffset:(int64_t)a3 whence:(int)a4;
@end

@implementation OISFUOffsetOutputStream

- (OISFUOffsetOutputStream)initWithOutputStream:(id)a3
{
  v4 = [(OISFUOffsetOutputStream *)self init];
  if (v4)
  {
    v4->mOutputStream = a3;
    v4->mInitialOffset = [a3 offset];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OISFUOffsetOutputStream;
  [(OISFUOffsetOutputStream *)&v3 dealloc];
}

- (void)seekToOffset:(int64_t)a3 whence:(int)a4
{
  if (!a4)
  {
    a3 += self->mInitialOffset;
  }

  [(SFUOutputStream *)self->mOutputStream seekToOffset:a3 whence:?];
}

- (int64_t)offset
{
  v3 = [(SFUOutputStream *)self->mOutputStream offset];
  mInitialOffset = self->mInitialOffset;
  if (v3 < mInitialOffset)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUOffsetOutputStream offset]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUOffsetOutputStream.m"], 54, 0, "SFUOffsetOutputStream points before its offset");
    +[OITSUAssertionHandler logBacktraceThrottled];
    mInitialOffset = self->mInitialOffset;
  }

  return v3 - mInitialOffset;
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