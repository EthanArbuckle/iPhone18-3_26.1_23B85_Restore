@interface NTKAppleEncryptedArchiveDiskExtractionHandle
- (AAArchiveStream_impl)openReturningError:(id *)error;
- (BOOL)closeReturningError:(id *)error;
- (NTKAppleEncryptedArchiveDiskExtractionHandle)initWithArchiveURL:(id)l symmetricKey:(id)key outputDirectoryURL:(id)rL fileProtection:(id)protection;
- (void)dealloc;
@end

@implementation NTKAppleEncryptedArchiveDiskExtractionHandle

- (NTKAppleEncryptedArchiveDiskExtractionHandle)initWithArchiveURL:(id)l symmetricKey:(id)key outputDirectoryURL:(id)rL fileProtection:(id)protection
{
  rLCopy = rL;
  protectionCopy = protection;
  v18.receiver = self;
  v18.super_class = NTKAppleEncryptedArchiveDiskExtractionHandle;
  v12 = [(NTKAppleEncryptedArchiveHandle *)&v18 initWithArchiveURL:l symmetricKey:key];
  if (v12)
  {
    v13 = [rLCopy copy];
    outputDirectoryURL = v12->_outputDirectoryURL;
    v12->_outputDirectoryURL = v13;

    v15 = [protectionCopy copy];
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

- (AAArchiveStream_impl)openReturningError:(id *)error
{
  v13.receiver = self;
  v13.super_class = NTKAppleEncryptedArchiveDiskExtractionHandle;
  result = [(NTKAppleEncryptedArchiveHandle *)&v13 openReturningError:?];
  if (result)
  {
    absoluteURL = [(NSURL *)self->_outputDirectoryURL absoluteURL];
    path = [absoluteURL path];
    fileSystemRepresentation = [path fileSystemRepresentation];
    archiveEntryEvent = [(NTKAppleEncryptedArchiveHandle *)self archiveEntryEvent];
    self->_outputStream = AAExtractArchiveOutputStreamOpen(fileSystemRepresentation, archiveEntryEvent, invokeBlockForArchiveEvent, 0xC010000000000001, 0);

    result = self->_outputStream;
    if (!result)
    {
      v12.receiver = self;
      v12.super_class = NTKAppleEncryptedArchiveDiskExtractionHandle;
      [(NTKAppleEncryptedArchiveHandle *)&v12 closeReturningError:0];
      if (error)
      {
        v10 = *error;
        if (*error)
        {
          v11 = v10;
          result = 0;
          *error = v10;
          return result;
        }

        [(NTKAppleEncryptedArchiveVerificationHandle *)self openReturningError:error];
      }

      return 0;
    }
  }

  return result;
}

- (BOOL)closeReturningError:(id *)error
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

  if (error)
  {
    v13 = v7;
    *error = v7;
  }

  return v6;
}

@end