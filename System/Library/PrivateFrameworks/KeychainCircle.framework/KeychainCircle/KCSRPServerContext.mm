@interface KCSRPServerContext
- (BOOL)resetWithPassword:(id)password error:(id *)error;
- (KCSRPServerContext)initWithUser:(id)user password:(id)password digestInfo:(const ccdigest_info *)info group:(ccdh_gp *)group randomSource:(ccrng_state *)source;
- (KCSRPServerContext)initWithUser:(id)user salt:(id)salt verifier:(id)verifier digestInfo:(const ccdigest_info *)info group:(ccdh_gp *)group randomSource:(ccrng_state *)source;
- (id)copyChallengeFor:(id)for error:(id *)error;
- (id)copyConfirmationFor:(id)for error:(id *)error;
@end

@implementation KCSRPServerContext

- (id)copyConfirmationFor:(id)for error:(id *)error
{
  forCopy = for;
  [(KCSRPContext *)self context];
  v7 = ccsrp_session_size();
  if (!ExactDataSizeRequirement(forCopy, v7, error, @"response data"))
  {
    goto LABEL_4;
  }

  v8 = MEMORY[0x277CBEB28];
  [(KCSRPContext *)self context];
  v9 = [v8 dataWithLength:ccsrp_session_size()];
  [(KCSRPContext *)self context];
  [forCopy bytes];
  [v9 mutableBytes];
  v10 = ccsrp_server_verify_session();
  if (!CoreCryptoError(v10 ^ 1u, error, @"SRP verification failed", v11, v12, v13, v14, v15, v17))
  {

LABEL_4:
    v9 = 0;
  }

  return v9;
}

- (id)copyChallengeFor:(id)for error:(id *)error
{
  forCopy = for;
  [(KCSRPContext *)self context];
  v7 = ccsrp_exchange_size();
  if (!ExactDataSizeRequirement(forCopy, v7, error, @"start data"))
  {
    goto LABEL_4;
  }

  v8 = MEMORY[0x277CBEB28];
  [(KCSRPContext *)self context];
  v9 = [v8 dataWithLength:ccsrp_exchange_size()];
  [(KCSRPContext *)self context];
  [(KCSRPContext *)self rng];
  [(KCSRPContext *)self userNameString];
  salt = [(KCSRPServerContext *)self salt];
  [salt length];
  salt2 = [(KCSRPServerContext *)self salt];
  [salt2 bytes];
  verifier = [(KCSRPServerContext *)self verifier];
  [verifier bytes];
  [forCopy bytes];
  [v9 mutableBytes];
  started = ccsrp_server_start_authentication();

  if (!CoreCryptoError(started, error, @"Server start authentication failed: %d", v14, v15, v16, v17, v18, started))
  {

LABEL_4:
    v9 = 0;
  }

  return v9;
}

- (KCSRPServerContext)initWithUser:(id)user salt:(id)salt verifier:(id)verifier digestInfo:(const ccdigest_info *)info group:(ccdh_gp *)group randomSource:(ccrng_state *)source
{
  saltCopy = salt;
  verifierCopy = verifier;
  v20.receiver = self;
  v20.super_class = KCSRPServerContext;
  v17 = [(KCSRPContext *)&v20 initWithUser:user digestInfo:info group:group randomSource:source];
  v18 = v17;
  if (v17)
  {
    [(KCSRPServerContext *)v17 setVerifier:verifierCopy];
    objc_storeStrong(&v18->_salt, salt);
  }

  return v18;
}

- (KCSRPServerContext)initWithUser:(id)user password:(id)password digestInfo:(const ccdigest_info *)info group:(ccdh_gp *)group randomSource:(ccrng_state *)source
{
  passwordCopy = password;
  v17.receiver = self;
  v17.super_class = KCSRPServerContext;
  v13 = [(KCSRPContext *)&v17 initWithUser:user digestInfo:info group:group randomSource:source];
  v14 = v13;
  if (!v13 || (v15 = 0, [(KCSRPServerContext *)v13 resetWithPassword:passwordCopy error:0]))
  {
    v15 = v14;
  }

  return v15;
}

- (BOOL)resetWithPassword:(id)password error:(id *)error
{
  v5 = MEMORY[0x277CBEB28];
  passwordCopy = password;
  v7 = [v5 dataWithLength:16];
  v8 = [MEMORY[0x277CBEB28] dataWithLength:{8 * MEMORY[0x2318F3070](-[KCSRPContext context](self, "context")[8])}];
  v9 = [(KCSRPContext *)self dataForPassword:passwordCopy];

  context = [(KCSRPContext *)self context];
  [(KCSRPContext *)self rng];
  [(KCSRPContext *)self userNameString];
  [v9 length];
  [v9 bytes];
  [v7 length];
  [v7 mutableBytes];
  [v8 mutableBytes];
  salt_and_verification = ccsrp_generate_salt_and_verification();
  v16 = CoreCryptoError(salt_and_verification, error, @"Error generating SRP salt/verifier", v11, v12, v13, v14, v15, context);
  if (v16)
  {
    [(KCSRPServerContext *)self setVerifier:v8];
    objc_storeStrong(&self->_salt, v7);
  }

  return v16;
}

@end