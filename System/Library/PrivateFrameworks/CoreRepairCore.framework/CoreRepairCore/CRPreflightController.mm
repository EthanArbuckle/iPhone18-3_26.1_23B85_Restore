@interface CRPreflightController
- (BOOL)_diskImageSupportPreflight;
- (BOOL)challengeStrongComponents:(id)components responses:(id *)responses error:(id *)error;
- (BOOL)deltaComponents:(id *)components strongComponents:(id *)strongComponents error:(id *)error;
- (BOOL)issueRepairCert:(id *)cert keyBlob:(id *)blob error:(id *)error;
- (BOOL)queryRepairDelta:(id *)delta error:(id *)error;
- (BOOL)setComponentsState:(id)state withResponseDetails:(id)details;
- (BOOL)verify:(id)verify signature:(id)signature keyBlob:(id)blob;
- (CRPreflightController)init;
- (id)components:(id)components withState:(int64_t)state;
- (id)getPreflightEndpoint;
- (id)sendRequest:(id)request keyBlob:(id)blob error:(id *)error;
- (id)sign:(id)sign keyBlob:(id)blob;
- (void)preflight:(id)preflight withReply:(id)reply;
- (void)preflightPhase1:(id)phase1 withReply:(id)reply;
- (void)preflightPhase2:(id)phase2 withReply:(id)reply;
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
    getPreflightEndpoint = [(CRPreflightController *)v2 getPreflightEndpoint];
    preflightServiceName = v3->_preflightServiceName;
    v3->_preflightServiceName = getPreflightEndpoint;
  }

  return v3;
}

