@interface COClusterRealm
+ (id)realmWithMediaGroup:(id)a3;
+ (id)realmWithPredicate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToClusterRealm:(id)a3;
- (COClusterRealm)initWithCoder:(id)a3;
- (id)_identifierForGroupResult:(id)a3;
- (id)_initWithPredicate:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)_handleQueryResult:(id)a3 error:(id)a4;
- (void)_invokeUpdateHandler;
- (void)_setIdentifierLocked:(id)a3;
- (void)_setUpdateHandlerLocked:(id)a3;
- (void)_startQuery;
- (void)_withLock:(id)a3;
- (void)activate:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COClusterRealm

- (id)_initWithPredicate:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = COClusterRealm;
  v5 = [(COClusterRealm *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    identifier = v5->_identifier;
    v5->_identifier = 0;

    v8 = [v4 copy];
    predicate = v6->_predicate;
    v6->_predicate = v8;

    updateHandler = v6->_updateHandler;
    v6->_updateHandler = 0;

    v6->_updateHandlerInvoked = 0;
  }

  return v6;
}

+ (id)realmWithMediaGroup:(id)a3
{
  v4 = [MEMORY[0x277D27448] predicateForGroup:a3];
  v5 = [[a1 alloc] _initWithPredicate:v4];

  return v5;
}

+ (id)realmWithPredicate:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithPredicate:v4];

  return v5;
}

- (COClusterRealm)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 decodeIntegerForKey:@"version"] == 1)
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
    [(COClusterRealm *)v5 allowEvaluation];
    if (v5)
    {
      v6 = [(COClusterRealm *)self _initWithPredicate:v5];
    }

    else
    {

      v6 = 0;
    }

    self = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:1 forKey:@"version"];
  v5 = [(COClusterRealm *)self predicate];
  [v4 encodeObject:v5 forKey:@"predicate"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(COClusterRealm *)self predicate];
  v6 = [v4 _initWithPredicate:v5];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(COClusterRealm *)self identifier];
  v7 = [(COClusterRealm *)self predicate];
  v8 = [v3 stringWithFormat:@"<%@: %p, id(%@), p(%@)>", v5, self, v6, v7];

  return v8;
}

- (unint64_t)hash
{
  v2 = [(COClusterRealm *)self predicate];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(COClusterRealm *)self isEqualToClusterRealm:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (BOOL)isEqualToClusterRealm:(id)a3
{
  v4 = a3;
  v5 = [(COClusterRealm *)self predicate];
  v6 = [v4 predicate];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (void)_setIdentifierLocked:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  identifier = self->_identifier;
  self->_identifier = v4;
}

- (void)_setUpdateHandlerLocked:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = MEMORY[0x245D5F6A0](v4);

  updateHandler = self->_updateHandler;
  self->_updateHandler = v5;

  self->_updateHandlerInvoked = 0;
}

- (void)activate:(id)a3
{
  v4 = a3;
  if (+[COFeatureStatus isCOClusterEnabled])
  {
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __27__COClusterRealm_activate___block_invoke;
    v8 = &unk_278E121C0;
    v9 = self;
    v10 = v4;
    [(COClusterRealm *)self _withLock:&v5];
    [(COClusterRealm *)self _startQuery:v5];
  }
}

void __27__COClusterRealm_activate___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = COLogForCategory(7);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v10 = 134218242;
    v11 = v3;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_244328000, v2, OS_LOG_TYPE_DEFAULT, "%p realm activating %@", &v10, 0x16u);
  }

  v4 = [*(a1 + 40) copy];
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  *(*(a1 + 32) + 12) = 0;
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = 0;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_startQuery
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D27460];
  v4 = [(COClusterRealm *)self predicate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__COClusterRealm__startQuery__block_invoke;
  v7[3] = &unk_278E121E8;
  objc_copyWeak(&v8, &location);
  v5 = [v3 queryWithPredicate:v4 updateHandler:v7];
  query = self->_query;
  self->_query = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __29__COClusterRealm__startQuery__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleQueryResult:v8 error:v5];
  }
}

