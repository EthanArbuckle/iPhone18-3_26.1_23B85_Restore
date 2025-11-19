@interface OspreyMescalSession
- (BOOL)completeWithHandshakeResponse:(id)a3 error:(id *)a4;
- (OspreyMescalSession)init;
- (id)_exchangeData:(id)a3 error:(id *)a4;
- (id)signData:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)init;
- (void)invalidate;
@end

@implementation OspreyMescalSession

- (OspreyMescalSession)init
{
  v7.receiver = self;
  v7.super_class = OspreyMescalSession;
  v2 = [(OspreyMescalSession *)&v7 init];
  v3 = v2;
  if (v2)
  {
    zxcm2Qme0x(0, 0, &v2->_hardwareInfo);
    if (v4)
    {
      OspreyLoggingInit();
      if (os_log_type_enabled(OspreyLogContextDeviceAuth, OS_LOG_TYPE_ERROR))
      {
        [OspreyMescalSession init];
      }
    }

    else
    {
      cp2g1b9ro(&v3->_fairplayContext, &v3->_hardwareInfo);
      if (!v5)
      {
        v3->_state = 1;
        return v3;
      }

      OspreyLoggingInit();
      if (os_log_type_enabled(OspreyLogContextDeviceAuth, OS_LOG_TYPE_ERROR))
      {
        [OspreyMescalSession init];
      }
    }

    return 0;
  }

  return v3;
}

- (void)invalidate
{
  v7 = *MEMORY[0x277D85DE8];
  OspreyLoggingInit();
  v3 = OspreyLogContextDeviceAuth;
  if (os_log_type_enabled(OspreyLogContextDeviceAuth, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[OspreyMescalSession invalidate]";
    _os_log_impl(&dword_25DDE6000, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  self->_state = 0;
  fairplayContext = self->_fairplayContext;
  if (fairplayContext)
  {
    IPaI1oem5iL(fairplayContext);
    self->_fairplayContext = 0;
  }
}

- (void)dealloc
{
  [(OspreyMescalSession *)self invalidate];
  v3.receiver = self;
  v3.super_class = OspreyMescalSession;
  [(OspreyMescalSession *)&v3 dealloc];
}

- (BOOL)completeWithHandshakeResponse:(id)a3 error:(id *)a4
{
  v4 = [(OspreyMescalSession *)self _exchangeData:a3 error:a4];
  v5 = v4 != 0;

  return v5;
}

- (id)_exchangeData:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  fairplayContext = self->_fairplayContext;
  if (!fairplayContext)
  {
    v15 = 0;
LABEL_8:
    v16 = 0;
    goto LABEL_15;
  }

  v21 = 0;
  v20 = 0;
  v19 = -1;
  v8 = a3;
  v9 = a3;
  v10 = [v9 bytes];
  v11 = [v9 length];

  Mib5yocT(200, &self->_hardwareInfo, fairplayContext, v10, v11, &v21, &v20, &v19);
  if (v12)
  {
    v13 = v12;
    OspreyLoggingInit();
    v14 = OspreyLogContextDeviceAuth;
    if (os_log_type_enabled(OspreyLogContextDeviceAuth, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[OspreyMescalSession _exchangeData:error:]";
      v24 = 2048;
      v25 = v13;
      _os_log_error_impl(&dword_25DDE6000, v14, OS_LOG_TYPE_ERROR, "%s SAP exchange failed: %li", buf, 0x16u);
    }

    [(OspreyMescalSession *)self invalidate];
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OspreyDeviceAuthenticationErrorDomain" code:v13 userInfo:&unk_286FA6D60];
    if (a4)
    {
      v15 = v15;
      v16 = 0;
      *a4 = v15;
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (v19 == 1)
  {
    v17 = 2;
    goto LABEL_13;
  }

  if (!v19)
  {
    v17 = 3;
LABEL_13:
    self->_state = v17;
  }

  v16 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:v20];
  v15 = 0;
LABEL_15:

  return v16;
}

- (id)signData:(id)a3 error:(id *)a4
{
  fairplayContext = self->_fairplayContext;
  if (!fairplayContext)
  {
    goto LABEL_6;
  }

  v15 = 0;
  v14 = 0;
  v7 = a3;
  v8 = a3;
  v9 = [v8 bytes];
  v10 = [v8 length];

  Fc3vhtJDvr(fairplayContext, v9, v10, &v15, &v14);
  if (!v11)
  {
    fairplayContext = [MEMORY[0x277CBEA90] dataWithBytes:v15 length:v14];
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OspreyDeviceAuthenticationErrorDomain" code:v11 userInfo:&unk_286FA6D88];
  if (a4)
  {
    v12 = v12;
    fairplayContext = 0;
    *a4 = v12;
  }

  else
  {
    fairplayContext = 0;
  }

LABEL_7:

  return fairplayContext;
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(&dword_25DDE6000, v0, OS_LOG_TYPE_ERROR, "%s Could not create SAP session: %d", v1, 0x12u);
}

@end