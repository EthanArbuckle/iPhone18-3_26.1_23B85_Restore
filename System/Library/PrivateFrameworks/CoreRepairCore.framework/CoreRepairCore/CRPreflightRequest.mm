@interface CRPreflightRequest
+ (id)request;
- (CRPreflightRequest)init;
- (id)description;
- (id)payload;
@end

@implementation CRPreflightRequest

- (CRPreflightRequest)init
{
  v3.receiver = self;
  v3.super_class = CRPreflightRequest;
  return [(CRPreflightRequest *)&v3 init];
}

+ (id)request
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (id)payload
{
  v81 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  requestID = [(CRPreflightRequest *)self requestID];

  if (requestID)
  {
    requestID2 = [(CRPreflightRequest *)self requestID];
    [v3 setObject:requestID2 forKeyedSubscript:@"RequestID"];
  }

  bikCertificate = [(CRPreflightRequest *)self bikCertificate];

  if (bikCertificate)
  {
    bikCertificate2 = [(CRPreflightRequest *)self bikCertificate];
    [v3 setObject:bikCertificate2 forKeyedSubscript:@"BIKCertificate"];
  }

  sessionID = [(CRPreflightRequest *)self sessionID];

  if (sessionID)
  {
    sessionID2 = [(CRPreflightRequest *)self sessionID];
    [v3 setObject:sessionID2 forKeyedSubscript:@"SessionID"];
  }

  components = [(CRPreflightRequest *)self components];

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (components)
  {
    v57 = v3;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = [(CRPreflightRequest *)self components];
    v12 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v75;
      v59 = v11;
      selfCopy = self;
      v58 = *v75;
      do
      {
        v15 = 0;
        v61 = v13;
        do
        {
          if (*v75 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v74 + 1) + 8 * v15);
          type = [v16 type];
          if (type)
          {
            v18 = type;
            identifier = [v16 identifier];

            if (identifier)
            {
              v63 = v15;
              v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
              type2 = [v16 type];
              [v20 setObject:type2 forKeyedSubscript:@"Type"];

              identifier2 = [v16 identifier];
              [v20 setObject:identifier2 forKeyedSubscript:@"Identifier"];

              asid = [v16 asid];

              if (asid)
              {
                asid2 = [v16 asid];
                [v21 setObject:asid2 forKeyedSubscript:@"asid"];
              }

              v64 = v21;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              componentResponses = [(CRPreflightRequest *)self componentResponses];
              v27 = [componentResponses countByEnumeratingWithState:&v70 objects:v79 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v71;
                do
                {
                  for (i = 0; i != v28; ++i)
                  {
                    if (*v71 != v29)
                    {
                      objc_enumerationMutation(componentResponses);
                    }

                    v31 = *(*(&v70 + 1) + 8 * i);
                    v32 = [v31 objectForKeyedSubscript:@"key"];
                    v33 = [v31 objectForKeyedSubscript:@"signature"];
                    v34 = [v31 objectForKeyedSubscript:@"deviceNonce"];
                    if (v32)
                    {
                      v35 = v33 == 0;
                    }

                    else
                    {
                      v35 = 1;
                    }

                    if (!v35)
                    {
                      v36 = [v20 objectForKeyedSubscript:@"Type"];
                      v37 = [v36 isEqual:v32];

                      if (v37)
                      {
                        [v20 setObject:v33 forKeyedSubscript:@"Response"];
                        if (v34)
                        {
                          [v64 setObject:v34 forKeyedSubscript:@"deviceNonce"];
                        }
                      }
                    }
                  }

                  v28 = [componentResponses countByEnumeratingWithState:&v70 objects:v79 count:16];
                }

                while (v28);
              }

              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              self = selfCopy;
              activationResponses = [(CRPreflightRequest *)selfCopy activationResponses];
              v39 = [activationResponses countByEnumeratingWithState:&v66 objects:v78 count:16];
              if (v39)
              {
                v40 = v39;
                v41 = *v67;
                do
                {
                  for (j = 0; j != v40; ++j)
                  {
                    if (*v67 != v41)
                    {
                      objc_enumerationMutation(activationResponses);
                    }

                    v43 = *(*(&v66 + 1) + 8 * j);
                    v44 = [v43 objectForKeyedSubscript:@"key"];
                    v45 = [v43 objectForKeyedSubscript:@"activationToken"];
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
                      v48 = [v20 objectForKeyedSubscript:@"Type"];
                      v49 = [v48 isEqual:v44];

                      if (v49)
                      {
                        [v64 setObject:v46 forKeyedSubscript:@"activationToken"];
                      }
                    }
                  }

                  v40 = [activationResponses countByEnumeratingWithState:&v66 objects:v78 count:16];
                }

                while (v40);
              }

              if ([v64 count])
              {
                [v20 setObject:v64 forKeyedSubscript:@"Properties"];
              }

              v11 = v59;
              [v59 addObject:v20];

              v13 = v61;
              v14 = v58;
              v15 = v63;
            }
          }

          ++v15;
        }

        while (v15 != v13);
        v13 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
      }

      while (v13);
    }

    v3 = v57;
  }

  [v3 setObject:v11 forKeyedSubscript:@"Components"];

  v65 = 0;
  v50 = v3;
  v51 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:100 options:0 error:&v65];
  v52 = v65;
  if (v52)
  {
    v53 = handleForCategory(0);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      [(CRPreflightRequest *)v52 payload];
    }

    v54 = 0;
  }

  else
  {
    v54 = v51;
  }

  v55 = *MEMORY[0x1E69E9840];

  return v54;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  requestID = [(CRPreflightRequest *)self requestID];
  sessionID = [(CRPreflightRequest *)self sessionID];
  bikCertificate = [(CRPreflightRequest *)self bikCertificate];
  components = [(CRPreflightRequest *)self components];
  componentResponses = [(CRPreflightRequest *)self componentResponses];
  activationResponses = [(CRPreflightRequest *)self activationResponses];
  signatureChallenge = [(CRPreflightRequest *)self signatureChallenge];
  v13 = [v3 stringWithFormat:@"<%@: RequestID = %@ SessionID = %@ bikCertificate = %@ components = %@ componentResponses = %@ activationResponses = %@, signatureChallenge = %@>", v5, requestID, sessionID, bikCertificate, components, componentResponses, activationResponses, signatureChallenge];

  return v13;
}

@end