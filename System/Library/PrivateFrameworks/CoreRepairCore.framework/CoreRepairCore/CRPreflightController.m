@interface CRPreflightController
- (BOOL)_diskImageSupportPreflight;
- (BOOL)challengeStrongComponents:(id)a3 responses:(id *)a4 error:(id *)a5;
- (BOOL)deltaComponents:(id *)a3 strongComponents:(id *)a4 error:(id *)a5;
- (BOOL)issueRepairCert:(id *)a3 keyBlob:(id *)a4 error:(id *)a5;
- (BOOL)queryRepairDelta:(id *)a3 error:(id *)a4;
- (BOOL)setComponentsState:(id)a3 withResponseDetails:(id)a4;
- (BOOL)verify:(id)a3 signature:(id)a4 keyBlob:(id)a5;
- (CRPreflightController)init;
- (id)components:(id)a3 withState:(int64_t)a4;
- (id)getPreflightEndpoint;
- (id)sendRequest:(id)a3 keyBlob:(id)a4 error:(id *)a5;
- (id)sign:(id)a3 keyBlob:(id)a4;
- (void)preflight:(id)a3 withReply:(id)a4;
- (void)preflightPhase1:(id)a3 withReply:(id)a4;
- (void)preflightPhase2:(id)a3 withReply:(id)a4;
@end

@implementation CRPreflightController

- (CRPreflightController)init
{
  v7.receiver = self;
  v7.super_class = CRPreflightController;
  v2 = [(CRPreflightController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(CRPreflightController *)v2 getPreflightEndpoint];
    preflightServiceName = v3->_preflightServiceName;
    v3->_preflightServiceName = v4;
  }

  return v3;
}

- (void)preflightPhase1:(id)a3 withReply:(id)a4
{
  v88 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"miniPreflight"];

    if (v8)
    {
      self->_miniPreflight = [v6 BOOLFromKey:@"miniPreflight" defaultValue:0 failed:0];
      v9 = handleForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        if (self->_miniPreflight)
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        *buf = 138412290;
        v87 = v10;
        _os_log_impl(&dword_1CEDC5000, v9, OS_LOG_TYPE_DEFAULT, "Mini preflight: %@", buf, 0xCu);
      }
    }

    v11 = [v6 objectForKeyedSubscript:@"socksHost"];

    if (v11)
    {
      v12 = [v6 NSStringFromKey:@"socksHost" defaultValue:0 failed:0];
      socksHost = self->_socksHost;
      self->_socksHost = v12;

      v14 = handleForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_socksHost;
        *buf = 138412290;
        v87 = v15;
        _os_log_impl(&dword_1CEDC5000, v14, OS_LOG_TYPE_DEFAULT, "Socks host: %@", buf, 0xCu);
      }
    }

    v16 = [v6 objectForKeyedSubscript:@"socksPort"];

    if (v16)
    {
      v17 = [v6 NSNumberFromKey:@"socksPort" lowerBound:&unk_1F4BCDA28 upperBound:&unk_1F4BCDA40 defaultValue:0 failed:0];
      socksPort = self->_socksPort;
      self->_socksPort = v17;

      v19 = handleForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = self->_socksPort;
        *buf = 138412290;
        v87 = v20;
        _os_log_impl(&dword_1CEDC5000, v19, OS_LOG_TYPE_DEFAULT, "Socks port: %@", buf, 0xCu);
      }
    }
  }

  if (os_variant_has_internal_content())
  {
    v21 = [[CRUserDefaults alloc] initWithSuiteName:@"com.apple.corerepaird.test"];
    v22 = [(CRUserDefaults *)v21 stringForKey:@"AxiomURL"];
    if (v22)
    {
      v23 = handleForCategory(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v87 = v22;
        _os_log_impl(&dword_1CEDC5000, v23, OS_LOG_TYPE_DEFAULT, "Overriding serverUrlString: %@", buf, 0xCu);
      }

      v24 = v22;
    }

    else
    {
      v24 = @"https://sklaxm.apple.com/axiom/SSR";
    }
  }

  else
  {
    v24 = @"https://sklaxm.apple.com/axiom/SSR";
  }

  v78 = 0;
  v79 = 0;
  v77 = 0;
  v25 = [(CRPreflightController *)self deltaComponents:&v79 strongComponents:&v78 error:&v77];
  v26 = v79;
  v27 = v78;
  v28 = v77;
  v29 = v28;
  v69 = v27;
  v70 = v24;
  if (!v25 || !v26 || v28)
  {
    v48 = handleForCategory(0);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      [CRPreflightController preflightPhase1:withReply:];
    }

    v54 = 0;
    v42 = 0;
    v33 = 0;
    v55 = 0;
    v71 = 0;
    v72 = 0;
    goto LABEL_65;
  }

  if ([v26 count])
  {
    v75 = 0;
    v76 = 0;
    v74 = 0;
    v30 = [(CRPreflightController *)self issueRepairCert:&v76 keyBlob:&v75 error:&v74];
    v72 = v76;
    v31 = v75;
    v32 = v74;
    v29 = v32;
    v71 = v31;
    if (!v30 || v32)
    {
      v48 = handleForCategory(0);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        [CRPreflightController preflightPhase1:withReply:];
      }

      v54 = 0;
      v42 = 0;
      v33 = 0;
      goto LABEL_64;
    }

    v33 = +[CRPreflightRequest request];
    v34 = [(CRPreflightController *)self miniPreflight];
    v35 = MEMORY[0x1E695DFF8];
    v36 = @"fullpreflight/phase1";
    if (v34)
    {
      v36 = @"minipreflight/phase1";
    }

    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v24, v36];
    v38 = [v35 URLWithString:v37];
    [v33 setServer:v38];

    v39 = [MEMORY[0x1E696AFB0] UUID];
    v40 = [v39 UUIDString];
    [v33 setRequestID:v40];

    v41 = [v72 objectAtIndexedSubscript:0];
    [v33 setBikCertificate:v41];

    [v33 setComponents:v27];
    [v33 setPhase:@"Phase1"];
    v73 = 0;
    v42 = [(CRPreflightController *)self sendRequest:v33 keyBlob:v31 error:&v73];
    v43 = v73;
    v29 = v43;
    if (!v42 || v43)
    {
      v48 = handleForCategory(0);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        [CRPreflightController preflightPhase1:v33 withReply:?];
      }

      goto LABEL_63;
    }

    if ([(CRPreflightController *)self isErrorResponse:v42])
    {
      v44 = handleForCategory(0);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [CRPreflightController preflightPhase1:v33 withReply:?];
      }

      v45 = [v42 errorCode];
      v46 = [v45 isEqual:@"10262"];

      if (v46)
      {
        v67 = MEMORY[0x1E696ABC0];
        v84 = *MEMORY[0x1E696A578];
        v47 = MEMORY[0x1E696AEC0];
        v48 = [v33 phase];
        v49 = [v42 rawResponse];
        v50 = [v47 stringWithFormat:@"%@: Error response: %@", v48, v49];
        v85 = v50;
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v52 = v67;
        v53 = -92;
      }

      else
      {
        v58 = [v42 errorCode];
        v59 = [v58 isEqual:@"10261"];

        v68 = MEMORY[0x1E696ABC0];
        v60 = *MEMORY[0x1E696A578];
        if (!v59)
        {
          v80 = *MEMORY[0x1E696A578];
          v62 = MEMORY[0x1E696AEC0];
          v48 = [v33 phase];
          v63 = [v42 rawResponse];
          v64 = [v62 stringWithFormat:@"%@: Error response: %@", v48, v63];
          v81 = v64;
          v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
          v29 = [v68 errorWithDomain:@"com.apple.corerepair" code:-78 userInfo:v65];

          goto LABEL_63;
        }

        v82 = *MEMORY[0x1E696A578];
        v61 = MEMORY[0x1E696AEC0];
        v48 = [v33 phase];
        v49 = [v42 rawResponse];
        v50 = [v61 stringWithFormat:@"%@: Error response: %@", v48, v49];
        v83 = v50;
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        v52 = v68;
        v53 = -93;
      }

      v29 = [v52 errorWithDomain:@"com.apple.corerepair" code:v53 userInfo:v51];

