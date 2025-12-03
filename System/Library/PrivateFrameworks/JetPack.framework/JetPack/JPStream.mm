@interface JPStream
- (BOOL)writeToFile:(id)file blockSize:(unint64_t)size error:(id *)error;
- (JPStream)initWithBacking:(JetPackStream *)backing releaseOnDealloc:(BOOL)dealloc;
- (id)readData;
- (id)readDataWithLength:(unint64_t)length;
- (unint64_t)readBytes:(char *)bytes length:(unint64_t)length;
- (void)dealloc;
@end

@implementation JPStream

- (void)dealloc
{
  if ([(JPStream *)self releaseBackingOnDealloc])
  {
    JetPackStreamDestroy([(JPStream *)self backing]);
  }

  v3.receiver = self;
  v3.super_class = JPStream;
  [(JPStream *)&v3 dealloc];
}

- (id)readData
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v4 = [MEMORY[0x277CBEB28] dataWithLength:2048];
  if ((JetPackStreamIsFinished([(JPStream *)self backing]) & 1) == 0)
  {
    do
    {
      backing = [(JPStream *)self backing];
      [v4 mutableBytes];
      [v4 length];
      [v3 appendBytes:objc_msgSend(v4 length:{"mutableBytes"), JetPackStreamRead(backing)}];
    }

    while (!JetPackStreamIsFinished([(JPStream *)self backing]));
  }

  return v3;
}

- (JPStream)initWithBacking:(JetPackStream *)backing releaseOnDealloc:(BOOL)dealloc
{
  v7.receiver = self;
  v7.super_class = JPStream;
  result = [(JPStream *)&v7 init];
  if (result)
  {
    result->_backing = backing;
    result->_releaseBackingOnDealloc = dealloc;
  }

  return result;
}

- (unint64_t)readBytes:(char *)bytes length:(unint64_t)length
{
  backing = [(JPStream *)self backing];

  return JetPackStreamRead(backing);
}

- (id)readDataWithLength:(unint64_t)length
{
  v4 = [MEMORY[0x277CBEB28] dataWithLength:?];
  backing = [(JPStream *)self backing];
  [v4 mutableBytes];
  [v4 setLength:JetPackStreamRead(backing)];

  return v4;
}

- (BOOL)writeToFile:(id)file blockSize:(unint64_t)size error:(id *)error
{
  v8 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:file];
  v9 = [MEMORY[0x277CBEB28] dataWithLength:size];
  v10 = 0;
  while (1)
  {
    IsFinished = JetPackStreamIsFinished([(JPStream *)self backing]);
    if (IsFinished)
    {
      break;
    }

    backing = [(JPStream *)self backing];
    [v9 mutableBytes];
    [v9 length];
    [v9 setLength:JetPackStreamRead(backing)];
    v16 = 0;
    [v8 writeData:v9 error:&v16];
    v13 = v16;

    v10 = v13;
    if (error)
    {
      v10 = v13;
      if (v13)
      {
        v14 = v13;
        *error = v13;
        v10 = v13;
        break;
      }
    }
  }

  return IsFinished;
}

@end