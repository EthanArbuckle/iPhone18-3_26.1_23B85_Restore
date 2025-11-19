@interface HMCRedirector
+ (id)logCategory;
- (BOOL)processInserts:(id)a3 updates:(id)a4 deletes:(id)a5;
- (HMCRedirector)initWithLabel:(id)a3 partition:(id)a4;
- (id)addTarget:(id)a3 selector:(SEL)a4 changeMask:(unint64_t)a5 forChangesOfObjectsWithModelType:(id)a6 forChangesOfObjectsWithModelID:(id)a7;
- (id)addTarget:(id)a3 selector:(SEL)a4 changeMask:(unint64_t)a5 forChangesOfObjectsWithModelType:(id)a6 forChangesOfObjectsWithModelID:(id)a7 error:(id *)a8;
- (void)removeRegistrationForChangeOfObjectsOfModelType:(id)a3 forChangesOfObjectsWithModelID:(id)a4;
@end

@implementation HMCRedirector

uint64_t __29__HMCRedirector_removeTuple___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 isEqual:*(a1 + 32)];
  if (result)
  {
    v6 = *(a1 + 40);

    return [v6 addObject:a2];
  }

  return result;
}

uint64_t __29__HMCRedirector_removeTuple___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 isEqual:*(a1 + 32)];
  if (result)
  {
    v6 = *(a1 + 40);

    return [v6 addObject:a2];
  }

  return result;
}

uint64_t __29__HMCRedirector_removeTuple___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 isEqual:*(a1 + 32)];
  if (result)
  {
    v6 = *(a1 + 40);

    return [v6 addObject:a2];
  }

  return result;
}

void __29__HMCRedirector_removeTuple___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 isEqual:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v5];
  }
}

void __29__HMCRedirector_removeTuple___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 isEqual:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (void)removeRegistrationForChangeOfObjectsOfModelType:(id)a3 forChangesOfObjectsWithModelID:(id)a4
{
  v9 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  v7 = [MEMORY[0x277CBEB98] setWithArray:v9];
  v8 = [MEMORY[0x277CBEB98] setWithArray:v6];
  __removeRegistrations(self, v7, v8);

  os_unfair_lock_unlock(&self->_lock.lock);
}

- (BOOL)processInserts:(id)a3 updates:(id)a4 deletes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  os_unfair_lock_lock_with_options();
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_partition);
    insertClass = self->_insertClass;
  }

  else
  {
    WeakRetained = 0;
    insertClass = 0;
  }

  v13 = insertClass;
  _binChanges(WeakRetained, &v33, v8, v13, 0);

  if (self)
  {
    v14 = self->_updateClass;
    updateModelID = self->_updateModelID;
  }

  else
  {
    v14 = 0;
    updateModelID = 0;
  }

  v16 = updateModelID;
  _binChanges(WeakRetained, &v32, v9, v14, v16);

  if (self)
  {
    v17 = self->_deleteClass;
    deleteModelID = self->_deleteModelID;
  }

  else
  {
    v17 = 0;
    deleteModelID = 0;
  }

  v19 = deleteModelID;
  _binChanges(WeakRetained, &v31, v10, v17, v19);

  os_unfair_lock_unlock(&self->_lock.lock);
  v20 = (v33 | v32 | v31);
  v21 = v20 != 0;
  if (v20)
  {
    v22 = +[HMCContext currentContext];
    v23 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__HMCRedirector_processInserts_updates_deletes___block_invoke;
    block[3] = &unk_2786891E0;
    v27 = v33;
    v28 = v32;
    v29 = v31;
    v30 = v22;
    v24 = v22;
    dispatch_async(v23, block);

    v20 = v32;
  }

  return v21;
}

