@interface CDPPiggybackingPayloadProvider
+ (id)proxyWithContext:(id)a3 error:(id *)a4;
- (id)processIncomingPayload:(id)a3 error:(id *)a4;
@end

@implementation CDPPiggybackingPayloadProvider

+ (id)proxyWithContext:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 duplexSession];
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v6;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Creating a piggybacking data provider with session: %@", buf, 0xCu);
  }

  v8 = objc_alloc_init(CDPPiggybackingPayloadProvider);
  v9 = objc_alloc_init(MEMORY[0x277D22B08]);
  delegate = v8->_delegate;
  v8->_delegate = v9;

  v11 = objc_opt_respondsToSelector();
  v12 = MEMORY[0x277D22B10];
  v13 = v8->_delegate;
  if (v11)
  {
    v14 = [v5 altDSID];
    v15 = [v5 telemetryFlowID];
    v16 = [v5 telemetryDeviceSessionID];
    v26 = 0;
    v17 = [v12 sessionWithCircleDelegate:v13 session:v6 altDSID:v14 flowID:v15 deviceSessionID:v16 error:&v26];
    v18 = v26;
    session = v8->_session;
    v8->_session = v17;
  }

  else
  {
    v25 = 0;
    v20 = [MEMORY[0x277D22B10] sessionWithCircleDelegate:v13 session:v6 error:&v25];
    v18 = v25;
    v14 = v8->_session;
    v8->_session = v20;
  }

  if (v18)
  {
    if (a4)
    {
      v21 = v18;
      v22 = 0;
      *a4 = v18;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = v8;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)processIncomingPayload:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _CDPSignpostLogSystem();
  v8 = _CDPSignpostCreate();

  v9 = _CDPSignpostLogSystem();
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v28) = 0;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "KCJoiningRequestProcessMessage", " enableTelemetry=YES ", &v28, 2u);
  }

  v12 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 134217984;
    v29 = v8;
    _os_log_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: KCJoiningRequestProcessMessage  enableTelemetry=YES ", &v28, 0xCu);
  }

  v13 = [(KCJoiningRequestCircleSession *)self->_session processMessage:v6 error:a4];

  if (a4 && *a4)
  {
    Nanoseconds = _CDPSignpostGetNanoseconds();
    v15 = _CDPSignpostLogSystem();
    v16 = v15;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v17 = [*a4 code];
      v28 = 67240192;
      LODWORD(v29) = v17;
      _os_signpost_emit_with_name_impl(&dword_24510B000, v16, OS_SIGNPOST_INTERVAL_END, v8, "KCJoiningRequestProcessMessage", " Error=%{public,signpost.telemetry:number1,name=Error}d ", &v28, 8u);
    }

    v18 = _CDPSignpostLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [*a4 code];
      v28 = 134218496;
      v29 = v8;
      v30 = 2048;
      v31 = Nanoseconds / 1000000000.0;
      v32 = 1026;
      v33 = v19;
      v20 = "END [%lld] %fs: KCJoiningRequestProcessMessage  Error=%{public,signpost.telemetry:number1,name=Error}d ";
      v21 = v18;
      v22 = 28;
LABEL_18:
      _os_log_impl(&dword_24510B000, v21, OS_LOG_TYPE_DEFAULT, v20, &v28, v22);
    }
  }

  else
  {
    v23 = _CDPSignpostGetNanoseconds();
    v24 = _CDPSignpostLogSystem();
    v25 = v24;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      LOWORD(v28) = 0;
      _os_signpost_emit_with_name_impl(&dword_24510B000, v25, OS_SIGNPOST_INTERVAL_END, v8, "KCJoiningRequestProcessMessage", "", &v28, 2u);
    }

    v18 = _CDPSignpostLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 134218240;
      v29 = v8;
      v30 = 2048;
      v31 = v23 / 1000000000.0;
      v20 = "END [%lld] %fs: KCJoiningRequestProcessMessage ";
      v21 = v18;
      v22 = 22;
      goto LABEL_18;
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v13;
}

@end