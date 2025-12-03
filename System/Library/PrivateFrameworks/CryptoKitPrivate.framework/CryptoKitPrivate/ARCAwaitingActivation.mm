@interface ARCAwaitingActivation
- (ARCAwaitingActivation)initWithRequestContext:(id)context serverPublicKey:(id)key error:(id *)error;
- (id)activateWithResponseData:(id)data error:(id *)error;
@end

@implementation ARCAwaitingActivation

- (ARCAwaitingActivation)initWithRequestContext:(id)context serverPublicKey:(id)key error:(id *)error
{
  contextCopy = context;
  keyCopy = key;
  v17.receiver = self;
  v17.super_class = ARCAwaitingActivation;
  v10 = [(ARCAwaitingActivation *)&v17 init];
  if (v10)
  {
    v11 = [[_TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper alloc] initWithRequestContext:contextCopy serverPublicKeyData:keyCopy error:error];
    precredential = v10->_precredential;
    v10->_precredential = v11;

    makeRequest = [(ARCAwaitingActivationWrapper *)v10->_precredential makeRequest];
    if (!makeRequest)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"ARC.error" code:0 userInfo:0];
      *error = v15 = 0;
      goto LABEL_6;
    }

    requestData = v10->_requestData;
    v10->_requestData = makeRequest;
  }

  v15 = v10;
LABEL_6:

  return v15;
}

- (id)activateWithResponseData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [[ARCCredential alloc] initWithCredentialResponseData:dataCopy precredential:self->_precredential error:error];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"ARC.error" code:2 userInfo:0];
  }

  return v7;
}

@end