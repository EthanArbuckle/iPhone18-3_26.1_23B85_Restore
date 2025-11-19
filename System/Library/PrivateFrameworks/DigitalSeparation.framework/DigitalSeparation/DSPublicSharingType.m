@interface DSPublicSharingType
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (DSPublicSharingType)initWithSource:(id)a3;
- (NSArray)allPublicResources;
- (NSString)displayName;
- (NSString)localizedDetailText;
- (int64_t)score;
- (unint64_t)hash;
- (void)addPublicResource:(id)a3;
- (void)removePublicResource:(id)a3;
- (void)stopAllSharingOnQueue:(id)a3 completion:(id)a4;
- (void)stopSharingResource:(id)a3 onQueue:(id)a4 completion:(id)a5;
@end

@implementation DSPublicSharingType

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    DSLogPublicSharing = os_log_create("com.apple.DigitalSeparation", "DSLogPublicSharingType");

    MEMORY[0x2821F96F8]();
  }
}

- (DSPublicSharingType)initWithSource:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DSPublicSharingType;
  v5 = [(DSPublicSharingType *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(DSPublicSharingType *)v5 setSource:v4];
    v7 = [MEMORY[0x277CBEB58] set];
    [(DSPublicSharingType *)v6 setPublicResources:v7];
  }

  return v6;
}

- (void)addPublicResource:(id)a3
{
  v4 = a3;
  v5 = [(DSPublicSharingType *)self publicResources];
  [v5 addObject:v4];
}

- (void)removePublicResource:(id)a3
{
  v4 = a3;
  v5 = [(DSPublicSharingType *)self publicResources];
  [v5 removeObject:v4];
}

- (NSArray)allPublicResources
{
  v2 = [(DSPublicSharingType *)self publicResources];
  v3 = [v2 allObjects];

  return v3;
}

- (int64_t)score
{
  v2 = [(DSPublicSharingType *)self source];
  v3 = [v2 name];
  v4 = [DSSourceDescriptor sourceDescriptorForSource:v3];
  v5 = [v4 priority];

  return v5;
}

- (NSString)displayName
{
  v2 = [(DSPublicSharingType *)self source];
  v3 = [v2 name];
  v4 = [DSSourceDescriptor sourceDescriptorForSource:v3];
  v5 = [v4 localizedName];

  return v5;
}

- (NSString)localizedDetailText
{
  v3 = [(DSPublicSharingType *)self source];
  v4 = [v3 name];
  v5 = [DSSourceDescriptor sourceDescriptorForSource:v4];

  v6 = [v5 localizedPublicSharingDetailTextByType:self];

  return v6;
}

- (unint64_t)hash
{
  v2 = [(DSPublicSharingType *)self source];
  v3 = [v2 name];
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(DSPublicSharingType *)self source];
      v6 = [v5 name];
      v7 = [(DSPublicSharingType *)v4 source];
      v8 = [v7 name];
      v9 = [v6 isEqualToString:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)stopSharingResource:(id)a3 onQueue:(id)a4 completion:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [(DSPublicSharingType *)self source];
  v10 = [v7 visibility];
  if (v10 == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [v7 participationAccess];
      if ((v17 & 2) != 0)
      {
        if (objc_opt_respondsToSelector())
        {
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __62__DSPublicSharingType_stopSharingResource_onQueue_completion___block_invoke_14;
          v26[3] = &unk_278F72F90;
          v27 = v9;
          v28 = v7;
          v29 = v8;
          [v27 updateParticipantAccessLevelTo:1 onResource:v28 withCompletion:v26];

          v16 = v27;
LABEL_18:

          goto LABEL_19;
        }

        v23 = DSLogPublicSharing;
        if (os_log_type_enabled(DSLogPublicSharing, OS_LOG_TYPE_ERROR))
        {
          [DSPublicSharingType stopSharingResource:v23 onQueue:v9 completion:?];
        }

LABEL_17:
        v16 = [v9 name];
        v21 = [DSError errorWithCode:2 sourceName:v16];
        (*(v8 + 2))(v8, v21);

        goto LABEL_18;
      }
    }

    else
    {
      v17 = 0;
    }

    v20 = DSLogPublicSharing;
    if (os_log_type_enabled(DSLogPublicSharing, OS_LOG_TYPE_FAULT))
    {
      v24 = v20;
      v25 = [v9 name];
      *buf = 138543874;
      v35 = v25;
      v36 = 2050;
      v37 = [v7 visibility];
      v38 = 2050;
      v39 = v17;
      _os_log_fault_impl(&dword_248C40000, v24, OS_LOG_TYPE_FAULT, "[%{public}@] Resource classified as public but visibility is %{public}ld and participation access is %{public}ld", buf, 0x20u);
    }

    goto LABEL_17;
  }

  if (v10 == 2)
  {
    v11 = objc_opt_respondsToSelector();
    v12 = DSLogPublicSharing;
    v13 = os_log_type_enabled(DSLogPublicSharing, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v13)
      {
        v14 = v12;
        v15 = [v9 name];
        *buf = 138543618;
        v35 = v15;
        v36 = 2114;
        v37 = v7;
        _os_log_impl(&dword_248C40000, v14, OS_LOG_TYPE_INFO, "[%{public}@] Resource %{public}@ is publicly visible, attempting to change visibility to private", buf, 0x16u);
      }

      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __62__DSPublicSharingType_stopSharingResource_onQueue_completion___block_invoke;
      v32[3] = &unk_278F72F68;
      v33 = v8;
      [v9 updateVisibilityTo:1 onResource:v7 withCompletion:v32];
      v16 = v33;
    }

    else
    {
      if (v13)
      {
        v18 = v12;
        v19 = [v9 name];
        *buf = 138543618;
        v35 = v19;
        v36 = 2114;
        v37 = v7;
        _os_log_impl(&dword_248C40000, v18, OS_LOG_TYPE_INFO, "[%{public}@] Resource %{public}@ is publicly visible, attempting to stop sharing entirely", buf, 0x16u);
      }

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __62__DSPublicSharingType_stopSharingResource_onQueue_completion___block_invoke_7;
      v30[3] = &unk_278F72EA0;
      v31 = v8;
      [v9 stopSharing:v7 withCompletion:v30];
      v16 = v31;
    }

    goto LABEL_18;
  }

