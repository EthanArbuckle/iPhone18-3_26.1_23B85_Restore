@interface DSSharingType
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (DSSharingType)initWithSource:(id)a3;
- (NSArray)allPeople;
- (NSArray)sortedPeople;
- (NSString)displayName;
- (NSString)localizedDetailText;
- (id)valueForKey:(id)a3;
- (int64_t)score;
- (unint64_t)hash;
- (void)addPerson:(id)a3;
- (void)removePerson:(id)a3;
- (void)stopAllSharingOnQueue:(id)a3 completion:(id)a4;
- (void)stopSharingPeople:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)stopSharingWithPeople:(id)a3 asParticipantsOnQueue:(id)a4 completion:(id)a5;
@end

@implementation DSSharingType

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    DSLogSharingType = os_log_create("com.apple.DigitalSeparation", "DSSharingType");

    MEMORY[0x2821F96F8]();
  }
}

- (DSSharingType)initWithSource:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DSSharingType;
  v5 = [(DSSharingType *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(DSSharingType *)v5 setSource:v4];
    v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
    [(DSSharingType *)v6 setPeople:v7];
  }

  return v6;
}

- (void)addPerson:(id)a3
{
  v4 = a3;
  v5 = [(DSSharingType *)self people];
  [v5 addObject:v4];
}

- (void)removePerson:(id)a3
{
  v4 = a3;
  v5 = [(DSSharingType *)self people];
  [v5 removeObject:v4];
}

- (int64_t)score
{
  v2 = [(DSSharingType *)self source];
  v3 = [v2 name];
  v4 = [DSSourceDescriptor sourceDescriptorForSource:v3];
  v5 = [v4 priority];

  return v5;
}

- (NSString)displayName
{
  v2 = [(DSSharingType *)self source];
  v3 = [v2 name];
  v4 = [DSSourceDescriptor sourceDescriptorForSource:v3];
  v5 = [v4 localizedName];

  return v5;
}

- (NSString)localizedDetailText
{
  v3 = [(DSSharingType *)self source];
  v4 = [v3 name];
  v5 = [DSSourceDescriptor sourceDescriptorForSource:v4];

  v6 = [v5 localizedDetailTextByType:self];

  return v6;
}

- (unint64_t)hash
{
  v2 = [(DSSharingType *)self source];
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
      v5 = [(DSSharingType *)self source];
      v6 = [v5 name];
      v7 = [(DSSharingType *)v4 source];
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

- (id)valueForKey:(id)a3
{
  if ([a3 isEqualToString:@"displayName"])
  {
    v4 = [(DSSharingType *)self displayName];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)sortedPeople
{
  v2 = [(DSSharingType *)self people];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_0];

  return v3;
}

uint64_t __29__DSSharingType_sortedPeople__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 score];
  if (v6 >= [v5 score])
  {
    v8 = [v4 score];
    if (v8 <= [v5 score])
    {
      v9 = [v4 displayName];
      v10 = [v5 displayName];
      v7 = [v9 localizedStandardCompare:v10];
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (NSArray)allPeople
{
  v2 = [(DSSharingType *)self people];
  v3 = [v2 array];

  return v3;
}

- (void)stopAllSharingOnQueue:(id)a3 completion:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(DSSharingType *)self source];
  v9 = [v8 name];
  v10 = [DSRestrictionStore isSourceRestricted:v9];

  if (v10)
  {
    v11 = DSLogSharingType;
    if (os_log_type_enabled(DSLogSharingType, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      v13 = [v8 name];
      *buf = 138412290;
      v32 = v13;
      _os_log_impl(&dword_248C40000, v12, OS_LOG_TYPE_INFO, "Cannot reset %@ due to restrictions", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke;
    block[3] = &unk_278F72600;
    v30 = v7;
    v29 = v8;
    dispatch_async(v6, block);
  }

  else
  {
    objc_initWeak(&location, self);
    v14 = os_signpost_id_generate(DSLogSharingType);
    v15 = DSLogSharingType;
    v16 = v15;
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "stopAll", " enableTelemetry=YES ", buf, 2u);
    }

    v17 = [(DSSharingType *)self people];
    v18 = [v17 copy];

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke_312;
    v21[3] = &unk_278F72678;
    v22 = v8;
    v23 = v6;
    v25 = v7;
    v19 = v18;
    v24 = v19;
    objc_copyWeak(v26, &location);
    v26[1] = v14;
    [v22 stopAllSharingWithCompletion:v21];
    objc_destroyWeak(v26);

    objc_destroyWeak(&location);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) name];
  v2 = [DSError errorWithCode:6 sourceName:v3];
  (*(v1 + 16))(v1, v2);
}

