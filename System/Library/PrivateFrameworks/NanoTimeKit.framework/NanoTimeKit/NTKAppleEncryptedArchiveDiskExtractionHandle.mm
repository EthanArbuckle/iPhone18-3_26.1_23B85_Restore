@interface NTKAppleEncryptedArchiveDiskExtractionHandle
- (AAArchiveStream_impl)openReturningError:(id *)a3;
- (BOOL)closeReturningError:(id *)a3;
- (NTKAppleEncryptedArchiveDiskExtractionHandle)initWithArchiveURL:(id)a3 symmetricKey:(id)a4 outputDirectoryURL:(id)a5 fileProtection:(id)a6;
- (void)dealloc;
@end

@implementation NTKAppleEncryptedArchiveDiskExtractionHandle

- (NTKAppleEncryptedArchiveDiskExtractionHandle)initWithArchiveURL:(id)a3 symmetricKey:(id)a4 outputDirectoryURL:(id)a5 fileProtection:(id)a6
{
  v10 = a5;
  v11 = a6;
  v18.receiver = self;
  v18.super_class = NTKAppleEncryptedArchiveDiskExtractionHandle;
  v12 = [(NTKAppleEncryptedArchiveHandle *)&v18 initWithArchiveURL:a3 symmetricKey:a4];
  if (v12)
  {
    v13 = [v10 copy];
    outputDirectoryURL = v12->_outputDirectoryURL;
    v12->_outputDirectoryURL = v13;

    v15 = [v11 copy];
    fileProtection = v12->_fileProtection;
    v12->_fileProtection = v15;
  }

  return v12;
}

- (void)dealloc
{
  AAArchiveStreamClose(self->_outputStream);
  self->_outputStream = 0;
  v3.receiver = self;
  v3.super_class = NTKAppleEncryptedArchiveDiskExtractionHandle;
  [(NTKAppleEncryptedArchiveHandle *)&v3 dealloc];
}

- (AAArchiveStream_impl)openReturningError:(id *)a3
{
  v13.receiver = self;
  v13.super_class = NTKAppleEncryptedArchiveDiskExtractionHandle;
  result = [(NTKAppleEncryptedArchiveHandle *)&v13 openReturningError:?];
  if (result)
  {
    v6 = [(NSURL *)self->_outputDirectoryURL absoluteURL];
    v7 = [v6 path];
    v8 = [v7 fileSystemRepresentation];
    v9 = [(NTKAppleEncryptedArchiveHandle *)self archiveEntryEvent];
    self->_outputStream = AAExtractArchiveOutputStreamOpen(v8, v9, invokeBlockForArchiveEvent, 0xC010000000000001, 0);

    result = self->_outputStream;
    if (!result)
    {
      v12.receiver = self;
      v12.super_class = NTKAppleEncryptedArchiveDiskExtractionHandle;
      [(NTKAppleEncryptedArchiveHandle *)&v12 closeReturningError:0];
      if (a3)
      {
        v10 = *a3;
        if (*a3)
        {
          v11 = v10;
          result = 0;
          *a3 = v10;
          return result;
        }

        [(NTKAppleEncryptedArchiveVerificationHandle *)self openReturningError:a3];
      }

      return 0;
    }
  }

  return result;
}

- (BOOL)closeReturningError:(id *)a3
{
  v5 = AAArchiveStreamClose(self->_outputStream);
  v6 = v5 == 0;
  if (v5)
  {
    v7 = [(NTKAppleEncryptedArchiveHandle *)self errorWithCode:?];
  }

  else
  {
    v7 = 0;
  }

  self->_outputStream = 0;
  v15.receiver = self;
  v15.super_class = NTKAppleEncryptedArchiveDiskExtractionHandle;
  v16 = 0;
  v8 = [(NTKAppleEncryptedArchiveHandle *)&v15 closeReturningError:&v16];
  v9 = v16;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }

    v12 = v11;

    v6 = 0;
    v7 = v12;
  }

  if (a3)
  {
    v13 = v7;
    *a3 = v7;
  }

  return v6;
}

@end