LABEL_63:
      v54 = 0;
LABEL_64:
      v55 = 0;
LABEL_65:
      v56 = 0;
      goto LABEL_66;
    }

    v57 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v54 = v57;
    if (v31)
    {
      [v57 setObject:v31 forKeyedSubscript:@"keyBlob"];
    }

    v55 = [(CRPreflightController *)self createPEMFromCerts:v72];
    if (v55)
    {
      [v54 setObject:v55 forKeyedSubscript:@"baaCert"];
    }

    v29 = [v42 rawResponse];

    if (!v29)
    {
      v56 = 1;
      goto LABEL_67;
    }

    v48 = [v42 rawResponse];
    [v54 setObject:v48 forKeyedSubscript:@"responsePhase1"];
  }

  else
  {
    v48 = handleForCategory(0);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEDC5000, v48, OS_LOG_TYPE_DEFAULT, "No delta components", buf, 2u);
    }

    v54 = 0;
    v42 = 0;
    v33 = 0;
    v55 = 0;
    v71 = 0;
    v72 = 0;
  }

  v29 = 0;
  v56 = 1;
LABEL_66:

LABEL_67:
  if (v7)
  {
    v7[2](v7, v56, v54, v29);
  }

  v66 = *MEMORY[0x1E69E9840];
}

- (void)preflightPhase2:(id)a3 withReply:(id)a4
{
  v132 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v118 = 0;
  if (!v6)
  {
    v12 = 0;
    v14 = 0;
LABEL_35:
    v104 = v14;
    v105 = v12;
    v31 = handleForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [CRPreflightController preflightPhase2:withReply:];
    }

    v32 = 0;
    v106 = 0;
    v107 = 0;
    v33 = 0;
    v103 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v30 = @"https://sklaxm.apple.com/axiom/SSR";
    goto LABEL_54;
  }

  v8 = [v6 objectForKeyedSubscript:@"miniPreflight"];

  if (v8)
  {
    self->_miniPreflight = [v6 BOOLFromKey:@"miniPreflight" defaultValue:0 failed:&v118];
    v9 = handleForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_miniPreflight)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      *buf = 138412290;
      v131 = v10;
      _os_log_impl(&dword_1CEDC5000, v9, OS_LOG_TYPE_DEFAULT, "Mini preflight: %@", buf, 0xCu);
    }
  }

  v11 = [v6 objectForKeyedSubscript:@"keyBlob"];

  if (v11)
  {
    v12 = [v6 NSDataFromKey:@"keyBlob" defaultValue:0 failed:&v118];
    v13 = handleForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v131 = v12;
      _os_log_impl(&dword_1CEDC5000, v13, OS_LOG_TYPE_DEFAULT, "keyBlob input: %@", buf, 0xCu);
    }
  }

  else
  {
    v12 = 0;
  }

  v15 = [v6 objectForKeyedSubscript:@"responsePhase1"];

  if (v15)
  {
    v14 = [v6 NSDictionaryFromKey:@"responsePhase1" defaultValue:0 failed:&v118];
    v16 = handleForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v131 = v14;
      _os_log_impl(&dword_1CEDC5000, v16, OS_LOG_TYPE_DEFAULT, "responsePhase1 input: %@", buf, 0xCu);
    }
  }

  else
  {
    v14 = 0;
  }

  v17 = [v6 objectForKeyedSubscript:@"socksHost"];

  if (v17)
  {
    v18 = [v6 NSStringFromKey:@"socksHost" defaultValue:0 failed:0];
    socksHost = self->_socksHost;
    self->_socksHost = v18;

    v20 = handleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->_socksHost;
      *buf = 138412290;
      v131 = v21;
      _os_log_impl(&dword_1CEDC5000, v20, OS_LOG_TYPE_DEFAULT, "Socks host: %@", buf, 0xCu);
    }
  }

  v22 = [v6 objectForKeyedSubscript:@"socksPort"];

  if (v22)
  {
    v23 = [v6 NSNumberFromKey:@"socksPort" lowerBound:&unk_1F4BCDA28 upperBound:&unk_1F4BCDA40 defaultValue:0 failed:0];
    socksPort = self->_socksPort;
    self->_socksPort = v23;

    v25 = handleForCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = self->_socksPort;
      *buf = 138412290;
      v131 = v26;
      _os_log_impl(&dword_1CEDC5000, v25, OS_LOG_TYPE_DEFAULT, "Socks port: %@", buf, 0xCu);
    }
  }

  if (!v12 || !v14)
  {
    goto LABEL_35;
  }

  if (os_variant_has_internal_content())
  {
    v27 = [[CRUserDefaults alloc] initWithSuiteName:@"com.apple.corerepaird.test"];
    v28 = [(CRUserDefaults *)v27 stringForKey:@"AxiomURL"];
    if (v28)
    {
      v29 = handleForCategory(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v131 = v28;
        _os_log_impl(&dword_1CEDC5000, v29, OS_LOG_TYPE_DEFAULT, "Overriding serverUrlString: %@", buf, 0xCu);
      }

      v30 = v28;
    }

    else
    {
      v30 = @"https://sklaxm.apple.com/axiom/SSR";
    }
  }

  else
  {
    v30 = @"https://sklaxm.apple.com/axiom/SSR";
  }

  v116 = 0;
  v117 = 0;
  v115 = 0;
  v38 = [(CRPreflightController *)self deltaComponents:&v117 strongComponents:&v116 error:&v115];
  v39 = v117;
  v40 = v116;
  v41 = v115;
  v36 = v41;
  v104 = v14;
  v105 = v12;
  v106 = v39;
  v103 = v40;
  if (!v38 || !v39 || v41)
  {
    v31 = handleForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [CRPreflightController preflightPhase1:withReply:];
    }

    v32 = 0;
    v107 = 0;
    v33 = 0;
    v34 = 0;
    goto LABEL_52;
  }

  if (![v39 count])
  {
    v31 = handleForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEDC5000, v31, OS_LOG_TYPE_DEFAULT, "No delta components", buf, 2u);
    }

    v32 = 0;
    v107 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 1;
    goto LABEL_54;
  }

  v34 = [[CRPreflightResponse alloc] initWithDictionary:v14];
  v42 = [(CRPreflightResponse *)v34 componentChallenges];

  if (!v42)
  {
    v107 = 0;
    goto LABEL_61;
  }

  v43 = [(CRPreflightResponse *)v34 componentChallenges];
  v113 = 0;
  v114 = 0;
  v44 = [(CRPreflightController *)self challengeStrongComponents:v43 responses:&v114 error:&v113];
  v107 = v114;
  v36 = v113;

  if (!v44 || v36)
  {
    v31 = handleForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [CRPreflightController preflightPhase2:withReply:];
    }

    v32 = 0;
    v33 = 0;
