@interface NTKAppleEncryptedArchiveVerificationHandle
- (AAArchiveStream_impl)openReturningError:(id *)a3;
- (BOOL)closeReturningError:(id *)a3;
- (NTKAppleEncryptedArchiveVerificationHandle)initWithArchiveURL:(id)a3 symmetricKey:(id)a4 outputDirectoryURL:(id)a5 excludeFields:(id)a6;
- (void)dealloc;
@end

@implementation NTKAppleEncryptedArchiveVerificationHandle

- (NTKAppleEncryptedArchiveVerificationHandle)initWithArchiveURL:(id)a3 symmetricKey:(id)a4 outputDirectoryURL:(id)a5 excludeFields:(id)a6
{
  v10 = a5;
  v11 = a6;
  v18.receiver = self;
  v18.super_class = NTKAppleEncryptedArchiveVerificationHandle;
  v12 = [(NTKAppleEncryptedArchiveHandle *)&v18 initWithArchiveURL:a3 symmetricKey:a4];
  if (v12)
  {
    v13 = [v10 copy];
    outputDirectoryURL = v12->_outputDirectoryURL;
    v12->_outputDirectoryURL = v13;

    v15 = [v11 allObjects];
    v16 = [v15 componentsJoinedByString:{@", "}];

    v12->_excludeFields = AAFieldKeySetCreateWithString([v16 fileSystemRepresentation]);
  }

  return v12;
}

- (void)dealloc
{
  AAArchiveStreamClose(self->_verificationStream);
  AAFieldKeySetDestroy(self->_excludeFields);
  v3.receiver = self;
  v3.super_class = NTKAppleEncryptedArchiveVerificationHandle;
  [(NTKAppleEncryptedArchiveHandle *)&v3 dealloc];
}

- (AAArchiveStream_impl)openReturningError:(id *)a3
{
  v12.receiver = self;
  v12.super_class = NTKAppleEncryptedArchiveVerificationHandle;
  result = [(NTKAppleEncryptedArchiveHandle *)&v12 openReturningError:?];
  self->_archiveStream = result;
  if (result)
  {
    v6 = [(NSURL *)self->_outputDirectoryURL absoluteURL];
    v7 = [v6 path];
    [v7 fileSystemRepresentation];
    v8 = [(NTKAppleEncryptedArchiveHandle *)self archiveEntryEvent];
    self->_verificationStream = AAVerifyDirectoryArchiveOutputStreamOpen();

    result = self->_verificationStream;
    if (!result)
    {
      v11.receiver = self;
      v11.super_class = NTKAppleEncryptedArchiveVerificationHandle;
      [(NTKAppleEncryptedArchiveHandle *)&v11 closeReturningError:0];
      if (a3)
      {
        v9 = *a3;
        if (*a3)
        {
          v10 = v9;
          result = 0;
          *a3 = v9;
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
  v5 = AAArchiveStreamClose(self->_verificationStream);
  v6 = v5 == 0;
  if (v5)
  {
    v7 = [(NTKAppleEncryptedArchiveHandle *)self errorWithCode:?];
  }

  else
  {
    v7 = 0;
  }

  self->_verificationStream = 0;
  AAFieldKeySetDestroy(self->_excludeFields);
  self->_excludeFields = 0;
  v15.receiver = self;
  v15.super_class = NTKAppleEncryptedArchiveVerificationHandle;
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

- (void)openReturningError:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = [(NTKAppleEncryptedArchiveHandle *)a1 errorWithCode:?];
  *a2 = v3;
}

@end