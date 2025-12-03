@interface HMBSQLFile
+ (NSHashTable)contexts;
+ (id)_openContextWithURL:(id)l usingSubclass:(Class)subclass error:(id *)error;
+ (id)openContextWithURL:(id)l usingSubclass:(Class)subclass error:(id *)error;
+ (void)_close:(id)_close;
+ (void)close:(id)close;
@end

@implementation HMBSQLFile

+ (void)_close:(id)_close
{
  v42 = *MEMORY[0x277D85DE8];
  _closeCopy = _close;
  os_unfair_lock_assert_owner(&contextLock);
  if ([_closeCopy connection])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = _closeCopy;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v8;
      v37 = 2112;
      v38 = v6;
      _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Closing SQL context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    contexts = [self contexts];
    [contexts removeObject:v6];

    os_unfair_lock_lock_with_options();
    [(os_unfair_lock_s *)v6 finalize];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    contexts2 = [self contexts];
    v11 = [contexts2 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v11)
    {
      v12 = *v32;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(contexts2);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          connection = [v14 connection];
          if (connection == [(os_unfair_lock_s *)v6 connection])
          {
            v26 = objc_autoreleasePoolPush();
            v27 = v6;
            v28 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = HMFGetLogIdentifier();
              *buf = 138543618;
              v36 = v29;
              v37 = 2112;
              v38 = v14;
              _os_log_impl(&dword_22AD27000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Found other context still using database: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v26);
            goto LABEL_21;
          }
        }

        v11 = [contexts2 countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v16 = objc_autoreleasePoolPush();
    v17 = v6;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v19;
      _os_log_impl(&dword_22AD27000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Closing database for SQL context", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = sqlite3_close([(os_unfair_lock_s *)v17 connection]);
    if (v20)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = v17;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v25 = sqlite3_errstr(v20);
        *buf = 138543874;
        v36 = v24;
        v37 = 2080;
        v38 = v25;
        v39 = 1024;
        v40 = v20;
        _os_log_impl(&dword_22AD27000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to close database: %s (%d)", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v21);
    }

LABEL_21:
    [(os_unfair_lock_s *)v6 setConnection:0];
    os_unfair_lock_unlock(v6 + 2);
  }

  else
  {
    [_closeCopy setFinalized:1];
  }

  v30 = *MEMORY[0x277D85DE8];
}

+ (void)close:(id)close
{
  closeCopy = close;
  os_unfair_lock_lock_with_options();
  [self _close:closeCopy];
  os_unfair_lock_unlock(&contextLock);
}

+ (id)_openContextWithURL:(id)l usingSubclass:(Class)subclass error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  lCopy = l;
  os_unfair_lock_assert_owner(&contextLock);
  if (_openContextWithURL_usingSubclass_error__dispatchOnce != -1)
  {
    dispatch_once(&_openContextWithURL_usingSubclass_error__dispatchOnce, &__block_literal_global_9);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  contexts = [self contexts];
  v9 = [(os_unfair_lock_s *)contexts countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v9)
  {
    v10 = *v41;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(contexts);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        v13 = [v12 url];
        v14 = [v13 isEqual:lCopy];

        if (v14)
        {
          if (objc_opt_class() != subclass)
          {
            objc_opt_class();
            _HMFPreconditionFailureWithFormat();
            __break(1u);
          }

          v29 = objc_autoreleasePoolPush();
          v30 = v12;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = HMFGetLogIdentifier();
            *buf = 138543618;
            v45 = v32;
            v46 = 2112;
            v47 = v30;
            _os_log_impl(&dword_22AD27000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Found existing SQL context: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v29);
          v28 = v30;
          goto LABEL_27;
        }
      }

      v9 = [(os_unfair_lock_s *)contexts countByEnumeratingWithState:&v40 objects:v50 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = [subclass alloc];
  absoluteURL = [lCopy absoluteURL];
  v17 = [v15 initWithURL:absoluteURL];

  v18 = objc_autoreleasePoolPush();
  v19 = v17;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543362;
    v45 = v21;
    _os_log_impl(&dword_22AD27000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Opening SQL context", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  os_unfair_lock_lock_with_options();
  v39 = 0;
  v22 = __open(v19, &v39);
  v23 = v39;
  v24 = objc_autoreleasePoolPush();
  contexts = v19;
  if (v22)
  {
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v26;
      v46 = 2112;
      v47 = contexts;
      _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Opened SQL context with new sqlite database handle: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    os_unfair_lock_unlock(v19 + 2);
    contexts2 = [self contexts];
    [contexts2 addObject:contexts];

    v28 = contexts;
  }

  else
  {
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543874;
      v45 = v34;
      v46 = 2112;
      v47 = contexts;
      v48 = 2112;
      v49 = v23;
      _os_log_impl(&dword_22AD27000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to open context %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
    os_unfair_lock_unlock(v19 + 2);
    [self _close:contexts];
    if (error)
    {
      v35 = v23;
      v28 = 0;
      *error = v23;
    }

    else
    {
      v28 = 0;
    }
  }

LABEL_27:
  v36 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)openContextWithURL:(id)l usingSubclass:(Class)subclass error:(id *)error
{
  lCopy = l;
  os_unfair_lock_lock_with_options();
  v9 = [self _openContextWithURL:lCopy usingSubclass:subclass error:error];
  os_unfair_lock_unlock(&contextLock);

  return v9;
}

+ (NSHashTable)contexts
{
  if (contexts_dispatchOnce != -1)
  {
    dispatch_once(&contexts_dispatchOnce, &__block_literal_global_7333);
  }

  v3 = contexts_contexts;

  return v3;
}

uint64_t __22__HMBSQLFile_contexts__block_invoke()
{
  v0 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  v1 = contexts_contexts;
  contexts_contexts = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end