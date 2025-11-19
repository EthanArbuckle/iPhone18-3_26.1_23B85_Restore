@interface HDAssociationManager
- (BOOL)associateObjectUUIDs:(id)a3 objectUUID:(id)a4 error:(id *)a5;
- (BOOL)associateObjects:(id)a3 withObject:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 destinationSubObject:(id)a7 error:(id *)a8;
- (BOOL)disassociateObjects:(id)a3 withObject:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 destinationSubObject:(id)a7 error:(id *)a8;
- (BOOL)insertCodableTypedObjectAssociations:(id)a3 syncStore:(id)a4 profile:(id)a5 error:(id *)a6;
- (HDAssociationManager)initWithProfile:(id)a3;
- (id)_lock_observersAllTypesCreateIfNil:(const os_unfair_lock *)a1;
- (id)_lock_observersForDataType:(int)a3 createIfNil:;
- (id)_lock_observersForKey:(int)a3 createIfNil:;
- (id)_observersForDataType:(const os_unfair_lock *)a1;
- (id)_uuidsForObjects:(void *)a3 object:(void *)a4 subObject:(void *)a5 error:;
- (void)_notifyAssociationObjectsUpdatedWithAssociatedObjects:(void *)a3 withObject:(void *)a4 destinationSubObject:(uint64_t)a5 type:(uint64_t)a6 behavior:(void *)a7 anchor:;
- (void)addObserver:(id)a3 forDataType:(id)a4;
- (void)addObserverForAllTypes:(id)a3;
- (void)removeObserver:(id)a3 forDataType:(id)a4;
- (void)removeObserverForAllTypes:(id)a3;
@end

@implementation HDAssociationManager

- (HDAssociationManager)initWithProfile:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HDAssociationManager;
  v5 = [(HDAssociationManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    observersByDataType = v6->_observersByDataType;
    v6->_observersByDataType = v9;

    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (void)addObserver:(id)a3 forDataType:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(HDAssociationManager *)self _lock_observersForDataType:v6 createIfNil:1];

  [v8 addObject:v7];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_observersForDataType:(int)a3 createIfNil:
{
  if (a1)
  {
    v5 = a2;
    os_unfair_lock_assert_owner(a1 + 4);
    v6 = MEMORY[0x277CCABB0];
    v7 = [v5 code];

    v8 = [v6 numberWithInteger:v7];
    v9 = [(HDAssociationManager *)a1 _lock_observersForKey:v8 createIfNil:a3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)removeObserver:(id)a3 forDataType:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(HDAssociationManager *)self _lock_observersForDataType:v6 createIfNil:0];

  [v8 removeObject:v7];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)addObserverForAllTypes:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HDAssociationManager *)self _lock_observersAllTypesCreateIfNil:?];
  [v5 addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_observersAllTypesCreateIfNil:(const os_unfair_lock *)a1
{
  if (a1)
  {
    os_unfair_lock_assert_owner(a1 + 4);
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
    v5 = [(HDAssociationManager *)a1 _lock_observersForKey:v4 createIfNil:a2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeObserverForAllTypes:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HDAssociationManager *)self _lock_observersAllTypesCreateIfNil:?];
  [v5 removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)associateObjectUUIDs:(id)a3 objectUUID:(id)a4 error:(id *)a5
{
  v12 = 0;
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(a5) = [HDAssociationEntity associateSampleUUIDs:v9 withSampleUUID:v8 type:0 behavior:0 destinationSubObjectReference:0 lastInsertedEntityID:&v12 profile:WeakRetained error:a5];

  return a5;
}

- (BOOL)associateObjects:(id)a3 withObject:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 destinationSubObject:(id)a7 error:(id *)a8
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  _HKInitializeLogging();
  v15 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [v13 UUID];
    v18 = [v14 UUID];
    *buf = 138543618;
    v33 = v17;
    v34 = 2114;
    v35 = v18;
    _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "Associating sample with object UUID:%{public}@ and sub Object UUID:%{public}@ ", buf, 0x16u);
  }

  v19 = [(HDAssociationManager *)self _uuidsForObjects:v12 object:v13 subObject:v14 error:a8];
  if (!v19)
  {
    v24 = 0;
    goto LABEL_11;
  }

  v20 = [v13 UUID];
  v21 = HDReferenceForAssociatableObject(v14);
  v31 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v23 = [HDAssociationEntity associateSampleUUIDs:v19 withSampleUUID:v20 type:a5 behavior:a6 destinationSubObjectReference:v21 lastInsertedEntityID:&v31 profile:WeakRetained error:a8];
  v24 = v31;

  if (!v23)
  {
LABEL_11:
    v26 = 0;
    goto LABEL_12;
  }

  if (!v24)
  {
    _HKInitializeLogging();
    v25 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "Last inserted ID unexpectedly nil during association", buf, 2u);
    }

    v24 = &unk_283CB3CF0;
  }

  [(HDAssociationManager *)self _notifyAssociationObjectsUpdatedWithAssociatedObjects:v12 withObject:v13 destinationSubObject:v14 type:a5 behavior:a6 anchor:v24];
  v26 = 1;
