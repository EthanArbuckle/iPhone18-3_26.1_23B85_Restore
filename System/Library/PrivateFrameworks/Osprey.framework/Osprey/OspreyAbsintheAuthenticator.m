@interface OspreyAbsintheAuthenticator
- (BOOL)isSessionInfoExpired;
- (OspreyAbsintheAuthenticator)initWithChannel:(id)a3 connectionPreferences:(id)a4;
- (id)_signData:(id)a3;
- (void)_ensureAuthenticatedWithCompletion:(id)a3 failure:(id)a4;
- (void)_initializeAbsintheClientWithCertificateData:(id)a3 success:(id)a4 fail:(id)a5;
- (void)dealloc;
- (void)setState:(int64_t)a3;
- (void)signData:(id)a3 success:(id)a4 failure:(id)a5;
- (void)willMoveToState:(int64_t)a3;
@end

@implementation OspreyAbsintheAuthenticator

- (OspreyAbsintheAuthenticator)initWithChannel:(id)a3 connectionPreferences:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = OspreyAbsintheAuthenticator;
  v9 = [(OspreyAbsintheAuthenticator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_state = 0;
    objc_storeStrong(&v9->_connectionPreferences, a4);
    objc_storeStrong(&v10->_channel, a3);
    v11 = [[OspreyAuthService alloc] initWithChannel:v10->_channel authStrategyVersion:[(OspreyAbsintheAuthenticator *)v10 authenticationStrategyVersion]];
    authService = v10->_authService;
    v10->_authService = v11;
  }

  return v10;
}

- (void)dealloc
{
  nacContext = self->_nacContext;
  if (nacContext)
  {
    IW1PcFszqNK(nacContext);
  }

  v4.receiver = self;
  v4.super_class = OspreyAbsintheAuthenticator;
  [(OspreyAbsintheAuthenticator *)&v4 dealloc];
}

- (void)setState:(int64_t)a3
{
  [(OspreyAbsintheAuthenticator *)self willMoveToState:?];
  self->_state = a3;

  [(OspreyAbsintheAuthenticator *)self didMoveToState:a3];
}

- (void)willMoveToState:(int64_t)a3
{
  OspreyLoggingInit();
  v5 = OspreyLogContextAbsinthe;
  if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_DEBUG))
  {
    [(OspreyAbsintheAuthenticator *)self willMoveToState:a3, v5];
  }

  if (self->_state > a3)
  {
    if (a3 > 1)
    {
      if (a3 > 3)
      {
        if (a3 != 4)
        {
          return;
        }

        goto LABEL_14;
      }
    }

    else
    {
      OspreyLoggingInit();
      if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_DEBUG))
      {
        [OspreyAbsintheAuthenticator willMoveToState:];
      }

      [(OspreyConnectionPreferences *)self->_connectionPreferences deleteCertificateData];
    }

    OspreyLoggingInit();
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_DEBUG))
    {
      [OspreyAbsintheAuthenticator willMoveToState:];
    }

    nacContext = self->_nacContext;
    if (nacContext)
    {
      IW1PcFszqNK(nacContext);
    }

    self->_nacContext = 0;
LABEL_14:
    OspreyLoggingInit();
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_DEBUG))
    {
      [OspreyAbsintheAuthenticator willMoveToState:];
    }

    sessionInfo = self->_sessionInfo;
    self->_sessionInfo = 0;

    sessionExpireOn = self->_sessionExpireOn;
    self->_sessionExpireOn = 0;
  }
}

- (void)signData:(id)a3 success:(id)a4 failure:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  OspreyLoggingInit();
  v11 = OspreyLogContextAbsinthe;
  if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "[OspreyAbsintheAuthenticator signData:success:failure:]";
    _os_log_impl(&dword_25DDE6000, v11, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__OspreyAbsintheAuthenticator_signData_success_failure___block_invoke;
  v15[3] = &unk_2799F1E08;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(OspreyAbsintheAuthenticator *)self _ensureAuthenticatedWithCompletion:v15 failure:v12];
}

