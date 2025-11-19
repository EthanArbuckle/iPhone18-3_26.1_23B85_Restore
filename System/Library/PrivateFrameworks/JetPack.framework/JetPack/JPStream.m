@interface JPStream
- (BOOL)writeToFile:(id)a3 blockSize:(unint64_t)a4 error:(id *)a5;
- (JPStream)initWithBacking:(JetPackStream *)a3 releaseOnDealloc:(BOOL)a4;
- (id)readData;
- (id)readDataWithLength:(unint64_t)a3;
- (unint64_t)readBytes:(char *)a3 length:(unint64_t)a4;
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
      v5 = [(JPStream *)self backing];
      [v4 mutableBytes];
      [v4 length];
      [v3 appendBytes:objc_msgSend(v4 length:{"mutableBytes"), JetPackStreamRead(v5)}];
    }

    while (!JetPackStreamIsFinished([(JPStream *)self backing]));
  }

  return v3;
}

- (JPStream)initWithBacking:(JetPackStream *)a3 releaseOnDealloc:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = JPStream;
  result = [(JPStream *)&v7 init];
  if (result)
  {
    result->_backing = a3;
    result->_releaseBackingOnDealloc = a4;
  }

  return result;
}

- (unint64_t)readBytes:(char *)a3 length:(unint64_t)a4
{
  v4 = [(JPStream *)self backing];

  return JetPackStreamRead(v4);
}

- (id)readDataWithLength:(unint64_t)a3
{
  v4 = [MEMORY[0x277CBEB28] dataWithLength:?];
  v5 = [(JPStream *)self backing];
  [v4 mutableBytes];
  [v4 setLength:JetPackStreamRead(v5)];

  return v4;
}

- (BOOL)writeToFile:(id)a3 blockSize:(unint64_t)a4 error:(id *)a5
{
  v8 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:a3];
  v9 = [MEMORY[0x277CBEB28] dataWithLength:a4];
  v10 = 0;
  while (1)
  {
    IsFinished = JetPackStreamIsFinished([(JPStream *)self backing]);
    if (IsFinished)
    {
      break;
    }

    v12 = [(JPStream *)self backing];
    [v9 mutableBytes];
    [v9 length];
    [v9 setLength:JetPackStreamRead(v12)];
    v16 = 0;
    [v8 writeData:v9 error:&v16];
    v13 = v16;

    v10 = v13;
    if (a5)
    {
      v10 = v13;
      if (v13)
      {
        v14 = v13;
        *a5 = v13;
        v10 = v13;
        break;
      }
    }
  }

  return IsFinished;
}

@end