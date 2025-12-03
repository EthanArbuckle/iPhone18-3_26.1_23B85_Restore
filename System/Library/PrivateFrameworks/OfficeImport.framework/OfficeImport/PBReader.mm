@interface PBReader
- (BOOL)start;
- (OCCEncryptionInfoReader)encryptionInfoReader;
- (PBReader)initWithCancelDelegate:(id)delegate;
- (id)read;
- (void)dealloc;
@end

@implementation PBReader

- (BOOL)start
{
  pptReader = [(PBReader *)self pptReader];
  if (pptReader)
  {
    v4 = pptReader;
    fileName = [(OCDReader *)self fileName];

    if (fileName)
    {
      fileName2 = [(OCDReader *)self fileName];
      v7 = fopen([fileName2 UTF8String], "rb");

      if (v7)
      {
        [(OCBReader *)self setFile:v7];
        (*(*v4 + 16))(v4, [(OCBReader *)self file]);
        LOBYTE(pptReader) = 1;
        return pptReader;
      }

      v11 = TCUnknownProblemMessage;
      fileName3 = [(OCDReader *)self fileName];
      [TCMessageException raise:v11, fileName3];
    }

    else
    {
      data = [(OCDReader *)self data];

      if (data)
      {
        data2 = [(OCDReader *)self data];
        self->mBuffer = [data2 bytes];

        [(OCDReader *)self data];
        v10 = [objc_claimAutoreleasedReturnValue() length];
        PptBinaryReader::start(v4, &self->mBuffer, v10);
      }
    }

    LOBYTE(pptReader) = 0;
  }

  return pptReader;
}

- (OCCEncryptionInfoReader)encryptionInfoReader
{
  pptReader = [(PBReader *)self pptReader];
  if (pptReader)
  {
    return pptReader + 3;
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
  v13 = objc_alloc_init(PDPresentation);

  v4 = objc_alloc_init(OADGraphicStyleCache);
  [(OCDDocument *)v13 setGraphicStyleCache:v4];

  [(OCDDocument *)v13 setReader:self];
  fileName = [(OCDReader *)self fileName];
  pathExtension = [fileName pathExtension];
  lowercaseString = [pathExtension lowercaseString];
  -[PDPresentation setIsAutoPlay:](v13, "setIsAutoPlay:", [lowercaseString isEqualToString:@"pps"]);

  pptReader = [(PBReader *)self pptReader];
  cancelDelegate = [(OCDReader *)self cancelDelegate];
  isThumbnail = [(OCDReader *)self isThumbnail];
  delegate = [(OCDReader *)self delegate];
  [PBPresentation readFrom:pptReader to:v13 cancel:cancelDelegate asThumbnail:isThumbnail delegate:delegate];

  objc_autoreleasePoolPop(v3);

  return v13;
}

- (void)dealloc
{
  mPptObjectFactory = self->mPptObjectFactory;
  if (mPptObjectFactory)
  {
    (*(mPptObjectFactory->var0 + 1))(mPptObjectFactory, a2);
  }

  v4.receiver = self;
  v4.super_class = PBReader;
  [(OCBReader *)&v4 dealloc];
}

- (PBReader)initWithCancelDelegate:(id)delegate
{
  delegateCopy = delegate;
  v6.receiver = self;
  v6.super_class = PBReader;
  if ([(OCBReader *)&v6 initWithCancelDelegate:delegateCopy])
  {
    operator new();
  }

  return 0;
}

@end