@interface MPCPlaybackRequestEnvironment
+ (MPCPlaybackRequestEnvironment)activeAccountRequestEnvironment;
+ (MPCPlaybackRequestEnvironment)requestEnvironmentWithUserIdentity:(id)a3;
+ (id)musicRequestWithUserIdentity:(id)a3;
+ (id)payloadValueFromJSONValue:(id)a3;
- (MPCPlaybackRequestEnvironment)init;
- (MPCPlaybackRequestEnvironment)initWithCoder:(id)a3;
- (MPCPlaybackRequestEnvironment)initWithUserIdentity:(id)a3;
- (MPCPlaybackRequestEnvironment)initWithUserIdentity:(id)a3 clientInfo:(id)a4;
- (NSString)description;
- (id)_copyWithPlaybackRequestEnvironmentClass:(Class)a3;
- (id)_createMusicKitRequestContext;
- (id)_createStoreRequestContextWithTag:(id)a3;
- (id)mpc_jsonValue;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)rectifiedPlaybackRequestEnvironmentWithReasons:(id *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPCPlaybackRequestEnvironment

- (id)mpc_jsonValue
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = +[MPCPlaybackAccountManager sharedManager];
  v5 = [(MPCPlaybackRequestEnvironment *)self userIdentity];
  v6 = [v4 accountForUserIdentity:v5];
  v7 = [v6 hashedDSID];
  [v3 setObject:v7 forKeyedSubscript:@"user"];

  v8 = [(MPCPlaybackRequestEnvironment *)self clientIdentifier];
  [v3 setObject:v8 forKeyedSubscript:@"clientID"];

  v9 = [(MPCPlaybackRequestEnvironment *)self clientVersion];
  [v3 setObject:v9 forKeyedSubscript:@"clientVersion"];

  v10 = [(MPCPlaybackRequestEnvironment *)self requestingBundleIdentifier];
  [v3 setObject:v10 forKeyedSubscript:@"requestingID"];

  v11 = [(MPCPlaybackRequestEnvironment *)self requestingBundleVersion];
  [v3 setObject:v11 forKeyedSubscript:@"requestingVersion"];

  v12 = [(MPCPlaybackRequestEnvironment *)self delegationProperties];
  v13 = [v12 mpc_jsonValue];
  [v3 setObject:v13 forKeyedSubscript:@"delegation"];

  return v3;
}

+ (id)payloadValueFromJSONValue:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"user"];
  v5 = +[MPCPlaybackAccountManager sharedManager];
  v6 = [v5 accountForHashedDSID:v4];
  v7 = [v6 userIdentity];

  v8 = [(MPCPlaybackRequestEnvironment *)[MPCMutablePlaybackRequestEnvironment alloc] initWithUserIdentity:v7];
  v9 = [v3 objectForKeyedSubscript:@"clientID"];
  [(MPCMutablePlaybackRequestEnvironment *)v8 setClientIdentifier:v9];

  v10 = [v3 objectForKeyedSubscript:@"clientVersion"];
  [(MPCMutablePlaybackRequestEnvironment *)v8 setClientVersion:v10];

  v11 = [v3 objectForKeyedSubscript:@"requestingID"];
  [(MPCMutablePlaybackRequestEnvironment *)v8 setRequestingBundleIdentifier:v11];

  v12 = [v3 objectForKeyedSubscript:@"requestingVersion"];
  [(MPCMutablePlaybackRequestEnvironment *)v8 setRequestingBundleVersion:v12];

  v13 = [v3 objectForKeyedSubscript:@"delegation"];

  v14 = [(MPCPlaybackDelegationProperties *)MPCMutablePlaybackDelegationProperties payloadValueFromJSONValue:v13];
  [(MPCMutablePlaybackRequestEnvironment *)v8 setDelegationProperties:v14];

  return v8;
}

- (id)_copyWithPlaybackRequestEnvironmentClass:(Class)a3
{
  v4 = objc_alloc_init(a3);
  if (v4)
  {
    v5 = [(NSString *)self->_clientIdentifier copy];
    v6 = v4[1];
    v4[1] = v5;

    v7 = [(NSString *)self->_clientVersion copy];
    v8 = v4[2];
    v4[2] = v7;

    v9 = [(MPCPlaybackDelegationProperties *)self->_delegationProperties copy];
    v10 = v4[3];
    v4[3] = v9;

    v11 = [(NSString *)self->_requestingBundleIdentifier copy];
    v12 = v4[4];
    v4[4] = v11;

    v13 = [(NSString *)self->_requestingBundleVersion copy];
    v14 = v4[5];
    v4[5] = v13;

    v15 = [(ICUserIdentity *)self->_userIdentity copy];
    v16 = v4[6];
    v4[6] = v15;
  }

  return v4;
}

