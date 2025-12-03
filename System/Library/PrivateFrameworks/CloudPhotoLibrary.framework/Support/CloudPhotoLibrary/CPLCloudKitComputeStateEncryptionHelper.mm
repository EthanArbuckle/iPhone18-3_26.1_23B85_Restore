@interface CPLCloudKitComputeStateEncryptionHelper
- (BOOL)decryptFileAtURL:(id)l outputFileURL:(id)rL error:(id *)error;
- (BOOL)encryptFileAtURL:(id)l outputFileURL:(id)rL error:(id *)error;
- (CPLCloudKitComputeStateEncryptionHelper)init;
- (void)start;
@end

@implementation CPLCloudKitComputeStateEncryptionHelper

- (CPLCloudKitComputeStateEncryptionHelper)init
{
  v3.receiver = self;
  v3.super_class = CPLCloudKitComputeStateEncryptionHelper;
  result = [(CPLCloudKitComputeStateEncryptionHelper *)&v3 init];
  if (result)
  {
    result->_unitTestMode = 0;
  }

  return result;
}

- (void)start
{
  v3 = &PFClientSideEncryptionManagerProfilePhotosUnitTest;
  if (!self->_unitTestMode)
  {
    v3 = &PFClientSideEncryptionManagerProfilePhotosCloudPhotoD;
  }

  v6 = *v3;
  v4 = [[PFClientSideEncryptionManager alloc] initWithProfile:v6];
  clientSideEncryptionManager = self->_clientSideEncryptionManager;
  self->_clientSideEncryptionManager = v4;

  [(PFClientSideEncryptionManager *)self->_clientSideEncryptionManager start];
}

- (BOOL)encryptFileAtURL:(id)l outputFileURL:(id)rL error:(id *)error
{
  clientSideEncryptionManager = self->_clientSideEncryptionManager;
  v23 = 0;
  v7 = [(PFClientSideEncryptionManager *)clientSideEncryptionManager archiveFileAtURL:l outputFileURL:rL error:&v23];
  v8 = v23;
  v9 = v8;
  if (v7)
  {
    goto LABEL_12;
  }

  domain = [v8 domain];
  v11 = [domain isEqualToString:PFErrorDomain];

  if (v11)
  {
    code = [v9 code];
    if (code != 8)
    {
      if (code == 500101)
      {
        v13 = @"Encryption helper is unavailable: %@";
        v14 = 1;
        goto LABEL_8;
      }

      cplUnderlyingPOSIXError = [v9 cplUnderlyingPOSIXError];

      if (!cplUnderlyingPOSIXError)
      {
        v13 = @"Failed to encrypt file: %@";
        v14 = 2;
LABEL_8:
        v16 = [NSString alloc];
        localizedDescription = [v9 localizedDescription];
        v18 = [v16 initWithFormat:v13, localizedDescription];

        if (v18)
        {
          v24[0] = NSLocalizedDescriptionKey;
          v24[1] = NSUnderlyingErrorKey;
          v25[0] = v18;
          v25[1] = v9;
          v19 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
          v20 = [NSError errorWithDomain:@"CPLComputeStateEncryptionError" code:v14 userInfo:v19];

          v9 = v20;
        }
      }
    }
  }

  if (error)
  {
    v21 = v9;
    *error = v9;
  }

LABEL_12:

  return v7;
}

- (BOOL)decryptFileAtURL:(id)l outputFileURL:(id)rL error:(id *)error
{
  clientSideEncryptionManager = self->_clientSideEncryptionManager;
  v23 = 0;
  v7 = [(PFClientSideEncryptionManager *)clientSideEncryptionManager unarchiveFileAtURL:l outputFileURL:rL error:&v23];
  v8 = v23;
  v9 = v8;
  if (v7)
  {
    goto LABEL_12;
  }

  domain = [v8 domain];
  v11 = [domain isEqualToString:PFErrorDomain];

  if (v11)
  {
    code = [v9 code];
    if (code != 8)
    {
      if (code == 500101)
      {
        v13 = @"Encryption helper is unavailable: %@";
        v14 = 1;
        goto LABEL_8;
      }

      cplUnderlyingPOSIXError = [v9 cplUnderlyingPOSIXError];

      if (!cplUnderlyingPOSIXError)
      {
        v13 = @"Failed to decrypt file: %@";
        v14 = 3;
LABEL_8:
        v16 = [NSString alloc];
        localizedDescription = [v9 localizedDescription];
        v18 = [v16 initWithFormat:v13, localizedDescription];

        if (v18)
        {
          v24[0] = NSLocalizedDescriptionKey;
          v24[1] = NSUnderlyingErrorKey;
          v25[0] = v18;
          v25[1] = v9;
          v19 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
          v20 = [NSError errorWithDomain:@"CPLComputeStateEncryptionError" code:v14 userInfo:v19];

          v9 = v20;
        }
      }
    }
  }

  if (error)
  {
    v21 = v9;
    *error = v9;
  }

LABEL_12:

  return v7;
}

@end