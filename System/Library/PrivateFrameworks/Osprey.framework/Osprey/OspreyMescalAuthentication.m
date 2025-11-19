@interface OspreyMescalAuthentication
- (BOOL)isSessionExpired;
- (OspreyMescalAuthentication)initWithChannel:(id)a3 connectionPreferences:(id)a4;
- (id)mescalSession;
- (void)_continuePreparationWithCompletion:(id)a3;
- (void)moveToState:(unint64_t)a3;
- (void)signData:(id)a3 success:(id)a4 failure:(id)a5;
@end

@implementation OspreyMescalAuthentication

- (OspreyMescalAuthentication)initWithChannel:(id)a3 connectionPreferences:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = OspreyMescalAuthentication;
  v9 = [(OspreyMescalAuthentication *)&v13 init];
  if (v9)
  {
    v10 = [[OspreyAuthService alloc] initWithChannel:v7 authStrategyVersion:[(OspreyMescalAuthentication *)v9 authenticationStrategyVersion]];
    authService = v9->_authService;
    v9->_authService = v10;

    objc_storeStrong(&v9->_connectionPreferences, a4);
    objc_storeStrong(&v9->_grpcChannel, a3);
  }

  return v9;
}

- (id)mescalSession
{
  mescalSession = self->_mescalSession;
  if (!mescalSession)
  {
    v4 = objc_alloc_init(OspreyMescalSession);
    v5 = self->_mescalSession;
    self->_mescalSession = v4;

    mescalSession = self->_mescalSession;
  }

  return mescalSession;
}

- (void)moveToState:(unint64_t)a3
{
  OspreyLoggingInit();
  v5 = OspreyLogContextDeviceAuth;
  if (os_log_type_enabled(OspreyLogContextDeviceAuth, OS_LOG_TYPE_DEBUG))
  {
    [(OspreyMescalAuthentication *)self moveToState:a3, v5];
  }

  if (self->_state > a3)
  {
    if (a3 != 1)
    {
      if (a3)
      {
        goto LABEL_12;
      }

      OspreyLoggingInit();
      v6 = OspreyLogContextDeviceAuth;
      if (os_log_type_enabled(OspreyLogContextDeviceAuth, OS_LOG_TYPE_DEBUG))
      {
        [OspreyMescalAuthentication moveToState:v6];
      }

      [(OspreyConnectionPreferences *)self->_connectionPreferences deleteCertificateData];
      certificateData = self->_certificateData;
      self->_certificateData = 0;
    }

    OspreyLoggingInit();
    v8 = OspreyLogContextDeviceAuth;
    if (os_log_type_enabled(OspreyLogContextDeviceAuth, OS_LOG_TYPE_DEBUG))
    {
      [OspreyMescalAuthentication moveToState:v8];
    }

    mescalSession = self->_mescalSession;
    self->_mescalSession = 0;

    sessionExpiration = self->_sessionExpiration;
    self->_sessionExpiration = 0;
  }

LABEL_12:
  self->_state = a3;
}

- (BOOL)isSessionExpired
{
  sessionExpiration = self->_sessionExpiration;
  v3 = [MEMORY[0x277CBEAA8] date];
  LOBYTE(sessionExpiration) = [(NSDate *)sessionExpiration compare:v3]== NSOrderedAscending;

  return sessionExpiration;
}

- (void)signData:(id)a3 success:(id)a4 failure:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(OspreyMescalAuthentication *)self mescalSession];
  v12 = v11;
  if (v11)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __55__OspreyMescalAuthentication_signData_success_failure___block_invoke;
    v14[3] = &unk_2799F23B0;
    v15 = v11;
    v16 = v8;
    v18 = v10;
    v19 = v9;
    v17 = self;
    [(OspreyMescalAuthentication *)self _continuePreparationWithCompletion:v14];
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OspreyMescalAuthentication" code:1 userInfo:&unk_286FA6DB0];
    (*(v10 + 2))(v10, v13);
  }
}

void __55__OspreyMescalAuthentication_signData_success_failure___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    (*(a1[7] + 16))();
  }

  else
  {
    v5 = a1[4];
    v6 = a1[5];
    v10 = 0;
    v7 = [v5 signData:v6 error:&v10];
    v8 = v10;
    v4 = v8;
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      (*(a1[8] + 16))();
    }

    else
    {
      (*(a1[7] + 16))();
    }
  }
}