void __48__HMCRedirector_processInserts_updates_deletes___block_invoke(id *a1)
{
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = a1[4];
  if (v3)
  {
    v4 = [v3 keyEnumerator];
    v5 = [v4 allObjects];
    [v2 addObjectsFromArray:v5];
  }

  v6 = a1[5];
  if (v6)
  {
    v7 = [v6 keyEnumerator];
    v8 = [v7 allObjects];
    [v2 addObjectsFromArray:v8];
  }

  v9 = a1[6];
  if (v9)
  {
    v10 = [v9 keyEnumerator];
    v11 = [v10 allObjects];
    [v2 addObjectsFromArray:v11];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__HMCRedirector_processInserts_updates_deletes___block_invoke_2;
  v18[3] = &unk_278688050;
  v12 = a1[7];
  v13 = a1[4];
  v14 = a1[5];
  v15 = a1[6];
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v19 = v17;
  v20 = v16;
  [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:v18];
}

void __48__HMCRedirector_processInserts_updates_deletes___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = [HMCRedirectorChange alloc];
  v5 = [a1[4] managedObjectContext];
  v6 = [a1[5] objectForKey:v3];
  v7 = [a1[6] objectForKey:v3];
  v8 = [a1[7] objectForKey:v3];
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  if (v4)
  {
    v26.receiver = v4;
    v26.super_class = HMCRedirectorChange;
    v4 = objc_msgSendSuper2(&v26, sel_init);
    if (v4)
    {
      v13 = v10;
      if (!v10)
      {
        v13 = [MEMORY[0x277CBEB98] set];
      }

      objc_storeStrong(&v4->_inserts, v13);
      if (!v10)
      {
      }

      v14 = v11;
      if (!v11)
      {
        v14 = [MEMORY[0x277CBEB98] set];
      }

      objc_storeStrong(&v4->_updates, v14);
      if (!v11)
      {
      }

      v15 = v12;
      if (!v12)
      {
        v15 = [MEMORY[0x277CBEB98] set];
      }

      objc_storeStrong(&v4->_deletes, v15);
      if (!v12)
      {
      }

      v16 = [v9 transactionAuthor];
      author = v4->_author;
      v4->_author = v16;

      v18 = [v9 name];
      context = v4->_context;
      v4->_context = v18;
    }
  }

  v20 = dispatch_get_global_queue(0, 0);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __48__HMCRedirector_processInserts_updates_deletes___block_invoke_3;
  v23[3] = &unk_27868A750;
  v24 = v3;
  v25 = v4;
  v21 = v4;
  v22 = v3;
  dispatch_async(v20, v23);
}

void __48__HMCRedirector_processInserts_updates_deletes___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 40);
    v3 = *(v1 + 24);
    v4 = *(v1 + 16);
    v7 = v2;
    v5 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v5, v3);
    (MethodImplementation)(v4, v3, v7);
  }
}

- (id)addTarget:(id)a3 selector:(SEL)a4 changeMask:(unint64_t)a5 forChangesOfObjectsWithModelType:(id)a6 forChangesOfObjectsWithModelID:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a6;
  v26 = a7;
  v16 = [HMCRedirectorTuple alloc];
  v17 = self;
  v18 = v14;
  if (v16)
  {
    v39.receiver = v16;
    v39.super_class = HMCRedirectorTuple;
    v16 = [(HMCRedirector *)&v39 init];
    if (v16)
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [v18 methodSignatureForSelector:a4];
        if ([v14 numberOfArguments] != 3)
        {
LABEL_23:
          _HMFPreconditionFailure();
          goto LABEL_24;
        }

        if (*[v14 getArgumentTypeAtIndex:0] != 64)
        {
LABEL_24:
          _HMFPreconditionFailure();
          goto LABEL_25;
        }

        if (*[v14 getArgumentTypeAtIndex:1] != 58)
        {
LABEL_25:
          _HMFPreconditionFailure();
LABEL_26:
          v25 = _HMFPreconditionFailure();
          os_unfair_lock_unlock(&v14[v17]);
          _Unwind_Resume(v25);
        }

        if (*[v14 getArgumentTypeAtIndex:2] != 64)
        {
          goto LABEL_26;
        }

        if (*[v14 methodReturnType] == 118 && !*(objc_msgSend(v14, "methodReturnType") + 1))
        {
          objc_storeWeak(&v16->_owner, v17);
          v16->_selector = a4;
          objc_storeWeak(&v16->_target, v18);

          goto LABEL_11;
        }

        _HMFPreconditionFailure();
      }

      _HMFPreconditionFailure();
      goto LABEL_23;
    }
  }