LABEL_52:
    v35 = 0;
LABEL_53:
    v37 = 0;
    goto LABEL_54;
  }

  v39 = v106;
LABEL_61:
  v46 = [(CRPreflightController *)self filteredPhase2Components:v39 response:v34];
  if (!v46)
  {
    v31 = handleForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [CRPreflightController preflightPhase2:withReply:];
    }

    v32 = 0;
    v33 = 0;
    v35 = 0;
    v36 = 0;
    goto LABEL_53;
  }

  v33 = v46;
  v35 = +[CRPreflightRequest request];
  v47 = [(CRPreflightController *)self miniPreflight];
  v48 = MEMORY[0x1E695DFF8];
  v49 = @"fullpreflight/phase2";
  if (v47)
  {
    v49 = @"minipreflight/phase2";
  }

  v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v30, v49];
  v51 = [v48 URLWithString:v50];
  [v35 setServer:v51];

  v52 = [(CRPreflightResponse *)v34 requestID];
  [v35 setRequestID:v52];

  v53 = [(CRPreflightResponse *)v34 sessionID];
  [v35 setSessionID:v53];

  [v35 setComponents:v33];
  [v35 setComponentResponses:v107];
  v54 = [(CRPreflightResponse *)v34 activationChallenges];
  [v35 setActivationResponses:v54];

  v55 = [(CRPreflightResponse *)v34 signatureChallenge];
  [v35 setSignatureChallenge:v55];

  [v35 setPhase:@"Phase2"];
  v112 = 0;
  v34 = [(CRPreflightController *)self sendRequest:v35 keyBlob:v12 error:&v112];
  v56 = v112;
  v36 = v56;
  if (!v34 || v56)
  {
    v31 = handleForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [CRPreflightController preflightPhase1:v35 withReply:?];
    }

    goto LABEL_78;
  }

  if ([(CRPreflightController *)self isErrorResponse:v34])
  {
    v57 = handleForCategory(0);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      [CRPreflightController preflightPhase1:v35 withReply:?];
    }

    v98 = MEMORY[0x1E696ABC0];
    v128 = *MEMORY[0x1E696A578];
    v58 = MEMORY[0x1E696AEC0];
    v31 = [v35 phase];
    v97 = [(CRPreflightResponse *)v34 rawResponse];
    v59 = [v58 stringWithFormat:@"%@: Error response: %@", v31, v97];
    v129 = v59;
    v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
    v36 = [v98 errorWithDomain:@"com.apple.corerepair" code:-79 userInfo:v60];

    goto LABEL_78;
  }

  v61 = [(CRPreflightResponse *)v34 status];
  if ([v61 isEqual:@"200"])
  {
    v62 = [(CRPreflightResponse *)v34 details];

    if (v62)
    {
      v99 = MEMORY[0x1E696ABC0];
      v126 = *MEMORY[0x1E696A578];
      v63 = MEMORY[0x1E696AEC0];
      v31 = [(CRPreflightResponse *)v34 details];
      v64 = [v63 stringWithFormat:@"Success status, but with failure details: %@", v31];
      v127 = v64;
      v65 = MEMORY[0x1E695DF20];
      v66 = &v127;
      v67 = &v126;
LABEL_86:
      v71 = [v65 dictionaryWithObjects:v66 forKeys:v67 count:1];
      v36 = [v99 errorWithDomain:@"com.apple.corerepair" code:-79 userInfo:v71];

LABEL_78:
      v32 = 0;
      goto LABEL_53;
    }
  }

  else
  {
  }

  v68 = [(CRPreflightResponse *)v34 status];
  if ([v68 isEqual:@"207"])
  {
    v69 = [(CRPreflightResponse *)v34 details];

    if (!v69)
    {
      v99 = MEMORY[0x1E696ABC0];
      v124 = *MEMORY[0x1E696A578];
      v70 = MEMORY[0x1E696AEC0];
      v31 = [(CRPreflightResponse *)v34 details];
      v64 = [v70 stringWithFormat:@"Partial success status, but without failure details: %@", v31];
      v125 = v64;
      v65 = MEMORY[0x1E695DF20];
      v66 = &v125;
      v67 = &v124;
      goto LABEL_86;
    }
  }

  else
  {
  }

  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v32 setObject:v12 forKeyedSubscript:@"keyBlob"];
  v72 = [(CRPreflightResponse *)v34 status];

  if (v72)
  {
    v73 = [(CRPreflightResponse *)v34 status];
    [v32 setObject:v73 forKeyedSubscript:@"status"];
  }

  v74 = [(CRPreflightResponse *)v34 details];

  if (v74)
  {
    v75 = [(CRPreflightResponse *)v34 details];
    [v32 setObject:v75 forKeyedSubscript:@"details"];
  }

  v76 = [(CRPreflightResponse *)v34 status];
  if ([v76 isEqual:@"200"])
  {
  }

  else
  {
    v77 = [(CRPreflightResponse *)v34 status];
    v100 = [v77 isEqual:@"207"];

    if (!v100)
    {
      v102 = MEMORY[0x1E696ABC0];
      v119 = *MEMORY[0x1E696A578];
      v93 = MEMORY[0x1E696AEC0];
      v31 = [(CRPreflightResponse *)v34 status];
      v96 = [v93 stringWithFormat:@"Server response: %@", v31];
      v120 = v96;
      v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
      v36 = [v102 errorWithDomain:@"com.apple.corerepair" code:-79 userInfo:v94];

      goto LABEL_53;
    }
  }

  v101 = v30;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v33 = v33;
  v78 = [v33 countByEnumeratingWithState:&v108 objects:v123 count:16];
  if (v78)
  {
    v79 = v78;
    v80 = *v109;
    do
    {
      for (i = 0; i != v79; ++i)
      {
        if (*v109 != v80)
        {
          objc_enumerationMutation(v33);
        }

        [*(*(&v108 + 1) + 8 * i) setState:1];
      }

      v79 = [v33 countByEnumeratingWithState:&v108 objects:v123 count:16];
    }

    while (v79);
  }

  v82 = [(CRPreflightResponse *)v34 details];
  v83 = [(CRPreflightController *)self setComponentsState:v33 withResponseDetails:v82];

  if (v83)
  {
    v37 = 1;
    v84 = [(CRPreflightController *)self components:v33 withState:1];
    [v32 setObject:v84 forKeyedSubscript:@"passComponents"];

    v85 = [(CRPreflightController *)self components:v33 withState:2];
    [v32 setObject:v85 forKeyedSubscript:@"unauthComponents"];

    v86 = [(CRPreflightController *)self components:v33 withState:3];
    [v32 setObject:v86 forKeyedSubscript:@"lockComponents"];

    v87 = [(CRPreflightController *)self components:v33 withState:6];
    [v32 setObject:v87 forKeyedSubscript:@"failComponents"];

    v88 = [(CRPreflightController *)self components:v33 withState:5];
    [v32 setObject:v88 forKeyedSubscript:@"lostComponents"];

    v89 = [(CRPreflightController *)self components:v33 withState:4];
    [v32 setObject:v89 forKeyedSubscript:@"deniedComponents"];

    v31 = [(CRPreflightController *)self components:v33 withState:7];
    [v32 setObject:v31 forKeyedSubscript:@"sealedComponents"];
    v36 = 0;
  }

  else
  {
    v95 = MEMORY[0x1E696ABC0];
    v121 = *MEMORY[0x1E696A578];
    v90 = MEMORY[0x1E696AEC0];
    v31 = [(CRPreflightResponse *)v34 details];
    v91 = [v90 stringWithFormat:@"Failed to set components status: %@", v31];
    v122 = v91;
    v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
    v36 = [v95 errorWithDomain:@"com.apple.corerepair" code:-79 userInfo:v92];

    v37 = 0;
  }

  v30 = v101;
