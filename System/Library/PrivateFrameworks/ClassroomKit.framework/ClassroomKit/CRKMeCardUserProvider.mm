@interface CRKMeCardUserProvider
- (CRKMeCardUserProvider)init;
- (CRKMeCardUserProvider)initWithContactsPrimitives:(id)a3;
- (id)fetchCurrentUser;
- (void)beginObservingContacts;
- (void)fetchCurrentUser;
- (void)rebuildUser;
- (void)rebuildUserDebounced;
@end

@implementation CRKMeCardUserProvider

- (CRKMeCardUserProvider)init
{
  v3 = objc_opt_new();
  v4 = [(CRKMeCardUserProvider *)self initWithContactsPrimitives:v3];

  return v4;
}

- (CRKMeCardUserProvider)initWithContactsPrimitives:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRKMeCardUserProvider;
  v6 = [(CRKMeCardUserProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactsPrimitives, a3);
    [(CRKMeCardUserProvider *)v7 beginObservingContacts];
    [(CRKMeCardUserProvider *)v7 rebuildUser];
  }

  return v7;
}

- (void)beginObservingContacts
{
  objc_initWeak(&location, self);
  v3 = [(CRKMeCardUserProvider *)self contactsPrimitives];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __47__CRKMeCardUserProvider_beginObservingContacts__block_invoke;
  v8 = &unk_278DC1870;
  objc_copyWeak(&v9, &location);
  v4 = [v3 subscribeToContactsChanges:&v5];
  [(CRKMeCardUserProvider *)self setContactsSubscription:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __47__CRKMeCardUserProvider_beginObservingContacts__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rebuildUserDebounced];
}

- (void)rebuildUserDebounced
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_rebuildUser object:0];

  [(CRKMeCardUserProvider *)self performSelector:sel_rebuildUser withObject:0 afterDelay:0.200000003];
}

- (void)rebuildUser
{
  v3 = [(CRKMeCardUserProvider *)self fetchCurrentUser];
  [(CRKMeCardUserProvider *)self setUser:v3];
}

- (id)fetchCurrentUser
{
  v3 = _CRKLogGeneral_23();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "Rebuilding MeCard user", buf, 2u);
  }

  v4 = [(CRKMeCardUserProvider *)self contactsPrimitives];
  v30 = 0;
  v5 = [v4 fetchMeCardContactWithError:&v30];
  v6 = v30;

  if (v5)
  {
    v7 = objc_opt_new();
    [v7 setUserIdentifier:@"TEMPORARY_ME_CARD_IDENTIFIER"];
    v8 = [v5 nickname];
    v9 = [v8 length];

    if (v9)
    {
      v10 = [v5 nickname];
    }

    else
    {
      v20 = [v5 givenName];
      if ([v20 length])
      {
        v21 = [v5 familyName];
        v22 = [v21 length];

        if (v22)
        {
          v11 = objc_opt_new();
          v23 = [v5 givenName];
          [v11 setGivenName:v23];

          v24 = [v5 familyName];
          [v11 setFamilyName:v24];

          v25 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v11 style:3 options:0];
          [v7 setDisplayName:v25];

          goto LABEL_7;
        }
      }

      else
      {
      }

      v26 = [v5 givenName];
      v27 = [v26 length];

      if (v27)
      {
        v10 = [v5 givenName];
      }

      else
      {
        v28 = [v5 familyName];
        v29 = [v28 length];

        if (!v29)
        {
          goto LABEL_8;
        }

        v10 = [v5 familyName];
      }
    }

    v11 = v10;
    [v7 setDisplayName:v10];
LABEL_7:

LABEL_8:
    v12 = [v5 givenName];
    [v7 setGivenName:v12];

    v13 = [v5 familyName];
    [v7 setFamilyName:v13];

    v14 = [v5 phoneticGivenName];
    [v7 setPhoneticGivenName:v14];

    v15 = [v5 phoneticFamilyName];
    [v7 setPhoneticFamilyName:v15];

    [v7 setUserSource:@"MeCard"];
    v16 = [v5 thumbnailImageData];
    [v7 setUserImageData:v16];

    v17 = [MEMORY[0x277CCAD78] UUID];
    v18 = [v17 UUIDString];
    [v7 setImageIdentifier:v18];

    goto LABEL_12;
  }

  v17 = _CRKLogGeneral_23();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [(CRKMeCardUserProvider *)v6 fetchCurrentUser];
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (void)fetchCurrentUser
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "No me contact found in the contact store: %{public}@", &v2, 0xCu);
}

@end