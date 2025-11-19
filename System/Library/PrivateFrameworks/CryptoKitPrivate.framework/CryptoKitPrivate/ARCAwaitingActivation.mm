@interface ARCAwaitingActivation
- (ARCAwaitingActivation)initWithRequestContext:(id)a3 serverPublicKey:(id)a4 error:(id *)a5;
- (id)activateWithResponseData:(id)a3 error:(id *)a4;
@end

@implementation ARCAwaitingActivation

- (ARCAwaitingActivation)initWithRequestContext:(id)a3 serverPublicKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = ARCAwaitingActivation;
  v10 = [(ARCAwaitingActivation *)&v17 init];
  if (v10)
  {
    v11 = [[_TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper alloc] initWithRequestContext:v8 serverPublicKeyData:v9 error:a5];
    precredential = v10->_precredential;
    v10->_precredential = v11;

    v13 = [(ARCAwaitingActivationWrapper *)v10->_precredential makeRequest];
    if (!v13)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"ARC.error" code:0 userInfo:0];
      *a5 = v15 = 0;
      goto LABEL_6;
    }

    requestData = v10->_requestData;
    v10->_requestData = v13;
  }

  v15 = v10;
LABEL_6:

  return v15;
}

- (id)activateWithResponseData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[ARCCredential alloc] initWithCredentialResponseData:v6 precredential:self->_precredential error:a4];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ARC.error" code:2 userInfo:0];
  }

  return v7;
}

@end