void __56__OspreyAbsintheAuthenticator_signData_success_failure___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _readyToSignClientData] && (objc_msgSend(*(a1 + 32), "_signData:", *(a1 + 40)), (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    (*(*(a1 + 48) + 16))();
    [*(*(a1 + 32) + 8) setAbsintheTimestampForKey:@"FinalSignedData"];
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OspreyAbsintheAuthenticationErrorDomain" code:1 userInfo:0];
    (*(*(a1 + 56) + 16))();
  }
}

- (id)_signData:(id)a3
{
  v4 = a3;
  v5 = v4;
  v11 = 0;
  nacContext = self->_nacContext;
  if (!nacContext)
  {
    OspreyLoggingInit();
    v8 = OspreyLogContextAbsinthe;
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
    {
      [OspreyAbsintheAuthenticator _signData:v8];
    }

    goto LABEL_7;
  }

  t1BoNctgaUu66(nacContext, [v4 bytes], objc_msgSend(v4, "length"), &v11);
  if (v7)
  {
    OspreyLoggingInit();
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
    {
      [OspreyAbsintheAuthenticator _signData:];
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v9 = [MEMORY[0x277CBEA90] dataWithBytes:v11 length:0];
  if (Be81a395Bf0(v11))
  {
    OspreyLoggingInit();
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
    {
      [OspreyAbsintheAuthenticator _signData:];
    }
  }

LABEL_8:

  return v9;
}

- (BOOL)isSessionInfoExpired
{
  if (self->_state < 5)
  {
    return 1;
  }

  p_sessionExpireOn = &self->_sessionExpireOn;
  if (!self->_sessionExpireOn)
  {
    return 1;
  }

  OspreyLoggingInit();
  if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_DEBUG))
  {
    [OspreyAbsintheAuthenticator isSessionInfoExpired];
  }

  v3 = *p_sessionExpireOn;
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [(NSDate *)v3 compare:v4]== NSOrderedAscending;

  return v5;
}

- (void)_ensureAuthenticatedWithCompletion:(id)a3 failure:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  state = self->_state;
  if (state != 5)
  {
    if (state == 2)
    {
      OspreyLoggingInit();
      v14 = OspreyLogContextAbsinthe;
      if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v39 = "[OspreyAbsintheAuthenticator _ensureAuthenticatedWithCompletion:failure:]";
        _os_log_impl(&dword_25DDE6000, v14, OS_LOG_TYPE_INFO, "%s [Absinthe state] Certificate fetched state", buf, 0xCu);
      }

      [(OspreyGRPCChannel *)self->_channel setAbsintheTimestampForKey:@"CreateSessionStart"];
      v15 = [(OspreyConnectionPreferences *)self->_connectionPreferences certificateData];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_13;
      v28[3] = &unk_2799F1EF8;
      v28[4] = self;
      v29 = v6;
      v30 = v7;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_4;
      v26[3] = &unk_2799F1ED0;
      v27 = v30;
      [(OspreyAbsintheAuthenticator *)self _initializeAbsintheClientWithCertificateData:v15 success:v28 fail:v26];

      v16 = v29;
      goto LABEL_27;
    }

    if (!state)
    {
      OspreyLoggingInit();
      v9 = OspreyLogContextAbsinthe;
      if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v39 = "[OspreyAbsintheAuthenticator _ensureAuthenticatedWithCompletion:failure:]";
        _os_log_impl(&dword_25DDE6000, v9, OS_LOG_TYPE_INFO, "%s [Absinthe state] Initial state", buf, 0xCu);
      }

      [(OspreyGRPCChannel *)self->_channel setAbsintheTimestampForKey:@"GetCertificateStart"];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke;
      v35[3] = &unk_2799F1E30;
      v35[4] = self;
      v36 = v6;
      v10 = v7;
      v37 = v10;
      v11 = MEMORY[0x25F8A5BA0](v35);
      [(OspreyAbsintheAuthenticator *)self setState:1];
      v12 = [(OspreyConnectionPreferences *)self->_connectionPreferences certificateData];
      if (v12)
      {
        OspreyLoggingInit();
        v13 = OspreyLogContextAbsinthe;
        if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v39 = "[OspreyAbsintheAuthenticator _ensureAuthenticatedWithCompletion:failure:]";
          _os_log_impl(&dword_25DDE6000, v13, OS_LOG_TYPE_INFO, "%s Certificate found in cache!", buf, 0xCu);
        }

        v11[2](v11);
      }

      else
      {
        authService = self->_authService;
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_10;
        v33[3] = &unk_2799F1E58;
        v33[4] = self;
        v34 = v11;
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_2;
        v31[3] = &unk_2799F1E80;
        v31[4] = self;
        v32 = v10;
        [(OspreyAuthService *)authService certificateDataWithSuccess:v33 failure:v31];
      }

      v16 = v36;