LABEL_12:

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

- (id)_uuidsForObjects:(void *)a3 object:(void *)a4 subObject:(void *)a5 error:
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v25 = sel__uuidsForObjects_object_subObject_error_;
      v15 = *v28;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          if (![v9 acceptsAssociationWithObject:{v17, v25}] || v10 && (objc_msgSend(v10, "acceptsAssociationWithObject:", v17) & 1) == 0)
          {
            v20 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:v25 format:@"Sample does not support relating"];
            v21 = v20;
            if (v20)
            {
              if (a5)
              {
                v22 = v20;
                *a5 = v21;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v19 = 0;
            goto LABEL_18;
          }

          v18 = [v17 UUID];
          [v11 addObject:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v19 = v11;
LABEL_18:
  }

  else
  {
    v19 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)_notifyAssociationObjectsUpdatedWithAssociatedObjects:(void *)a3 withObject:(void *)a4 destinationSubObject:(uint64_t)a5 type:(uint64_t)a6 behavior:(void *)a7 anchor:
{
  v38 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a7;
  if (!a1)
  {
    goto LABEL_19;
  }

  if ([v14 conformsToProtocol:&unk_283D42B48])
  {
    if (v15)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        _HKInitializeLogging();
        v19 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v37 = v15;
          v20 = "Attempted to retrieve destinationSubObject: %{public}@ from Object that does not support subObjects";
          goto LABEL_15;
        }

        goto LABEL_19;
      }

      v17 = [v15 UUID];
      v18 = [v14 subObjectFromUUID:v17];

      if (!v18)
      {
        _HKInitializeLogging();
        v19 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v37 = v15;
          v20 = "Failed to retrieve destinationSubObject: %{public}@";
LABEL_15:
          _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
          goto LABEL_19;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v18 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      WeakRetained = objc_loadWeakRetained((a1 + 24));
      v22 = [WeakRetained appSubscriptionManager];
      [v14 sampleType];
      v23 = v28 = v18;
      [v22 setAnchor:v16 forDataCode:objc_msgSend(v23 type:{"code"), 1}];

      v24 = *(a1 + 32);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __131__HDAssociationManager__notifyAssociationObjectsUpdatedWithAssociatedObjects_withObject_destinationSubObject_type_behavior_anchor___block_invoke;
      block[3] = &unk_278626D68;
      block[4] = a1;
      v30 = v14;
      v31 = v28;
      v34 = a5;
      v35 = a6;
      v32 = v13;
      v33 = v16;
      v25 = v28;
      dispatch_async(v24, block);
    }

    else
    {
      _HKInitializeLogging();
      v26 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v37 = v14;
        _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "Unable to determine sample type for object: %{public}@", buf, 0xCu);
      }
    }

    goto LABEL_19;
  }

  _HKInitializeLogging();
  v19 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v37 = v14;
    v20 = "Parent Object %{public}@ is not an HKAssociatableObject";
    goto LABEL_15;
  }

LABEL_19:

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)disassociateObjects:(id)a3 withObject:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 destinationSubObject:(id)a7 error:(id *)a8
{
  v33 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  _HKInitializeLogging();
  v15 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [v13 UUID];
    *buf = 138543362;
    v32 = v17;
    _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "Disassociating sample with UUID %{public}@", buf, 0xCu);
  }

  v18 = [(HDAssociationManager *)self _uuidsForObjects:v12 object:v13 subObject:v14 error:a8];
  if (!v18)
  {
    v23 = 0;
    goto LABEL_11;
  }

  v19 = [v13 UUID];
  v20 = HDReferenceForAssociatableObject(v14);
  v30 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v22 = [HDAssociationEntity disassociateSampleUUIDs:v18 withSampleUUID:v19 type:a5 behavior:a6 destinationSubObjectReference:v20 lastInsertedEntityID:&v30 profile:WeakRetained error:a8];
  v23 = v30;

  if (!v22)
  {
LABEL_11:
    v25 = 0;
    goto LABEL_12;
  }

  if (!v23)
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "Last inserted ID unexpectedly nil during disassociation", buf, 2u);
    }

    v23 = &unk_283CB3CF0;
  }

  [(HDAssociationManager *)self _notifyAssociationObjectsUpdatedWithAssociatedObjects:v12 withObject:v13 destinationSubObject:v14 type:a5 behavior:a6 anchor:v23];
  v25 = 1;
