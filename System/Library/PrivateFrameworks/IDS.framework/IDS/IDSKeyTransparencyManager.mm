@interface IDSKeyTransparencyManager
- (IDSKeyTransparencyManager)initWithDelegate:(id)a3;
- (IDSKeyTransparencyManagerDelegate)delegate;
- (void)_setupXPC:(BOOL)a3;
- (void)cacheClearRequest:(id)a3;
- (void)fetchKTRegistrationStatusWithCompletion:(id)a3;
- (void)getCurrentRegistrationState:(id)a3 withCompletion:(id)a4;
- (void)getKeyTransparencyOptInEligiblityForApplication:(id)a3 withCompletion:(id)a4;
- (void)handleRegistrationStateUpdate:(id)a3;
- (void)peerVerificationFinishedWithResults:(id)a3;
- (void)registrationMightNeedUpdate:(id)a3;
- (void)sendOptInUpdateForApplications:(id)a3 withCompletion:(id)a4;
- (void)sendOptInUpdateForApplicationsOptInState:(id)a3 withCompletion:(id)a4;
- (void)sendOptInUpdateRequest:(id)a3 withCompletion:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation IDSKeyTransparencyManager

- (IDSKeyTransparencyManager)initWithDelegate:(id)a3
{
  v25[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = IDSKeyTransparencyManager;
  v5 = [(IDSKeyTransparencyManager *)&v23 init];
  if (v5)
  {
    v22 = sub_195A92CA8();
    v24[0] = v22;
    v6 = [IDSKTVerificationInfoProvider alloc];
    v7 = sub_195A92CA8();
    v8 = [(IDSKTVerificationInfoProvider *)v6 initWithApplicationIdentifier:v7];
    v25[0] = v8;
    v9 = sub_195A92DAC();
    v24[1] = v9;
    v10 = [IDSKTVerificationInfoProvider alloc];
    v11 = sub_195A92DAC();
    v12 = [(IDSKTVerificationInfoProvider *)v10 initWithApplicationIdentifier:v11];
    v25[1] = v12;
    v13 = sub_195A92EB0();
    v24[2] = v13;
    v14 = [IDSKTVerificationInfoProvider alloc];
    v15 = sub_195A92EB0();
    v16 = [(IDSKTVerificationInfoProvider *)v14 initWithApplicationIdentifier:v15];
    v25[2] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
    applicationToVerificationInfoProviders = v5->_applicationToVerificationInfoProviders;
    v5->_applicationToVerificationInfoProviders = v17;

    v19 = [MEMORY[0x1E696AEC0] stringGUID];
    [(IDSKeyTransparencyManager *)v5 setUuid:v19];

    if (v4)
    {
      [(IDSKeyTransparencyManager *)v5 setDelegate:v4];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_setupXPC:(BOOL)a3
{
  v5 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Setting up xpc for new IDSKeyTransparencyManager", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A930D4;
  v6[3] = &unk_1E7441480;
  objc_copyWeak(&v7, buf);
  v8 = a3;
  [IDSXPCDaemonController performDaemonControllerTask:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);

  MEMORY[0x1EEE66B58](self, sel__setupXPC_);
}

- (void)getKeyTransparencyOptInEligiblityForApplication:(id)a3 withCompletion:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] KeyTransparency];
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v5;
        _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Fetching KT eligibility with completion {application: %@}", &buf, 0xCu);
      }

      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = sub_195A934B0;
      v32 = &unk_1E74414A8;
      v33 = v5;
      v9 = v6;
      v34 = v9;
      v10 = &v29;
      v11 = v9;
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v36 = sub_195A94CEC;
      v37 = &unk_1E743FC78;
      v38 = v11;
      v39 = v10;
      [IDSXPCDaemonController performDaemonControllerTask:&buf, v29, v30, v31, v32];

      v12 = v33;
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_195B33308(v8, v21, v22, v23, v24, v25, v26, v27);
      }

      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSKeyTransparencyManagerErrorDomain" code:200 userInfo:0];
      (*(v6 + 2))(v6, 0, 0, v12);
    }
  }

  else
  {
    v13 = [MEMORY[0x1E69A5270] KeyTransparency];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_195B33380(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSKeyTransparencyManagerErrorDomain" code:200 userInfo:0];
    MEMORY[0x10](0, 0, 0, v12);
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)sendOptInUpdateForApplications:(id)a3 withCompletion:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] KeyTransparency];
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v5;
        _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Updating IDS Server with KT Opt in Info {optInInfo: %@}", buf, 0xCu);
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_195A936D4;
      v27[3] = &unk_1E7440330;
      v29 = v6;
      v28 = v5;
      [IDSXPCDaemonController performDaemonControllerTask:v27];

      v9 = v29;
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_195B333F8(v8, v19, v20, v21, v22, v23, v24, v25);
      }

      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSKeyTransparencyManagerErrorDomain" code:200 userInfo:0];
      (*(v6 + 2))(v6, 0, v9);
    }
  }

  else
  {
    v10 = [MEMORY[0x1E69A5270] KeyTransparency];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B33470(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSKeyTransparencyManagerErrorDomain" code:200 userInfo:0];
    MEMORY[0x10](0, 0, v9, v18);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)sendOptInUpdateForApplicationsOptInState:(id)a3 withCompletion:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] KeyTransparency];
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v5;
        _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Updating IDS Server with KT Opt in Info {optInInfo: %@}", buf, 0xCu);
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_195A93AD8;
      v27[3] = &unk_1E7440330;
      v29 = v6;
      v28 = v5;
      [IDSXPCDaemonController performDaemonControllerTask:v27];

      v9 = v29;
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_195B334E8(v8, v17, v18, v19, v20, v21, v22, v23);
      }

      v24 = objc_alloc(MEMORY[0x1E69A52E0]);
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSKeyTransparencyManagerErrorDomain" code:200 userInfo:0];
      v25 = [v24 initWithSuccess:0 serverProvidedSMT:0 error:v9];
      (*(v6 + 2))(v6, v25);
    }
  }

  else
  {
    v9 = [MEMORY[0x1E69A5270] KeyTransparency];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B33560(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)sendOptInUpdateRequest:(id)a3 withCompletion:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] KeyTransparency];
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v5;
        _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Updating IDS Server with KT Opt In/Out Request {optInOutRequest: %@}", buf, 0xCu);
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_195A93E1C;
      v27[3] = &unk_1E7440330;
      v29 = v6;
      v28 = v5;
      [IDSXPCDaemonController performDaemonControllerTask:v27];

      v9 = v29;
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_195B335D8(v8, v17, v18, v19, v20, v21, v22, v23);
      }

      v24 = objc_alloc(MEMORY[0x1E69A52E0]);
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSKeyTransparencyManagerErrorDomain" code:200 userInfo:0];
      v25 = [v24 initWithSuccess:0 optedInOutURIs:0 serverSMTByURI:0 error:v9];
      (*(v6 + 2))(v6, v25);
    }
  }

  else
  {
    v9 = [MEMORY[0x1E69A5270] KeyTransparency];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B33650(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)fetchKTRegistrationStatusWithCompletion:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A94030;
  v5[3] = &unk_1E74402E0;
  v6 = v3;
  v4 = v3;
  [IDSXPCDaemonController performDaemonControllerTask:v5];
}

- (void)registrationMightNeedUpdate:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A942B8;
  v5[3] = &unk_1E743F918;
  v6 = v3;
  v4 = v3;
  [IDSXPCDaemonController performDaemonControllerTask:v5];
}

- (void)peerVerificationFinishedWithResults:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Received peerVerificationFinishedWithResults notification from Transparency", buf, 2u);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A94458;
  v6[3] = &unk_1E743F918;
  v7 = v3;
  v5 = v3;
  [IDSXPCDaemonController performDaemonControllerTask:v6];
}

- (void)cacheClearRequest:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Transparency requested to clear IDS query cache. { Request: %@ }", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A94630;
  v7[3] = &unk_1E743F918;
  v8 = v3;
  v5 = v3;
  [IDSXPCDaemonController performDaemonControllerTask:v7];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getCurrentRegistrationState:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Transparency requested our current KT registration state.", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A947F8;
  v10[3] = &unk_1E7440330;
  v11 = v5;
  v12 = v6;
  v8 = v5;
  v9 = v6;
  [IDSXPCDaemonController performDaemonControllerTask:v10];
}

- (void)handleRegistrationStateUpdate:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 transparencyManager:self registrationStateUpdated:v6];
  }
}

- (IDSKeyTransparencyManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end