LABEL_27:

      goto LABEL_28;
    }

    if (![(OspreyAbsintheAuthenticator *)self isSessionInfoExpired])
    {
      v19 = self;
      v20 = 5;
      goto LABEL_24;
    }

LABEL_19:
    v19 = self;
    v20 = 2;
LABEL_24:
    [(OspreyAbsintheAuthenticator *)v19 setState:v20];
    [(OspreyAbsintheAuthenticator *)self _ensureAuthenticatedWithCompletion:v6 failure:v7];
    goto LABEL_28;
  }

  OspreyLoggingInit();
  v17 = OspreyLogContextAbsinthe;
  if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v39 = "[OspreyAbsintheAuthenticator _ensureAuthenticatedWithCompletion:failure:]";
    _os_log_impl(&dword_25DDE6000, v17, OS_LOG_TYPE_INFO, "%s [Absinthe state] Session Initialized state", buf, 0xCu);
  }

  [(OspreyGRPCChannel *)self->_channel setAbsintheTimestampForKey:@"SessionEstablishedStart"];
  if ([(OspreyAbsintheAuthenticator *)self isSessionInfoExpired])
  {
    OspreyLoggingInit();
    v18 = OspreyLogContextAbsinthe;
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v39 = "[OspreyAbsintheAuthenticator _ensureAuthenticatedWithCompletion:failure:]";
      _os_log_impl(&dword_25DDE6000, v18, OS_LOG_TYPE_INFO, "%s Session info expired!", buf, 0xCu);
    }

    goto LABEL_19;
  }

  nDYmeMqvWb(self->_nacContext, [(NSData *)self->_sessionInfo bytes], [(NSData *)self->_sessionInfo length]);
  if (v21)
  {
    if (v7)
    {
      v22 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"OspreyAbsintheAuthenticationNACClientErrorDomain" code:v21 userInfo:0];
      v23 = AbsintheErrorForState(3, v22);
      (*(v7 + 2))(v7, v23);
    }
  }

  else
  {
    OspreyLoggingInit();
    v25 = OspreyLogContextAbsinthe;
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v39 = "[OspreyAbsintheAuthenticator _ensureAuthenticatedWithCompletion:failure:]";
      _os_log_impl(&dword_25DDE6000, v25, OS_LOG_TYPE_INFO, "%s Session key established!", buf, 0xCu);
    }

    [(OspreyAbsintheAuthenticator *)self setState:6];
    [(OspreyGRPCChannel *)self->_channel setAbsintheTimestampForKey:@"SessionEstablishedEnd"];
    v6[2](v6);
  }

LABEL_28:
}

uint64_t __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setAbsintheTimestampForKey:@"GetCertificateEnd"];
  [*(a1 + 32) setState:2];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _ensureAuthenticatedWithCompletion:v3 failure:v4];
}

uint64_t __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_10(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 24) setCertificateData:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) setState:0];
  if (*(a1 + 40))
  {
    v3 = AbsintheErrorForState(0, v4);
    (*(*(a1 + 40) + 16))();
  }
}

