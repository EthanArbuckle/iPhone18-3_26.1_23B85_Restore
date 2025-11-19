@interface FBKSUserLoginInfo
- (FBKSUserLoginInfo)initWithDictionary:(id)a3;
- (id)description;
- (void)saveDeviceTokenLookupInformation;
@end

@implementation FBKSUserLoginInfo

- (FBKSUserLoginInfo)initWithDictionary:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v61.receiver = self;
  v61.super_class = FBKSUserLoginInfo;
  v5 = [(FBKSUserLoginInfo *)&v61 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"default_email"];
    v7 = _FBKSNilIfNSNull(v6);
    username = v5->_username;
    v5->_username = v7;

    v9 = [v4 objectForKeyedSubscript:@"participant_id"];
    v10 = _FBKSNilIfNSNull(v9);
    participantID = v5->_participantID;
    v5->_participantID = v10;

    v12 = [v4 objectForKeyedSubscript:@"first_name"];
    v13 = _FBKSNilIfNSNull(v12);
    givenName = v5->_givenName;
    v5->_givenName = v13;

    v15 = [v4 objectForKeyedSubscript:@"last_name"];
    v16 = _FBKSNilIfNSNull(v15);
    familyName = v5->_familyName;
    v5->_familyName = v16;

    v18 = [v4 objectForKeyedSubscript:@"token"];
    v19 = _FBKSNilIfNSNull(v18);
    deviceToken = v5->_deviceToken;
    v5->_deviceToken = v19;

    v5->_isSystemAccount = 0;
    v21 = [v4 objectForKeyedSubscript:@"behavior"];
    v22 = _FBKSNilIfNSNull(v21);

    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = [[FBKSCustomBehavior alloc] initWithDictionary:v22];
        behavior = v5->_behavior;
        v5->_behavior = v23;
      }
    }

    v25 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v26 = [v4 objectForKeyedSubscript:@"pending_consents"];
    v27 = _FBKSNilIfNSNull(v26);

    if (v27)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v51 = v27;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v28 = v27;
        v29 = [v28 countByEnumeratingWithState:&v57 objects:v63 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v58;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v58 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v57 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v34 = [[FBKSPendingConsent alloc] initWithDictionary:v33];
                if ([(FBKSPendingConsent *)v34 type])
                {
                  [v25 addObject:v34];
                }
              }
            }

            v30 = [v28 countByEnumeratingWithState:&v57 objects:v63 count:16];
          }

          while (v30);
        }

        v27 = v51;
      }
    }

    v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
    pendingConsents = v5->_pendingConsents;
    v5->_pendingConsents = v35;

    v37 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v38 = [v4 objectForKeyedSubscript:@"signed_consent_ids"];
    v39 = _FBKSNilIfNSNull(v38);

    if (v39)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52 = v22;
        v50 = v4;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v40 = v39;
        v41 = [v40 countByEnumeratingWithState:&v53 objects:v62 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v54;
          do
          {
            for (j = 0; j != v42; ++j)
            {
              if (*v54 != v43)
              {
                objc_enumerationMutation(v40);
              }

              v45 = *(*(&v53 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v37 addObject:v45];
              }
            }

            v42 = [v40 countByEnumeratingWithState:&v53 objects:v62 count:16];
          }

          while (v42);
        }

        v4 = v50;
        v22 = v52;
      }
    }

    v46 = [MEMORY[0x1E695DEC8] arrayWithArray:v37];
    signedConsents = v5->_signedConsents;
    v5->_signedConsents = v46;
  }

  v48 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(FBKSUserLoginInfo *)self deviceToken];
  v5 = [(FBKSUserLoginInfo *)self participantID];
  v6 = [(FBKSUserLoginInfo *)self username];
  v7 = [(FBKSUserLoginInfo *)self givenName];
  v8 = [(FBKSUserLoginInfo *)self familyName];
  v9 = [v3 stringWithFormat:@"LoginInfo: deviceToken: %@, participantID: %@, username: %@, givenName: %@, familyName: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (void)saveDeviceTokenLookupInformation
{
  v3 = +[FBKSSharedConstants sharedUserDefaults];
  v4 = [(FBKSUserLoginInfo *)self username];
  [v3 setObject:v4 forKey:@"LastSuccessfulLogin"];

  v6 = +[FBKSSharedConstants sharedUserDefaults];
  v5 = [(FBKSUserLoginInfo *)self participantID];
  [v6 setObject:v5 forKey:@"LastSuccessfulID"];
}

@end