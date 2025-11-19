@interface RSABSSATokenBlinder
+ (id)keyIDFromSPKI:(id)a3;
- (BOOL)setParamsForSize:(unint64_t)a3 params:(id)a4 error:(id *)a5;
- (BOOL)verifyFullyParsedASN1:(const char *)a3 end:(const char *)a4 error:(id *)a5;
- (RSABSSATokenBlinder)initWithPublicKey:(id)a3 error:(id *)a4;
- (id)tokenWaitingActivationWithContent:(id)a3 error:(id *)a4;
@end

@implementation RSABSSATokenBlinder

+ (id)keyIDFromSPKI:(id)a3
{
  v3 = MEMORY[0x1E695DF88];
  v4 = a3;
  v5 = [[v3 alloc] initWithLength:32];
  v6 = [v4 bytes];
  v7 = [v4 length];

  CC_SHA256(v6, v7, [v5 mutableBytes]);

  return v5;
}

- (BOOL)verifyFullyParsedASN1:(const char *)a3 end:(const char *)a4 error:(id *)a5
{
  if (a3 != a4 && a5)
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.cryptokit.rsabssa" code:2 userInfo:0];
  }

  return a3 == a4;
}

- (BOOL)setParamsForSize:(unint64_t)a3 params:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = 8 * a3;
  self->_ciphersuiteModulusByteCount = 8 * a3;
  self->_publicKey[0].pb_n = a3;
  if (8 * a3 == 256)
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
  if (a5)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.cryptokit.rsabssa" code:1 userInfo:0];
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_8:

  return v11;
}

- (RSABSSATokenBlinder)initWithPublicKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = RSABSSATokenBlinder;
  v7 = [(RSABSSATokenBlinder *)&v18 init];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [RSABSSATokenBlinder keyIDFromSPKI:v6];
  keyId = v7->_keyId;
  v7->_keyId = v8;

  v10 = [[_TtC16CryptoKitPrivate19RSAPSSSPKI_Bridging alloc] initWithData:v6 error:a4];
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = v10;
  v12 = [(RSAPSSSPKI_Bridging *)v10 publicKeyBytes];
  v13 = [v12 bytes];
  v14 = [v12 length];
  [v12 bytes];
  if (![(RSABSSATokenBlinder *)v7 setParamsForSize:ccder_decode_rsa_pub_n() params:v11 error:a4])
  {

    goto LABEL_7;
  }

  [v12 bytes];
  v15 = [(RSABSSATokenBlinder *)v7 verifyFullyParsedASN1:ccder_decode_rsa_pub() end:v13 + v14 error:a4];

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

- (id)tokenWaitingActivationWithContent:(id)a3 error:(id *)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
LABEL_8:
    v10 = ccrng();
    v19 = a4;
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
      if (v19)
      {
        v14 = MEMORY[0x1E696ABC0];
        v21 = @"corecrypto_error";
        v15 = [MEMORY[0x1E696AD98] numberWithInteger:{v13, v10}];
        v22[0] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
        *v19 = [v14 errorWithDomain:@"com.apple.cryptokit.rsabssa" code:3 userInfo:v16];
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

  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.cryptokit.rsabssa" code:0 userInfo:0];
  }

  v8 = 0;
  v9 = 0;
LABEL_14:

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

@end