void __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke_312(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v4 = (a1 + 32);
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 name];
  v8 = [v3 ds_errorFromIgnorableError:v6 sourceName:v7];

  if (v8)
  {
    v9 = DSLogSharingType;
    if (os_log_type_enabled(DSLogSharingType, OS_LOG_TYPE_ERROR))
    {
      __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke_312_cold_1(v4, v9);
    }

    v10 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke_314;
    block[3] = &unk_278F72628;
    v11 = &v30;
    v30 = *(a1 + 56);
    v28 = *(a1 + 32);
    v29 = v8;
    dispatch_async(v10, block);
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = *(a1 + 48);
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * v16);
          WeakRetained = objc_loadWeakRetained((a1 + 64));
          [WeakRetained removePerson:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v14);
    }

    v19 = *(a1 + 40);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke_2;
    v21[3] = &unk_278F72650;
    v22[1] = *(a1 + 72);
    v11 = v22;
    v22[0] = *(a1 + 56);
    dispatch_async(v19, v21);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke_314(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) name];
  v7[0] = *(a1 + 40);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [DSError errorWithCode:2 sourceName:v3 underlyingErrors:v4];
  (*(v2 + 16))(v2, v5);

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke_2(uint64_t a1)
{
  v2 = DSLogSharingType;
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_248C40000, v3, OS_SIGNPOST_INTERVAL_END, v4, "stopAll", " enableTelemetry=YES ", v6, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke_317(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) name];
  v2 = [DSError errorWithCode:2 sourceName:v3 underlyingErrors:MEMORY[0x277CBEBF8]];
  (*(v1 + 16))(v1, v2);
}

- (void)stopSharingWithPeople:(id)a3 asParticipantsOnQueue:(id)a4 completion:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v28 = a3;
  queue = a4;
  v30 = a5;
  v8 = [(DSSharingType *)self source];
  v9 = [v8 name];
  v10 = [DSRestrictionStore isSourceRestricted:v9];

  if (v10)
  {
    v11 = DSLogSharingType;
    if (os_log_type_enabled(DSLogSharingType, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      v13 = [v8 name];
      *buf = 138412290;
      v46 = v13;
      _os_log_impl(&dword_248C40000, v12, OS_LOG_TYPE_INFO, "Cannot reset %@ due to restrictions", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__DSSharingType_stopSharingWithPeople_asParticipantsOnQueue_completion___block_invoke;
    block[3] = &unk_278F72600;
    v44 = v30;
    v43 = v8;
    dispatch_async(queue, block);

    v14 = v44;
  }

  else
  {
    v14 = [MEMORY[0x277CBEB18] array];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v15 = v28;
    v16 = [v15 countByEnumeratingWithState:&v38 objects:v49 count:16];
    if (v16)
    {
      v17 = *v39;
      do
      {
        v18 = 0;
        do
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v38 + 1) + 8 * v18);
          v20 = [v8 name];
          v21 = [v19 participationForSourceName:v20];
          [v14 addObjectsFromArray:v21];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v15 countByEnumeratingWithState:&v38 objects:v49 count:16];
      }

      while (v16);
    }

    objc_initWeak(&location, self);
    v22 = os_signpost_id_generate(DSLogSharingType);
    v23 = DSLogSharingType;
    v24 = v23;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "stopParticipants", " enableTelemetry=YES ", buf, 2u);
    }

    v25 = DSLogSharingType;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [v8 name];
      *buf = 138478083;
      v46 = v14;
      v47 = 2114;
      v48 = v26;
      _os_log_impl(&dword_248C40000, v25, OS_LOG_TYPE_INFO, "Stopping sharing of participants %{private}@ from source %{public}@", buf, 0x16u);
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __72__DSSharingType_stopSharingWithPeople_asParticipantsOnQueue_completion___block_invoke_319;
    v31[3] = &unk_278F72678;
    v32 = v8;
    v33 = queue;
    v35 = v30;
    v34 = v15;
    objc_copyWeak(v36, &location);
    v36[1] = v22;
    [v32 stopSharingWithParticipants:v14 completion:v31];
    objc_destroyWeak(v36);

    objc_destroyWeak(&location);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __72__DSSharingType_stopSharingWithPeople_asParticipantsOnQueue_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) name];
  v2 = [DSError errorWithCode:6 sourceName:v3];
  (*(v1 + 16))(v1, v2);
}