void __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_13(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_2_14;
  v9[3] = &unk_2799F1EA8;
  v9[4] = v5;
  v10 = v4;
  v11 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_3;
  v7[3] = &unk_2799F1ED0;
  v8 = *(a1 + 48);
  [v6 createClientSessionWithData:a2 success:v9 failure:v7];
}

void __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_2_14(uint64_t a1, void *a2, double a3)
{
  v5 = *(*(a1 + 32) + 8);
  v6 = a2;
  [v5 setAbsintheTimestampForKey:@"CreateSessionEnd"];
  [*(a1 + 32) setSessionInfo:v6];

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a3];
  v8 = *(a1 + 32);
  v9 = *(v8 + 56);
  *(v8 + 56) = v7;
  v10 = v7;

  [*(a1 + 32) setState:5];
  [*(a1 + 32) _ensureAuthenticatedWithCompletion:*(a1 + 40) failure:*(a1 + 48)];
}

void __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_3(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v3 = AbsintheErrorForState(2, a2);
    (*(*(a1 + 32) + 16))();
  }
}

void __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_4(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v3 = AbsintheErrorForState(1, a2);
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_initializeAbsintheClientWithCertificateData:(id)a3 success:(id)a4 fail:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  [(OspreyAbsintheAuthenticator *)self setState:3];
  v11 = [v10 bytes];
  v12 = [v10 length];

  KxmB0CKvgWt(v11, v12);
  v14 = v13;
  if (v13 <= -44023)
  {
    if (v13 == -44302)
    {
      OspreyLoggingInit();
      if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
      {
        [OspreyAbsintheAuthenticator _initializeAbsintheClientWithCertificateData:success:fail:];
      }

      goto LABEL_6;
    }

    if (v13 == -44204)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  if ((v13 + 44022) <= 0x11 && ((1 << (v13 - 10)) & 0x30003) != 0)
  {
LABEL_4:
    [(OspreyConnectionPreferences *)self->_connectionPreferences deleteCertificateData];
    OspreyLoggingInit();
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
    {
      [OspreyAbsintheAuthenticator _initializeAbsintheClientWithCertificateData:success:fail:];
    }

LABEL_6:
    [(OspreyAbsintheAuthenticator *)self setState:0];
    v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"OspreyAbsintheAuthenticationNACClientErrorDomain" code:v14 userInfo:0];
    v9[2](v9, v15);
    goto LABEL_7;
  }

  if (v13)
  {
LABEL_15:
    OspreyLoggingInit();
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
    {
      [OspreyAbsintheAuthenticator _initializeAbsintheClientWithCertificateData:success:fail:];
    }

    goto LABEL_6;
  }

  [(OspreyAbsintheAuthenticator *)self setState:4];
  OspreyLoggingInit();
  if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_DEBUG))
  {
    [OspreyAbsintheAuthenticator _initializeAbsintheClientWithCertificateData:success:fail:];
  }

  self->_nacContext = 0;
  v15 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
  Be81a395Bf0(0);
  v8[2](v8, v15);
LABEL_7:
}

- (void)willMoveToState:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 136315650;
  v5 = "[OspreyAbsintheAuthenticator willMoveToState:]";
  v6 = 2048;
  v7 = v3;
  v8 = 2048;
  v9 = a2;
  _os_log_debug_impl(&dword_25DDE6000, log, OS_LOG_TYPE_DEBUG, "%s Moving from state %ld to %ld", &v4, 0x20u);
}

- (void)_signData:(os_log_t)log .cold.3(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[OspreyAbsintheAuthenticator _signData:]";
  _os_log_error_impl(&dword_25DDE6000, log, OS_LOG_TYPE_ERROR, "%s NacContext is null!", &v1, 0xCu);
}

- (void)_initializeAbsintheClientWithCertificateData:success:fail:.cold.3()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end