LABEL_11:

  os_unfair_lock_lock_with_options();
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __117__HMCRedirector_addTarget_selector_changeMask_forChangesOfObjectsWithModelType_forChangesOfObjectsWithModelID_error___block_invoke;
  v36[3] = &unk_278688000;
  v38 = a5;
  v36[4] = v17;
  v19 = v16;
  v37 = v19;
  [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v36];
  if (a8 && *a8)
  {
    goto LABEL_16;
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __117__HMCRedirector_addTarget_selector_changeMask_forChangesOfObjectsWithModelType_forChangesOfObjectsWithModelID_error___block_invoke_150;
  v33[3] = &unk_278688028;
  v35 = a5;
  v33[4] = v17;
  v20 = v19;
  v34 = v20;
  [v26 hmf_enumerateWithAutoreleasePoolUsingBlock:v33];
  if (a8 && *a8)
  {

LABEL_16:
    os_unfair_lock_unlock(&v17->_lock.lock);
    v21 = 0;
    goto LABEL_18;
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __117__HMCRedirector_addTarget_selector_changeMask_forChangesOfObjectsWithModelType_forChangesOfObjectsWithModelID_error___block_invoke_152;
  v30[3] = &unk_278688000;
  v32 = a5;
  v30[4] = v17;
  v22 = v20;
  v31 = v22;
  [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v30];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __117__HMCRedirector_addTarget_selector_changeMask_forChangesOfObjectsWithModelType_forChangesOfObjectsWithModelID_error___block_invoke_2;
  v27[3] = &unk_278688028;
  v29 = a5;
  v27[4] = v17;
  v23 = v22;
  v28 = v23;
  [v26 hmf_enumerateWithAutoreleasePoolUsingBlock:v27];

  os_unfair_lock_unlock(&v17->_lock.lock);
  v21 = v23;
LABEL_18:

  return v21;
}

void __117__HMCRedirector_addTarget_selector_changeMask_forChangesOfObjectsWithModelType_forChangesOfObjectsWithModelID_error___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [HMCContext managedObjectClassFromProtocol:v3];
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v6 = v6[3];
    }

    v7 = v6;
    v8 = [v7 objectForKey:v4];

    if (v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 32);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v13 = NSStringFromProtocol(v3);
        v14 = *(a1 + 40);
        v23 = 138544130;
        v24 = v12;
        v25 = 2112;
        v26 = v13;
        v27 = 2112;
        v28 = v14;
        v29 = 2112;
        v30 = v8;
        v15 = "%{public}@Unable to register an insertion notification for objects of type %@ by %@ (already registered by %@)";
LABEL_21:
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, v15, &v23, 0x2Au);

        goto LABEL_22;
      }

      goto LABEL_22;
    }

    v5 = *(a1 + 48);
  }

  if ((v5 & 4) != 0)
  {
    v16 = *(a1 + 32);
    if (v16)
    {
      v16 = v16[4];
    }

    v17 = v16;
    v8 = [v17 objectForKey:v4];

    if (v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 32);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v13 = NSStringFromProtocol(v3);
        v18 = *(a1 + 40);
        v23 = 138544130;
        v24 = v12;
        v25 = 2112;
        v26 = v13;
        v27 = 2112;
        v28 = v18;
        v29 = 2112;
        v30 = v8;
        v15 = "%{public}@Unable to register an update notification for objects of type %@ by %@ (already registered by %@)";
        goto LABEL_21;
      }

LABEL_22:

      objc_autoreleasePoolPop(v9);
      goto LABEL_23;
    }

    v5 = *(a1 + 48);
  }

  if ((v5 & 2) != 0)
  {
    v19 = *(a1 + 32);
    if (v19)
    {
      v19 = v19[6];
    }

    v20 = v19;
    v8 = [v20 objectForKey:v4];

    if (v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 32);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v13 = NSStringFromProtocol(v3);
        v21 = *(a1 + 40);
        v23 = 138544130;
        v24 = v12;
        v25 = 2112;
        v26 = v13;
        v27 = 2112;
        v28 = v21;
        v29 = 2112;
        v30 = v8;
        v15 = "%{public}@Unable to register a delete notification for objects of type %@ by %@ (already registered by %@)";
        goto LABEL_21;
      }

      goto LABEL_22;
    }
  }

LABEL_23:

  v22 = *MEMORY[0x277D85DE8];
}

void __117__HMCRedirector_addTarget_selector_changeMask_forChangesOfObjectsWithModelType_forChangesOfObjectsWithModelID_error___block_invoke_150(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 48);
  if ((v4 & 4) != 0)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = v5[5];
    }

    v6 = v5;
    v7 = [v6 objectForKey:v3];

    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = *(a1 + 40);
        v18 = 138544130;
        v19 = v11;
        v20 = 2112;
        v21 = v3;
        v22 = 2112;
        v23 = v12;
        v24 = 2112;
        v25 = v7;
        v13 = "%{public}@Unable to register an update notification for object with modelID %@ by %@ (already registered by %@)";