LABEL_54:

  if (v7)
  {
    v7[2](v7, v37, v32, v36);
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (void)preflight:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  if (v6)
  {
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__CRPreflightController_preflight_withReply___block_invoke;
  v15[3] = &unk_1E83B3F88;
  v15[4] = &v28;
  v15[5] = &v16;
  v15[6] = &v22;
  [(CRPreflightController *)self preflightPhase1:v8 withReply:v15];
  if (*(v29 + 24) == 1 && !v23[5])
  {
    v10 = [v17[5] objectForKeyedSubscript:@"keyBlob"];

    if (v10)
    {
      v11 = [v17[5] objectForKeyedSubscript:@"keyBlob"];
      [v9 setObject:v11 forKeyedSubscript:@"keyBlob"];
    }

    v12 = [v17[5] objectForKeyedSubscript:@"responsePhase1"];

    if (v12)
    {
      v13 = [v17[5] objectForKeyedSubscript:@"responsePhase1"];
      [v9 setObject:v13 forKeyedSubscript:@"responsePhase1"];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __45__CRPreflightController_preflight_withReply___block_invoke_2;
    v14[3] = &unk_1E83B3F88;
    v14[4] = &v28;
    v14[5] = &v16;
    v14[6] = &v22;
    [(CRPreflightController *)self preflightPhase2:v9 withReply:v14];
  }

  if (v7)
  {
    v7[2](v7, *(v29 + 24), v17[5], v23[5]);
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
}

void __45__CRPreflightController_preflight_withReply___block_invoke(void *a1, char a2, void *a3, void *a4)
{
  v7 = a4;
  *(*(a1[4] + 8) + 24) = a2;
  v8 = [a3 mutableCopy];
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v7;
}

void __45__CRPreflightController_preflight_withReply___block_invoke_2(void *a1, char a2, void *a3, void *a4)
{
  v7 = a4;
  *(*(a1[4] + 8) + 24) = a2;
  v8 = [a3 mutableCopy];
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v7;
}

- (id)sign:(id)a3 keyBlob:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:self->_preflightServiceName options:0];
  connectionToService = self->_connectionToService;
  self->_connectionToService = v8;

  v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4BCFA48];
  [(NSXPCConnection *)self->_connectionToService setRemoteObjectInterface:v10];

  [(NSXPCConnection *)self->_connectionToService resume];
  v11 = [(NSXPCConnection *)self->_connectionToService synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __38__CRPreflightController_sign_keyBlob___block_invoke_157;
  v14[3] = &unk_1E83B3FD0;
  v14[4] = self;
  v14[5] = &v15;
  [v11 sign:v6 keyBlob:v7 withReply:v14];

  v12 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v12;
}

void __38__CRPreflightController_sign_keyBlob___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = handleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __38__CRPreflightController_sign_keyBlob___block_invoke_cold_1();
  }
}

