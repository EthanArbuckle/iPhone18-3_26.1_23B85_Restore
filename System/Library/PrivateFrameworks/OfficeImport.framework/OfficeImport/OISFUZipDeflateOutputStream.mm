@interface OISFUZipDeflateOutputStream
- (OISFUZipDeflateOutputStream)initWithOutputStream:(id)stream;
- (id)closeLocalStream;
- (void)close;
- (void)dealloc;
- (void)seekToOffset:(int64_t)offset whence:(int)whence;
- (void)writeBuffer:(const char *)buffer size:(unint64_t)size;
@end

@implementation OISFUZipDeflateOutputStream

- (OISFUZipDeflateOutputStream)initWithOutputStream:(id)stream
{
  v4 = [(OISFUZipDeflateOutputStream *)self init];
  if (v4)
  {
    v4->mOutputStream = stream;
    mOutBuffer = malloc_type_malloc(0x40000uLL, 0x100004077774924uLL);
    v4->mOutBuffer = mOutBuffer;
    if (!mOutBuffer)
    {
      [OISFUZipException raise:@"SFUZipDeflateError" format:@"Could not create deflate buffer"];
      mOutBuffer = v4->mOutBuffer;
    }

    v4->mDeflateStream.next_in = 0;
    v4->mDeflateStream.avail_in = 0;
    v4->mDeflateStream.zfree = 0;
    v4->mDeflateStream.opaque = 0;
    v4->mDeflateStream.zalloc = 0;
    v4->mDeflateStream.avail_out = 0x40000;
    v4->mDeflateStream.next_out = mOutBuffer;
    if (deflateInit2_(&v4->mDeflateStream, 8, 8, -15, 9, 0, "1.2.12", 112))
    {
      [OISFUZipException raise:@"SFUZipDeflateError" format:@"deflateInit2() failed: %s", v4->mDeflateStream.msg];
    }
  }

  return v4;
}

- (void)dealloc
{
  deflateEnd(&self->mDeflateStream);

  free(self->mOutBuffer);
  v3.receiver = self;
  v3.super_class = OISFUZipDeflateOutputStream;
  [(OISFUZipDeflateOutputStream *)&v3 dealloc];
}

- (id)closeLocalStream
{
  if (self->mDeflateStream.next_out)
  {
    do
    {
      v3 = deflate(&self->mDeflateStream, 4);
      if (self->mDeflateStream.next_out <= self->mOutBuffer)
      {
        v4 = -5;
      }

      else
      {
        v4 = 0;
      }

      if (v3 == -5)
      {
        v5 = v4;
      }

      else
      {
        v5 = v3;
      }

      [SFUOutputStream writeBuffer:"writeBuffer:size:" size:?];
      self->mDeflateStream.avail_out = 0x40000;
      self->mDeflateStream.next_out = self->mOutBuffer;
    }

    while (!v5);
    self->mDeflateStream.avail_out = 0;
    self->mDeflateStream.next_out = 0;
    if (v5 != -5 && v5 != 1)
    {
      [OISFUZipException raise:@"SFUZipDeflateError" format:@"deflate() failed: %s", self->mDeflateStream.msg];
    }
  }

  return self->mOutputStream;
}

- (void)close
{
  closeLocalStream = [(OISFUZipDeflateOutputStream *)self closeLocalStream];

  [closeLocalStream close];
}

- (void)writeBuffer:(const char *)buffer size:(unint64_t)size
{
  if (!self->mDeflateStream.next_out)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipDeflateOutputStream writeBuffer:size:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipDeflateOutputStream.m"], 121, 0, "Stream is already closed.");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  if (size >= 0xFFFFFFFF)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipDeflateOutputStream writeBuffer:size:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipDeflateOutputStream.m"], 124, 0, "overflow in writeBuffer:size:");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  self->mDeflateStream.avail_in = size;
  self->mDeflateStream.next_in = buffer;
  if (size)
  {
    while (1)
    {
      if (!self->mDeflateStream.avail_out)
      {
        [(SFUOutputStream *)self->mOutputStream writeBuffer:self->mOutBuffer size:0x40000];
        self->mDeflateStream.avail_out = 0x40000;
        self->mDeflateStream.next_out = self->mOutBuffer;
      }

      if (deflate(&self->mDeflateStream, 0))
      {
        break;
      }

      if (!self->mDeflateStream.avail_in)
      {
        return;
      }
    }

    [OISFUZipException raise:@"SFUZipDeflateError" format:@"deflate() failed: %s", self->mDeflateStream.msg];
  }
}

- (void)seekToOffset:(int64_t)offset whence:(int)whence
{
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[OISFUZipDeflateOutputStream seekToOffset:whence:]", *&whence}];
  +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipDeflateOutputStream.m"], 152, 0, "Not implemented.");

  +[OITSUAssertionHandler logBacktraceThrottled];
}

@end