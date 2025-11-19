@interface KCSRPClientContext
- (BOOL)verifyConfirmation:(id)a3 error:(id *)a4;
- (id)copyResposeToChallenge:(id)a3 password:(id)a4 salt:(id)a5 error:(id *)a6;
- (id)copyStart:(id *)a3;
@end

@implementation KCSRPClientContext

- (BOOL)verifyConfirmation:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(KCSRPContext *)self context];
  v7 = ccsrp_session_size();
  if (ExactDataSizeRequirement(v6, v7, a4, @"confirmation data"))
  {
    [(KCSRPContext *)self context];
    [v6 bytes];
    v8 = ccsrp_client_verify_session();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyResposeToChallenge:(id)a3 password:(id)a4 salt:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  [(KCSRPContext *)self context];
  v13 = ccsrp_exchange_size();
  if (ExactDataSizeRequirement(v10, v13, a6, @"challenge data"))
  {
    v14 = MEMORY[0x277CBEB28];
    [(KCSRPContext *)self context];
    v15 = [v14 dataWithLength:ccsrp_session_size()];
    v16 = [(KCSRPContext *)self dataForPassword:v11];
    [(KCSRPContext *)self context];
    [(KCSRPContext *)self userNameString];
    [v16 length];
    [v16 bytes];
    [v12 length];
    [v12 bytes];
    [v10 bytes];
    [v15 mutableBytes];
    v17 = ccsrp_client_process_challenge();
    if (!CoreCryptoError(v17, a6, @"Challenge processing failed: %d", v18, v19, v20, v21, v22, v17))
    {

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)copyStart:(id *)a3
{
  v5 = MEMORY[0x277CBEB28];
  [(KCSRPContext *)self context];
  v6 = [v5 dataWithLength:ccsrp_exchange_size()];
  [(KCSRPContext *)self context];
  [(KCSRPContext *)self rng];
  [v6 mutableBytes];
  started = ccsrp_client_start_authentication();
  if (!CoreCryptoError(started, a3, @"Start packet copy failed: %d", v8, v9, v10, v11, v12, started))
  {

    return 0;
  }

  return v6;
}

@end