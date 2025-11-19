@interface OCBReader
- (BOOL)retainDecryptorWithErrorCode:(int *)a3;
- (OCBReader)initWithCancelDelegate:(id)a3;
- (id)allocDecryptorWithCryptoKey:(OCCCryptoKey *)a3 baseOutputFilename:(id)a4;
- (void)closeFile;
- (void)dealloc;
- (void)restartReaderToUseDecryptedDocument;
- (void)setFile:(__sFILE *)a3;
@end

@implementation OCBReader

- (void)dealloc
{
  mBinaryReader = self->mBinaryReader;
  if (mBinaryReader)
  {
    (*(mBinaryReader->var0 + 1))(mBinaryReader, a2);
  }

  [(OCBReader *)self closeFile];
  v4.receiver = self;
  v4.super_class = OCBReader;
  [(OCBReader *)&v4 dealloc];
}

- (void)closeFile
{
  mFile = self->mFile;
  if (mFile)
  {
    fclose(mFile);
    self->mFile = 0;
  }
}

- (OCBReader)initWithCancelDelegate:(id)a3
{
  v4.receiver = self;
  v4.super_class = OCBReader;
  result = [(OCDReader *)&v4 initWithCancelDelegate:a3];
  if (result)
  {
    result->mBinaryReader = 0;
    result->mFile = 0;
  }

  return result;
}

- (void)setFile:(__sFILE *)a3
{
  self->mFile = a3;
  v3 = fileno(a3);
  if (v3 >= 1)
  {
    v4 = v3;
    fstat(v3, &v7);
    v5 = 0;
    st_size = v7.st_size;
    fcntl(v4, 44, &v5);
  }
}

- (id)allocDecryptorWithCryptoKey:(OCCCryptoKey *)a3 baseOutputFilename:(id)a4
{
  v6 = a4;
  v7 = [(OCDReader *)self fileName];

  if (v7)
  {
    v8 = [v6 UTF8String];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(OCBReader *)self allocBinaryStreamerWithCryptoKey:a3 baseOutputFilenameInUTF8:v8];
  if (v9)
  {
    v9 = [[OCCDecryptor alloc] initWithStreamer:v9];
  }

  return v9;
}

- (BOOL)retainDecryptorWithErrorCode:(int *)a3
{
  v5 = [(OCBReader *)self encryptionInfoReader];
  if (!v5)
  {
    return v5;
  }

  if (self->super.mDecryptor)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  memset(v14, 0, sizeof(v14));
  v6 = [(OCBReader *)self encryptionInfoReader];
  if ((*(v6->var0 + 2))(v6, &v14[1], v14, a3))
  {
    UsingEncryptionInfoBuffer = OCCCryptoKey::createUsingEncryptionInfoBuffer(0, *&v14[1], v14[0]);
    if (!UsingEncryptionInfoBuffer)
    {
      v12 = 8003;
      goto LABEL_9;
    }

    v8 = UsingEncryptionInfoBuffer;
    v9 = [(OCDReader *)self fileName];
    v10 = [(OCBReader *)self allocDecryptorWithCryptoKey:v8 baseOutputFilename:v9];
    mDecryptor = self->super.mDecryptor;
    self->super.mDecryptor = v10;

    if (!self->super.mDecryptor)
    {
      v12 = 8000;
LABEL_9:
      *a3 = v12;
    }
  }

  if (*&v14[1])
  {
    MEMORY[0x25F896FE0](*&v14[1], 0x1000C8077774924);
  }

  LOBYTE(v5) = self->super.mDecryptor != 0;
  return v5;
}

- (void)restartReaderToUseDecryptedDocument
{
  v3 = [(OCBReader *)self binaryReader];
  (*(v3->var0 + 3))(v3);
  [(OCBReader *)self closeFile];
  v4 = [(OCCDecryptor *)self->super.mDecryptor outputFilename];
  [(OCDReader *)self setFileName:v4];

  if (![(OCBReader *)self start])
  {
    v5 = TCDecryptionFailedMessage;

    [TCMessageException raise:v5];
  }
}

@end