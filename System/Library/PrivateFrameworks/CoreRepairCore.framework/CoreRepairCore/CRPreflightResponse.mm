@interface CRPreflightResponse
- (CRPreflightResponse)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation CRPreflightResponse

- (CRPreflightResponse)initWithDictionary:(id)a3
{
  v79 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v75.receiver = self;
  v75.super_class = CRPreflightResponse;
  v6 = [(CRPreflightResponse *)&v75 init];
  v7 = v6;
  if (v6)
  {
    if (!v5)
    {
      v64 = 0;
      goto LABEL_49;
    }

    objc_storeStrong(&v6->_rawResponse, a3);
    v8 = [v5 objectForKeyedSubscript:@"RequestID"];

    if (v8)
    {
      v9 = [v5 objectForKeyedSubscript:@"RequestID"];
      requestID = v7->_requestID;
      v7->_requestID = v9;
    }

    v11 = [v5 objectForKeyedSubscript:@"SessionID"];

    if (v11)
    {
      v12 = [v5 objectForKeyedSubscript:@"SessionID"];
      sessionID = v7->_sessionID;
      v7->_sessionID = v12;
    }

    v14 = [v5 objectForKeyedSubscript:@"status"];

    if (v14)
    {
      v15 = [v5 objectForKeyedSubscript:@"status"];
      status = v7->_status;
      v7->_status = v15;
    }

    v17 = [v5 objectForKeyedSubscript:@"details"];

    if (v17)
    {
      v18 = [v5 objectForKeyedSubscript:@"details"];
      details = v7->_details;
      v7->_details = v18;
    }

    v20 = [v5 objectForKeyedSubscript:@"ErrorCode"];

    if (v20)
    {
      v21 = [v5 objectForKeyedSubscript:@"ErrorCode"];
      errorCode = v7->_errorCode;
      v7->_errorCode = v21;
    }

    v23 = [v5 objectForKeyedSubscript:@"ErrorMessage"];

    if (v23)
    {
      v24 = [v5 objectForKeyedSubscript:@"ErrorMessage"];
      errorMessage = v7->_errorMessage;
      v7->_errorMessage = v24;
    }

    v26 = [v5 objectForKeyedSubscript:@"SpecVersion"];

    if (v26)
    {
      v27 = [v5 objectForKeyedSubscript:@"SpecVersion"];
      specVersion = v7->_specVersion;
      v7->_specVersion = v27;
    }

    v29 = [v5 objectForKeyedSubscript:@"SignatureChallenge"];

    if (v29)
    {
      v30 = [v5 objectForKeyedSubscript:@"SignatureChallenge"];
      signatureChallenge = v7->_signatureChallenge;
      v7->_signatureChallenge = v30;
    }

    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    componentChallenges = v7->_componentChallenges;
    v7->_componentChallenges = v32;

    v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    activationChallenges = v7->_activationChallenges;
    v7->_activationChallenges = v34;

    v36 = [v5 objectForKeyedSubscript:@"Challenges"];

    if (v36)
    {
      v67 = v5;
      v37 = [v5 objectForKeyedSubscript:@"Challenges"];
      v38 = handleForCategory(0);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v78 = v37;
        _os_log_impl(&dword_1CEDC5000, v38, OS_LOG_TYPE_DEFAULT, "Challenges: %@", buf, 0xCu);
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      obj = v37;
      v39 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v72;
        v68 = v7;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v72 != v41)
            {
              objc_enumerationMutation(obj);
            }

            v43 = *(*(&v71 + 1) + 8 * i);
            v44 = [v43 objectForKeyedSubscript:@"Type"];
            v45 = [v43 objectForKeyedSubscript:@"Identifier"];
            v46 = v45;
            if (v44)
            {
              v47 = v45 == 0;
            }

            else
            {
              v47 = 1;
            }

            if (!v47)
            {
              v48 = [v43 objectForKeyedSubscript:@"nonce"];

              if (v48)
              {
                v49 = objc_opt_new();
                v50 = [v43 objectForKeyedSubscript:@"nonce"];
                [v49 setObject:v44 forKeyedSubscript:@"key"];
                [v49 setObject:v46 forKeyedSubscript:@"identifier"];
                [v49 setObject:v50 forKeyedSubscript:@"nonce"];
                [(NSMutableArray *)v7->_componentChallenges addObject:v49];
              }

              v51 = [v43 objectForKeyedSubscript:@"Properties"];
              if (v51)
              {
                v52 = v51;
                v53 = [v43 objectForKeyedSubscript:@"Properties"];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  v55 = [v43 objectForKeyedSubscript:@"Properties"];
                  v56 = [v55 objectForKeyedSubscript:@"activation"];
                  if (v56)
                  {
                    v57 = v56;
                    v58 = [v55 objectForKeyedSubscript:@"activation"];
                    objc_opt_class();
                    v59 = objc_opt_isKindOfClass();

                    if (v59)
                    {
                      v60 = objc_opt_new();
                      v61 = [v55 objectForKeyedSubscript:@"activation"];
                      v62 = [v61 objectForKeyedSubscript:@"status"];
                      v69 = v61;
                      v63 = [v61 objectForKeyedSubscript:@"activationToken"];
                      [v60 setObject:v44 forKeyedSubscript:@"key"];
                      [v60 setObject:v46 forKeyedSubscript:@"identifier"];
                      if (v63)
                      {
                        [v60 setObject:v63 forKeyedSubscript:@"activationToken"];
                      }

                      if (v62 && [v62 isEqual:@"NOCHALLENGE"])
                      {
                        [v60 setObject:&stru_1F4BC1BE0 forKeyedSubscript:@"activationToken"];
                      }

                      v7 = v68;
                      [(NSMutableArray *)v68->_activationChallenges addObject:v60];
                    }
                  }
                }
              }
            }
          }

          v40 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
        }

        while (v40);
      }

      v5 = v67;
    }
  }

  v64 = v7;
LABEL_49:

  v65 = *MEMORY[0x1E69E9840];
  return v64;
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v17 = NSStringFromClass(v3);
  v4 = [(CRPreflightResponse *)self requestID];
  v5 = [(CRPreflightResponse *)self sessionID];
  v6 = [(CRPreflightResponse *)self componentChallenges];
  v7 = [(CRPreflightResponse *)self activationChallenges];
  v8 = [(CRPreflightResponse *)self status];
  v9 = [(CRPreflightResponse *)self details];
  v10 = [(CRPreflightResponse *)self errorCode];
  v11 = [(CRPreflightResponse *)self errorMessage];
  v12 = [(CRPreflightResponse *)self specVersion];
  v13 = [(CRPreflightResponse *)self signatureChallenge];
  v16 = [v15 stringWithFormat:@"<%@: RequestID = %@ SessionID = %@ ComponentChallenges = %@ ActivationChallenges = %@ Status = %@ details = %@ errorCode = %@ errorMessage = %@ specVersion = %@ signatureChallenge = %@>", v17, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13];

  return v16;
}

@end