- (id)rectifiedPlaybackRequestEnvironmentWithReasons:(id *)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = +[MPCPlaybackAccountManager sharedManager];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v7 = [(MPCPlaybackRequestEnvironment *)self mutableCopy];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 accounts];
    *buf = 138412290;
    v50 = v9;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "rectifiedPlaybackRequestEnvironmentWithReasons - Account Manager accounts: %@", buf, 0xCu);
  }

  v10 = [v7 delegationProperties];

  if (v10)
  {
    v11 = [v7 delegationProperties];
    quot = [v11 storeAccountID];
    if (quot)
    {
      v13 = quot;
      v14 = &v53 + 1;
      do
      {
        v15 = lldiv(quot, 10);
        quot = v15.quot;
        if (v15.rem >= 0)
        {
          LOBYTE(v16) = v15.rem;
        }

        else
        {
          v16 = -v15.rem;
        }

        *(v14 - 2) = v16 + 48;
        v17 = (v14 - 2);
        --v14;
      }

      while (v15.quot);
      if (v13 < 0)
      {
        *(v14 - 2) = 45;
        v17 = (v14 - 2);
      }

      v18 = CFStringCreateWithBytes(0, v17, &v53 - v17, 0x8000100u, 0);
    }

    else
    {
      v18 = @"0";
    }

    v19 = [v5 accountForDSID:v18];
    v20 = v19;
    if (v19)
    {
      if ([v19 isDelegated])
      {
LABEL_19:

        goto LABEL_20;
      }

      [v7 setDelegationProperties:0];
      v21 = [v20 userIdentity];
      [v7 setUserIdentity:v21];

      v22 = @"[promoting delegated account]";
    }

    else
    {
      [v7 setDelegationProperties:0];
      v22 = @"[delegated account missing]";
    }

    [v6 addObject:v22];
    goto LABEL_19;
  }