LABEL_12:

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)insertCodableTypedObjectAssociations:(id)a3 syncStore:(id)a4 profile:(id)a5 error:(id *)a6
{
  v90 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v65 = a4;
  v66 = a5;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__143;
  v78 = __Block_byref_object_dispose__143;
  v79 = 0;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v70 objects:v84 count:16];
  if (v9)
  {
    v64 = *v71;
    v11 = &selRef_sizeOnDisk;
    *&v10 = 138543362;
    v57 = v10;
LABEL_3:
    v63 = v9;
    v12 = 0;
    v58 = v11[269];
    while (1)
    {
      if (*v71 != v64)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v70 + 1) + 8 * v12);
      v68 = v66;
      v69 = v65;
      if ((HKWithAutoreleasePool() & 1) == 0)
      {

        v54 = 0;
        goto LABEL_46;
      }

      if (!v75[5])
      {
        _HKInitializeLogging();
        v14 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "Last inserted ID unexpectedly nil during association", &buf, 2u);
        }

        v15 = v75[5];
        v75[5] = &unk_283CB3CF0;
      }

      v16 = [v13 type];
      v17 = [v13 behavior];
      if (v16 != 1)
      {
        goto LABEL_42;
      }

      v18 = v17;
      v19 = [v13 objectUUIDs];
      v20 = [v13 decodedAssociationUUID];
      v21 = [v13 decodedSubObjectUUID];
      v22 = v75[5];
      v67 = v20;
      v23 = v21;
      v62 = v22;
      if (self)
      {
        break;
      }

LABEL_41:

LABEL_42:
      if (v63 == ++v12)
      {
        v9 = [obj countByEnumeratingWithState:&v70 objects:v84 count:16];
        v11 = &selRef_sizeOnDisk;
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_44;
      }
    }

    v24 = MEMORY[0x277CBEB58];
    v25 = v19;
    v26 = objc_alloc_init(v24);
    v82 = 0;
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __127__HDAssociationManager__notifyAssociationSamplesUpdatedWithUUIDs_withSampleUUID_destinationSubObjectUUID_type_behavior_anchor___block_invoke;
    v80[3] = &unk_278626D40;
    v27 = v26;
    v81 = v27;
    LOBYTE(v24) = [v25 hk_enumerateUUIDsWithError:&v82 block:v80];

    v60 = v82;
    if ((v24 & 1) == 0)
    {
      _HKInitializeLogging();
      v37 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = v57;
        *(&buf + 4) = v60;
        _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "Failed to enumerate associated UUIDs objects for association enumeration: %{public}@", &buf, 0xCu);
      }

      goto LABEL_40;
    }

    v28 = v27;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v30 = [(HDDataEntity *)HDQuantitySampleSeriesEntity entityEnumeratorWithProfile:WeakRetained];

    v31 = HDDataEntityPredicateForDataUUIDs(v28);

    [v30 setPredicate:v31];
    v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v83 = 0;
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v87 = __55__HDAssociationManager__quantitySamplesForUUIDs_error___block_invoke;
    v88 = &unk_2786204C8;
    v33 = v32;
    v89 = v33;
    LOBYTE(v28) = [v30 enumerateWithError:&v83 handler:&buf];
    v34 = v83;
    if (v28)
    {
      v35 = v33;
      v36 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v38 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *v85 = v57;
        *&v85[4] = v34;
        _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "Failed to fetch objects for association enumeration: %{public}@", v85, 0xCu);
      }

      v39 = v34;
      v36 = v39;
      if (v39)
      {
        v40 = v39;
      }

      v35 = 0;
    }

    v41 = v36;
    if (!v35)
    {
      _HKInitializeLogging();
      v49 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = v57;
        *(&buf + 4) = v41;
        _os_log_error_impl(&dword_228986000, v49, OS_LOG_TYPE_ERROR, "Failed to retrieve samples with error: %{public}@", &buf, 0xCu);
      }

      goto LABEL_39;
    }

    v42 = objc_loadWeakRetained(&self->_profile);
    *v85 = v41;
    v43 = [(HDDataEntity *)HDWorkoutEntity objectWithUUID:v67 encodingOptions:0 profile:v42 error:v85];
    v44 = *v85;

    if (!v43)
    {
      _HKInitializeLogging();
      v50 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = v57;
        *(&buf + 4) = v44;
        _os_log_error_impl(&dword_228986000, v50, OS_LOG_TYPE_ERROR, "Failed to retrieve parent sample with error: %{public}@", &buf, 0xCu);
      }

      goto LABEL_38;
    }

    if (v23)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        _HKInitializeLogging();
        v51 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          v52 = v51;
          v53 = [v23 UUIDString];
          LODWORD(buf) = v57;
          *(&buf + 4) = v53;
          _os_log_error_impl(&dword_228986000, v52, OS_LOG_TYPE_ERROR, "Attempted to retrieve destinationSubObject: %{public}@ from Object that does not support subObjects", &buf, 0xCu);
        }

        goto LABEL_38;
      }

      v45 = [v43 subObjectFromUUID:v23];
      if (!v45)
      {
        _HKInitializeLogging();
        v46 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          v47 = v46;
          v48 = [v23 UUIDString];
          LODWORD(buf) = v57;
          *(&buf + 4) = v48;
          _os_log_error_impl(&dword_228986000, v47, OS_LOG_TYPE_ERROR, "Failed to retrieve destinationSubObject: %{public}@", &buf, 0xCu);
        }

        goto LABEL_38;
      }
    }

    else
    {
      v45 = 0;
    }

    [(HDAssociationManager *)self _notifyAssociationObjectsUpdatedWithAssociatedObjects:v35 withObject:v43 destinationSubObject:v45 type:1 behavior:v18 anchor:v62];

