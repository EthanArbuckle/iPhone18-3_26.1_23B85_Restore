@interface CCSetChangeRegistry
+ (id)_keyForSet:(id)a3;
- (BOOL)_clear:(id *)a3;
- (BOOL)cleanupWithAllSets:(id)a3 error:(id *)a4;
- (BOOL)clearAllBookmarksAndCommit:(id *)a3;
- (BOOL)commitAllBookmarkUpdates:(id *)a3;
- (BOOL)enumerateAllBookmarks:(id *)a3 usingBlock:(id)a4;
- (BOOL)updateBookmark:(id)a3 forSet:(id)a4 error:(id *)a5;
- (CCSetChangeRegistry)init;
- (id)_archiveBookmark:(id)a3 error:(id *)a4;
- (id)_unarchiveBookmark:(id)a3 error:(id *)a4;
- (id)bookmarkForSet:(id)a3;
- (id)description;
- (id)descriptionForBookmark:(id)a3;
- (void)clearAllBookmarks;
- (void)rollbackAllBookmarkUpdates;
@end

@implementation CCSetChangeRegistry

- (CCSetChangeRegistry)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CCSetChangeRegistry;
  v3 = [(CCSetChangeRegistry *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" backed by: %@", self->_log];

  return v4;
}

+ (id)_keyForSet:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 uniqueHash];
    v5 = [v4 stringValue];
  }

  else
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CCSetChangeRegistry *)v3 _keyForSet:v6];
    }

    v5 = 0;
  }

  return v5;
}

- (id)bookmarkForSet:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _keyForSet:v4];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_pendingUpdates objectForKey:v5];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
    }

    else if (self->_pendingClear || ([(BMFileBackedDictionary *)self->_log objectForKey:v5], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v8 = 0;
      v7 = 0;
    }

    else
    {
      v10 = v9;
      v14 = 0;
      v11 = [(CCSetChangeRegistry *)self _unarchiveBookmark:v9 error:&v14];
      v8 = v14;
      if (!v11)
      {
        v12 = __biome_log_for_category();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(CCSetChangeRegistry *)v4 bookmarkForSet:v8, v12];
        }
      }

      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)updateBookmark:(id)a3 forSet:(id)a4 error:(id *)a5
{
  v50[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = MEMORY[0x1E696ABC0];
    v49 = *MEMORY[0x1E696A278];
    v16 = MEMORY[0x1E696AEC0];
    v17 = objc_opt_class();
    v10 = NSStringFromClass(v17);
    v11 = [v16 stringWithFormat:@"Unexpected bookmark: %@ for set: %@", v10, v9];
    v50[0] = v11;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v19 = [v15 errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:v18];
    CCSetError(a5, v19);

LABEL_8:
    goto LABEL_9;
  }

  v10 = [objc_opt_class() _keyForSet:v9];
  v11 = [v8 value];
  if (!v10)
  {
    v20 = MEMORY[0x1E696ABC0];
    v47 = *MEMORY[0x1E696A278];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to resolve key for set: %@ bookmark: %@", v9, v11];
    v48 = v18;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v22 = [v20 errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:v21];
    CCSetError(a5, v22);

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_12;
    }

    v35 = MEMORY[0x1E696ABC0];
    v43 = *MEMORY[0x1E696A278];
    v36 = MEMORY[0x1E696AEC0];
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v39 = [v36 stringWithFormat:@"Unexpected bookmark value: %@ for set: %@", v38, v9];
    v44 = v39;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v41 = [v35 errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:v40];
    CCSetError(a5, v41);

LABEL_9:
    v23 = 0;
    goto LABEL_10;
  }

  v12 = objc_opt_class();
  v13 = [v11 set];
  v14 = [v12 _keyForSet:v13];

  if (([v10 isEqual:v14] & 1) == 0)
  {
    v42 = MEMORY[0x1E696ABC0];
    v45 = *MEMORY[0x1E696A278];
    v29 = MEMORY[0x1E696AEC0];
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = [v29 stringWithFormat:@"Unexpected set: %@ (key: %@) for bookmark: %@ (key: %@)", v31, v10, v11, v14];
    v46 = v32;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v34 = [v42 errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:v33];
    CCSetError(a5, v34);

    goto LABEL_9;
  }

