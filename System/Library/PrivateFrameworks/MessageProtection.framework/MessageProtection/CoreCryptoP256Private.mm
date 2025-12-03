@interface CoreCryptoP256Private
+ (id)generate;
+ (void)generate;
- (CoreCryptoP256Private)initWithData:(id)data error:(id *)error;
- (CoreCryptoP256Private)initWithKey:(ccec_full_ctx *)key;
- (id)keyAgreement:(id)agreement error:(id *)error;
- (id)keychainData;
- (id)publicKey;
- (id)signData:(id)data error:(id *)error;
- (void)dealloc;
@end

@implementation CoreCryptoP256Private

- (CoreCryptoP256Private)initWithKey:(ccec_full_ctx *)key
{
  v5.receiver = self;
  v5.super_class = CoreCryptoP256Private;
  result = [(CoreCryptoP256Private *)&v5 init];
  if (result)
  {
    result->_full_key = key;
  }

  return result;
}

+ (id)generate
{
  v3 = MEMORY[0x2318925A0](self, a2);
  v4 = malloc_type_malloc((32 * *v3) | 0x10, 0x60040B37CB4BBuLL);
  ccrng();
  key = ccec_compact_generate_key();
  if (key)
  {
    v7 = key;
    v8 = MessageProtectionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[(CoreCryptoP256Private *)v7];
    }

    free(v4);
    v6 = 0;
  }

  else
  {
    v6 = [[self alloc] initWithKey:v4];
  }

  return v6;
}

- (id)keyAgreement:(id)agreement error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  dataRepresentation = [agreement dataRepresentation];
  if (!dataRepresentation)
  {
    MPLogAndAssignError(7, error, @"Failed to obtain data for the public key.");
    v8 = 0;
    goto LABEL_12;
  }

  v7 = (24 * *MEMORY[0x2318925A0]() + 31) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  [dataRepresentation length];
  [dataRepresentation bytes];
  if (ccec_compact_import_pub())
  {
    MPLogAndAssignError(7, error, @"Failed to initialize compact corecrypto public key.");
    v8 = 0;
    goto LABEL_12;
  }

  v9 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
  if (!ccrng())
  {
    v11 = @"Failed to initialize masking rng for corecrypto key agreement.";
    v12 = 7;
LABEL_10:
    MPLogAndAssignError(v12, error, v11);
    v8 = 0;
    goto LABEL_11;
  }

  full_key = self->_full_key;
  [v9 mutableBytes];
  if (ccecdh_compute_shared_secret())
  {
    v11 = @"Failure to compute a shared secret with corecrypto.";
    v12 = 405;
    goto LABEL_10;
  }

  v8 = v9;
LABEL_11:

LABEL_12:
  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)publicKey
{
  var0 = self->_full_key->var0;
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:(cczp_bitlen() + 7) >> 3];
  [v4 mutableBytes];
  full_key = self->_full_key;
  ccec_compact_export_pub();
  v8 = 0;
  v6 = [[SecKeyP256Public alloc] initWithData:v4 error:&v8];

  return v6;
}

- (void)dealloc
{
  full_key = self->_full_key;
  if (full_key)
  {
    free(full_key);
  }

  v4.receiver = self;
  v4.super_class = CoreCryptoP256Private;
  [(CoreCryptoP256Private *)&v4 dealloc];
}

- (id)keychainData
{
  v2 = MessageProtectionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    [(CoreCryptoP256Private *)v2 keychainData:v3];
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEA90]);

  return v10;
}

- (id)signData:(id)data error:(id *)error
{
  v4 = MessageProtectionLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [(CoreCryptoP256Private *)v4 signData:v5 error:v6, v7, v8, v9, v10, v11];
  }

  return 0;
}

- (CoreCryptoP256Private)initWithData:(id)data error:(id *)error
{
  v5 = MessageProtectionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [(CoreCryptoP256Private *)v5 initWithData:v6 error:v7, v8, v9, v10, v11, v12];
  }

  return 0;
}

+ (void)generate
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = self;
  _os_log_error_impl(&dword_22B404000, a2, OS_LOG_TYPE_ERROR, "Failed to generate an ephemeral ECDH key error code: %i", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end