@interface KCSRPServerContext
- (BOOL)resetWithPassword:(id)a3 error:(id *)a4;
- (KCSRPServerContext)initWithUser:(id)a3 password:(id)a4 digestInfo:(const ccdigest_info *)a5 group:(ccdh_gp *)a6 randomSource:(ccrng_state *)a7;
- (KCSRPServerContext)initWithUser:(id)a3 salt:(id)a4 verifier:(id)a5 digestInfo:(const ccdigest_info *)a6 group:(ccdh_gp *)a7 randomSource:(ccrng_state *)a8;
- (id)copyChallengeFor:(id)a3 error:(id *)a4;
- (id)copyConfirmationFor:(id)a3 error:(id *)a4;
@end

@implementation KCSRPServerContext

- (id)copyConfirmationFor:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(KCSRPContext *)self context];
  v7 = ccsrp_session_size();
  if (!ExactDataSizeRequirement(v6, v7, a4, @"response data"))
  {
    goto LABEL_4;
  }

  v8 = MEMORY[0x277CBEB28];
  [(KCSRPContext *)self context];
  v9 = [v8 dataWithLength:ccsrp_session_size()];
  [(KCSRPContext *)self context];
  [v6 bytes];
  [v9 mutableBytes];
  v10 = ccsrp_server_verify_session();
  if (!CoreCryptoError(v10 ^ 1u, a4, @"SRP verification failed", v11, v12, v13, v14, v15, v17))
  {

LABEL_4:
    v9 = 0;
  }

  return v9;
}

- (id)copyChallengeFor:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(KCSRPContext *)self context];
  v7 = ccsrp_exchange_size();
  if (!ExactDataSizeRequirement(v6, v7, a4, @"start data"))
  {
    goto LABEL_4;
  }

  v8 = MEMORY[0x277CBEB28];
  [(KCSRPContext *)self context];
  v9 = [v8 dataWithLength:ccsrp_exchange_size()];
  [(KCSRPContext *)self context];
  [(KCSRPContext *)self rng];
  [(KCSRPContext *)self userNameString];
  v10 = [(KCSRPServerContext *)self salt];
  [v10 length];
  v11 = [(KCSRPServerContext *)self salt];
  [v11 bytes];
  v12 = [(KCSRPServerContext *)self verifier];
  [v12 bytes];
  [v6 bytes];
  [v9 mutableBytes];
  started = ccsrp_server_start_authentication();

  if (!CoreCryptoError(started, a4, @"Server start authentication failed: %d", v14, v15, v16, v17, v18, started))
  {

LABEL_4:
    v9 = 0;
  }

  return v9;
}

- (KCSRPServerContext)initWithUser:(id)a3 salt:(id)a4 verifier:(id)a5 digestInfo:(const ccdigest_info *)a6 group:(ccdh_gp *)a7 randomSource:(ccrng_state *)a8
{
  v15 = a4;
  v16 = a5;
  v20.receiver = self;
  v20.super_class = KCSRPServerContext;
  v17 = [(KCSRPContext *)&v20 initWithUser:a3 digestInfo:a6 group:a7 randomSource:a8];
  v18 = v17;
  if (v17)
  {
    [(KCSRPServerContext *)v17 setVerifier:v16];
    objc_storeStrong(&v18->_salt, a4);
  }

  return v18;
}

- (KCSRPServerContext)initWithUser:(id)a3 password:(id)a4 digestInfo:(const ccdigest_info *)a5 group:(ccdh_gp *)a6 randomSource:(ccrng_state *)a7
{
  v12 = a4;
  v17.receiver = self;
  v17.super_class = KCSRPServerContext;
  v13 = [(KCSRPContext *)&v17 initWithUser:a3 digestInfo:a5 group:a6 randomSource:a7];
  v14 = v13;
  if (!v13 || (v15 = 0, [(KCSRPServerContext *)v13 resetWithPassword:v12 error:0]))
  {
    v15 = v14;
  }

  return v15;
}

- (BOOL)resetWithPassword:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CBEB28];
  v6 = a3;
  v7 = [v5 dataWithLength:16];
  v8 = [MEMORY[0x277CBEB28] dataWithLength:{8 * MEMORY[0x2318F3070](-[KCSRPContext context](self, "context")[8])}];
  v9 = [(KCSRPContext *)self dataForPassword:v6];

  v18 = [(KCSRPContext *)self context];
  [(KCSRPContext *)self rng];
  [(KCSRPContext *)self userNameString];
  [v9 length];
  [v9 bytes];
  [v7 length];
  [v7 mutableBytes];
  [v8 mutableBytes];
  salt_and_verification = ccsrp_generate_salt_and_verification();
  v16 = CoreCryptoError(salt_and_verification, a4, @"Error generating SRP salt/verifier", v11, v12, v13, v14, v15, v18);
  if (v16)
  {
    [(KCSRPServerContext *)self setVerifier:v8];
    objc_storeStrong(&self->_salt, v7);
  }

  return v16;
}

@end