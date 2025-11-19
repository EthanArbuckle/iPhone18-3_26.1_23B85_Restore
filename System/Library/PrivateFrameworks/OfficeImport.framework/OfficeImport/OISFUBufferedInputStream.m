@interface OISFUBufferedInputStream
- (BOOL)seekWithinBufferToOffset:(int64_t)a3;
- (OISFUBufferedInputStream)initWithStream:(id)a3 bufferSize:(unint64_t)a4;
- (OISFUBufferedInputStream)initWithStream:(id)a3 dataLength:(int64_t)a4;
- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4;
- (unint64_t)readToOwnBuffer:(const char *)a3 size:(unint64_t)a4;
- (void)dealloc;
- (void)seekToOffset:(int64_t)a3;
@end

@implementation OISFUBufferedInputStream

- (OISFUBufferedInputStream)initWithStream:(id)a3 bufferSize:(unint64_t)a4
{
  v11.receiver = self;
  v11.super_class = OISFUBufferedInputStream;
  v6 = [(OISFUBufferedInputStream *)&v11 init];
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      v6->mStream = a3;
      v7->mBufferSize = a4;
      v8 = malloc_type_malloc(a4, 0x100004077774924uLL);
      v7->mBuffer = v8;
      if (!v8)
      {

        [MEMORY[0x277CBEAD8] raise:@"SFUBufferedInputStreamError" format:@"Could not create read buffer"];
      }

      v9 = [(SFUInputStream *)v7->mStream offset];
      v7->mBufferStart = v9;
      v7->mBufferEnd = v9;
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (OISFUBufferedInputStream)initWithStream:(id)a3 dataLength:(int64_t)a4
{
  if (a4 >= 0x40000)
  {
    a4 = 0x40000;
  }

  return [(OISFUBufferedInputStream *)self initWithStream:a3 bufferSize:a4];
}

- (void)dealloc
{
  free(self->mBuffer);

  v3.receiver = self;
  v3.super_class = OISFUBufferedInputStream;
  [(OISFUBufferedInputStream *)&v3 dealloc];
}

- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4
{
  __src = 0;
  v5 = [(OISFUBufferedInputStream *)self readToOwnBuffer:&__src size:a4];
  memcpy(a3, __src, v5);
  return v5;
}

- (unint64_t)readToOwnBuffer:(const char *)a3 size:(unint64_t)a4
{
  if (!a3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUBufferedInputStream readToOwnBuffer:size:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUBufferedInputStream.m"], 81, 0, "No buffer parameter");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  mBufferStart = self->mBufferStart;
  mBufferEnd = self->mBufferEnd;
  if (self->mBufferOffset + mBufferStart > mBufferEnd)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUBufferedInputStream readToOwnBuffer:size:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUBufferedInputStream.m"], 82, 0, "Bad invariant");
    +[OITSUAssertionHandler logBacktraceThrottled];
    mBufferStart = self->mBufferStart;
    mBufferEnd = self->mBufferEnd;
  }

  mBufferSize = self->mBufferSize;
  if (mBufferEnd - mBufferStart > mBufferSize)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUBufferedInputStream readToOwnBuffer:size:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v12, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUBufferedInputStream.m"], 83, 0, "Bad invariant");
    +[OITSUAssertionHandler logBacktraceThrottled];
    mBufferSize = self->mBufferSize;
    mBufferStart = self->mBufferStart;
    mBufferEnd = self->mBufferEnd;
  }

  if (mBufferSize >= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = mBufferSize;
  }

  mBufferOffset = self->mBufferOffset;
  v15 = mBufferEnd - (mBufferStart + mBufferOffset);
  if (v13 > v15)
  {
    memmove(self->mBuffer, &self->mBuffer[mBufferOffset], mBufferEnd - (mBufferStart + mBufferOffset));
    v16 = self->mBufferStart + self->mBufferOffset;
    self->mBufferOffset = 0;
    self->mBufferStart = v16;
    if ([(SFUInputStream *)self->mStream offset]!= self->mBufferEnd)
    {
      if ([(SFUInputStream *)self->mStream canSeek])
      {
        [(SFUInputStream *)self->mStream seekToOffset:self->mBufferEnd];
      }

      else
      {
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUBufferedInputStream readToOwnBuffer:size:]"];
        +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v17, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUBufferedInputStream.m"], 104, 0, "Detected a read from the stream beneath a buffered stream.");
        +[OITSUAssertionHandler logBacktraceThrottled];
      }
    }

    v18 = [(SFUInputStream *)self->mStream readToBuffer:&self->mBuffer[v15] size:self->mBufferSize - v15];
    v19 = self->mBufferStart;
    v20 = self->mBufferEnd + v18;
    self->mBufferEnd = v20;
    mBufferOffset = self->mBufferOffset;
    v15 = v20 - (v19 + mBufferOffset);
  }

  if (v13 >= v15)
  {
    result = v15;
  }

  else
  {
    result = v13;
  }

  *a3 = &self->mBuffer[mBufferOffset];
  self->mBufferOffset = result + mBufferOffset;
  return result;
}

- (BOOL)seekWithinBufferToOffset:(int64_t)a3
{
  mBufferStart = self->mBufferStart;
  v4 = __OFSUB__(a3, mBufferStart);
  v5 = a3 - mBufferStart;
  if (v5 < 0 != v4 || self->mBufferEnd < a3)
  {
    return 0;
  }

  self->mBufferOffset = v5;
  return 1;
}

- (void)seekToOffset:(int64_t)a3
{
  if (![(OISFUBufferedInputStream *)self canSeek])
  {
    [MEMORY[0x277CBEAD8] raise:@"SFUBufferedInputStreamError" format:@"Can't seek"];
  }

  mBufferStart = self->mBufferStart;
  v6 = __OFSUB__(a3, mBufferStart);
  v7 = a3 - mBufferStart;
  if (v7 < 0 != v6 || self->mBufferEnd < a3)
  {
    self->mBufferOffset = 0;
    self->mBufferStart = a3;
    v8 = 48;
  }

  else
  {
    v8 = 32;
    a3 = v7;
  }

  *(&self->super.isa + v8) = a3;
}

@end