void __72__DSSharingType_stopSharingWithPeople_asParticipantsOnQueue_completion___block_invoke_319(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v4 = (a1 + 32);
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 name];
  v8 = [v3 ds_errorFromIgnorableError:v6 sourceName:v7];

  if (v8)
  {
    v9 = DSLogSharingType;
    if (os_log_type_enabled(DSLogSharingType, OS_LOG_TYPE_ERROR))
    {
      __72__DSSharingType_stopSharingWithPeople_asParticipantsOnQueue_completion___block_invoke_319_cold_1(v4, v9);
    }

    v10 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__DSSharingType_stopSharingWithPeople_asParticipantsOnQueue_completion___block_invoke_320;
    block[3] = &unk_278F72628;
    v11 = &v30;
    v30 = *(a1 + 56);
    v28 = *(a1 + 32);
    v29 = v8;
    dispatch_async(v10, block);
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = *(a1 + 48);
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * v16);
          WeakRetained = objc_loadWeakRetained((a1 + 64));
          [WeakRetained removePerson:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v14);
    }

    v19 = *(a1 + 40);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __72__DSSharingType_stopSharingWithPeople_asParticipantsOnQueue_completion___block_invoke_2;
    v21[3] = &unk_278F72650;
    v22[1] = *(a1 + 72);
    v11 = v22;
    v22[0] = *(a1 + 56);
    dispatch_async(v19, v21);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __72__DSSharingType_stopSharingWithPeople_asParticipantsOnQueue_completion___block_invoke_320(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) name];
  v7[0] = *(a1 + 40);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [DSError errorWithCode:2 sourceName:v3 underlyingErrors:v4];
  (*(v2 + 16))(v2, v5);

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __72__DSSharingType_stopSharingWithPeople_asParticipantsOnQueue_completion___block_invoke_2(uint64_t a1)
{
  v2 = DSLogSharingType;
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_248C40000, v3, OS_SIGNPOST_INTERVAL_END, v4, "stopParticipants", " enableTelemetry=YES ", v6, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __72__DSSharingType_stopSharingWithPeople_asParticipantsOnQueue_completion___block_invoke_321(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) name];
  v2 = [DSError errorWithCode:2 sourceName:v3 underlyingErrors:MEMORY[0x277CBEBF8]];
  (*(v1 + 16))(v1, v2);
}