- (void)preflightPhase1:(id)phase1 withReply:(id)reply
{
  v88 = *MEMORY[0x1E69E9840];
  phase1Copy = phase1;
  replyCopy = reply;
  if (phase1Copy)
  {
    v8 = [phase1Copy objectForKeyedSubscript:@"miniPreflight"];

    if (v8)
    {
      self->_miniPreflight = [phase1Copy BOOLFromKey:@"miniPreflight" defaultValue:0 failed:0];
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

    v11 = [phase1Copy objectForKeyedSubscript:@"socksHost"];

    if (v11)
    {
      v12 = [phase1Copy NSStringFromKey:@"socksHost" defaultValue:0 failed:0];
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

    v16 = [phase1Copy objectForKeyedSubscript:@"socksPort"];

    if (v16)
    {
      v17 = [phase1Copy NSNumberFromKey:@"socksPort" lowerBound:&unk_1F4BCDA28 upperBound:&unk_1F4BCDA40 defaultValue:0 failed:0];
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
  rawResponse3 = v28;
  v69 = v27;
  v70 = v24;
  if (!v25 || !v26 || v28)
  {
    phase = handleForCategory(0);
    if (os_log_type_enabled(phase, OS_LOG_TYPE_ERROR))
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
    rawResponse3 = v32;
    v71 = v31;
    if (!v30 || v32)
    {
      phase = handleForCategory(0);
      if (os_log_type_enabled(phase, OS_LOG_TYPE_ERROR))
      {
        [CRPreflightController preflightPhase1:withReply:];
      }

      v54 = 0;
      v42 = 0;
      v33 = 0;
      goto LABEL_64;
    }

    v33 = +[CRPreflightRequest request];
    miniPreflight = [(CRPreflightController *)self miniPreflight];
    v35 = MEMORY[0x1E695DFF8];
    v36 = @"fullpreflight/phase1";
    if (miniPreflight)
    {
      v36 = @"minipreflight/phase1";
    }

    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v24, v36];
    v38 = [v35 URLWithString:v37];
    [v33 setServer:v38];

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [v33 setRequestID:uUIDString];

    v41 = [v72 objectAtIndexedSubscript:0];
    [v33 setBikCertificate:v41];

    [v33 setComponents:v27];
    [v33 setPhase:@"Phase1"];
    v73 = 0;
    v42 = [(CRPreflightController *)self sendRequest:v33 keyBlob:v31 error:&v73];
    v43 = v73;
    rawResponse3 = v43;
    if (!v42 || v43)
    {
      phase = handleForCategory(0);
      if (os_log_type_enabled(phase, OS_LOG_TYPE_ERROR))
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

      errorCode = [v42 errorCode];
      v46 = [errorCode isEqual:@"10262"];

      if (v46)
      {
        v67 = MEMORY[0x1E696ABC0];
        v84 = *MEMORY[0x1E696A578];
        v47 = MEMORY[0x1E696AEC0];
        phase = [v33 phase];
        rawResponse = [v42 rawResponse];
        v50 = [v47 stringWithFormat:@"%@: Error response: %@", phase, rawResponse];
        v85 = v50;
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v52 = v67;
        v53 = -92;
      }

      else
      {
        errorCode2 = [v42 errorCode];
        v59 = [errorCode2 isEqual:@"10261"];

        v68 = MEMORY[0x1E696ABC0];
        v60 = *MEMORY[0x1E696A578];
        if (!v59)
        {
          v80 = *MEMORY[0x1E696A578];
          v62 = MEMORY[0x1E696AEC0];
          phase = [v33 phase];
          rawResponse2 = [v42 rawResponse];
          v64 = [v62 stringWithFormat:@"%@: Error response: %@", phase, rawResponse2];
          v81 = v64;
          v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
          rawResponse3 = [v68 errorWithDomain:@"com.apple.corerepair" code:-78 userInfo:v65];

          goto LABEL_63;
        }

        v82 = *MEMORY[0x1E696A578];
        v61 = MEMORY[0x1E696AEC0];
        phase = [v33 phase];
        rawResponse = [v42 rawResponse];
        v50 = [v61 stringWithFormat:@"%@: Error response: %@", phase, rawResponse];
        v83 = v50;
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        v52 = v68;
        v53 = -93;
      }

      rawResponse3 = [v52 errorWithDomain:@"com.apple.corerepair" code:v53 userInfo:v51];

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

    rawResponse3 = [v42 rawResponse];

    if (!rawResponse3)
    {
      v56 = 1;
      goto LABEL_67;
    }

    phase = [v42 rawResponse];
    [v54 setObject:phase forKeyedSubscript:@"responsePhase1"];
  }

  else
  {
    phase = handleForCategory(0);
    if (os_log_type_enabled(phase, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEDC5000, phase, OS_LOG_TYPE_DEFAULT, "No delta components", buf, 2u);
    }

    v54 = 0;
    v42 = 0;
    v33 = 0;
    v55 = 0;
    v71 = 0;
    v72 = 0;
  }

  rawResponse3 = 0;
  v56 = 1;
LABEL_66:

LABEL_67:
  if (replyCopy)
  {
    replyCopy[2](replyCopy, v56, v54, rawResponse3);
  }

  v66 = *MEMORY[0x1E69E9840];
}

- (void)preflightPhase2:(id)phase2 withReply:(id)reply
{
  v132 = *MEMORY[0x1E69E9840];
  phase2Copy = phase2;
  replyCopy = reply;
  v118 = 0;
  if (!phase2Copy)
  {
    v12 = 0;
    v14 = 0;
LABEL_35:
    v104 = v14;
    v105 = v12;
    phase = handleForCategory(0);
    if (os_log_type_enabled(phase, OS_LOG_TYPE_ERROR))
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

  v8 = [phase2Copy objectForKeyedSubscript:@"miniPreflight"];

  if (v8)
  {
    self->_miniPreflight = [phase2Copy BOOLFromKey:@"miniPreflight" defaultValue:0 failed:&v118];
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

  v11 = [phase2Copy objectForKeyedSubscript:@"keyBlob"];

  if (v11)
  {
    v12 = [phase2Copy NSDataFromKey:@"keyBlob" defaultValue:0 failed:&v118];
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

  v15 = [phase2Copy objectForKeyedSubscript:@"responsePhase1"];

  if (v15)
  {
    v14 = [phase2Copy NSDictionaryFromKey:@"responsePhase1" defaultValue:0 failed:&v118];
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

  v17 = [phase2Copy objectForKeyedSubscript:@"socksHost"];

  if (v17)
  {
    v18 = [phase2Copy NSStringFromKey:@"socksHost" defaultValue:0 failed:0];
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

  v22 = [phase2Copy objectForKeyedSubscript:@"socksPort"];

  if (v22)
  {
    v23 = [phase2Copy NSNumberFromKey:@"socksPort" lowerBound:&unk_1F4BCDA28 upperBound:&unk_1F4BCDA40 defaultValue:0 failed:0];
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
    phase = handleForCategory(0);
    if (os_log_type_enabled(phase, OS_LOG_TYPE_ERROR))
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
    phase = handleForCategory(0);
    if (os_log_type_enabled(phase, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEDC5000, phase, OS_LOG_TYPE_DEFAULT, "No delta components", buf, 2u);
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
  componentChallenges = [(CRPreflightResponse *)v34 componentChallenges];

  if (!componentChallenges)
  {
    v107 = 0;
    goto LABEL_61;
  }

  componentChallenges2 = [(CRPreflightResponse *)v34 componentChallenges];
  v113 = 0;
  v114 = 0;
  v44 = [(CRPreflightController *)self challengeStrongComponents:componentChallenges2 responses:&v114 error:&v113];
  v107 = v114;
  v36 = v113;

  if (!v44 || v36)
  {
    phase = handleForCategory(0);
    if (os_log_type_enabled(phase, OS_LOG_TYPE_ERROR))
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
    phase = handleForCategory(0);
    if (os_log_type_enabled(phase, OS_LOG_TYPE_ERROR))
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
  miniPreflight = [(CRPreflightController *)self miniPreflight];
  v48 = MEMORY[0x1E695DFF8];
  v49 = @"fullpreflight/phase2";
  if (miniPreflight)
  {
    v49 = @"minipreflight/phase2";
  }

  v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v30, v49];
  v51 = [v48 URLWithString:v50];
  [v35 setServer:v51];

  requestID = [(CRPreflightResponse *)v34 requestID];
  [v35 setRequestID:requestID];

  sessionID = [(CRPreflightResponse *)v34 sessionID];
  [v35 setSessionID:sessionID];

  [v35 setComponents:v33];
  [v35 setComponentResponses:v107];
  activationChallenges = [(CRPreflightResponse *)v34 activationChallenges];
  [v35 setActivationResponses:activationChallenges];

  signatureChallenge = [(CRPreflightResponse *)v34 signatureChallenge];
  [v35 setSignatureChallenge:signatureChallenge];

  [v35 setPhase:@"Phase2"];
  v112 = 0;
  v34 = [(CRPreflightController *)self sendRequest:v35 keyBlob:v12 error:&v112];
  v56 = v112;
  v36 = v56;
  if (!v34 || v56)
  {
    phase = handleForCategory(0);
    if (os_log_type_enabled(phase, OS_LOG_TYPE_ERROR))
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
    phase = [v35 phase];
    rawResponse = [(CRPreflightResponse *)v34 rawResponse];
    v59 = [v58 stringWithFormat:@"%@: Error response: %@", phase, rawResponse];
    v129 = v59;
    v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
    v36 = [v98 errorWithDomain:@"com.apple.corerepair" code:-79 userInfo:v60];

    goto LABEL_78;
  }

  status = [(CRPreflightResponse *)v34 status];
  if ([status isEqual:@"200"])
  {
    details = [(CRPreflightResponse *)v34 details];

    if (details)
    {
      v99 = MEMORY[0x1E696ABC0];
      v126 = *MEMORY[0x1E696A578];
      v63 = MEMORY[0x1E696AEC0];
      phase = [(CRPreflightResponse *)v34 details];
      v64 = [v63 stringWithFormat:@"Success status, but with failure details: %@", phase];
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

  status2 = [(CRPreflightResponse *)v34 status];
  if ([status2 isEqual:@"207"])
  {
    details2 = [(CRPreflightResponse *)v34 details];

    if (!details2)
    {
      v99 = MEMORY[0x1E696ABC0];
      v124 = *MEMORY[0x1E696A578];
      v70 = MEMORY[0x1E696AEC0];
      phase = [(CRPreflightResponse *)v34 details];
      v64 = [v70 stringWithFormat:@"Partial success status, but without failure details: %@", phase];
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
  status3 = [(CRPreflightResponse *)v34 status];

  if (status3)
  {
    status4 = [(CRPreflightResponse *)v34 status];
    [v32 setObject:status4 forKeyedSubscript:@"status"];
  }

  details3 = [(CRPreflightResponse *)v34 details];

  if (details3)
  {
    details4 = [(CRPreflightResponse *)v34 details];
    [v32 setObject:details4 forKeyedSubscript:@"details"];
  }

  status5 = [(CRPreflightResponse *)v34 status];
  if ([status5 isEqual:@"200"])
  {
  }

  else
  {
    status6 = [(CRPreflightResponse *)v34 status];
    v100 = [status6 isEqual:@"207"];

    if (!v100)
    {
      v102 = MEMORY[0x1E696ABC0];
      v119 = *MEMORY[0x1E696A578];
      v93 = MEMORY[0x1E696AEC0];
      phase = [(CRPreflightResponse *)v34 status];
      v96 = [v93 stringWithFormat:@"Server response: %@", phase];
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

  details5 = [(CRPreflightResponse *)v34 details];
  v83 = [(CRPreflightController *)self setComponentsState:v33 withResponseDetails:details5];

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

    phase = [(CRPreflightController *)self components:v33 withState:7];
    [v32 setObject:phase forKeyedSubscript:@"sealedComponents"];
    v36 = 0;
  }

  else
  {
    v95 = MEMORY[0x1E696ABC0];
    v121 = *MEMORY[0x1E696A578];
    v90 = MEMORY[0x1E696AEC0];
    phase = [(CRPreflightResponse *)v34 details];
    v91 = [v90 stringWithFormat:@"Failed to set components status: %@", phase];
    v122 = v91;
    v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
    v36 = [v95 errorWithDomain:@"com.apple.corerepair" code:-79 userInfo:v92];

    v37 = 0;
  }

  v30 = v101;
LABEL_54:

  if (replyCopy)
  {
    replyCopy[2](replyCopy, v37, v32, v36);
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (void)preflight:(id)preflight withReply:(id)reply
{
  preflightCopy = preflight;
  replyCopy = reply;
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
  if (preflightCopy)
  {
    v8 = [preflightCopy mutableCopy];
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

  if (replyCopy)
  {
    replyCopy[2](replyCopy, *(v29 + 24), v17[5], v23[5]);
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

- (id)sign:(id)sign keyBlob:(id)blob
{
  signCopy = sign;
  blobCopy = blob;
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
  [v11 sign:signCopy keyBlob:blobCopy withReply:v14];

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

- (BOOL)verify:(id)verify signature:(id)signature keyBlob:(id)blob
{
  verifyCopy = verify;
  signatureCopy = signature;
  blobCopy = blob;
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
  [v14 verify:verifyCopy signature:signatureCopy keyBlob:blobCopy withReply:v16];

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

- (id)components:(id)components withState:(int64_t)state
{
  v34 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  v6 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = componentsCopy;
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
        if ([v12 state] == state)
        {
          v13 = objc_alloc(MEMORY[0x1E695DEF0]);
          identifier = [v12 identifier];
          v15 = [v13 initWithBase64EncodedString:identifier options:0];

          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v15 encoding:4];
          v17 = MEMORY[0x1E696AEC0];
          type = [v12 type];
          v19 = type;
          if (v16)
          {
            v20 = [v17 stringWithFormat:@"%@-%@", type, v16];
          }

          else
          {
            [v12 identifier];
            v21 = v7;
            stateCopy = state;
            v24 = v23 = v6;
            v20 = [v17 stringWithFormat:@"%@-%@", v19, v24];

            v6 = v23;
            state = stateCopy;
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

- (BOOL)setComponentsState:(id)state withResponseDetails:(id)details
{
  v58 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  detailsCopy = details;
  if (!detailsCopy)
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
  v7 = detailsCopy;
  v41 = [v7 countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (!v41)
  {
LABEL_50:
    v31 = 1;
    goto LABEL_59;
  }

  v36 = detailsCopy;
  v9 = *v51;
  *&v8 = 138412290;
  v35 = v8;
  v38 = v7;
  v39 = stateCopy;
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
        v21 = stateCopy;
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
              type = [v27 type];
              if ([type isEqual:v13])
              {
                identifier = [v27 identifier];
                v30 = [identifier isEqual:v14];

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
          stateCopy = v39;
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
  detailsCopy = v36;
LABEL_59:

  v33 = *MEMORY[0x1E69E9840];
  return v31;
}

- (BOOL)deltaComponents:(id *)components strongComponents:(id *)strongComponents error:(id *)error
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
    if (!error)
    {
      goto LABEL_41;
    }

LABEL_40:
    *error = v32;
    goto LABEL_41;
  }

  componentsCopy = components;
  strongComponentsCopy = strongComponents;
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
  if (componentsCopy)
  {
    *componentsCopy = v42;
  }

  v32 = v41;
  error = strongComponentsCopy;
  if (strongComponentsCopy)
  {
    goto LABEL_40;
  }

LABEL_41:

  v34 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)queryRepairDelta:(id *)delta error:(id *)error
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
  remoteObjectInterface = [(NSXPCConnection *)self->_connectionToService remoteObjectInterface];
  [remoteObjectInterface setClasses:v15 forSelector:sel_queryRepairDeltaWithReply_ argumentIndex:1 ofReply:1];

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

  if (delta)
  {
    *delta = v34[5];
  }

  if (error)
  {
    *error = v28[5];
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

- (BOOL)issueRepairCert:(id *)cert keyBlob:(id *)blob error:(id *)error
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

  socksHost = [(CRPreflightController *)self socksHost];
  if (socksHost)
  {
    socksPort = [(CRPreflightController *)self socksPort];

    if (socksPort)
    {
      socksHost2 = [(CRPreflightController *)self socksHost];
      [v9 setObject:socksHost2 forKeyedSubscript:@"socksHost"];

      socksPort2 = [(CRPreflightController *)self socksPort];
      [v9 setObject:socksPort2 forKeyedSubscript:@"socksPort"];
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

  if (cert)
  {
    *cert = v40[5];
  }

  if (blob)
  {
    *blob = v34[5];
  }

  if (error)
  {
    *error = v28[5];
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

- (BOOL)challengeStrongComponents:(id)components responses:(id *)responses error:(id *)error
{
  componentsCopy = components;
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
  [v9 setObject:componentsCopy forKeyedSubscript:@"challenges"];
  socksHost = [(CRPreflightController *)self socksHost];
  if (socksHost)
  {
    socksPort = [(CRPreflightController *)self socksPort];

    if (socksPort)
    {
      socksHost2 = [(CRPreflightController *)self socksHost];
      [v9 setObject:socksHost2 forKeyedSubscript:@"socksHost"];

      socksPort2 = [(CRPreflightController *)self socksPort];
      [v9 setObject:socksPort2 forKeyedSubscript:@"socksPort"];
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

  remoteObjectInterface = [v19 remoteObjectInterface];
  [remoteObjectInterface setClasses:v18 forSelector:sel_challengeStrongComponents_withReply_ argumentIndex:0 ofReply:0];

  remoteObjectInterface2 = [v19 remoteObjectInterface];
  [remoteObjectInterface2 setClasses:v18 forSelector:sel_challengeStrongComponents_withReply_ argumentIndex:1 ofReply:1];

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

  if (error)
  {
    *error = v39[5];
  }

  if (responses)
  {
    *responses = v29[5];
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

- (id)sendRequest:(id)request keyBlob:(id)blob error:(id *)error
{
  v98[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  blobCopy = blob;
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
  if (!requestCopy)
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
    payload = 0;
    server = 0;
    goto LABEL_14;
  }

  server = [requestCopy server];
  if (!server)
  {
    v23 = MEMORY[0x1E696ABC0];
    v95 = *MEMORY[0x1E696A578];
    v96 = @"No server URL";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
    v16 = [v23 errorWithDomain:@"com.apple.corerepair" code:-80 userInfo:v15];
    goto LABEL_13;
  }

  payload = [requestCopy payload];
  if (!payload)
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
    payload = 0;
    goto LABEL_14;
  }

  if (blobCopy)
  {
    signatureChallenge = [requestCopy signatureChallenge];
    v11 = signatureChallenge == 0;

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

      signatureChallenge2 = [requestCopy signatureChallenge];
      v52 = [(CRPreflightController *)self sign:signatureChallenge2 keyBlob:blobCopy];

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

    v30 = [(CRPreflightController *)self sign:payload keyBlob:blobCopy];
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

  socksHost = [(CRPreflightController *)self socksHost];
  if (socksHost)
  {
    socksPort = [(CRPreflightController *)self socksPort];
    v33 = socksPort == 0;

    if (!v33)
    {
      socksHost2 = [(CRPreflightController *)self socksHost];
      [v54 setObject:socksHost2 forKeyedSubscript:@"SOCKSProxy"];

      socksPort2 = [(CRPreflightController *)self socksPort];
      [v54 setObject:socksPort2 forKeyedSubscript:@"SOCKSPort"];
    }
  }

  phase = [requestCopy phase];

  if (phase)
  {
    phase2 = [requestCopy phase];
    [v54 setObject:phase2 forKeyedSubscript:@"Phase"];
  }

  v18 = [MEMORY[0x1E696AD68] requestWithURL:server cachePolicy:0 timeoutInterval:120.0];
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

  socksHost = [MEMORY[0x1E696AF78] sessionWithConfiguration:signatureChallenge delegate:self delegateQueue:0];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __71__CRCAttestationManager_sendChallengeRequestWith_serverResponse_error___block_invoke;
  v41[3] = &unk_1E83B4270;
  v41[4] = &v52;
  v41[5] = &v46;
  v41[6] = &v42;
  v41[7] = &v58;
  socksPort = [socksHost dataTaskWithRequest:v27 completionHandler:v41];
  v33 = v65[5];
  v65[5] = socksPort;

  socksHost2 = v59[5];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__CRCAttestationManager_sendChallengeRequestWith_serverResponse_error___block_invoke_225;
  block[3] = &unk_1E83B4298;
  block[4] = &v58;
  block[5] = &v64;
  dispatch_group_async(socksHost2, payload, block);
  dispatch_group_wait(v59[5], 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v53[5];
  }

  if (blob)
  {
    *blob = v47[5];
  }

  socksPort2 = *(v43 + 24);

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v64, 8);
  phase = *MEMORY[0x1E69E9840];
  return socksPort2 & 1;
}

@end