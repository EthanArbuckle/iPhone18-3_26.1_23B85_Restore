@interface HDAssociationManager
- (BOOL)associateObjectUUIDs:(id)ds objectUUID:(id)d error:(id *)error;
- (BOOL)associateObjects:(id)objects withObject:(id)object type:(unint64_t)type behavior:(unint64_t)behavior destinationSubObject:(id)subObject error:(id *)error;
- (BOOL)disassociateObjects:(id)objects withObject:(id)object type:(unint64_t)type behavior:(unint64_t)behavior destinationSubObject:(id)subObject error:(id *)error;
- (BOOL)insertCodableTypedObjectAssociations:(id)associations syncStore:(id)store profile:(id)profile error:(id *)error;
- (HDAssociationManager)initWithProfile:(id)profile;
- (id)_lock_observersAllTypesCreateIfNil:(const os_unfair_lock *)nil;
- (id)_lock_observersForDataType:(int)type createIfNil:;
- (id)_lock_observersForKey:(int)key createIfNil:;
- (id)_observersForDataType:(const os_unfair_lock *)type;
- (id)_uuidsForObjects:(void *)objects object:(void *)object subObject:(void *)subObject error:;
- (void)_notifyAssociationObjectsUpdatedWithAssociatedObjects:(void *)objects withObject:(void *)object destinationSubObject:(uint64_t)subObject type:(uint64_t)type behavior:(void *)behavior anchor:;
- (void)addObserver:(id)observer forDataType:(id)type;
- (void)addObserverForAllTypes:(id)types;
- (void)removeObserver:(id)observer forDataType:(id)type;
- (void)removeObserverForAllTypes:(id)types;
@end

@implementation HDAssociationManager