- (void)stopSharingPeople:(id)a3 queue:(id)a4 completion:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v8 = a4;
  v20 = a5;
  v9 = [(DSSharingType *)self source];
  if (objc_opt_respondsToSelector())
  {
    [(DSSharingType *)self stopSharingWithPeople:v21 asParticipantsOnQueue:v8 completion:v20];
  }

  else
  {
    v25 = [MEMORY[0x277CBEB18] array];
    v10 = dispatch_group_create();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v21;
    v11 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v11)
    {
      v24 = *v38;
      v22 = v8;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v37 + 1) + 8 * i);
          objc_initWeak(&location, self);
          v14 = DSLogSharingType;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = [(DSSharingType *)self source];
            v16 = [v15 name];
            *buf = 138478083;
            v42 = v13;
            v43 = 2114;
            v44 = v16;
            _os_log_impl(&dword_248C40000, v14, OS_LOG_TYPE_INFO, "Stopping sharing of %{private}@ from source %{public}@", buf, 0x16u);

            v8 = v22;
          }

          dispatch_group_enter(v10);
          v45 = v9;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __52__DSSharingType_stopSharingPeople_queue_completion___block_invoke;
          v29[3] = &unk_278F726A0;
          v30 = v9;
          v31 = v13;
          v32 = v25;
          v33 = self;
          objc_copyWeak(&v35, &location);
          v34 = v10;
          [v13 stopSharingSources:v17 queue:v8 completion:v29];

          objc_destroyWeak(&v35);
          objc_destroyWeak(&location);
        }

        v11 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v11);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__DSSharingType_stopSharingPeople_queue_completion___block_invoke_324;
    block[3] = &unk_278F726C8;
    v27 = v25;
    v28 = v20;
    v18 = v25;
    dispatch_group_notify(v10, v8, block);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __52__DSSharingType_stopSharingPeople_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 name];
  v7 = [v3 ds_errorFromIgnorableError:v5 sourceName:v6];

  v8 = DSLogSharingType;
  if (v7)
  {
    if (os_log_type_enabled(DSLogSharingType, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v19 = v8;
      v20 = [v17 name];
      *buf = 138478339;
      v23 = v18;
      v24 = 2114;
      v25 = v20;
      v26 = 2114;
      v27 = v7;
      _os_log_error_impl(&dword_248C40000, v19, OS_LOG_TYPE_ERROR, "Failed to stop sharing with %{private}@ from source %{public}@ because %{public}@", buf, 0x20u);
    }

    v9 = [*(a1 + 32) name];
    v21 = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    WeakRetained = [DSError errorWithCode:2 sourceName:v9 underlyingErrors:v10];

    [*(a1 + 48) addObject:WeakRetained];
  }

  else
  {
    if (os_log_type_enabled(DSLogSharingType, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 56);
      v13 = v8;
      v14 = [v12 source];
      v15 = [v14 name];
      *buf = 138477827;
      v23 = v15;
      _os_log_impl(&dword_248C40000, v13, OS_LOG_TYPE_INFO, "Stopping sharing with %{private}@ complete", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained removePerson:*(a1 + 40)];
  }

  dispatch_group_leave(*(a1 + 64));
  v16 = *MEMORY[0x277D85DE8];
}

void __52__DSSharingType_stopSharingPeople_queue_completion___block_invoke_324(uint64_t a1)
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

- (void)stopAllSharingOnQueue:(uint64_t)a3 completion:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&dword_248C40000, v5, OS_LOG_TYPE_ERROR, "Failed to stop all sharing with %{public}@ because exception %{public}@", v4, 0x16u);
}

void __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke_312_cold_1(void **a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_248C40000, v5, v6, "Failed to stop all sharing with %{public}@ because %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stopSharingWithPeople:(void *)a1 asParticipantsOnQueue:(uint64_t)a2 completion:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&dword_248C40000, v5, OS_LOG_TYPE_ERROR, "Failed to stop sharing with participants for %{public}@ because exception %{public}@", v4, 0x16u);
}

void __72__DSSharingType_stopSharingWithPeople_asParticipantsOnQueue_completion___block_invoke_319_cold_1(void **a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_248C40000, v5, v6, "Failed to stop sharing with participants for %{public}@ because %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

@end