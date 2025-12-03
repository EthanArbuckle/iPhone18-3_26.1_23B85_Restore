@interface CRPreflightResponse
- (CRPreflightResponse)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation CRPreflightResponse

- (CRPreflightResponse)initWithDictionary:(id)dictionary
{
  v79 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v75.receiver = self;
  v75.super_class = CRPreflightResponse;
  v6 = [(CRPreflightResponse *)&v75 init];
  v7 = v6;
  if (v6)
  {
    if (!dictionaryCopy)
    {
      v64 = 0;
      goto LABEL_49;
    }

    objc_storeStrong(&v6->_rawResponse, dictionary);
    v8 = [dictionaryCopy objectForKeyedSubscript:@"RequestID"];

    if (v8)
    {
      v9 = [dictionaryCopy objectForKeyedSubscript:@"RequestID"];
      requestID = v7->_requestID;
      v7->_requestID = v9;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"SessionID"];

    if (v11)
    {
      v12 = [dictionaryCopy objectForKeyedSubscript:@"SessionID"];
      sessionID = v7->_sessionID;
      v7->_sessionID = v12;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"status"];

    if (v14)
    {
      v15 = [dictionaryCopy objectForKeyedSubscript:@"status"];
      status = v7->_status;
      v7->_status = v15;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"details"];

    if (v17)
    {
      v18 = [dictionaryCopy objectForKeyedSubscript:@"details"];
      details = v7->_details;
      v7->_details = v18;
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"ErrorCode"];

    if (v20)
    {
      v21 = [dictionaryCopy objectForKeyedSubscript:@"ErrorCode"];
      errorCode = v7->_errorCode;
      v7->_errorCode = v21;
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"ErrorMessage"];

    if (v23)
    {
      v24 = [dictionaryCopy objectForKeyedSubscript:@"ErrorMessage"];
      errorMessage = v7->_errorMessage;
      v7->_errorMessage = v24;
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"SpecVersion"];

    if (v26)
    {
      v27 = [dictionaryCopy objectForKeyedSubscript:@"SpecVersion"];
      specVersion = v7->_specVersion;
      v7->_specVersion = v27;
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"SignatureChallenge"];

    if (v29)
    {
      v30 = [dictionaryCopy objectForKeyedSubscript:@"SignatureChallenge"];
      signatureChallenge = v7->_signatureChallenge;
      v7->_signatureChallenge = v30;
    }

    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    componentChallenges = v7->_componentChallenges;
    v7->_componentChallenges = v32;

    v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    activationChallenges = v7->_activationChallenges;
    v7->_activationChallenges = v34;

    v36 = [dictionaryCopy objectForKeyedSubscript:@"Challenges"];

    if (v36)
    {
      v67 = dictionaryCopy;
      v37 = [dictionaryCopy objectForKeyedSubscript:@"Challenges"];
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

      dictionaryCopy = v67;
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
  requestID = [(CRPreflightResponse *)self requestID];
  sessionID = [(CRPreflightResponse *)self sessionID];
  componentChallenges = [(CRPreflightResponse *)self componentChallenges];
  activationChallenges = [(CRPreflightResponse *)self activationChallenges];
  status = [(CRPreflightResponse *)self status];
  details = [(CRPreflightResponse *)self details];
  errorCode = [(CRPreflightResponse *)self errorCode];
  errorMessage = [(CRPreflightResponse *)self errorMessage];
  specVersion = [(CRPreflightResponse *)self specVersion];
  signatureChallenge = [(CRPreflightResponse *)self signatureChallenge];
  v16 = [v15 stringWithFormat:@"<%@: RequestID = %@ SessionID = %@ ComponentChallenges = %@ ActivationChallenges = %@ Status = %@ details = %@ errorCode = %@ errorMessage = %@ specVersion = %@ signatureChallenge = %@>", v17, requestID, sessionID, componentChallenges, activationChallenges, status, details, errorCode, errorMessage, specVersion, signatureChallenge];

  return v16;
}

@end