LABEL_19:

  v22 = *MEMORY[0x277D85DE8];
}

void __62__DSPublicSharingType_stopSharingResource_onQueue_completion___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = DSLogPublicSharing;
    if (os_log_type_enabled(DSLogPublicSharing, OS_LOG_TYPE_ERROR))
    {
      __62__DSPublicSharingType_stopSharingResource_onQueue_completion___block_invoke_14_cold_1(a1, v7, v6);
    }

    v8 = [*(a1 + 32) name];
    v12[0] = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v10 = [DSError errorWithCode:2 sourceName:v8 underlyingErrors:v9];
  }

  else
  {
    v10 = 0;
  }

  (*(*(a1 + 48) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stopAllSharingOnQueue:(id)a3 completion:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v20 = a4;
  v7 = dispatch_group_create();
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [(DSPublicSharingType *)self source];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = [(DSPublicSharingType *)self publicResources];
  v11 = [v10 copy];

  obj = v11;
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      v15 = 0;
      do
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v30 + 1) + 8 * v15);
        dispatch_group_enter(v7);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __56__DSPublicSharingType_stopAllSharingOnQueue_completion___block_invoke;
        v25[3] = &unk_278F72FB8;
        v26 = v9;
        v27 = v16;
        v28 = v8;
        v29 = v7;
        [(DSPublicSharingType *)self stopSharingResource:v16 onQueue:v6 completion:v25];

        ++v15;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v13);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DSPublicSharingType_stopAllSharingOnQueue_completion___block_invoke_18;
  block[3] = &unk_278F726C8;
  v23 = v8;
  v24 = v20;
  v17 = v20;
  v18 = v8;
  dispatch_group_notify(v7, v6, block);

  v19 = *MEMORY[0x277D85DE8];
}

void __56__DSPublicSharingType_stopAllSharingOnQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 name];
  v7 = [v3 ds_errorFromIgnorableError:v5 sourceName:v6];

  if (v7)
  {
    v8 = DSLogPublicSharing;
    if (os_log_type_enabled(DSLogPublicSharing, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = v8;
      v16 = [v13 name];
      *buf = 138543874;
      v19 = v14;
      v20 = 2114;
      v21 = v16;
      v22 = 2114;
      v23 = v7;
      _os_log_error_impl(&dword_248C40000, v15, OS_LOG_TYPE_ERROR, "Failed to stop public sharing on %{public}@ from %{public}@ because %{public}@", buf, 0x20u);
    }

    v9 = [*(a1 + 32) name];
    v17 = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    v11 = [DSError errorWithCode:2 sourceName:v9 underlyingErrors:v10];

    [*(a1 + 48) addObject:v11];
  }

  dispatch_group_leave(*(a1 + 56));

  v12 = *MEMORY[0x277D85DE8];
}

void __56__DSPublicSharingType_stopAllSharingOnQueue_completion___block_invoke_18(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [DSError errorWithCode:2 underlyingErrors:*(a1 + 32)];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  (*(*(a1 + 40) + 16))();
}

- (void)stopSharingResource:(void *)a1 onQueue:(void *)a2 completion:.cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 name];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_248C40000, v3, OS_LOG_TYPE_ERROR, "%{public}@ is unable to update participation access", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void __62__DSPublicSharingType_stopSharingResource_onQueue_completion___block_invoke_14_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 name];
  v8 = *(a1 + 40);
  v10 = 138543874;
  v11 = v7;
  v12 = 2114;
  v13 = v8;
  v14 = 2114;
  v15 = a3;
  _os_log_error_impl(&dword_248C40000, v6, OS_LOG_TYPE_ERROR, "[%{public}@ Failed to update participation access on %{public}@ because %{public}@", &v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

@end