LABEL_14:
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, v13, &v18, 0x2Au);

        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v4 = *(a1 + 48);
  }

  if ((v4 & 2) != 0)
  {
    v14 = *(a1 + 32);
    if (v14)
    {
      v14 = v14[7];
    }

    v15 = v14;
    v7 = [v15 objectForKey:v3];

    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v16 = *(a1 + 40);
        v18 = 138544130;
        v19 = v11;
        v20 = 2112;
        v21 = v3;
        v22 = 2112;
        v23 = v16;
        v24 = 2112;
        v25 = v7;
        v13 = "%{public}@Unable to register a delete notification for object with modelID %@ by %@ (already registered by %@)";
        goto LABEL_14;
      }

LABEL_15:

      objc_autoreleasePoolPop(v8);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

objc_class *__117__HMCRedirector_addTarget_selector_changeMask_forChangesOfObjectsWithModelType_forChangesOfObjectsWithModelID_error___block_invoke_152(void *a1, uint64_t a2)
{
  result = [HMCContext managedObjectClassFromProtocol:a2];
  v4 = result;
  v5 = a1[6];
  if (v5)
  {
    v6 = a1[4];
    if (v6)
    {
      v7 = *(v6 + 24);
    }

    else
    {
      v7 = 0;
    }

    result = [v7 setObject:a1[5] forKey:v4];
    v5 = a1[6];
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = a1[4];
  if (v8)
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  result = [v9 setObject:a1[5] forKey:v4];
  if ((a1[6] & 2) != 0)
  {
LABEL_11:
    v10 = a1[4];
    if (v10)
    {
      v11 = *(v10 + 48);
    }

    else
    {
      v11 = 0;
    }

    v12 = a1[5];

    return [v11 setObject:v12 forKey:v4];
  }

  return result;
}

void __117__HMCRedirector_addTarget_selector_changeMask_forChangesOfObjectsWithModelType_forChangesOfObjectsWithModelID_error___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  v9 = v3;
  if ((v4 & 4) != 0)
  {
    v5 = a1[4];
    if (v5)
    {
      v6 = *(v5 + 40);
    }

    else
    {
      v6 = 0;
    }

    [v6 setObject:a1[5] forKey:v3];
    v3 = v9;
    v4 = a1[6];
  }

  if ((v4 & 2) != 0)
  {
    v7 = a1[4];
    if (v7)
    {
      v8 = *(v7 + 56);
    }

    else
    {
      v8 = 0;
    }

    [v8 setObject:a1[5] forKey:v9];
    v3 = v9;
  }
}

- (id)addTarget:(id)a3 selector:(SEL)a4 changeMask:(unint64_t)a5 forChangesOfObjectsWithModelType:(id)a6 forChangesOfObjectsWithModelID:(id)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v25 = 0;
  v15 = [(HMCRedirector *)self addTarget:v12 selector:a4 changeMask:a5 forChangesOfObjectsWithModelType:v13 forChangesOfObjectsWithModelID:v14 error:&v25];
  v16 = v25;
  if (!v15)
  {
    v19 = v16;
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = NSStringFromSelector(a4);
      *buf = 138544642;
      v27 = v23;
      v28 = 2112;
      v29 = v12;
      v30 = 2112;
      v31 = v24;
      v32 = 2112;
      v33 = v13;
      v34 = 2112;
      v35 = v14;
      v36 = 2112;
      v37 = v19;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to register %@ / %@ for changes of objects %@ and IDs %@: %@", buf, 0x3Eu);
    }

    objc_autoreleasePoolPop(v20);
    _HMFPreconditionFailure();
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (HMCRedirector)initWithLabel:(id)a3 partition:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = HMCRedirector;
  v9 = [(HMCRedirector *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_label, a3);
    v11 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    insertClass = v10->_insertClass;
    v10->_insertClass = v11;

    v13 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    updateClass = v10->_updateClass;
    v10->_updateClass = v13;

    v15 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    updateModelID = v10->_updateModelID;
    v10->_updateModelID = v15;

    v17 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    deleteClass = v10->_deleteClass;
    v10->_deleteClass = v17;

    v19 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    deleteModelID = v10->_deleteModelID;
    v10->_deleteModelID = v19;

    objc_storeWeak(&v10->_partition, v8);
    v10->_lock.lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_267515 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_267515, &__block_literal_global_267516);
  }

  v3 = logCategory__hmf_once_v14_267517;

  return v3;
}

void __28__HMCRedirector_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v14_267517;
  logCategory__hmf_once_v14_267517 = v1;
}

@end