LABEL_20:
  v23 = [MEMORY[0x1E69E4688] defaultIdentityStore];
  v24 = [v7 userIdentity];
  v25 = [v23 DSIDForUserIdentity:v24 outError:0];
  v26 = [v25 longLongValue];

  if (v26)
  {
    v27 = &v53 + 1;
    v28 = v26;
    do
    {
      v29 = lldiv(v28, 10);
      v28 = v29.quot;
      if (v29.rem >= 0)
      {
        LOBYTE(v30) = v29.rem;
      }

      else
      {
        v30 = -v29.rem;
      }

      *(v27 - 2) = v30 + 48;
      v31 = (v27 - 2);
      --v27;
    }

    while (v29.quot);
    if (v26 < 0)
    {
      *(v27 - 2) = 45;
      v31 = (v27 - 2);
    }

    v32 = CFStringCreateWithBytes(0, v31, &v53 - v31, 0x8000100u, 0);
  }

  else
  {
    v32 = @"0";
  }

  v33 = [v5 accountForDSID:v32];
  v34 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v50 = v32;
    v51 = 2112;
    v52 = v33;
    _os_log_impl(&dword_1C5C61000, v34, OS_LOG_TYPE_DEFAULT, "rectifiedPlaybackRequestEnvironmentWithReasons - Base account for DSID %@: %@", buf, 0x16u);
  }

  if (v33)
  {
    if ([v33 isDelegated])
    {
      v35 = [(MPCPlaybackDelegationProperties *)[MPCMutablePlaybackDelegationProperties alloc] initWithStoreAccountID:v26 deviceGUID:@"unknown-guid"];
      [v7 setDelegationProperties:v35];

      v36 = [v5 anyDelegationHostingAccount];
      v37 = [v36 userIdentity];
      if (v37)
      {
        [v7 setUserIdentity:v37];
      }

      else
      {
        v44 = [MEMORY[0x1E69E4680] defaultMediaIdentity];
        [v7 setUserIdentity:v44];
      }

      [v6 addObject:@"[base account is delegated]"];
    }
  }

  else
  {
    v38 = [MEMORY[0x1E69E4680] defaultMediaIdentity];
    [v7 setUserIdentity:v38];

    v39 = [MEMORY[0x1E69E4688] defaultIdentityStore];
    v40 = [v7 userIdentity];
    v48 = 0;
    v41 = [v39 DSIDForUserIdentity:v40 outError:&v48];
    v42 = v48;

    v43 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v41;
      _os_log_impl(&dword_1C5C61000, v43, OS_LOG_TYPE_DEFAULT, "rectifiedPlaybackRequestEnvironmentWithReasons - Base account missing & replaced by defaultMediaIdentity with DSID %@", buf, 0xCu);
    }

    [v6 addObject:@"[base account missing]"];
  }

  if ([v6 count])
  {
    if (a3)
    {
      v45 = v6;
      *a3 = v6;
    }

    v46 = [v7 copy];
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

- (id)_createMusicKitRequestContext
{
  v3 = MEMORY[0x1E69E43B0];
  v4 = ICBundleIdentifierForSystemApplicationType();
  v5 = [v3 clientInfoForMusicKitRequestWithClientIdentifier:@"com.apple.Music" clientVersion:@"1" bundleIdentifier:v4];

  v6 = objc_alloc_init(MEMORY[0x1E69E45E8]);
  [v6 setAllowsHandlingNonAuthenticationDialogs:0];
  v7 = [objc_alloc(MEMORY[0x1E69E45E0]) initWithConfiguration:v6];
  v8 = objc_alloc(MEMORY[0x1E69E4478]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__MPCPlaybackRequestEnvironment__createMusicKitRequestContext__block_invoke;
  v13[3] = &unk_1E8235C08;
  v14 = v5;
  v15 = self;
  v16 = v7;
  v9 = v7;
  v10 = v5;
  v11 = [v8 initWithBlock:v13];

  return v11;
}

void __62__MPCPlaybackRequestEnvironment__createMusicKitRequestContext__block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v5 = a2;
  [v5 setClientInfo:v3];
  [v5 setIdentity:*(a1[5] + 48)];
  v4 = [MEMORY[0x1E69E4688] defaultIdentityStore];
  [v5 setIdentityStore:v4];

  [v5 setStoreDialogResponseHandler:a1[6]];
}

- (id)_createStoreRequestContextWithTag:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69E44E0]);
  [v5 setClientIdentifier:self->_clientIdentifier];
  [v5 setClientVersion:self->_clientVersion];
  [v5 setRequestingBundleIdentifier:self->_requestingBundleIdentifier];
  [v5 setRequestingBundleVersion:self->_requestingBundleVersion];
  v6 = objc_alloc_init(MEMORY[0x1E69E45E8]);
  [v6 setAllowsHandlingNonAuthenticationDialogs:0];
  v7 = [objc_alloc(MEMORY[0x1E69E45E0]) initWithConfiguration:v6];
  v8 = objc_alloc(MEMORY[0x1E69E4618]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__MPCPlaybackRequestEnvironment__createStoreRequestContextWithTag___block_invoke;
  v14[3] = &unk_1E8235BE0;
  v14[4] = self;
  v15 = v5;
  v16 = v7;
  v17 = v4;
  v9 = v4;
  v10 = v7;
  v11 = v5;
  v12 = [v8 initWithBlock:v14];

  return v12;
}

void __67__MPCPlaybackRequestEnvironment__createStoreRequestContextWithTag___block_invoke(void *a1, void *a2)
{
  v9 = a2;
  [v9 setIdentity:*(a1[4] + 48)];
  v3 = [MEMORY[0x1E69E4688] defaultIdentityStore];
  [v9 setIdentityStore:v3];

  [v9 setClientInfo:a1[5]];
  [v9 setStoreDialogResponseHandler:a1[6]];
  [v9 setAllowsExpiredBags:1];
  v4 = *(a1[4] + 24);
  if (v4)
  {
    v5 = MEMORY[0x1E69E4680];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v4, "storeAccountID")}];
    v7 = [v5 specificAccountWithDSID:v6];
    v8 = [v7 identityAllowingDelegation:1];
    [v9 setDelegatedIdentity:v8];
  }

  [v9 mpc_setTag:a1[7]];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(MPCPlaybackRequestEnvironment *)self _copyWithPlaybackRequestEnvironmentClass:v4];
}

+ (id)musicRequestWithUserIdentity:(id)a3
{
  v3 = a3;
  v4 = [MPCPlaybackRequestEnvironment alloc];
  v5 = [objc_alloc(MEMORY[0x1E69E43B0]) initWithSystemApplicationType:0];
  v6 = [(MPCPlaybackRequestEnvironment *)v4 initWithUserIdentity:v3 clientInfo:v5];

  return v6;
}

+ (MPCPlaybackRequestEnvironment)requestEnvironmentWithUserIdentity:(id)a3
{
  v3 = a3;
  v4 = [[MPCPlaybackRequestEnvironment alloc] initWithUserIdentity:v3];

  return v4;
}