void __38__CRPreflightController_sign_keyBlob___block_invoke_157(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = handleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1CEDC5000, v4, OS_LOG_TYPE_DEFAULT, "result: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  [*(*(a1 + 32) + 16) invalidate];
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)_diskImageSupportPreflight
{
  if (MGGetBoolAnswer())
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.diskimagecorerepair.preflightControl" options:0];
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4BCFA48];
    [v2 setRemoteObjectInterface:v3];

    [v2 resume];
    v4 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_163];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__CRPreflightController__diskImageSupportPreflight__block_invoke_164;
    v7[3] = &unk_1E83B3FF8;
    v7[4] = &v8;
    [v4 sign:0 keyBlob:0 withReply:v7];

    v5 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void __51__CRPreflightController__diskImageSupportPreflight__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = handleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1CEDC5000, v3, OS_LOG_TYPE_DEFAULT, "%@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __51__CRPreflightController__diskImageSupportPreflight__block_invoke_164(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = handleForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = @"com.apple.diskimagecorerepair.preflightControl";
    _os_log_impl(&dword_1CEDC5000, v2, OS_LOG_TYPE_DEFAULT, "Got reply from %@", &v4, 0xCu);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v3 = *MEMORY[0x1E69E9840];
}

- (id)getPreflightEndpoint
{
  if ([(CRPreflightController *)self _diskImageSupportPreflight])
  {
    return @"com.apple.diskimagecorerepair.preflightControl";
  }

  else
  {
    return @"com.apple.corerepair.preflightControl";
  }
}

- (BOOL)verify:(id)a3 signature:(id)a4 keyBlob:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:self->_preflightServiceName options:0];
  connectionToService = self->_connectionToService;
  self->_connectionToService = v11;

  v13 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4BCFA48];
  [(NSXPCConnection *)self->_connectionToService setRemoteObjectInterface:v13];

  [(NSXPCConnection *)self->_connectionToService resume];
  v14 = [(NSXPCConnection *)self->_connectionToService synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_166];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__CRPreflightController_verify_signature_keyBlob___block_invoke_167;
  v16[3] = &unk_1E83B4020;
  v16[4] = self;
  v16[5] = &v17;
  [v14 verify:v8 signature:v9 keyBlob:v10 withReply:v16];

  LOBYTE(self) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return self;
}

void __50__CRPreflightController_verify_signature_keyBlob___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = handleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__CRPreflightController_verify_signature_keyBlob___block_invoke_cold_1();
  }
}

uint64_t __50__CRPreflightController_verify_signature_keyBlob___block_invoke_167(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = handleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_1CEDC5000, v4, OS_LOG_TYPE_DEFAULT, "success: %d", v7, 8u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  result = [*(*(a1 + 32) + 16) invalidate];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)components:(id)a3 withState:(int64_t)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    v27 = *v30;
    do
    {
      v11 = 0;
      v28 = v9;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        if ([v12 state] == a4)
        {
          v13 = objc_alloc(MEMORY[0x1E695DEF0]);
          v14 = [v12 identifier];
          v15 = [v13 initWithBase64EncodedString:v14 options:0];

          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v15 encoding:4];
          v17 = MEMORY[0x1E696AEC0];
          v18 = [v12 type];
          v19 = v18;
          if (v16)
          {
            v20 = [v17 stringWithFormat:@"%@-%@", v18, v16];
          }

          else
          {
            [v12 identifier];
            v21 = v7;
            v22 = a4;
            v24 = v23 = v6;
            v20 = [v17 stringWithFormat:@"%@-%@", v19, v24];

            v6 = v23;
            a4 = v22;
            v7 = v21;
            v10 = v27;
          }

          [v6 addObject:v20];
          v9 = v28;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v9);
  }

  v25 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)setComponentsState:(id)a3 withResponseDetails:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v7 = handleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEDC5000, v7, OS_LOG_TYPE_DEFAULT, "no details in response", buf, 2u);
    }

    goto LABEL_50;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = handleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CRPreflightController setComponentsState:withResponseDetails:];
    }

    v31 = 0;
    goto LABEL_59;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v7 = v6;
  v41 = [v7 countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (!v41)
  {
LABEL_50:
    v31 = 1;
    goto LABEL_59;
  }

  v36 = v6;
  v9 = *v51;
  *&v8 = 138412290;
  v35 = v8;
  v38 = v7;
  v39 = v5;
  v37 = *v51;
  while (2)
  {
    v10 = 0;
    do
    {
      if (*v51 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v50 + 1) + 8 * v10);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v32 = handleForCategory(0);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [CRPreflightController setComponentsState:withResponseDetails:];
        }

LABEL_57:
        v31 = 0;
        goto LABEL_58;
      }

      v12 = v11;
      v13 = [v12 objectForKeyedSubscript:@"Type"];
      v14 = [v12 objectForKeyedSubscript:@"Identifier"];
      v15 = [v12 objectForKeyedSubscript:@"status"];
      if (v13)
      {
        v16 = v14 == 0;
      }

      else
      {
        v16 = 1;
      }

      v17 = v16 || v15 == 0;
      v18 = !v17;
      v44 = v18;
      v42 = v10;
      v43 = v15;
      if (v17)
      {
        v21 = handleForCategory(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = v35;
          v56 = v12;
          _os_log_error_impl(&dword_1CEDC5000, v21, OS_LOG_TYPE_ERROR, "details item in response malformed: %@", buf, 0xCu);
        }
      }

      else
      {
        v19 = v15;
        v40 = v12;
        if ([v15 isEqual:@"10230"])
        {
          v20 = 2;
        }

        else if ([v19 isEqual:@"10260"])
        {
          v20 = 3;
        }

        else if ([v19 isEqual:@"10261"])
        {
          v20 = 4;
        }

        else if ([v19 isEqual:@"10262"])
        {
          v20 = 5;
        }

        else
        {
          v22 = [v19 isEqual:@"20100"];
          v20 = 6;
          if (v22)
          {
            v20 = 7;
          }
        }

        v45 = v20;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v21 = v5;
        v23 = [v21 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v47;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v47 != v25)
              {
                objc_enumerationMutation(v21);
              }

              v27 = *(*(&v46 + 1) + 8 * i);
              v28 = [v27 type];
              if ([v28 isEqual:v13])
              {
                v29 = [v27 identifier];
                v30 = [v29 isEqual:v14];

                if (v30)
                {
                  [v27 setState:v45];
                }
              }

              else
              {
              }
            }

            v24 = [v21 countByEnumeratingWithState:&v46 objects:v54 count:16];
          }

          while (v24);
          v7 = v38;
          v5 = v39;
          v9 = v37;
        }

        v12 = v40;
      }

      if (!v44)
      {
        goto LABEL_57;
      }

      v10 = v42 + 1;
    }

    while (v42 + 1 != v41);
    v31 = 1;
    v41 = [v7 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v41)
    {
      continue;
    }

    break;
  }

