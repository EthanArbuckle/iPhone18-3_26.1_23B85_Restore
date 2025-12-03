@interface OCBReader
- (BOOL)retainDecryptorWithErrorCode:(int *)code;
- (OCBReader)initWithCancelDelegate:(id)delegate;
- (id)allocDecryptorWithCryptoKey:(OCCCryptoKey *)key baseOutputFilename:(id)filename;
- (void)closeFile;
- (void)dealloc;
- (void)restartReaderToUseDecryptedDocument;
- (void)setFile:(__sFILE *)file;
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

- (OCBReader)initWithCancelDelegate:(id)delegate
{
  v4.receiver = self;
  v4.super_class = OCBReader;
  result = [(OCDReader *)&v4 initWithCancelDelegate:delegate];
  if (result)
  {
    result->mBinaryReader = 0;
    result->mFile = 0;
  }

  return result;
}

- (void)setFile:(__sFILE *)file
{
  self->mFile = file;
  v3 = fileno(file);
  if (v3 >= 1)
  {
    v4 = v3;
    fstat(v3, &v7);
    v5 = 0;
    st_size = v7.st_size;
    fcntl(v4, 44, &v5);
  }
}

- (id)allocDecryptorWithCryptoKey:(OCCCryptoKey *)key baseOutputFilename:(id)filename
{
  filenameCopy = filename;
  fileName = [(OCDReader *)self fileName];

  if (fileName)
  {
    uTF8String = [filenameCopy UTF8String];
  }

  else
  {
    uTF8String = 0;
  }

  v9 = [(OCBReader *)self allocBinaryStreamerWithCryptoKey:key baseOutputFilenameInUTF8:uTF8String];
  if (v9)
  {
    v9 = [[OCCDecryptor alloc] initWithStreamer:v9];
  }

  return v9;
}

- (BOOL)retainDecryptorWithErrorCode:(int *)code
{
  encryptionInfoReader = [(OCBReader *)self encryptionInfoReader];
  if (!encryptionInfoReader)
  {
    return encryptionInfoReader;
  }

  if (self->super.mDecryptor)
  {
    LOBYTE(encryptionInfoReader) = 1;
    return encryptionInfoReader;
  }

  memset(v14, 0, sizeof(v14));
  encryptionInfoReader2 = [(OCBReader *)self encryptionInfoReader];
  if ((*(encryptionInfoReader2->var0 + 2))(encryptionInfoReader2, &v14[1], v14, code))
  {
    UsingEncryptionInfoBuffer = OCCCryptoKey::createUsingEncryptionInfoBuffer(0, *&v14[1], v14[0]);
    if (!UsingEncryptionInfoBuffer)
    {
      v12 = 8003;
      goto LABEL_9;
    }

    v8 = UsingEncryptionInfoBuffer;
    fileName = [(OCDReader *)self fileName];
    v10 = [(OCBReader *)self allocDecryptorWithCryptoKey:v8 baseOutputFilename:fileName];
    mDecryptor = self->super.mDecryptor;
    self->super.mDecryptor = v10;

    if (!self->super.mDecryptor)
    {
      v12 = 8000;
LABEL_9:
      *code = v12;
    }
  }

  if (*&v14[1])
  {
    MEMORY[0x25F896FE0](*&v14[1], 0x1000C8077774924);
  }

  LOBYTE(encryptionInfoReader) = self->super.mDecryptor != 0;
  return encryptionInfoReader;
}

- (void)restartReaderToUseDecryptedDocument
{
  binaryReader = [(OCBReader *)self binaryReader];
  (*(binaryReader->var0 + 3))(binaryReader);
  [(OCBReader *)self closeFile];
  outputFilename = [(OCCDecryptor *)self->super.mDecryptor outputFilename];
  [(OCDReader *)self setFileName:outputFilename];

  if (![(OCBReader *)self start])
  {
    v5 = TCDecryptionFailedMessage;

    [TCMessageException raise:v5];
  }
}

@end