+ (MPCPlaybackRequestEnvironment)activeAccountRequestEnvironment
{
  v3 = [MEMORY[0x1E69E4680] activeAccount];
  v4 = [a1 requestEnvironmentWithUserIdentity:v3];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  clientIdentifier = self->_clientIdentifier;
  v5 = a3;
  [v5 encodeObject:clientIdentifier forKey:@"clientIdentifier"];
  [v5 encodeObject:self->_clientVersion forKey:@"clientVersion"];
  [v5 encodeObject:self->_delegationProperties forKey:@"delegationProperties"];
  [v5 encodeObject:self->_requestingBundleIdentifier forKey:@"requestingBundleIdentifier"];
  [v5 encodeObject:self->_requestingBundleVersion forKey:@"requestingBundleVersion"];
  [v5 encodeObject:self->_userIdentity forKey:@"userIdentity"];
}

- (MPCPlaybackRequestEnvironment)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = MPCPlaybackRequestEnvironment;
  v5 = [(MPCPlaybackRequestEnvironment *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1F454A698;
    }

    objc_storeStrong(&v5->_clientIdentifier, v8);

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientVersion"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_1F454A698;
    }

    objc_storeStrong(&v5->_clientVersion, v11);

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"delegationProperties"];
    delegationProperties = v5->_delegationProperties;
    v5->_delegationProperties = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestingBundleIdentifier"];
    requestingBundleIdentifier = v5->_requestingBundleIdentifier;
    v5->_requestingBundleIdentifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestingBundleVersion"];
    requestingBundleVersion = v5->_requestingBundleVersion;
    v5->_requestingBundleVersion = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userIdentity"];
    userIdentity = v5->_userIdentity;
    v5->_userIdentity = v18;

    if (!v5->_userIdentity)
    {
      v20 = [MEMORY[0x1E69E4680] activeAccount];
      v21 = v5->_userIdentity;
      v5->_userIdentity = v20;
    }
  }

  return v5;
}

- (NSString)description
{
  v3 = [(MPCPlaybackRequestEnvironment *)self delegationProperties];
  v4 = v3;
  v5 = MEMORY[0x1E696AEC0];
  if (v3)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v3, "storeAccountID")}];
    v7 = ICCreateLoggableValueForDSID();
    v8 = [v4 deviceName];
    v9 = [(MPCPlaybackRequestEnvironment *)self userIdentity];
    v10 = [v5 stringWithFormat:@"<MPCPlaybackRequestEnvironment: %p [DelegateAccount: <%@> %@] underlyingUserIdentity=%@ clientIdentifier=%@/%@>", self, v7, v8, v9, self->_clientIdentifier, self->_clientVersion];
  }

  else
  {
    v6 = [(MPCPlaybackRequestEnvironment *)self userIdentity];
    v10 = [v5 stringWithFormat:@"<MPCPlaybackRequestEnvironment: %p identity=%@ clientIdentifier=%@/%@>", self, v6, self->_clientIdentifier, self->_clientVersion];
  }

  return v10;
}

- (MPCPlaybackRequestEnvironment)init
{
  v3 = [MEMORY[0x1E69E4680] activeAccount];
  v4 = [(MPCPlaybackRequestEnvironment *)self initWithUserIdentity:v3];

  return v4;
}

- (MPCPlaybackRequestEnvironment)initWithUserIdentity:(id)a3 clientInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = MPCPlaybackRequestEnvironment;
  v9 = [(MPCPlaybackRequestEnvironment *)&v19 init];
  if (v9)
  {
    v10 = [v8 clientIdentifier];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &stru_1F454A698;
    }

    objc_storeStrong(&v9->_clientIdentifier, v12);

    v13 = [v8 clientVersion];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &stru_1F454A698;
    }

    objc_storeStrong(&v9->_clientVersion, v15);

    objc_storeStrong(&v9->_userIdentity, a3);
    if ([(NSString *)v9->_clientIdentifier isEqualToString:@"AirMusic"])
    {
      clientIdentifier = v9->_clientIdentifier;
      v9->_clientIdentifier = @"Music";

      clientVersion = v9->_clientVersion;
      v9->_clientVersion = @"3.1";
    }
  }

  return v9;
}

- (MPCPlaybackRequestEnvironment)initWithUserIdentity:(id)a3
{
  v4 = MEMORY[0x1E69E43B0];
  v5 = a3;
  v6 = [v4 defaultInfo];
  v7 = [(MPCPlaybackRequestEnvironment *)self initWithUserIdentity:v5 clientInfo:v6];

  return v7;
}

@end