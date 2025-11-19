@interface FASettingsPresetsRequest
- (FASettingsPresetsRequest)initWithChildAge:(id)a3 storeFront:(id)a4 version:(id)a5;
- (FASettingsPresetsRequest)initWithFamilyMember:(id)a3 storeFront:(id)a4 version:(id)a5;
- (FASettingsPresetsRequest)initWithFamilyMemberAltDSID:(id)a3 storeFront:(id)a4 version:(id)a5;
- (id)fetchCachedPresets;
- (id)fetchPresets;
- (void)fetchCachedPresetsWithCompletion:(id)a3;
- (void)fetchPresetsWithCompletion:(id)a3;
@end

@implementation FASettingsPresetsRequest

- (FASettingsPresetsRequest)initWithFamilyMember:(id)a3 storeFront:(id)a4 version:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 altDSID];
  v11 = [(FASettingsPresetsRequest *)self initWithFamilyMemberAltDSID:v10 storeFront:v9 version:v8];

  return v11;
}

- (FASettingsPresetsRequest)initWithFamilyMemberAltDSID:(id)a3 storeFront:(id)a4 version:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = FASettingsPresetsRequest;
  v12 = [(FAFamilyCircleRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_altDSID, a3);
    objc_storeStrong(&v13->_storeFront, a4);
    objc_storeStrong(&v13->_version, a5);
  }

  return v13;
}

- (FASettingsPresetsRequest)initWithChildAge:(id)a3 storeFront:(id)a4 version:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = FASettingsPresetsRequest;
  v12 = [(FAFamilyCircleRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_childAge, a3);
    objc_storeStrong(&v13->_storeFront, a4);
    objc_storeStrong(&v13->_version, a5);
  }

  return v13;
}

- (id)fetchPresets
{
  v3 = objc_alloc(MEMORY[0x1E6985DF8]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__FASettingsPresetsRequest_fetchPresets__block_invoke;
  v6[3] = &unk_1E7CA4748;
  v6[4] = self;
  v4 = [v3 initWithBlock:v6];

  return v4;
}

void __40__FASettingsPresetsRequest_fetchPresets__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __40__FASettingsPresetsRequest_fetchPresets__block_invoke_2;
  v18[3] = &unk_1E7CA46D8;
  v5 = v3;
  v19 = v5;
  v6 = [v4 serviceRemoteObjectWithErrorHandler:v18];
  v7 = *(*(a1 + 32) + 32);
  v8 = _FALogSystem();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *v17 = 0;
      _os_log_impl(&dword_1B70B0000, v8, OS_LOG_TYPE_DEFAULT, "FASettingsPresetsRequest: fetching presets with altDSID", v17, 2u);
    }

    v10 = *(a1 + 32);
    v11 = v10[4];
    v12 = [v10 storeFront];
    v13 = [*(a1 + 32) version];
    v14 = [*(a1 + 32) requestOptions];
    [v6 fetchSettingsPresetsForMemberWithAltDSID:v11 fromCache:0 storeFront:v12 version:v13 options:v14 replyBlock:v5];
  }

  else
  {
    if (v9)
    {
      *v17 = 0;
      _os_log_impl(&dword_1B70B0000, v8, OS_LOG_TYPE_DEFAULT, "FASettingsPresetsRequest: altDSID is nil fallback to fetching presets with age", v17, 2u);
    }

    v15 = *(a1 + 32);
    v16 = v15[5];
    v12 = [v15 storeFront];
    v13 = [*(a1 + 32) version];
    v14 = [*(a1 + 32) requestOptions];
    [v6 fetchSettingsPresetsForAge:v16 fromCache:0 storeFront:v12 version:v13 options:v14 replyBlock:v5];
  }
}

- (void)fetchPresetsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FASettingsPresetsRequest *)self fetchPresets];
  [v5 onComplete:v4];
}

- (id)fetchCachedPresets
{
  v3 = objc_alloc(MEMORY[0x1E6985DF8]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__FASettingsPresetsRequest_fetchCachedPresets__block_invoke;
  v6[3] = &unk_1E7CA4748;
  v6[4] = self;
  v4 = [v3 initWithBlock:v6];

  return v4;
}

void __46__FASettingsPresetsRequest_fetchCachedPresets__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __46__FASettingsPresetsRequest_fetchCachedPresets__block_invoke_2;
  v18[3] = &unk_1E7CA46D8;
  v5 = v3;
  v19 = v5;
  v6 = [v4 serviceRemoteObjectWithErrorHandler:v18];
  v7 = *(*(a1 + 32) + 32);
  v8 = _FALogSystem();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *v17 = 0;
      _os_log_impl(&dword_1B70B0000, v8, OS_LOG_TYPE_DEFAULT, "FASettingsPresetsRequest: fetching cached presets with altDSID", v17, 2u);
    }

    v10 = *(a1 + 32);
    v11 = v10[4];
    v12 = [v10 storeFront];
    v13 = [*(a1 + 32) version];
    v14 = [*(a1 + 32) requestOptions];
    [v6 fetchSettingsPresetsForMemberWithAltDSID:v11 fromCache:1 storeFront:v12 version:v13 options:v14 replyBlock:v5];
  }

  else
  {
    if (v9)
    {
      *v17 = 0;
      _os_log_impl(&dword_1B70B0000, v8, OS_LOG_TYPE_DEFAULT, "FASettingsPresetsRequest: altDSID is nil fallback to fetching cached presets with age", v17, 2u);
    }

    v15 = *(a1 + 32);
    v16 = v15[5];
    v12 = [v15 storeFront];
    v13 = [*(a1 + 32) version];
    v14 = [*(a1 + 32) requestOptions];
    [v6 fetchSettingsPresetsForAge:v16 fromCache:1 storeFront:v12 version:v13 options:v14 replyBlock:v5];
  }
}

- (void)fetchCachedPresetsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FASettingsPresetsRequest *)self fetchCachedPresets];
  [v5 onComplete:v4];
}

@end