LABEL_38:
    v41 = v44;
LABEL_39:

LABEL_40:
    goto LABEL_41;
  }

LABEL_44:
  v54 = 1;
LABEL_46:

  _Block_object_dispose(&v74, 8);
  v55 = *MEMORY[0x277D85DE8];
  return v54;
}

BOOL __85__HDAssociationManager_insertCodableTypedObjectAssociations_syncStore_profile_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__143;
  v31 = __Block_byref_object_dispose__143;
  v4 = [*(a1 + 32) syncIdentityManager];
  v32 = [v4 legacySyncIdentity];

  v5 = [*(a1 + 32) database];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __85__HDAssociationManager_insertCodableTypedObjectAssociations_syncStore_profile_error___block_invoke_2;
  v24[3] = &unk_278619980;
  v26 = &v27;
  v21 = *(a1 + 32);
  v6 = v21.i64[0];
  v25 = vextq_s8(v21, v21, 8uLL);
  v7 = [(HDHealthEntity *)HDSyncIdentityEntity performWriteTransactionWithHealthDatabase:v5 error:a2 block:v24];

  if (v7)
  {
    v22 = [*(a1 + 40) objectUUIDs];
    v8 = [*(a1 + 40) decodedAssociationUUID];
    v20 = [*(a1 + 40) type];
    v9 = [*(a1 + 40) decodedSubObjectUUID];
    v10 = HDReferenceForUnknownAssociatableObjectWithUUID(v9);
    v11 = *(a1 + 48);
    v12 = *(*(a1 + 56) + 8);
    obj = *(v12 + 40);
    v13 = *(a1 + 32);
    v14 = [v11 syncProvenance];
    v15 = [v28[5] entity];
    v16 = [v15 persistentID];
    v17 = [*(a1 + 40) decodedCreationDate];
    v18 = [HDAssociationEntity associateSampleUUIDs:v22 withSampleUUID:v8 type:v20 behavior:0 destinationSubObjectReference:v10 lastInsertedEntityID:&obj profile:v13 provenance:v14 syncIdentity:v16 creationDate:v17 error:a2];
    objc_storeStrong((v12 + 40), obj);
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v27, 8);
  return v18;
}

