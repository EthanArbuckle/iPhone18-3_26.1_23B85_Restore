@interface CDPCompatibilityModeUpdater
+ (BOOL)_onlyOctagonRKNotSetWithContext:(id)a3;
+ (BOOL)setSOSCompatibilityMode:(BOOL)a3 context:(id)a4 error:(id *)a5;
@end

@implementation CDPCompatibilityModeUpdater

+ (BOOL)setSOSCompatibilityMode:(BOOL)a3 context:(id)a4 error:(id *)a5
{
  v6 = a3;
  v38 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (![MEMORY[0x277CFD560] deferSOSFromSignIn] || !+[CDPDOctagonTrustProxyImpl octagonIsSOSFeatureEnabled](CDPDOctagonTrustProxyImpl, "octagonIsSOSFeatureEnabled"))
  {
    v19 = _CDPLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v19, OS_LOG_TYPE_DEFAULT, "DeferSOSFromSignIn is false or platform does not support SOS, SOSCCSetCompatibilityMode will not be called.", buf, 2u);
    }

    if (a5)
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = -5004;
LABEL_21:
      [v20 cdp_errorWithCode:v21];
      *a5 = LOBYTE(v15) = 0;
      goto LABEL_37;
    }

LABEL_36:
    LOBYTE(v15) = 0;
    goto LABEL_37;
  }

  if (!v6 && ![a1 _onlyOctagonRKNotSetWithContext:v8])
  {
    v30 = _CDPLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v30, OS_LOG_TYPE_DEFAULT, "Ignore disable SOSCCSetCompatibilityMode", buf, 2u);
    }

    if (a5)
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = -5315;
      goto LABEL_21;
    }

    goto LABEL_36;
  }

  v33 = 0;
  v9 = _CDPSignpostLogSystem();
  v10 = _CDPSignpostCreate();

  v11 = _CDPSignpostLogSystem();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "SOSCCSetCompatibilityMode", " enableTelemetry=YES ", buf, 2u);
  }

  v13 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v35 = v10;
    _os_log_impl(&dword_24510B000, v13, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCSetCompatibilityMode  enableTelemetry=YES ", buf, 0xCu);
  }

  v14 = _CDPLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v35 = v6;
    _os_log_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEFAULT, "Setting SOSCCSetCompatibilityMode: %d", buf, 8u);
  }

  v15 = SOSCCSetCompatibilityMode();
  v16 = _CDPLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v35 = v15;
    *&v35[4] = 2112;
    *&v35[6] = v33;
    _os_log_impl(&dword_24510B000, v16, OS_LOG_TYPE_DEFAULT, "Set compatibility mode initial success state: %d, error: %@", buf, 0x12u);
  }

  v17 = _CDPLogSystem();
  v18 = v17;
  if (v15)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v18, OS_LOG_TYPE_DEFAULT, "Successfully set SOSCCSetCompatibilityMode", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [CDPCompatibilityModeUpdater setSOSCompatibilityMode:v18 context:? error:?];
  }

  v22 = v33;
  Nanoseconds = _CDPSignpostGetNanoseconds();
  v24 = _CDPSignpostLogSystem();
  v25 = v24;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    v26 = [v22 code];
    *buf = 67240192;
    *v35 = v26;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v25, OS_SIGNPOST_INTERVAL_END, v10, "SOSCCSetCompatibilityMode", " releaseError=%{public,signpost.telemetry:number1,name=releaseError}d ", buf, 8u);
  }

  v27 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [v22 code];
    *buf = 134218496;
    *v35 = v10;
    *&v35[8] = 2048;
    *&v35[10] = Nanoseconds / 1000000000.0;
    v36 = 1026;
    v37 = v28;
    _os_log_impl(&dword_24510B000, v27, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCSetCompatibilityMode  releaseError=%{public,signpost.telemetry:number1,name=releaseError}d ", buf, 0x1Cu);
  }

  if (a5)
  {
    v29 = v22;
    *a5 = v22;
  }

LABEL_37:
  v31 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (BOOL)_onlyOctagonRKNotSetWithContext:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [[CDPRecoveryKeyStatusProvider alloc] initWithContext:v3];

  if ([(CDPRecoveryKeyStatusProvider *)v4 idmsHasRK])
  {
    v14 = 0;
    v5 = [(CDPRecoveryKeyStatusProvider *)v4 isRecoveryKeySetInOctagonWithError:&v14];
    v6 = v14;
    v13 = 0;
    v7 = [(CDPRecoveryKeyStatusProvider *)v4 isRecoveryKeySetInOctagonWithError:&v13];
    v8 = v13;
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67110146;
      v16 = 1;
      v17 = 1024;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      v21 = 1024;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      _os_log_debug_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEBUG, "_onlyOctagonHasMissingRKWithContext idMSHasRK: %d, octagonHasRK: %d, octagonError: %@, sosHasRK: %d, sosError: %@", buf, 0x28u);
    }

    v10 = v7 && !v5;
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (void)setSOSCompatibilityMode:(uint64_t *)a1 context:(NSObject *)a2 error:.cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Failed to update SOSCCSetCompatibilityMode with error: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end