LABEL_12:
  pendingUpdates = self->_pendingUpdates;
  if (!pendingUpdates)
  {
    v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v28 = self->_pendingUpdates;
    self->_pendingUpdates = v27;

    pendingUpdates = self->_pendingUpdates;
  }

  [(NSMutableDictionary *)pendingUpdates setObject:v8 forKey:v10];
  v23 = 1;
LABEL_10:

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (void)clearAllBookmarks
{
  pendingUpdates = self->_pendingUpdates;
  self->_pendingUpdates = 0;

  self->_pendingClear = 1;
}

- (void)rollbackAllBookmarkUpdates
{
  pendingUpdates = self->_pendingUpdates;
  self->_pendingUpdates = 0;

  self->_pendingClear = 0;
}

- (BOOL)commitAllBookmarkUpdates:(id *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_pendingClear && ![(CCSetChangeRegistry *)self _clear:a3])
  {
    [(CCSetChangeRegistry *)self rollbackAllBookmarkUpdates];
    v16 = 0;
  }

  else
  {
    p_pendingUpdates = &self->_pendingUpdates;
    if (self->_pendingUpdates)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableDictionary count](*p_pendingUpdates, "count")}];
      v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableDictionary count](*p_pendingUpdates, "count")}];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      obj = [(NSMutableDictionary *)*p_pendingUpdates allKeys];
      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v24;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v24 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v23 + 1) + 8 * i);
            v13 = [(NSMutableDictionary *)self->_pendingUpdates objectForKey:v12];
            v14 = [(CCSetChangeRegistry *)self _archiveBookmark:v13 error:a3];

            if (!v14)
            {
              v16 = 0;
              goto LABEL_17;
            }

            [v6 addObject:v12];
            [v7 addObject:v14];
          }

          v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      log = self->_log;
      v22 = 0;
      v16 = [(BMFileBackedDictionary *)log writeUpdatedObjects:v7 forKeys:v6 error:&v22];
      obj = v22;
      if ((v16 & 1) == 0)
      {
        v17 = __biome_log_for_category();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [(CCSetChangeRegistry *)&self->_pendingUpdates commitAllBookmarkUpdates:v17];
        }

        CCSetError(a3, obj);
      }

LABEL_17:
      [(CCSetChangeRegistry *)self rollbackAllBookmarkUpdates];
    }

    else
    {
      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [CCSetChangeRegistry commitAllBookmarkUpdates:v18];
      }

      [(CCSetChangeRegistry *)self rollbackAllBookmarkUpdates];
      v16 = 1;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)_clear:(id *)a3
{
  log = self->_log;
  v9 = 0;
  v5 = [(BMFileBackedDictionary *)log clear:&v9];
  v6 = v9;
  if ((v5 & 1) == 0)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CCSetChangeRegistry *)v6 _clear:v7];
    }

    CCSetError(a3, v6);
  }

  return v5;
}