LABEL_58:
  v6 = v36;
LABEL_59:

  v33 = *MEMORY[0x1E69E9840];
  return v31;
}

- (BOOL)deltaComponents:(id *)a3 strongComponents:(id *)a4 error:(id *)a5
{
  v65 = *MEMORY[0x1E69E9840];
  v42 = objc_opt_new();
  v41 = objc_opt_new();
  v53 = 0;
  v54 = 0;
  v9 = [(CRPreflightController *)self queryRepairDelta:&v54 error:&v53];
  v10 = v54;
  v11 = v53;
  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = v9;
  }

  if (!v13)
  {
    v33 = handleForCategory(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [CRPreflightController deltaComponents:strongComponents:error:];
    }

    v32 = v12;
    if (!a5)
    {
      goto LABEL_41;
    }

LABEL_40:
    *a5 = v32;
    goto LABEL_41;
  }

  v36 = a3;
  v37 = a4;
  v38 = v11;
  v39 = v13;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v40 = v10;
  obj = v10;
  v14 = [obj countByEnumeratingWithState:&v49 objects:v64 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v50;
    do
    {
      v17 = 0;
      v43 = v15;
      do
      {
        if (*v50 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v49 + 1) + 8 * v17);
        v19 = [v18 objectForKeyedSubscript:@"key"];
        v20 = [v18 objectForKeyedSubscript:@"identifier"];
        v21 = [v18 objectForKeyedSubscript:@"asid"];
        v22 = handleForCategory(0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v57 = "[CRPreflightController deltaComponents:strongComponents:error:]";
          v58 = 2112;
          v59 = v19;
          v60 = 2112;
          v61 = v20;
          v62 = 2112;
          v63 = v21;
          _os_log_debug_impl(&dword_1CEDC5000, v22, OS_LOG_TYPE_DEBUG, "%s: key: %@ identifier: %@ asid: %@", buf, 0x2Au);
        }

        if (v19)
        {
          v23 = v20 == 0;
        }

        else
        {
          v23 = 1;
        }

        if (!v23)
        {
          v24 = v16;
          v25 = [[CRPreflightRequestComponent alloc] initWithComponentType:v19 identifier:v20 asid:v21];
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v26 = [&unk_1F4BCD240 countByEnumeratingWithState:&v45 objects:v55 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v46;
            while (2)
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v46 != v28)
                {
                  objc_enumerationMutation(&unk_1F4BCD240);
                }

                if ([*(*(&v45 + 1) + 8 * i) isEqual:v19])
                {
                  [v41 addObject:v25];
                  goto LABEL_26;
                }
              }

              v27 = [&unk_1F4BCD240 countByEnumeratingWithState:&v45 objects:v55 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }

LABEL_26:
          [v42 addObject:v25];

          v16 = v24;
          v15 = v43;
        }

        ++v17;
      }

      while (v17 != v15);
      v15 = [obj countByEnumeratingWithState:&v49 objects:v64 count:16];
    }

    while (v15);
  }

  v30 = handleForCategory(0);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    [CRPreflightController deltaComponents:strongComponents:error:];
  }

  v31 = handleForCategory(0);
  v10 = v40;
  v13 = v39;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    [CRPreflightController deltaComponents:strongComponents:error:];
  }

  v12 = v38;
  if (v36)
  {
    *v36 = v42;
  }

  v32 = v41;
  a5 = v37;
  if (v37)
  {
    goto LABEL_40;
  }

LABEL_41:

  v34 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)queryRepairDelta:(id *)a3 error:(id *)a4
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__1;
  v37 = __Block_byref_object_dispose__1;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:self->_preflightServiceName options:0];
  connectionToService = self->_connectionToService;
  self->_connectionToService = v7;

  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4BCFA48];
  [(NSXPCConnection *)self->_connectionToService setRemoteObjectInterface:v9];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v10 setWithObjects:{v11, v12, v13, v14, objc_opt_class(), 0}];
  v16 = [(NSXPCConnection *)self->_connectionToService remoteObjectInterface];
  [v16 setClasses:v15 forSelector:sel_queryRepairDeltaWithReply_ argumentIndex:1 ofReply:1];

  [(NSXPCConnection *)self->_connectionToService resume];
  v17 = self->_connectionToService;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __48__CRPreflightController_queryRepairDelta_error___block_invoke;
  v22[3] = &unk_1E83B4048;
  v22[4] = &v27;
  v18 = [(NSXPCConnection *)v17 synchronousRemoteObjectProxyWithErrorHandler:v22];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __48__CRPreflightController_queryRepairDelta_error___block_invoke_203;
  v21[3] = &unk_1E83B4070;
  v21[6] = &v33;
  v21[7] = &v27;
  v21[4] = self;
  v21[5] = &v23;
  [v18 queryRepairDeltaWithReply:v21];

  if (a3)
  {
    *a3 = v34[5];
  }

  if (a4)
  {
    *a4 = v28[5];
  }

  v19 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  return v19;
}