uint64_t __85__HDAssociationManager_insertCodableTypedObjectAssociations_syncStore_profile_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(a1 + 32) hasSyncIdentity])
  {
    v6 = [*(a1 + 32) syncIdentity];
    v21 = 0;
    v7 = [HDSyncIdentity syncIdentityWithCodable:v6 error:&v21];
    v8 = v21;

    if (v7)
    {
      v9 = [*(a1 + 40) syncIdentityManager];
      v20 = v8;
      v10 = 1;
      v11 = [v9 concreteIdentityForIdentity:v7 shouldCreate:1 transaction:v5 error:&v20];
      v12 = v20;

      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v11;

      if (*(*(*(a1 + 48) + 8) + 40))
      {
LABEL_16:

        goto LABEL_17;
      }

      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v23 = v12;
        _os_log_fault_impl(&dword_228986000, v15, OS_LOG_TYPE_FAULT, "ConcreteSyncIdentity from received codable is nil %{public}@", buf, 0xCu);
      }

      v12 = v12;
      if (!v12)
      {
LABEL_15:

        v10 = 0;
        goto LABEL_16;
      }

      if (!a3)
      {
LABEL_8:
        _HKLogDroppedError();
        goto LABEL_15;
      }
    }

    else
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v23 = v8;
        _os_log_fault_impl(&dword_228986000, v16, OS_LOG_TYPE_FAULT, "SyncIdentity from received codable is nil %{public}@", buf, 0xCu);
      }

      v12 = v8;
      if (!v12)
      {
        goto LABEL_15;
      }

      if (!a3)
      {
        goto LABEL_8;
      }
    }

    v17 = v12;
    *a3 = v12;
    goto LABEL_15;
  }

  v10 = 1;
LABEL_17:

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

void __131__HDAssociationManager__notifyAssociationObjectsUpdatedWithAssociatedObjects_withObject_destinationSubObject_type_behavior_anchor___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 72);
  v40 = *(a1 + 80);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 40);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  if (v1)
  {
    v38 = v7;
    os_unfair_lock_lock(&v1[4]);
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
    v11 = [(HDAssociationManager *)v1 _lock_observersForKey:v10 createIfNil:0];
    v12 = [v11 copy];

    os_unfair_lock_unlock(&v1[4]);
    v36 = v12;
    v13 = [v12 setRepresentation];
    v14 = [v13 mutableCopy];

    if (!v14)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    }

    v39 = v6;
    v15 = [v6 sampleType];
    v16 = [(HDAssociationManager *)v1 _observersForDataType:v15];

    v35 = v16;
    v17 = [v16 allObjects];
    [v14 addObjectsFromArray:v17];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v37 = v8;
    v18 = v8;
    v19 = [v18 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v46;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v46 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v45 + 1) + 8 * i) sampleType];
          v24 = [(HDAssociationManager *)v1 _observersForDataType:v23];

          v25 = [v24 allObjects];
          [v14 addObjectsFromArray:v25];
        }

        v20 = [v18 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v20);
    }

    _HKInitializeLogging();
    v26 = *MEMORY[0x277CCC2A0];
    v6 = v39;
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      v28 = [v39 UUID];
      *buf = 138543362;
      v50 = v28;
      _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "Notifying observers of association updates for sample with UUID %{public}@", buf, 0xCu);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v29 = v14;
    v30 = [v29 countByEnumeratingWithState:&v41 objects:buf count:16];
    v7 = v38;
    if (v30)
    {
      v31 = v30;
      v32 = *v42;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v42 != v32)
          {
            objc_enumerationMutation(v29);
          }

          [*(*(&v41 + 1) + 8 * j) associationsUpdatedForObject:v39 subObject:v38 type:v2 behavior:v40 objects:v18 anchor:v9];
        }

        v31 = [v29 countByEnumeratingWithState:&v41 objects:buf count:16];
      }

      while (v31);
    }

    v8 = v37;
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (id)_observersForDataType:(const os_unfair_lock *)a1
{
  v3 = a2;
  os_unfair_lock_lock(&a1[4]);
  v4 = [(HDAssociationManager *)a1 _lock_observersForDataType:v3 createIfNil:0];

  v5 = [v4 copy];
  os_unfair_lock_unlock(&a1[4]);

  return v5;
}

- (id)_lock_observersForKey:(int)a3 createIfNil:
{
  v5 = a2;
  os_unfair_lock_assert_owner((a1 + 16));
  v6 = [*(a1 + 8) objectForKey:v5];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = a3 == 0;
  }

  if (!v7)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [*(a1 + 8) setObject:v6 forKey:v5];
  }

  return v6;
}

@end