- (BOOL)cleanupWithAllSets:(id)a3 error:(id *)a4
{
  v94 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(BMFileBackedDictionary *)self->_log allKeys];
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v92 = [v7 count];
    *&v92[4] = 1024;
    *&v92[6] = [v6 count];
    *v93 = 2112;
    *&v93[2] = v6;
    _os_log_impl(&dword_1B6DB2000, v8, OS_LOG_TYPE_DEFAULT, "Starting cleanup with %u registry entries and %u available sets: %@", buf, 0x18u);
  }

  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v77 objects:v90 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v78;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v78 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v77 + 1) + 8 * i);
        v16 = [objc_opt_class() _keyForSet:v15];
        if (!v16)
        {
          v38 = MEMORY[0x1E696ABC0];
          v88 = *MEMORY[0x1E696A278];
          v39 = MEMORY[0x1E696AEC0];
          v40 = objc_opt_class();
          v41 = NSStringFromClass(v40);
          v42 = [v39 stringWithFormat:@"Unexpected set: %@", v41];
          v89 = v42;
          v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
          v44 = [v38 errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:v43];
          CCSetError(a4, v44);

          v37 = 0;
          v36 = v10;
          goto LABEL_45;
        }

        v17 = v16;
        [v9 setObject:v15 forKey:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v77 objects:v90 count:16];
    }

    while (v12);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v7;
  v70 = [obj countByEnumeratingWithState:&v73 objects:v87 count:16];
  if (!v70)
  {
    goto LABEL_32;
  }

  v69 = *v74;
  v66 = v7;
  v67 = a4;
  while (2)
  {
    for (j = 0; j != v70; ++j)
    {
      if (*v74 != v69)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v73 + 1) + 8 * j);
      v20 = [(BMFileBackedDictionary *)self->_log objectForKey:v19];
      v21 = [(CCSetChangeRegistry *)self _unarchiveBookmark:v20 error:a4];

      if (!v21)
      {
        goto LABEL_44;
      }

      v22 = [v21 value];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v24 = [v21 value];
      if (isKindOfClass)
      {
        v25 = [v9 objectForKey:v19];
        if (v25)
        {
          v26 = +[CCSetChangeBookmark currentBookmarkVersion];
          if ([v24 bookmarkVersion]== v26)
          {

LABEL_29:
            a4 = v67;
            goto LABEL_30;
          }

          v53 = MEMORY[0x1E696ABC0];
          v83 = *MEMORY[0x1E696A278];
          v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Registry contains a bookmark with invalid software version (expected %d): %@", v26, v24];
          v84 = v54;
          v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
          v56 = [v53 errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:v55];
          CCSetError(v67, v56);
        }

        else
        {
          v30 = [CCDatabaseSetChangeEnumerator sharedItemCountFromBookmark:v24];
          v31 = [CCDatabaseSetChangeEnumerator localItemInstanceCountFromBookmark:v24];
          if (!(v30 | v31))
          {
            log = self->_log;
            v72 = 0;
            v33 = [(BMFileBackedDictionary *)log clearObjectForKey:v19 error:&v72];
            v34 = v72;
            if (v33)
            {
              v35 = __biome_log_for_category();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v92 = v24;
                _os_log_impl(&dword_1B6DB2000, v35, OS_LOG_TYPE_DEFAULT, "Registry bookmark cleaned up: %@", buf, 0xCu);
              }

              goto LABEL_29;
            }

            CCSetError(v67, v34);

            goto LABEL_43;
          }

          v57 = v31;
          v71 = MEMORY[0x1E696ABC0];
          v85 = *MEMORY[0x1E696A278];
          v58 = MEMORY[0x1E696AEC0];
          v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v30];
          v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v57];
          v60 = [v58 stringWithFormat:@"Registry bookmark reflects non-removed state: {shared items: %@, local instances: %@} for a set which is no longer available: %@", v59, v65, v24];
          v86 = v60;
          v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
          v54 = [v71 errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:v61];

          v62 = __biome_log_for_category();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *v92 = self;
            *&v92[8] = 2112;
            *v93 = v54;
            _os_log_impl(&dword_1B6DB2000, v62, OS_LOG_TYPE_DEFAULT, "Inconsistency detected in registry: %@ error: %@", buf, 0x16u);
          }

          CCSetError(v67, v54);
        }

LABEL_43:
        goto LABEL_44;
      }

      objc_opt_class();
      v27 = objc_opt_isKindOfClass();

      if ((v27 & 1) == 0)
      {
        v45 = MEMORY[0x1E696ABC0];
        v81 = *MEMORY[0x1E696A278];
        v46 = MEMORY[0x1E696AEC0];
        v47 = [v21 value];
        v48 = objc_opt_class();
        v49 = NSStringFromClass(v48);
        v50 = [v46 stringWithFormat:@"Unexpected bookmark value: %@ of bookmark: %@ key: %@", v49, v21, v19];
        v82 = v50;
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v52 = [v45 errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:v51];
        CCSetError(a4, v52);

LABEL_44:
        v37 = 0;
        v7 = v66;
        v36 = obj;
        goto LABEL_45;
      }

      v24 = __biome_log_for_category();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *buf = 138412546;
        *v92 = v29;
        *&v92[8] = 2112;
        *v93 = v19;
        _os_log_debug_impl(&dword_1B6DB2000, v24, OS_LOG_TYPE_DEBUG, "Skipping cleanup for serialized set bookmark (%@) key: %@", buf, 0x16u);
      }

LABEL_30:
    }

    v7 = v66;
    v70 = [obj countByEnumeratingWithState:&v73 objects:v87 count:16];
    if (v70)
    {
      continue;
    }

    break;
  }

