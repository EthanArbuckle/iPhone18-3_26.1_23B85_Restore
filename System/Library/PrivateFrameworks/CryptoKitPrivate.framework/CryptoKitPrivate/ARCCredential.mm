@interface ARCCredential
- (ARCCredential)initWithCredentialData:(id)data error:(id *)error;
- (ARCCredential)initWithCredentialResponseData:(id)data precredential:(id)precredential error:(id *)error;
- (id)getCredentialDataError:(id *)error;
- (id)presentWithPresentationContext:(id)context presentationLimit:(unint64_t)limit error:(id *)error;
- (int64_t)getRemainingPresentationCountWithPresentationContext:(id)context presentationLimit:(unint64_t)limit error:(id *)error;
@end

@implementation ARCCredential

- (ARCCredential)initWithCredentialResponseData:(id)data precredential:(id)precredential error:(id *)error
{
  dataCopy = data;
  precredentialCopy = precredential;
  v15.receiver = self;
  v15.super_class = ARCCredential;
  v10 = [(ARCCredential *)&v15 init];
  if (!v10 || ([precredentialCopy makeCredentialWithResponseData:dataCopy error:error], v11 = objc_claimAutoreleasedReturnValue(), credential = v10->_credential, v10->_credential = v11, credential, dataCopy) && v10->_credential)
  {
    v13 = v10;
  }

  else
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"ARC.error" code:2 userInfo:0];
    *error = v13 = 0;
  }

  return v13;
}

- (id)getCredentialDataError:(id *)error
{
  v4 = [(ARCCredentialWrapper *)self->_credential getCredentialDataAndReturnError:?];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"ARC.error" code:2 userInfo:0];
  }

  return v5;
}

- (ARCCredential)initWithCredentialData:(id)data error:(id *)error
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = ARCCredential;
  v7 = [(ARCCredential *)&v12 init];
  if (v7)
  {
    v8 = [[_TtC16CryptoKitPrivate20ARCCredentialWrapper alloc] initWithCredentialData:dataCopy error:error];
    credential = v7->_credential;
    v7->_credential = v8;

    v10 = v7;
  }

  else
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"ARC.error" code:2 userInfo:0];
  }

  return v7;
}

- (id)presentWithPresentationContext:(id)context presentationLimit:(unint64_t)limit error:(id *)error
{
  contextCopy = context;
  v9 = [[ARCPresentation alloc] initWithCredential:self presentationContext:contextCopy presentationLimit:limit error:error];

  return v9;
}

- (int64_t)getRemainingPresentationCountWithPresentationContext:(id)context presentationLimit:(unint64_t)limit error:(id *)error
{
  v6 = [(ARCCredentialWrapper *)self->_credential getRemainingPresentationCountWithPresentationContext:context presentationLimit:limit];
  if (v6 < 0)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"ARC.error" code:2 userInfo:0];
  }

  return v6;
}

@end