void __48__CRPreflightController_queryRepairDelta_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = handleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __48__CRPreflightController_queryRepairDelta_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __48__CRPreflightController_queryRepairDelta_error___block_invoke_203(void *a1, int a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = handleForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 67109120;
    LODWORD(v19) = a2;
    _os_log_impl(&dword_1CEDC5000, v9, OS_LOG_TYPE_DEFAULT, "queryRepairDelta success: %d", &v18, 8u);
  }

  v10 = handleForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v7;
    _os_log_impl(&dword_1CEDC5000, v10, OS_LOG_TYPE_DEFAULT, "queryRepairDelta results: %@", &v18, 0xCu);
  }

  *(*(a1[5] + 8) + 24) = a2;
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v7;
  v13 = v7;

  v14 = *(a1[7] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v8;
  v16 = v8;

  [*(a1[4] + 16) invalidate];
  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)issueRepairCert:(id *)a3 keyBlob:(id *)a4 error:(id *)a5
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__1;
  v43 = __Block_byref_object_dispose__1;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__1;
  v37 = __Block_byref_object_dispose__1;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v9 = objc_opt_new();
  if ([(CRPreflightController *)self miniPreflight])
  {
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"miniPreflight"];
  }

  v10 = [(CRPreflightController *)self socksHost];
  if (v10)
  {
    v11 = [(CRPreflightController *)self socksPort];

    if (v11)
    {
      v12 = [(CRPreflightController *)self socksHost];
      [v9 setObject:v12 forKeyedSubscript:@"socksHost"];

      v13 = [(CRPreflightController *)self socksPort];
      [v9 setObject:v13 forKeyedSubscript:@"socksPort"];
    }
  }

  v14 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:self->_preflightServiceName options:0];
  connectionToService = self->_connectionToService;
  self->_connectionToService = v14;

  v16 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4BCFA48];
  [(NSXPCConnection *)self->_connectionToService setRemoteObjectInterface:v16];

  [(NSXPCConnection *)self->_connectionToService resume];
  v17 = self->_connectionToService;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __55__CRPreflightController_issueRepairCert_keyBlob_error___block_invoke;
  v22[3] = &unk_1E83B4048;
  v22[4] = &v27;
  v18 = [(NSXPCConnection *)v17 synchronousRemoteObjectProxyWithErrorHandler:v22];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __55__CRPreflightController_issueRepairCert_keyBlob_error___block_invoke_205;
  v21[3] = &unk_1E83B4098;
  v21[6] = &v33;
  v21[7] = &v39;
  v21[8] = &v27;
  v21[4] = self;
  v21[5] = &v23;
  [v18 issueRepairCert:v9 withReply:v21];

  if (a3)
  {
    *a3 = v40[5];
  }

  if (a4)
  {
    *a4 = v34[5];
  }

  if (a5)
  {
    *a5 = v28[5];
  }

  v19 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return v19;
}

void __55__CRPreflightController_issueRepairCert_keyBlob_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = handleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __48__CRPreflightController_queryRepairDelta_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __55__CRPreflightController_issueRepairCert_keyBlob_error___block_invoke_205(void *a1, char a2, void *a3, void *a4, void *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = handleForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = v9;
    _os_log_impl(&dword_1CEDC5000, v12, OS_LOG_TYPE_DEFAULT, "issueRepairCert key: %@", &v24, 0xCu);
  }

  v13 = handleForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = v10;
    _os_log_impl(&dword_1CEDC5000, v13, OS_LOG_TYPE_DEFAULT, "issueRepairCert certs: %@", &v24, 0xCu);
  }

  *(*(a1[5] + 8) + 24) = a2;
  v14 = *(a1[6] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v9;
  v16 = v9;

  v17 = *(a1[7] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v10;
  v19 = v10;

  v20 = *(a1[8] + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v11;
  v22 = v11;

  [*(a1[4] + 16) invalidate];
  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)challengeStrongComponents:(id)a3 responses:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__1;
  v42 = __Block_byref_object_dispose__1;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  v33 = 0;
  v9 = objc_opt_new();
  [v9 setObject:v8 forKeyedSubscript:@"challenges"];
  v10 = [(CRPreflightController *)self socksHost];
  if (v10)
  {
    v11 = [(CRPreflightController *)self socksPort];

    if (v11)
    {
      v12 = [(CRPreflightController *)self socksHost];
      [v9 setObject:v12 forKeyedSubscript:@"socksHost"];

      v13 = [(CRPreflightController *)self socksPort];
      [v9 setObject:v13 forKeyedSubscript:@"socksPort"];
    }
  }

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v14 setWithObjects:{v15, v16, v17, objc_opt_class(), 0}];
  v19 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:self->_preflightServiceName options:0];
  v20 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4BCFA48];
  [v19 setRemoteObjectInterface:v20];

  v21 = [v19 remoteObjectInterface];
  [v21 setClasses:v18 forSelector:sel_challengeStrongComponents_withReply_ argumentIndex:0 ofReply:0];

  v22 = [v19 remoteObjectInterface];
  [v22 setClasses:v18 forSelector:sel_challengeStrongComponents_withReply_ argumentIndex:1 ofReply:1];

  [v19 resume];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __67__CRPreflightController_challengeStrongComponents_responses_error___block_invoke;
  v27[3] = &unk_1E83B4048;
  v27[4] = &v38;
  v23 = [v19 synchronousRemoteObjectProxyWithErrorHandler:v27];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __67__CRPreflightController_challengeStrongComponents_responses_error___block_invoke_211;
  v26[3] = &unk_1E83B4070;
  v26[6] = &v38;
  v26[7] = &v28;
  v26[4] = self;
  v26[5] = &v34;
  [v23 challengeStrongComponents:v9 withReply:v26];

  if (a5)
  {
    *a5 = v39[5];
  }

  if (a4)
  {
    *a4 = v29[5];
  }

  v24 = *(v35 + 24);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  return v24;
}

void __67__CRPreflightController_challengeStrongComponents_responses_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = handleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __48__CRPreflightController_queryRepairDelta_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __67__CRPreflightController_challengeStrongComponents_responses_error___block_invoke_211(void *a1, char a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  *(*(a1[5] + 8) + 24) = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), a4);
  objc_storeStrong((*(a1[7] + 8) + 40), a3);
  v10 = handleForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(a1[7] + 8) + 40);
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_1CEDC5000, v10, OS_LOG_TYPE_DEFAULT, "Challenge components response: %@", &v13, 0xCu);
  }

  [*(a1[4] + 16) invalidate];
  v12 = *MEMORY[0x1E69E9840];
}

