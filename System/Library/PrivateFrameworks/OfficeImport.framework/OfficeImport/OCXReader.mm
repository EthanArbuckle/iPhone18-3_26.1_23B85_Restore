@interface OCXReader
- (BOOL)retainDecryptorWithErrorCode:(int *)code;
- (BOOL)verifyFileFormat;
- (OCPZipPackage)zipPackage;
- (void)restartReaderToUseDecryptedDocument;
@end

@implementation OCXReader

- (OCPZipPackage)zipPackage
{
  if (!self->mZipPackage)
  {
    fileName = [(OCDReader *)self fileName];

    if (fileName)
    {
      v4 = [OCPZipPackage alloc];
      fileName2 = [(OCDReader *)self fileName];
      v6 = [(OCPZipPackage *)v4 initWithPath:fileName2];
    }

    else
    {
      data = [(OCDReader *)self data];

      if (!data)
      {
        goto LABEL_7;
      }

      v8 = [OCPZipPackage alloc];
      fileName2 = [(OCDReader *)self data];
      v6 = [(OCPZipPackage *)v8 initWithData:fileName2];
    }

    mZipPackage = self->mZipPackage;
    self->mZipPackage = v6;
  }

LABEL_7:
  v10 = self->mZipPackage;

  return v10;
}

- (BOOL)verifyFileFormat
{
  [(OCDEncryptedReader *)self useUnencryptedDocument];
  zipPackage = [(OCXReader *)self zipPackage];

  if (!zipPackage)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  return 1;
}

- (BOOL)retainDecryptorWithErrorCode:(int *)code
{
  if (self->super.mDecryptor)
  {
    LOBYTE(mData) = 1;
  }

  else
  {
    mFileName = self->super.super.mFileName;
    if (mFileName)
    {
      uTF8String = [(NSString *)mFileName UTF8String];
      UsingInputFile = OCCXmlStreamer::createUsingInputFile(uTF8String, code, v8, v9);
      v13 = UsingInputFile;
      if (UsingInputFile)
      {
        defaultPassphrase = [(OCDEncryptedReader *)self defaultPassphrase];
        OCCXmlStreamer::setDefaultPassphrase(v13, [defaultPassphrase UTF8String]);

        v15 = [[OCCDecryptor alloc] initWithStreamer:v13];
        mDecryptor = self->super.mDecryptor;
        self->super.mDecryptor = v15;

        LOBYTE(mData) = self->super.mDecryptor != 0;
      }

      else
      {
        LOBYTE(mData) = 0;
      }
    }

    else
    {
      mData = self->super.super.mData;
      if (mData)
      {
        self->mDataBytes = [(NSData *)mData bytes];
        v11 = [(NSData *)self->super.super.mData length];
        OCCXmlStreamer::createUsingInputBuffer(&self->mDataBytes, v11, code, v12);
      }
    }
  }

  return mData;
}

- (void)restartReaderToUseDecryptedDocument
{
  outputFilename = [(OCCDecryptor *)self->super.mDecryptor outputFilename];
  [(OCDReader *)self setFileName:?];
}

@end