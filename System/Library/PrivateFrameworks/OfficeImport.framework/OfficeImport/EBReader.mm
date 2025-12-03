@interface EBReader
- (BOOL)start;
- (EBReader)initWithCancelDelegate:(id)delegate;
- (OCCEncryptionInfoReader)encryptionInfoReader;
- (id)read;
- (void)dealloc;
@end

@implementation EBReader

- (BOOL)start
{
  data = [(OCDReader *)self data];
  v4 = [data length];

  if (!HIDWORD(v4))
  {
    xlReader = [(EBReader *)self xlReader];
    if (!xlReader)
    {
      return xlReader;
    }

    v6 = xlReader;
    fileName = [(OCDReader *)self fileName];

    if (fileName)
    {
      fileName2 = [(OCDReader *)self fileName];
      v9 = fopen([fileName2 UTF8String], "rb");

      if (v9)
      {
        [(OCBReader *)self setFile:v9];
        (*(*v6 + 16))(v6, [(OCBReader *)self file]);
        LOBYTE(xlReader) = 1;
        return xlReader;
      }

      v12 = TCUnknownProblemMessage;
      fileName3 = [(OCDReader *)self fileName];
      [TCMessageException raise:v12, fileName3];
    }

    else
    {
      data2 = [(OCDReader *)self data];

      if (data2)
      {
        data3 = [(OCDReader *)self data];
        self->mBuffer = [data3 bytes];

        [(OCDReader *)self data];
        [objc_claimAutoreleasedReturnValue() length];
        XlBinaryReader::start(v6, &self->mBuffer);
      }
    }
  }

  LOBYTE(xlReader) = 0;
  return xlReader;
}

- (OCCEncryptionInfoReader)encryptionInfoReader
{
  xlReader = [(EBReader *)self xlReader];
  if (xlReader)
  {
    return xlReader + 1;
  }

  else
  {
    return 0;
  }
}

- (id)read
{
  v3 = objc_autoreleasePoolPush();
  [(OCDEncryptedReader *)self useUnencryptedDocument];
  binaryReader = [(OCBReader *)self binaryReader];
  (*(binaryReader->var0 + 80))(binaryReader);
  v5 = [EBReaderState alloc];
  cancelDelegate = [(OCDReader *)self cancelDelegate];
  v7 = [(EBReaderState *)v5 initWithXlReader:binaryReader cancelDelegate:cancelDelegate];

  v9 = [EBWorkbook readWithState:v7 reader:self];

  [(EBReaderState *)v7 pauseReading];
  objc_autoreleasePoolPop(v3);

  return v9;
}

- (void)dealloc
{
  mXlObjectFactory = self->mXlObjectFactory;
  if (mXlObjectFactory)
  {
    (*(mXlObjectFactory->var0 + 1))(mXlObjectFactory, a2);
  }

  v4.receiver = self;
  v4.super_class = EBReader;
  [(OCBReader *)&v4 dealloc];
}

- (EBReader)initWithCancelDelegate:(id)delegate
{
  delegateCopy = delegate;
  v6.receiver = self;
  v6.super_class = EBReader;
  if ([(OCBReader *)&v6 initWithCancelDelegate:delegateCopy])
  {
    operator new();
  }

  return 0;
}

@end