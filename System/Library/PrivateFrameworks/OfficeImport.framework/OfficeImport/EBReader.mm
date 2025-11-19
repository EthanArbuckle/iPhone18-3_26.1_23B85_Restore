@interface EBReader
- (BOOL)start;
- (EBReader)initWithCancelDelegate:(id)a3;
- (OCCEncryptionInfoReader)encryptionInfoReader;
- (id)read;
- (void)dealloc;
@end

@implementation EBReader

- (BOOL)start
{
  v3 = [(OCDReader *)self data];
  v4 = [v3 length];

  if (!HIDWORD(v4))
  {
    v5 = [(EBReader *)self xlReader];
    if (!v5)
    {
      return v5;
    }

    v6 = v5;
    v7 = [(OCDReader *)self fileName];

    if (v7)
    {
      v8 = [(OCDReader *)self fileName];
      v9 = fopen([v8 UTF8String], "rb");

      if (v9)
      {
        [(OCBReader *)self setFile:v9];
        (*(*v6 + 16))(v6, [(OCBReader *)self file]);
        LOBYTE(v5) = 1;
        return v5;
      }

      v12 = TCUnknownProblemMessage;
      v13 = [(OCDReader *)self fileName];
      [TCMessageException raise:v12, v13];
    }

    else
    {
      v10 = [(OCDReader *)self data];

      if (v10)
      {
        v11 = [(OCDReader *)self data];
        self->mBuffer = [v11 bytes];

        [(OCDReader *)self data];
        [objc_claimAutoreleasedReturnValue() length];
        XlBinaryReader::start(v6, &self->mBuffer);
      }
    }
  }

  LOBYTE(v5) = 0;
  return v5;
}

- (OCCEncryptionInfoReader)encryptionInfoReader
{
  v2 = [(EBReader *)self xlReader];
  if (v2)
  {
    return v2 + 1;
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
  v4 = [(OCBReader *)self binaryReader];
  (*(v4->var0 + 80))(v4);
  v5 = [EBReaderState alloc];
  v6 = [(OCDReader *)self cancelDelegate];
  v7 = [(EBReaderState *)v5 initWithXlReader:v4 cancelDelegate:v6];

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

- (EBReader)initWithCancelDelegate:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = EBReader;
  if ([(OCBReader *)&v6 initWithCancelDelegate:v4])
  {
    operator new();
  }

  return 0;
}

@end