- (void)_continuePreparationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(OspreyMescalAuthentication *)self state];
  switch(v5)
  {
    case 2uLL:
      if (![(OspreyMescalAuthentication *)self isSessionExpired])
      {
        v4[2](v4, 0);
        break;
      }

      goto LABEL_9;
    case 1uLL:
      v9 = [(OspreyConnectionPreferences *)self->_connectionPreferences certificateData];
      v10 = [(OspreyMescalAuthentication *)self mescalSession];
      v18 = 0;
      v11 = [v10 handshakeRequestWithCertificateData:v9 error:&v18];
      v12 = v18;

      if (v11)
      {
        authService = self->_authService;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __65__OspreyMescalAuthentication__continuePreparationWithCompletion___block_invoke_3;
        v16[3] = &unk_2799F23D8;
        v16[4] = self;
        v17 = v4;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __65__OspreyMescalAuthentication__continuePreparationWithCompletion___block_invoke_4;
        v14[3] = &unk_2799F1E80;
        v14[4] = self;
        v15 = v17;
        [(OspreyAuthService *)authService createClientSessionWithData:v11 success:v16 failure:v14];
      }

      else
      {
        (v4)[2](v4, v12);
      }

      break;
    case 0uLL:
      v6 = [(OspreyConnectionPreferences *)self->_connectionPreferences certificateData];
      certificateData = self->_certificateData;
      self->_certificateData = v6;

      if (!self->_certificateData)
      {
        v8 = self->_authService;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __65__OspreyMescalAuthentication__continuePreparationWithCompletion___block_invoke;
        v21[3] = &unk_2799F1E58;
        v21[4] = self;
        v22 = v4;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __65__OspreyMescalAuthentication__continuePreparationWithCompletion___block_invoke_2;
        v19[3] = &unk_2799F1E80;
        v19[4] = self;
        v20 = v22;
        [(OspreyAuthService *)v8 certificateDataWithSuccess:v21 failure:v19];

        break;
      }

LABEL_9:
      [(OspreyMescalAuthentication *)self moveToState:1];
      [(OspreyMescalAuthentication *)self _continuePreparationWithCompletion:v4];
      break;
  }
}

void __65__OspreyMescalAuthentication__continuePreparationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 24) setCertificateData:v3];
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = v3;
  v6 = v3;

  [*(a1 + 32) moveToState:1];
  [*(a1 + 32) _continuePreparationWithCompletion:*(a1 + 40)];
}

void __65__OspreyMescalAuthentication__continuePreparationWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 moveToState:0];
  (*(*(a1 + 40) + 16))();
}

void __65__OspreyMescalAuthentication__continuePreparationWithCompletion___block_invoke_3(uint64_t a1, void *a2, double a3)
{
  v5 = MEMORY[0x277CBEAA8];
  v6 = a2;
  v7 = [v5 dateWithTimeIntervalSinceNow:a3];
  v8 = *(a1 + 32);
  v9 = *(v8 + 48);
  *(v8 + 48) = v7;

  v10 = [*(a1 + 32) mescalSession];
  v15 = 0;
  v11 = [v10 completeWithHandshakeResponse:v6 error:&v15];

  v12 = v15;
  v13 = *(a1 + 32);
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    [v13 moveToState:2];
    [*(a1 + 32) _continuePreparationWithCompletion:*(a1 + 40)];
  }

  else
  {
    [v13 moveToState:0];
    (*(*(a1 + 40) + 16))();
  }
}

void __65__OspreyMescalAuthentication__continuePreparationWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 moveToState:0];
  (*(*(a1 + 40) + 16))();
}

- (void)moveToState:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = 136315650;
  v5 = "[OspreyMescalAuthentication moveToState:]";
  v6 = 2048;
  v7 = v3;
  v8 = 2048;
  v9 = a2;
  _os_log_debug_impl(&dword_25DDE6000, log, OS_LOG_TYPE_DEBUG, "%s Moving from state %ld to %ld", &v4, 0x20u);
}

- (void)moveToState:(os_log_t)log .cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[OspreyMescalAuthentication moveToState:]";
  _os_log_debug_impl(&dword_25DDE6000, log, OS_LOG_TYPE_DEBUG, "%s Removing cached certificate data", &v1, 0xCu);
}

- (void)moveToState:(os_log_t)log .cold.3(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[OspreyMescalAuthentication moveToState:]";
  _os_log_debug_impl(&dword_25DDE6000, log, OS_LOG_TYPE_DEBUG, "%s Clearing session info", &v1, 0xCu);
}

@end