- (void)_handleQueryResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __43__COClusterRealm__handleQueryResult_error___block_invoke;
  v13 = &unk_278E12210;
  v14 = self;
  v8 = v7;
  v15 = v8;
  v9 = v6;
  v16 = v9;
  v17 = &v18;
  [(COClusterRealm *)self _withLock:&v10];
  if ((v19[3] & 1) != 0 || ![(COClusterRealm *)self updateHandlerInvoked:v10])
  {
    [(COClusterRealm *)self _invokeUpdateHandler:v10];
  }

  _Block_object_dispose(&v18, 8);
}

void __43__COClusterRealm__handleQueryResult_error___block_invoke(uint64_t *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a1 + 4;
  v3 = [a1[4] identifier];
  if (a1[5])
  {
    v4 = COLogForCategory(7);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __43__COClusterRealm__handleQueryResult_error___block_invoke_cold_1(v2, a1 + 5, v4);
    }

    v5 = 0;
    if (!v3)
    {
LABEL_8:
      if (!v5 || ([v5 isEqual:v3] & 1) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v5 = [a1[4] _identifierForGroupResult:a1[6]];
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  if ([v3 isEqual:v5])
  {
    goto LABEL_8;
  }

LABEL_10:
  v6 = COLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *v2;
    v12 = 134218498;
    v13 = v7;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_244328000, v6, OS_LOG_TYPE_DEFAULT, "%p realm identifier changing to %@ from %@", &v12, 0x20u);
  }

  v8 = [v5 copy];
  v9 = a1[4];
  v10 = *(v9 + 16);
  *(v9 + 16) = v8;

  *(*(a1[7] + 8) + 24) = 1;
LABEL_13:

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_identifierForGroupResult:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D02998];
  DigestSize = CryptoHashDescriptorGetDigestSize();
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  CryptoHashInit();
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [v4 sortedArrayUsingComparator:&__block_literal_global];
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v25 = v4;
    v10 = self;
    v11 = 0;
    v12 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = [*(*(&v26 + 1) + 8 * i) identifier];
        v15 = [v14 data];
        if ([v15 length])
        {
          ++v11;
          [v15 bytes];
          [v15 length];
          CryptoHashUpdate();
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v46 count:16];
    }

    while (v9);

    self = v10;
    v4 = v25;
    if (v11)
    {
      v16 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:DigestSize];
      [v16 mutableBytes];
      CryptoHashFinal();
      v17 = objc_alloc_init(MEMORY[0x277CCACA8]);
      v18 = [v16 bytes];
      if (DigestSize)
      {
        v19 = v18;
        do
        {
          v20 = *v19++;
          v21 = [v17 stringByAppendingFormat:@"%hhX", v20];

          v17 = v21;
          --DigestSize;
        }

        while (DigestSize);
      }

      else
      {
        v21 = v17;
      }

      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"r-mg-%lX-%@", v11, v21];

      goto LABEL_21;
    }
  }

  else
  {
  }

  v16 = COLogForCategory(7);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v45 = self;
    _os_log_impl(&dword_244328000, v16, OS_LOG_TYPE_DEFAULT, "%p received empty result, so no identifier", buf, 0xCu);
  }

  v22 = 0;
LABEL_21:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

uint64_t __44__COClusterRealm__identifierForGroupResult___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_invokeUpdateHandler
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__28;
  v8 = __Block_byref_object_dispose__29;
  v9 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__COClusterRealm__invokeUpdateHandler__block_invoke;
  v3[3] = &unk_278E12258;
  v3[4] = self;
  v3[5] = &v10;
  v3[6] = &v4;
  [(COClusterRealm *)self _withLock:v3];
  v2 = v11[5];
  if (v2)
  {
    (*(v2 + 16))(v2, v5[5]);
  }

  _Block_object_dispose(&v4, 8);

  _Block_object_dispose(&v10, 8);
}

void __38__COClusterRealm__invokeUpdateHandler__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateHandler];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) identifier];
  v6 = [v5 copy];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *(*(a1 + 32) + 12) = 1;
  }
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

void __43__COClusterRealm__handleQueryResult_error___block_invoke_cold_1(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v6 = 134218242;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_244328000, log, OS_LOG_TYPE_ERROR, "%p realm error querying groups %@", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end