@interface RSABSSATokenBlinder
+ (id)keyIDFromSPKI:(id)i;
- (BOOL)setParamsForSize:(unint64_t)size params:(id)params error:(id *)error;
- (BOOL)verifyFullyParsedASN1:(const char *)n1 end:(const char *)end error:(id *)error;
- (RSABSSATokenBlinder)initWithPublicKey:(id)key error:(id *)error;
- (id)tokenWaitingActivationWithContent:(id)content error:(id *)error;
@end

@implementation RSABSSATokenBlinder

+ (id)keyIDFromSPKI:(id)i
{
  v3 = MEMORY[0x1E695DF88];
  iCopy = i;
  v5 = [[v3 alloc] initWithLength:32];
  bytes = [iCopy bytes];
  v7 = [iCopy length];

  CC_SHA256(bytes, v7, [v5 mutableBytes]);

  return v5;
}

- (BOOL)verifyFullyParsedASN1:(const char *)n1 end:(const char *)end error:(id *)error
{
  if (n1 != end && error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.cryptokit.rsabssa" code:2 userInfo:0];
  }

  return n1 == end;
}

- (BOOL)setParamsForSize:(unint64_t)size params:(id)params error:(id *)error
{
  paramsCopy = params;
  v9 = 8 * size;
  self->_ciphersuiteModulusByteCount = 8 * size;
  self->_publicKey[0].pb_n = size;
  if (8 * size == 256)
  {
    v10 = MEMORY[0x1E69E95B0];
    goto LABEL_7;
  }

  if (v9 == 512)
  {
    v10 = MEMORY[0x1E69E95C0];
    goto LABEL_7;
  }

  if (v9 == 384)
  {
    v10 = MEMORY[0x1E69E95B8];
LABEL_7:
    self->_ciphersuite = v10;
    v11 = 1;
    goto LABEL_8;
  }

  self->_ciphersuite = 0;
  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.cryptokit.rsabssa" code:1 userInfo:0];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_8:

  return v11;
}

- (RSABSSATokenBlinder)initWithPublicKey:(id)key error:(id *)error
{
  keyCopy = key;
  v18.receiver = self;
  v18.super_class = RSABSSATokenBlinder;
  v7 = [(RSABSSATokenBlinder *)&v18 init];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [RSABSSATokenBlinder keyIDFromSPKI:keyCopy];
  keyId = v7->_keyId;
  v7->_keyId = v8;

  v10 = [[_TtC16CryptoKitPrivate19RSAPSSSPKI_Bridging alloc] initWithData:keyCopy error:error];
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = v10;
  publicKeyBytes = [(RSAPSSSPKI_Bridging *)v10 publicKeyBytes];
  bytes = [publicKeyBytes bytes];
  v14 = [publicKeyBytes length];
  [publicKeyBytes bytes];
  if (![(RSABSSATokenBlinder *)v7 setParamsForSize:ccder_decode_rsa_pub_n() params:v11 error:error])
  {

    goto LABEL_7;
  }

  [publicKeyBytes bytes];
  v15 = [(RSABSSATokenBlinder *)v7 verifyFullyParsedASN1:ccder_decode_rsa_pub() end:bytes + v14 error:error];

  if (!v15)
  {
LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

LABEL_5:
  v16 = v7;
LABEL_8:

  return v16;
}

- (id)tokenWaitingActivationWithContent:(id)content error:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  contentCopy = content;
  v7 = contentCopy;
  if (contentCopy)
  {
    v8 = contentCopy;
LABEL_8:
    v10 = ccrng();
    errorCopy = error;
    v11 = [MEMORY[0x1E695DF88] dataWithLength:self->_ciphersuiteModulusByteCount];
    v12 = [MEMORY[0x1E695DF88] dataWithLength:self->_ciphersuiteModulusByteCount];
    ciphersuite = self->_ciphersuite;
    [v8 bytes];
    [v8 length];
    [v11 mutableBytes];
    [v11 length];
    [v12 mutableBytes];
    [v12 length];
    v13 = ccrsabssa_blind_message();
    if (v13)
    {
      if (errorCopy)
      {
        v14 = MEMORY[0x1E696ABC0];
        v21 = @"corecrypto_error";
        v15 = [MEMORY[0x1E696AD98] numberWithInteger:{v13, v10}];
        v22[0] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
        *errorCopy = [v14 errorWithDomain:@"com.apple.cryptokit.rsabssa" code:3 userInfo:v16];
      }

      v9 = 0;
    }

    else
    {
      v9 = [[RSABSSATokenWaitingActivation alloc] initWithBlindingInverse:v11 blindedMessage:v12 tokenContent:v8 tokenBlinder:self ciphersuite:self->_ciphersuite, v10];
    }

    goto LABEL_14;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:32];
  if (!SecRandomCopyBytes(*MEMORY[0x1E697B308], [v8 length], objc_msgSend(v8, "mutableBytes")))
  {
    goto LABEL_8;
  }

  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.cryptokit.rsabssa" code:0 userInfo:0];
  }

  v8 = 0;
  v9 = 0;
LABEL_14:

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

@end