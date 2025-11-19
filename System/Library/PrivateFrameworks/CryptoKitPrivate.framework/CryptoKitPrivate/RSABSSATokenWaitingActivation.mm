@interface RSABSSATokenWaitingActivation
- (RSABSSATokenWaitingActivation)initWithBlindingInverse:(id)a3 blindedMessage:(id)a4 tokenContent:(id)a5 tokenBlinder:(id)a6 ciphersuite:(const ccrsabssa_ciphersuite *)a7;
- (id)activateTokenWithServerResponse:(id)a3 error:(id *)a4;
@end

@implementation RSABSSATokenWaitingActivation

- (RSABSSATokenWaitingActivation)initWithBlindingInverse:(id)a3 blindedMessage:(id)a4 tokenContent:(id)a5 tokenBlinder:(id)a6 ciphersuite:(const ccrsabssa_ciphersuite *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = RSABSSATokenWaitingActivation;
  v17 = [(RSABSSATokenWaitingActivation *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_tokenBlinder, a6);
    objc_storeStrong(&v18->_blindedMessage, a4);
    objc_storeStrong(&v18->_blindingInverse, a3);
    objc_storeStrong(&v18->_tokenContent, a5);
    v18->_ciphersuite = a7;
  }

  return v18;
}

- (id)activateTokenWithServerResponse:(id)a3 error:(id *)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF88];
  v6 = a3;
  v7 = [(RSABSSATokenWaitingActivation *)self blindingInverse];
  v8 = [v5 dataWithLength:{objc_msgSend(v7, "length")}];

  ciphersuite = self->_ciphersuite;
  v29 = [(RSABSSATokenWaitingActivation *)self tokenBlinder];
  [v29 publicKey];
  [v6 bytes];
  [v6 length];

  v9 = [(RSABSSATokenWaitingActivation *)self blindingInverse];
  [v9 bytes];
  v10 = [(RSABSSATokenWaitingActivation *)self blindingInverse];
  [v10 length];
  v11 = [(RSABSSATokenWaitingActivation *)self tokenContent];
  [v11 bytes];
  v12 = [(RSABSSATokenWaitingActivation *)self tokenContent];
  [v12 length];
  v30 = v8;
  v25 = [v8 mutableBytes];
  v26 = [v8 length];
  v13 = ccrsabssa_unblind_signature();

  if (v13)
  {
    v14 = v30;
    if (a4)
    {
      v15 = MEMORY[0x1E696ABC0];
      v31 = @"corecrypto_error";
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:{v13, v25, v26}];
      v32[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      *a4 = [v15 errorWithDomain:@"com.apple.cryptokit.rsabssa" code:4 userInfo:v17];
    }

    v18 = 0;
  }

  else
  {
    v19 = [RSABSSATokenReady alloc];
    v20 = [(RSABSSATokenWaitingActivation *)self tokenContent:v25];
    v21 = [(RSABSSATokenWaitingActivation *)self tokenBlinder];
    v22 = [v21 keyId];
    v18 = [(RSABSSATokenReady *)v19 initWithTokenContent:v20 tokenSignature:v30 keyId:v22];

    v14 = v30;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v18;
}

@end