- (id)sendRequest:(id)a3 keyBlob:(id)a4 error:(id *)a5
{
  v98[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v55 = a4;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__1;
  v81 = __Block_byref_object_dispose__1;
  v82 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__1;
  v71 = __Block_byref_object_dispose__1;
  v72 = 0;
  v54 = objc_opt_new();
  if (!v7)
  {
    v22 = MEMORY[0x1E696ABC0];
    v97 = *MEMORY[0x1E696A578];
    v98[0] = @"No request";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:&v97 count:1];
    v16 = [v22 errorWithDomain:@"com.apple.corerepair" code:-80 userInfo:v15];
LABEL_13:
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v52 = 0;
    v53 = 0;
    v9 = 0;
    v8 = 0;
    goto LABEL_14;
  }

  v8 = [v7 server];
  if (!v8)
  {
    v23 = MEMORY[0x1E696ABC0];
    v95 = *MEMORY[0x1E696A578];
    v96 = @"No server URL";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
    v16 = [v23 errorWithDomain:@"com.apple.corerepair" code:-80 userInfo:v15];
    goto LABEL_13;
  }

  v9 = [v7 payload];
  if (!v9)
  {
    v28 = MEMORY[0x1E696ABC0];
    v93 = *MEMORY[0x1E696A578];
    v94 = @"No request payload";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
    v16 = [v28 errorWithDomain:@"com.apple.corerepair" code:-80 userInfo:v15];
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v52 = 0;
    v53 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  if (v55)
  {
    v10 = [v7 signatureChallenge];
    v11 = v10 == 0;

    if (v11)
    {
      v52 = 0;
      v53 = 0;
    }

    else
    {
      v12 = handleForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1CEDC5000, v12, OS_LOG_TYPE_DEFAULT, "Signing server nonce ...", buf, 2u);
      }

      v13 = [v7 signatureChallenge];
      v52 = [(CRPreflightController *)self sign:v13 keyBlob:v55];

      if (!v52)
      {
        v47 = MEMORY[0x1E696ABC0];
        v91 = *MEMORY[0x1E696A578];
        v92 = @"Failed to sign server nonce";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
        v16 = [v47 errorWithDomain:@"com.apple.corerepair" code:-80 userInfo:v15];
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v52 = 0;
        v53 = 0;
        goto LABEL_14;
      }

      v53 = [v52 base64EncodedStringWithOptions:0];
      if (!v53)
      {
        v14 = MEMORY[0x1E696ABC0];
        v89 = *MEMORY[0x1E696A578];
        v90 = @"Failed to encode server nonce signature";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        v16 = [v14 errorWithDomain:@"com.apple.corerepair" code:-80 userInfo:v15];
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v53 = 0;
LABEL_14:
        v24 = v68[5];
        v68[5] = v16;
LABEL_15:

LABEL_16:
        v25 = 0;
        goto LABEL_17;
      }
    }

    v29 = handleForCategory(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEDC5000, v29, OS_LOG_TYPE_DEFAULT, "Signing request ...", buf, 2u);
    }

    v30 = [(CRPreflightController *)self sign:v9 keyBlob:v55];
    v21 = v30;
    if (!v30)
    {
      v48 = MEMORY[0x1E696ABC0];
      v87 = *MEMORY[0x1E696A578];
      v88 = @"Failed to sign request";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
      v16 = [v48 errorWithDomain:@"com.apple.corerepair" code:-80 userInfo:v15];
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      goto LABEL_14;
    }

    v17 = [v30 base64EncodedStringWithOptions:0];
    if (!v17)
    {
      v49 = MEMORY[0x1E696ABC0];
      v85 = *MEMORY[0x1E696A578];
      v86 = @"Failed to encode request signature";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      v16 = [v49 errorWithDomain:@"com.apple.corerepair" code:-80 userInfo:v15];
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v52 = 0;
    v53 = 0;
    v17 = 0;
    v21 = 0;
  }

  v31 = [(CRPreflightController *)self socksHost];
  if (v31)
  {
    v32 = [(CRPreflightController *)self socksPort];
    v33 = v32 == 0;

    if (!v33)
    {
      v34 = [(CRPreflightController *)self socksHost];
      [v54 setObject:v34 forKeyedSubscript:@"SOCKSProxy"];

      v35 = [(CRPreflightController *)self socksPort];
      [v54 setObject:v35 forKeyedSubscript:@"SOCKSPort"];
    }
  }

  v36 = [v7 phase];

  if (v36)
  {
    v37 = [v7 phase];
    [v54 setObject:v37 forKeyedSubscript:@"Phase"];
  }

  v18 = [MEMORY[0x1E696AD68] requestWithURL:v8 cachePolicy:0 timeoutInterval:120.0];
  [v18 setHTTPMethod:@"POST"];
  [v27 setValue:@"application/xml" forHTTPHeaderField:@"Content-Type"];
  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v6, "length")];
  [v27 setValue:v28 forHTTPHeaderField:@"Content-Length"];

  [v27 setHTTPBody:v6];
  v29 = handleForCategory(0);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v6 length];
    *buf = 67109120;
    LODWORD(v71) = v30;
    _os_log_impl(&dword_1CEDC5000, v29, OS_LOG_TYPE_DEFAULT, "content length is:%d", buf, 8u);
  }

  v31 = [MEMORY[0x1E696AF78] sessionWithConfiguration:v10 delegate:self delegateQueue:0];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __71__CRCAttestationManager_sendChallengeRequestWith_serverResponse_error___block_invoke;
  v41[3] = &unk_1E83B4270;
  v41[4] = &v52;
  v41[5] = &v46;
  v41[6] = &v42;
  v41[7] = &v58;
  v32 = [v31 dataTaskWithRequest:v27 completionHandler:v41];
  v33 = v65[5];
  v65[5] = v32;

  v34 = v59[5];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__CRCAttestationManager_sendChallengeRequestWith_serverResponse_error___block_invoke_225;
  block[3] = &unk_1E83B4298;
  block[4] = &v58;
  block[5] = &v64;
  dispatch_group_async(v34, v9, block);
  dispatch_group_wait(v59[5], 0xFFFFFFFFFFFFFFFFLL);
  if (a5)
  {
    *a5 = v53[5];
  }

  if (a4)
  {
    *a4 = v47[5];
  }

  v35 = *(v43 + 24);

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v64, 8);
  v36 = *MEMORY[0x1E69E9840];
  return v35 & 1;
}

@end