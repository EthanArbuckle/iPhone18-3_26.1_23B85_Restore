@interface ARCCredential
- (ARCCredential)initWithCredentialData:(id)a3 error:(id *)a4;
- (ARCCredential)initWithCredentialResponseData:(id)a3 precredential:(id)a4 error:(id *)a5;
- (id)getCredentialDataError:(id *)a3;
- (id)presentWithPresentationContext:(id)a3 presentationLimit:(unint64_t)a4 error:(id *)a5;
- (int64_t)getRemainingPresentationCountWithPresentationContext:(id)a3 presentationLimit:(unint64_t)a4 error:(id *)a5;
@end

@implementation ARCCredential

- (ARCCredential)initWithCredentialResponseData:(id)a3 precredential:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = ARCCredential;
  v10 = [(ARCCredential *)&v15 init];
  if (!v10 || ([v9 makeCredentialWithResponseData:v8 error:a5], v11 = objc_claimAutoreleasedReturnValue(), credential = v10->_credential, v10->_credential = v11, credential, v8) && v10->_credential)
  {
    v13 = v10;
  }

  else
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"ARC.error" code:2 userInfo:0];
    *a5 = v13 = 0;
  }

  return v13;
}

- (id)getCredentialDataError:(id *)a3
{
  v4 = [(ARCCredentialWrapper *)self->_credential getCredentialDataAndReturnError:?];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ARC.error" code:2 userInfo:0];
  }

  return v5;
}

- (ARCCredential)initWithCredentialData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = ARCCredential;
  v7 = [(ARCCredential *)&v12 init];
  if (v7)
  {
    v8 = [[_TtC16CryptoKitPrivate20ARCCredentialWrapper alloc] initWithCredentialData:v6 error:a4];
    credential = v7->_credential;
    v7->_credential = v8;

    v10 = v7;
  }

  else
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ARC.error" code:2 userInfo:0];
  }

  return v7;
}

- (id)presentWithPresentationContext:(id)a3 presentationLimit:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [[ARCPresentation alloc] initWithCredential:self presentationContext:v8 presentationLimit:a4 error:a5];

  return v9;
}

- (int64_t)getRemainingPresentationCountWithPresentationContext:(id)a3 presentationLimit:(unint64_t)a4 error:(id *)a5
{
  v6 = [(ARCCredentialWrapper *)self->_credential getRemainingPresentationCountWithPresentationContext:a3 presentationLimit:a4];
  if (v6 < 0)
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ARC.error" code:2 userInfo:0];
  }

  return v6;
}

@end