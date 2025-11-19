@interface TSUZipFileDescriptorWrapper
- (TSUZipFileDescriptorWrapper)init;
- (TSUZipFileDescriptorWrapper)initWithFileDescriptor:(int)a3 queue:(id)a4;
- (void)dealloc;
@end

@implementation TSUZipFileDescriptorWrapper

- (TSUZipFileDescriptorWrapper)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipFileDescriptorWrapper init]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipFileArchive.m"];
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:443 isFatal:0 description:"Do not call method"];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUZipFileDescriptorWrapper init]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSUZipFileDescriptorWrapper)initWithFileDescriptor:(int)a3 queue:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if ((v4 & 0x80000000) == 0)
  {
    v17.receiver = self;
    v17.super_class = TSUZipFileDescriptorWrapper;
    v7 = [(TSUZipFileDescriptorWrapper *)&v17 init];
    self = v7;
    if (!v7)
    {
      close(v4);
      goto LABEL_7;
    }

    v7->_fileDescriptor = v4;
    v8 = [TSUFileIOChannel alloc];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__TSUZipFileDescriptorWrapper_initWithFileDescriptor_queue___block_invoke;
    v15[3] = &__block_descriptor_36_e8_v12__0i8l;
    v16 = v4;
    v9 = [(TSUFileIOChannel *)v8 initForReadingDescriptor:v4 queue:v6 cleanupHandler:v15];
    readChannel = self->_readChannel;
    self->_readChannel = v9;

    if (self->_readChannel)
    {
      v11 = dispatch_group_create();
      accessGroup = self->_accessGroup;
      self->_accessGroup = v11;

LABEL_7:
      self = self;
      v13 = self;
      goto LABEL_8;
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)dealloc
{
  [(TSUReadChannel *)self->_readChannel close];
  v3.receiver = self;
  v3.super_class = TSUZipFileDescriptorWrapper;
  [(TSUZipFileDescriptorWrapper *)&v3 dealloc];
}

@end