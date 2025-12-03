@interface KCSRPClientContext
- (BOOL)verifyConfirmation:(id)confirmation error:(id *)error;
- (id)copyResposeToChallenge:(id)challenge password:(id)password salt:(id)salt error:(id *)error;
- (id)copyStart:(id *)start;
@end

@implementation KCSRPClientContext

- (BOOL)verifyConfirmation:(id)confirmation error:(id *)error
{
  confirmationCopy = confirmation;
  [(KCSRPContext *)self context];
  v7 = ccsrp_session_size();
  if (ExactDataSizeRequirement(confirmationCopy, v7, error, @"confirmation data"))
  {
    [(KCSRPContext *)self context];
    [confirmationCopy bytes];
    v8 = ccsrp_client_verify_session();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyResposeToChallenge:(id)challenge password:(id)password salt:(id)salt error:(id *)error
{
  challengeCopy = challenge;
  passwordCopy = password;
  saltCopy = salt;
  [(KCSRPContext *)self context];
  v13 = ccsrp_exchange_size();
  if (ExactDataSizeRequirement(challengeCopy, v13, error, @"challenge data"))
  {
    v14 = MEMORY[0x277CBEB28];
    [(KCSRPContext *)self context];
    v15 = [v14 dataWithLength:ccsrp_session_size()];
    v16 = [(KCSRPContext *)self dataForPassword:passwordCopy];
    [(KCSRPContext *)self context];
    [(KCSRPContext *)self userNameString];
    [v16 length];
    [v16 bytes];
    [saltCopy length];
    [saltCopy bytes];
    [challengeCopy bytes];
    [v15 mutableBytes];
    v17 = ccsrp_client_process_challenge();
    if (!CoreCryptoError(v17, error, @"Challenge processing failed: %d", v18, v19, v20, v21, v22, v17))
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

- (id)copyStart:(id *)start
{
  v5 = MEMORY[0x277CBEB28];
  [(KCSRPContext *)self context];
  v6 = [v5 dataWithLength:ccsrp_exchange_size()];
  [(KCSRPContext *)self context];
  [(KCSRPContext *)self rng];
  [v6 mutableBytes];
  started = ccsrp_client_start_authentication();
  if (!CoreCryptoError(started, start, @"Start packet copy failed: %d", v8, v9, v10, v11, v12, started))
  {

    return 0;
  }

  return v6;
}

@end