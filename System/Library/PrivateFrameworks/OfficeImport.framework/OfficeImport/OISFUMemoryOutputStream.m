@interface OISFUMemoryOutputStream
- (OISFUMemoryOutputStream)initWithData:(id)a3;
- (void)dealloc;
- (void)seekToOffset:(int64_t)a3 whence:(int)a4;
@end

@implementation OISFUMemoryOutputStream

- (OISFUMemoryOutputStream)initWithData:(id)a3
{
  v4 = [(OISFUMemoryOutputStream *)self init];
  if (v4)
  {
    v4->mData = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OISFUMemoryOutputStream;
  [(OISFUMemoryOutputStream *)&v3 dealloc];
}

- (void)seekToOffset:(int64_t)a3 whence:(int)a4
{
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[OISFUMemoryOutputStream seekToOffset:whence:]", *&a4}];
  +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUMemoryOutputStream.m"], 42, 0, "Not implemented");

  +[OITSUAssertionHandler logBacktraceThrottled];
}

@end