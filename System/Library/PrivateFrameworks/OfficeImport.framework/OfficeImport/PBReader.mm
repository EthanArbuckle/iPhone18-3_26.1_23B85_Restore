@interface PBReader
- (BOOL)start;
- (OCCEncryptionInfoReader)encryptionInfoReader;
- (PBReader)initWithCancelDelegate:(id)a3;
- (id)read;
- (void)dealloc;
@end

@implementation PBReader

- (BOOL)start
{
  v3 = [(PBReader *)self pptReader];
  if (v3)
  {
    v4 = v3;
    v5 = [(OCDReader *)self fileName];

    if (v5)
    {
      v6 = [(OCDReader *)self fileName];
      v7 = fopen([v6 UTF8String], "rb");

      if (v7)
      {
        [(OCBReader *)self setFile:v7];
        (*(*v4 + 16))(v4, [(OCBReader *)self file]);
        LOBYTE(v3) = 1;
        return v3;
      }

      v11 = TCUnknownProblemMessage;
      v12 = [(OCDReader *)self fileName];
      [TCMessageException raise:v11, v12];
    }

    else
    {
      v8 = [(OCDReader *)self data];

      if (v8)
      {
        v9 = [(OCDReader *)self data];
        self->mBuffer = [v9 bytes];

        [(OCDReader *)self data];
        v10 = [objc_claimAutoreleasedReturnValue() length];
        PptBinaryReader::start(v4, &self->mBuffer, v10);
      }
    }

    LOBYTE(v3) = 0;
  }

  return v3;
}

- (OCCEncryptionInfoReader)encryptionInfoReader
{
  v2 = [(PBReader *)self pptReader];
  if (v2)
  {
    return v2 + 3;
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
  v5 = [(OCDReader *)self fileName];
  v6 = [v5 pathExtension];
  v7 = [v6 lowercaseString];
  -[PDPresentation setIsAutoPlay:](v13, "setIsAutoPlay:", [v7 isEqualToString:@"pps"]);

  v8 = [(PBReader *)self pptReader];
  v9 = [(OCDReader *)self cancelDelegate];
  v10 = [(OCDReader *)self isThumbnail];
  v11 = [(OCDReader *)self delegate];
  [PBPresentation readFrom:v8 to:v13 cancel:v9 asThumbnail:v10 delegate:v11];

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

- (PBReader)initWithCancelDelegate:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PBReader;
  if ([(OCBReader *)&v6 initWithCancelDelegate:v4])
  {
    operator new();
  }

  return 0;
}

@end