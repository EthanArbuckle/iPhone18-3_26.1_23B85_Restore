@interface OCXReader
- (BOOL)retainDecryptorWithErrorCode:(int *)a3;
- (BOOL)verifyFileFormat;
- (OCPZipPackage)zipPackage;
- (void)restartReaderToUseDecryptedDocument;
@end

@implementation OCXReader

- (OCPZipPackage)zipPackage
{
  if (!self->mZipPackage)
  {
    v3 = [(OCDReader *)self fileName];

    if (v3)
    {
      v4 = [OCPZipPackage alloc];
      v5 = [(OCDReader *)self fileName];
      v6 = [(OCPZipPackage *)v4 initWithPath:v5];
    }

    else
    {
      v7 = [(OCDReader *)self data];

      if (!v7)
      {
        goto LABEL_7;
      }

      v8 = [OCPZipPackage alloc];
      v5 = [(OCDReader *)self data];
      v6 = [(OCPZipPackage *)v8 initWithData:v5];
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
  v3 = [(OCXReader *)self zipPackage];

  if (!v3)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  return 1;
}

- (BOOL)retainDecryptorWithErrorCode:(int *)a3
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
      v7 = [(NSString *)mFileName UTF8String];
      UsingInputFile = OCCXmlStreamer::createUsingInputFile(v7, a3, v8, v9);
      v13 = UsingInputFile;
      if (UsingInputFile)
      {
        v14 = [(OCDEncryptedReader *)self defaultPassphrase];
        OCCXmlStreamer::setDefaultPassphrase(v13, [v14 UTF8String]);

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
        OCCXmlStreamer::createUsingInputBuffer(&self->mDataBytes, v11, a3, v12);
      }
    }
  }

  return mData;
}

- (void)restartReaderToUseDecryptedDocument
{
  v3 = [(OCCDecryptor *)self->super.mDecryptor outputFilename];
  [(OCDReader *)self setFileName:?];
}

@end