LABEL_32:

  v36 = __biome_log_for_category();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6DB2000, v36, OS_LOG_TYPE_DEFAULT, "Cleanup completed successfully", buf, 2u);
  }

  v37 = 1;
LABEL_45:

  v63 = *MEMORY[0x1E69E9840];
  return v37;
}

- (BOOL)clearAllBookmarksAndCommit:(id *)a3
{
  [(CCSetChangeRegistry *)self rollbackAllBookmarkUpdates];
  [(CCSetChangeRegistry *)self clearAllBookmarks];

  return [(CCSetChangeRegistry *)self commitAllBookmarkUpdates:a3];
}

- (BOOL)enumerateAllBookmarks:(id *)a3 usingBlock:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v28 = a4;
  v6 = [(BMFileBackedDictionary *)self->_log allKeys];
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v35) = [v6 count];
    _os_log_impl(&dword_1B6DB2000, v7, OS_LOG_TYPE_DEFAULT, "Enumerating %u registry entries", buf, 8u);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (!v9)
  {
    v23 = 1;
    v11 = v8;
    goto LABEL_21;
  }

  v10 = v9;
  v27 = a3;
  v11 = 0;
  v12 = *v31;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      v14 = v11;
      if (*v31 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v30 + 1) + 8 * i);
      v16 = objc_autoreleasePoolPush();
      v17 = [(BMFileBackedDictionary *)self->_log objectForKey:v15];
      v29 = v11;
      v18 = [(CCSetChangeRegistry *)self _unarchiveBookmark:v17 error:&v29];
      v11 = v29;

      if (!v18)
      {
        objc_autoreleasePoolPop(v16);

        v24 = __biome_log_for_category();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [CCSetChangeRegistry enumerateAllBookmarks:v11 usingBlock:v24];
        }

        CCSetError(v27, v11);
        v23 = 0;
        goto LABEL_21;
      }

      v19 = [v18 value];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v21 = [v18 value];
        v22 = [v21 set];
        v28[2](v28, v22, v18);
      }

      else
      {
        v21 = __biome_log_for_category();
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        v22 = [v18 value];
        *buf = 138412290;
        v35 = v22;
        _os_log_impl(&dword_1B6DB2000, v21, OS_LOG_TYPE_DEFAULT, "Skipping bookmark: %@", buf, 0xCu);
      }

LABEL_14:
      objc_autoreleasePoolPop(v16);
    }

    v10 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

  v23 = 1;
LABEL_21:

  v25 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)descriptionForBookmark:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 value];

    v3 = v4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 description];
LABEL_7:
    v8 = v5;
    goto LABEL_9;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = MEMORY[0x1E696AEC0];
  if (isKindOfClass)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Serialized set bookmark: %@", v3];
    goto LABEL_7;
  }

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v8 = [v7 stringWithFormat:@"Unsupported bookmark: %@", v10];

LABEL_9:

  return v8;
}

- (id)_unarchiveBookmark:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E696AB10] bm_allowedClassesForSecureCodingBMBookmark];
  v13 = 0;
  v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v7 fromData:v6 error:&v13];
  v9 = v13;
  if (!v8)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v15 = v6;
      v16 = 2112;
      v17 = self;
      v18 = 2112;
      v19 = v9;
      _os_log_error_impl(&dword_1B6DB2000, v10, OS_LOG_TYPE_ERROR, "Failed to unarchive bookmark (%@) from registry: %@ error: %@", buf, 0x20u);
    }

    CCSetError(a4, v9);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_archiveBookmark:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12 = 0;
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v12];
  v8 = v12;
  if (!v7)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v14 = v6;
      v15 = 2112;
      v16 = self;
      v17 = 2112;
      v18 = v8;
      _os_log_error_impl(&dword_1B6DB2000, v9, OS_LOG_TYPE_ERROR, "Failed to archive bookmark (%@) to registry: %@ error: %@", buf, 0x20u);
    }

    CCSetError(a4, v8);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (void)_keyForSet:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138412546;
  v9 = v4;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "Unexpected set class: %@ expected: %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)bookmarkForSet:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, a2, a3, "failed to unarchive bookmark for set: %@ error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)commitAllBookmarkUpdates:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, a2, a3, "Failed to commit pending updates: %@ error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_clear:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "Failed to commit clear registry: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)enumerateAllBookmarks:(uint64_t)a1 usingBlock:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "Failed to complete bookmark enumeration: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end