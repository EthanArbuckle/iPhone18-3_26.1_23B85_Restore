@interface RSABSSATokenWaitingActivation
- (RSABSSATokenWaitingActivation)initWithBlindingInverse:(id)inverse blindedMessage:(id)message tokenContent:(id)content tokenBlinder:(id)blinder ciphersuite:(const ccrsabssa_ciphersuite *)ciphersuite;
- (id)activateTokenWithServerResponse:(id)response error:(id *)error;
@end

@implementation RSABSSATokenWaitingActivation

- (RSABSSATokenWaitingActivation)initWithBlindingInverse:(id)inverse blindedMessage:(id)message tokenContent:(id)content tokenBlinder:(id)blinder ciphersuite:(const ccrsabssa_ciphersuite *)ciphersuite
{
  inverseCopy = inverse;
  messageCopy = message;
  contentCopy = content;
  blinderCopy = blinder;
  v20.receiver = self;
  v20.super_class = RSABSSATokenWaitingActivation;
  v17 = [(RSABSSATokenWaitingActivation *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_tokenBlinder, blinder);
    objc_storeStrong(&v18->_blindedMessage, message);
    objc_storeStrong(&v18->_blindingInverse, inverse);
    objc_storeStrong(&v18->_tokenContent, content);
    v18->_ciphersuite = ciphersuite;
  }

  return v18;
}

- (id)activateTokenWithServerResponse:(id)response error:(id *)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF88];
  responseCopy = response;
  blindingInverse = [(RSABSSATokenWaitingActivation *)self blindingInverse];
  v8 = [v5 dataWithLength:{objc_msgSend(blindingInverse, "length")}];

  ciphersuite = self->_ciphersuite;
  tokenBlinder = [(RSABSSATokenWaitingActivation *)self tokenBlinder];
  [tokenBlinder publicKey];
  [responseCopy bytes];
  [responseCopy length];

  blindingInverse2 = [(RSABSSATokenWaitingActivation *)self blindingInverse];
  [blindingInverse2 bytes];
  blindingInverse3 = [(RSABSSATokenWaitingActivation *)self blindingInverse];
  [blindingInverse3 length];
  tokenContent = [(RSABSSATokenWaitingActivation *)self tokenContent];
  [tokenContent bytes];
  tokenContent2 = [(RSABSSATokenWaitingActivation *)self tokenContent];
  [tokenContent2 length];
  v30 = v8;
  mutableBytes = [v8 mutableBytes];
  v26 = [v8 length];
  v13 = ccrsabssa_unblind_signature();

  if (v13)
  {
    v14 = v30;
    if (error)
    {
      v15 = MEMORY[0x1E696ABC0];
      v31 = @"corecrypto_error";
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:{v13, mutableBytes, v26}];
      v32[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      *error = [v15 errorWithDomain:@"com.apple.cryptokit.rsabssa" code:4 userInfo:v17];
    }

    v18 = 0;
  }

  else
  {
    v19 = [RSABSSATokenReady alloc];
    v20 = [(RSABSSATokenWaitingActivation *)self tokenContent:mutableBytes];
    tokenBlinder2 = [(RSABSSATokenWaitingActivation *)self tokenBlinder];
    keyId = [tokenBlinder2 keyId];
    v18 = [(RSABSSATokenReady *)v19 initWithTokenContent:v20 tokenSignature:v30 keyId:keyId];

    v14 = v30;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v18;
}

@end