- (HDAssociationManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = HDAssociationManager;
  v5 = [(HDAssociationManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
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

- (void)addObserver:(id)observer forDataType:(id)type
{
  typeCopy = type;
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(HDAssociationManager *)self _lock_observersForDataType:typeCopy createIfNil:1];

  [v8 addObject:observerCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_observersForDataType:(int)type createIfNil:
{
  if (self)
  {
    v5 = a2;
    os_unfair_lock_assert_owner(self + 4);
    v6 = MEMORY[0x277CCABB0];
    code = [v5 code];

    v8 = [v6 numberWithInteger:code];
    v9 = [(HDAssociationManager *)self _lock_observersForKey:v8 createIfNil:type];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)removeObserver:(id)observer forDataType:(id)type
{
  typeCopy = type;
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(HDAssociationManager *)self _lock_observersForDataType:typeCopy createIfNil:0];

  [v8 removeObject:observerCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)addObserverForAllTypes:(id)types
{
  typesCopy = types;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HDAssociationManager *)self _lock_observersAllTypesCreateIfNil:?];
  [v5 addObject:typesCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_observersAllTypesCreateIfNil:(const os_unfair_lock *)nil
{
  if (nil)
  {
    os_unfair_lock_assert_owner(nil + 4);
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
    v5 = [(HDAssociationManager *)nil _lock_observersForKey:v4 createIfNil:a2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeObserverForAllTypes:(id)types
{
  typesCopy = types;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HDAssociationManager *)self _lock_observersAllTypesCreateIfNil:?];
  [v5 removeObject:typesCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)associateObjectUUIDs:(id)ds objectUUID:(id)d error:(id *)error
{
  v12 = 0;
  dCopy = d;
  dsCopy = ds;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(error) = [HDAssociationEntity associateSampleUUIDs:dsCopy withSampleUUID:dCopy type:0 behavior:0 destinationSubObjectReference:0 lastInsertedEntityID:&v12 profile:WeakRetained error:error];

  return error;
}

- (BOOL)associateObjects:(id)objects withObject:(id)object type:(unint64_t)type behavior:(unint64_t)behavior destinationSubObject:(id)subObject error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  objectCopy = object;
  subObjectCopy = subObject;
  _HKInitializeLogging();
  v15 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    uUID = [objectCopy UUID];
    uUID2 = [subObjectCopy UUID];
    *buf = 138543618;
    v33 = uUID;
    v34 = 2114;
    v35 = uUID2;
    _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "Associating sample with object UUID:%{public}@ and sub Object UUID:%{public}@ ", buf, 0x16u);
  }

  v19 = [(HDAssociationManager *)self _uuidsForObjects:objectsCopy object:objectCopy subObject:subObjectCopy error:error];
  if (!v19)
  {
    v24 = 0;
    goto LABEL_11;
  }

  uUID3 = [objectCopy UUID];
  v21 = HDReferenceForAssociatableObject(subObjectCopy);
  v31 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v23 = [HDAssociationEntity associateSampleUUIDs:v19 withSampleUUID:uUID3 type:type behavior:behavior destinationSubObjectReference:v21 lastInsertedEntityID:&v31 profile:WeakRetained error:error];
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

  [(HDAssociationManager *)self _notifyAssociationObjectsUpdatedWithAssociatedObjects:objectsCopy withObject:objectCopy destinationSubObject:subObjectCopy type:type behavior:behavior anchor:v24];
  v26 = 1;
LABEL_12:

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

- (id)_uuidsForObjects:(void *)objects object:(void *)object subObject:(void *)subObject error:
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a2;
  objectsCopy = objects;
  objectCopy = object;
  if (self)
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
          if (![objectsCopy acceptsAssociationWithObject:{v17, v25}] || objectCopy && (objc_msgSend(objectCopy, "acceptsAssociationWithObject:", v17) & 1) == 0)
          {
            v20 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:v25 format:@"Sample does not support relating"];
            v21 = v20;
            if (v20)
            {
              if (subObject)
              {
                v22 = v20;
                *subObject = v21;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v19 = 0;
            goto LABEL_18;
          }

          uUID = [v17 UUID];
          [v11 addObject:uUID];
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

- (void)_notifyAssociationObjectsUpdatedWithAssociatedObjects:(void *)objects withObject:(void *)object destinationSubObject:(uint64_t)subObject type:(uint64_t)type behavior:(void *)behavior anchor:
{
  v38 = *MEMORY[0x277D85DE8];
  v13 = a2;
  objectsCopy = objects;
  objectCopy = object;
  behaviorCopy = behavior;
  if (!self)
  {
    goto LABEL_19;
  }

  if ([objectsCopy conformsToProtocol:&unk_283D42B48])
  {
    if (objectCopy)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        _HKInitializeLogging();
        v19 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v37 = objectCopy;
          v20 = "Attempted to retrieve destinationSubObject: %{public}@ from Object that does not support subObjects";
          goto LABEL_15;
        }

        goto LABEL_19;
      }

      uUID = [objectCopy UUID];
      v18 = [objectsCopy subObjectFromUUID:uUID];

      if (!v18)
      {
        _HKInitializeLogging();
        v19 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v37 = objectCopy;
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
      WeakRetained = objc_loadWeakRetained((self + 24));
      appSubscriptionManager = [WeakRetained appSubscriptionManager];
      [objectsCopy sampleType];
      v23 = v28 = v18;
      [appSubscriptionManager setAnchor:behaviorCopy forDataCode:objc_msgSend(v23 type:{"code"), 1}];

      v24 = *(self + 32);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __131__HDAssociationManager__notifyAssociationObjectsUpdatedWithAssociatedObjects_withObject_destinationSubObject_type_behavior_anchor___block_invoke;
      block[3] = &unk_278626D68;
      block[4] = self;
      v30 = objectsCopy;
      v31 = v28;
      subObjectCopy = subObject;
      typeCopy = type;
      v32 = v13;
      v33 = behaviorCopy;
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
        v37 = objectsCopy;
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
    v37 = objectsCopy;
    v20 = "Parent Object %{public}@ is not an HKAssociatableObject";
    goto LABEL_15;
  }

LABEL_19:

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)disassociateObjects:(id)objects withObject:(id)object type:(unint64_t)type behavior:(unint64_t)behavior destinationSubObject:(id)subObject error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  objectCopy = object;
  subObjectCopy = subObject;
  _HKInitializeLogging();
  v15 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    uUID = [objectCopy UUID];
    *buf = 138543362;
    v32 = uUID;
    _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "Disassociating sample with UUID %{public}@", buf, 0xCu);
  }

  v18 = [(HDAssociationManager *)self _uuidsForObjects:objectsCopy object:objectCopy subObject:subObjectCopy error:error];
  if (!v18)
  {
    v23 = 0;
    goto LABEL_11;
  }

  uUID2 = [objectCopy UUID];
  v20 = HDReferenceForAssociatableObject(subObjectCopy);
  v30 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v22 = [HDAssociationEntity disassociateSampleUUIDs:v18 withSampleUUID:uUID2 type:type behavior:behavior destinationSubObjectReference:v20 lastInsertedEntityID:&v30 profile:WeakRetained error:error];
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

  [(HDAssociationManager *)self _notifyAssociationObjectsUpdatedWithAssociatedObjects:objectsCopy withObject:objectCopy destinationSubObject:subObjectCopy type:type behavior:behavior anchor:v23];
  v25 = 1;
LABEL_12:

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)insertCodableTypedObjectAssociations:(id)associations syncStore:(id)store profile:(id)profile error:(id *)error
{
  v90 = *MEMORY[0x277D85DE8];
  associationsCopy = associations;
  storeCopy = store;
  profileCopy = profile;
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
  obj = associationsCopy;
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
      v68 = profileCopy;
      v69 = storeCopy;
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

      type = [v13 type];
      behavior = [v13 behavior];
      if (type != 1)
      {
        goto LABEL_42;
      }

      v18 = behavior;
      objectUUIDs = [v13 objectUUIDs];
      decodedAssociationUUID = [v13 decodedAssociationUUID];
      decodedSubObjectUUID = [v13 decodedSubObjectUUID];
      v22 = v75[5];
      v67 = decodedAssociationUUID;
      v23 = decodedSubObjectUUID;
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
    v25 = objectUUIDs;
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
          uUIDString = [v23 UUIDString];
          LODWORD(buf) = v57;
          *(&buf + 4) = uUIDString;
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
          uUIDString2 = [v23 UUIDString];
          LODWORD(buf) = v57;
          *(&buf + 4) = uUIDString2;
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

- (id)_observersForDataType:(const os_unfair_lock *)type
{
  v3 = a2;
  os_unfair_lock_lock(&type[4]);
  v4 = [(HDAssociationManager *)type _lock_observersForDataType:v3 createIfNil:0];

  v5 = [v4 copy];
  os_unfair_lock_unlock(&type[4]);

  return v5;
}

- (id)_lock_observersForKey:(int)key createIfNil:
{
  v5 = a2;
  os_unfair_lock_assert_owner((self + 16));
  weakObjectsHashTable = [*(self + 8) objectForKey:v5];
  if (weakObjectsHashTable)
  {
    v7 = 1;
  }

  else
  {
    v7 = key == 0;
  }

  if (!v7)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [*(self + 8) setObject:weakObjectsHashTable forKey:v5];
  }

  return weakObjectsHashTable;
}

@end