@interface OISFUZipRecordInputStream
- (const)dataAtOffset:(int64_t)offset size:(unint64_t)size end:(int64_t)end;
- (void)dealloc;
@end

@implementation OISFUZipRecordInputStream

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OISFUZipRecordInputStream;
  [(OISFUZipRecordInputStream *)&v3 dealloc];
}

- (const)dataAtOffset:(int64_t)offset size:(unint64_t)size end:(int64_t)end
{
  if (offset < 0 || (size ^ 0x7FFFFFFFFFFFFFFFLL) < offset)
  {
    [MEMORY[0x277CBEAD8] raise:@"SFUZipArchiveError" format:@"Size overflow."];
  }

  v9 = size + offset;
  if (end)
  {
    if (v9 > end)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipRecordInputStream dataAtOffset:size:end:]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipArchive.m"], 699, 0, "End offset is too small.");
      +[OITSUAssertionHandler logBacktraceThrottled];
    }
  }

  else
  {
    end = size + offset;
  }

  mBufferStart = self->mBufferStart;
  if (mBufferStart > offset || v9 > self->mBufferEnd)
  {
    [(OISFUBufferedInputStream *)self->mInput seekToOffset:offset];
    offset = [(OISFUBufferedInputStream *)self->mInput readToOwnBuffer:&self->mBuffer size:end - offset];
    if (offset < size)
    {
      [MEMORY[0x277CBEAD8] raise:@"SFUZipArchiveError" format:@"Could not read Zip record."];
    }

    self->mBufferStart = offset;
    self->mBufferEnd = offset + offset;
    mBufferStart = offset;
  }

  return &self->mBuffer[offset - mBufferStart];
}

@end