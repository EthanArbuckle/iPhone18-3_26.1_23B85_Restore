@interface CSLPRFCompositeApplicationLibrary
- (BOOL)_application:(void *)a3 isUniqueAndNotCounterpartInApplications:(void *)a4 orApplicationsByCounterpart:;
- (CSLPRFCompositeApplicationLibrary)initWithPrimaryLibrary:(id)a3 secondaryLibrary:(id)a4;
- (NSArray)allApplications;
- (NSDictionary)allApplicationsDictionary;
- (id)_applicationOrCounterpartsForApplication:(void *)a3 inApplications:(void *)a4 orApplicationsByCounterpart:;
- (id)_applicationsByCounterpartFromApplications:(uint64_t)a1;
- (id)_cachedApplications;
- (id)_loadApplications;
- (id)applicationWithBundleIdentifier:(id)a3;
- (void)_applicationLibrary:(void *)a3 didAddOrUpdateApplications:;
- (void)_stopObserving;
- (void)addObserver:(id)a3;
- (void)allApplicationsWithCompletion:(id)a3;
- (void)applicationLibrary:(id)a3 didRemoveApplications:(id)a4;
- (void)applicationWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)removeObserver:(id)a3;
@end

@implementation CSLPRFCompositeApplicationLibrary

- (void)applicationLibrary:(id)a3 didRemoveApplications:(id)a4
{
  v104 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  primaryLibrary = self->_primaryLibrary;
  if (primaryLibrary != v7 && self->_secondaryLibrary != v7)
  {
    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknownLibrary:%p primary:%p, secondary:%p, %@", v7, primaryLibrary, self->_secondaryLibrary, v7];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v51 = NSStringFromSelector(a2);
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      *buf = 138544642;
      v95 = v51;
      v96 = 2114;
      v97 = v53;
      v98 = 2048;
      v99 = self;
      v100 = 2114;
      v101 = @"CSLPRFCompositeApplicationLibrary.m";
      v102 = 1024;
      *v103 = 240;
      *&v103[4] = 2114;
      *&v103[6] = v50;
      _os_log_error_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v50 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x22CE9CB38);
  }

  v9 = [MEMORY[0x277CBEB18] array];
  v55 = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CBEB18] array];
  if (primaryLibrary == v7)
  {
    v11 = [(CSLPRFApplicationLibrary *)self->_secondaryLibrary allApplicationsDictionary];
  }

  else
  {
    v11 = 0;
  }

  v59 = v11;
  v58 = [(CSLPRFCompositeApplicationLibrary *)self _applicationsByCounterpartFromApplications:v11];
  os_unfair_lock_lock(&self->_lock);
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v8;
  v67 = v9;
  v64 = [obj countByEnumeratingWithState:&v86 objects:v93 count:16];
  if (v64)
  {
    v62 = *v87;
    v54 = v7;
    v57 = v10;
    do
    {
      for (i = 0; i != v64; ++i)
      {
        if (*v87 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v86 + 1) + 8 * i);
        v14 = [(NSMutableDictionary *)self->_lock_applications objectForKey:v13];
        v15 = [(__CFString *)v14 counterpartIdentifiers];
        if (primaryLibrary != v7)
        {
          v16 = [(NSMutableDictionary *)self->_lock_primaryApplications objectForKey:v13];

          if (v14)
          {
            v17 = v16 == 0;
          }

          else
          {
            v17 = 0;
          }

          if (v17)
          {
            [v10 addObject:v13];
            [(NSMutableDictionary *)self->_lock_applications removeObjectForKey:v13];
          }

          [(NSMutableDictionary *)self->_lock_secondaryApplications removeObjectForKey:v13];
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v18 = v15;
          v19 = [v18 countByEnumeratingWithState:&v74 objects:v90 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = v15;
            v22 = v14;
            v23 = i;
            v24 = *v75;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v75 != v24)
                {
                  objc_enumerationMutation(v18);
                }

                [(NSMutableDictionary *)self->_lock_primaryApplicationsByCounterpart removeObjectForKey:*(*(&v74 + 1) + 8 * j)];
              }

              v20 = [v18 countByEnumeratingWithState:&v74 objects:v90 count:16];
            }

            while (v20);
            i = v23;
            v14 = v22;
            v15 = v21;
          }

          goto LABEL_55;
        }

        v26 = [(CSLPRFCompositeApplicationLibrary *)self _applicationOrCounterpartsForApplication:v14 inApplications:v59 orApplicationsByCounterpart:v58];
        v18 = v26;
        v61 = i;
        v65 = v15;
        if (v26)
        {
          v27 = [v26 count];
          if (v14)
          {
            if (v27)
            {
              v84 = 0u;
              v85 = 0u;
              v82 = 0u;
              v83 = 0u;
              v28 = v18;
              v29 = [v28 countByEnumeratingWithState:&v82 objects:v92 count:16];
              if (v29)
              {
                v30 = v29;
                v66 = v28;
                v56 = v14;
                v31 = 0;
                v32 = *v83;
                do
                {
                  for (k = 0; k != v30; ++k)
                  {
                    if (*v83 != v32)
                    {
                      objc_enumerationMutation(v66);
                    }

                    v34 = *(*(&v82 + 1) + 8 * k);
                    v35 = [v34 bundleIdentifier];
                    v36 = [v13 isEqual:v35];
                    v37 = v67;
                    if (v36)
                    {
                      v37 = v55;
                    }

                    v31 |= v36;
                    [v37 addObject:v34];
                    [(NSMutableDictionary *)self->_lock_applications setObject:v34 forKey:v35];
                  }

                  v30 = [v66 countByEnumeratingWithState:&v82 objects:v92 count:16];
                }

                while (v30);
                v28 = v66;

                v7 = v54;
                v14 = v56;
                if (v31)
                {
                  goto LABEL_44;
                }
              }

              else
              {
              }

              [v57 addObject:v13];
              [(NSMutableDictionary *)self->_lock_applications removeObjectForKey:v13];
LABEL_44:
              v38 = cslprf_app_library_log();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
              {
                v45 = [v28 bs_mapNoNulls:&__block_literal_global_646];
                *buf = 134219010;
                v95 = self;
                v96 = 2114;
                v97 = v13;
                v98 = 2114;
                v99 = v45;
                v100 = 2114;
                v101 = v14;
                v102 = 2114;
                *v103 = v28;
                _os_log_debug_impl(&dword_22CE92000, v38, OS_LOG_TYPE_DEBUG, "%p did remove application:%{public}@ will replace with applications:%{public}@ \nremoved application:%{public}@ \nreplacement applications:%{public}@", buf, 0x34u);
              }

              v10 = v57;
              goto LABEL_47;
            }

LABEL_41:
            [v10 addObject:v13];
            [(NSMutableDictionary *)self->_lock_applications removeObjectForKey:v13];
          }
        }

        else if (v14)
        {
          goto LABEL_41;
        }

LABEL_47:
        v39 = v14;
        [(NSMutableDictionary *)self->_lock_primaryApplications removeObjectForKey:v13];
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v40 = v65;
        v41 = [v40 countByEnumeratingWithState:&v78 objects:v91 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v79;
          do
          {
            for (m = 0; m != v42; ++m)
            {
              if (*v79 != v43)
              {
                objc_enumerationMutation(v40);
              }

              [(NSMutableDictionary *)self->_lock_primaryApplicationsByCounterpart removeObjectForKey:*(*(&v78 + 1) + 8 * m)];
            }

            v42 = [v40 countByEnumeratingWithState:&v78 objects:v91 count:16];
          }

          while (v42);
        }

        i = v61;
        v14 = v39;
        v15 = v65;
LABEL_55:
      }

      v64 = [obj countByEnumeratingWithState:&v86 objects:v93 count:16];
    }

    while (v64);
  }

  os_unfair_lock_unlock(&self->_lock);
  if ([v67 count])
  {
    observationHelper = self->_observationHelper;
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __78__CSLPRFCompositeApplicationLibrary_applicationLibrary_didRemoveApplications___block_invoke_17;
    v72[3] = &unk_278744788;
    v72[4] = self;
    v73 = v67;
    [(CSLPRFObservationHelper *)observationHelper notifyObserversWithBlock:v72];
  }

  if ([v55 count])
  {
    v47 = self->_observationHelper;
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __78__CSLPRFCompositeApplicationLibrary_applicationLibrary_didRemoveApplications___block_invoke_2;
    v70[3] = &unk_278744788;
    v70[4] = self;
    v71 = v55;
    [(CSLPRFObservationHelper *)v47 notifyObserversWithBlock:v70];
  }

  if ([v10 count])
  {
    v48 = self->_observationHelper;
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __78__CSLPRFCompositeApplicationLibrary_applicationLibrary_didRemoveApplications___block_invoke_3;
    v68[3] = &unk_278744788;
    v68[4] = self;
    v69 = v10;
    [(CSLPRFObservationHelper *)v48 notifyObserversWithBlock:v68];
  }

  v49 = *MEMORY[0x277D85DE8];
}

- (id)_applicationsByCounterpartFromApplications:(uint64_t)a1
{
  if (a1)
  {
    v2 = MEMORY[0x277CBEB38];
    v3 = a2;
    v4 = [v2 dictionary];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __80__CSLPRFCompositeApplicationLibrary__applicationsByCounterpartFromApplications___block_invoke;
    v7[3] = &unk_2787447B0;
    v5 = v4;
    v8 = v5;
    [v3 enumerateKeysAndObjectsUsingBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_applicationOrCounterpartsForApplication:(void *)a3 inApplications:(void *)a4 orApplicationsByCounterpart:
{
  v34[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [v7 bundleIdentifier];
    v11 = [v8 objectForKey:v10];
    if (v11)
    {
      v12 = v11;
      v34[0] = v11;
      v13 = MEMORY[0x277CBEA60];
      v14 = v34;
    }

    else
    {
      v15 = [v9 objectForKey:v10];
      if (!v15)
      {
        v27 = v9;
        v19 = [v7 counterpartIdentifiers];
        v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v19, "count")}];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v21 = v19;
        v22 = [v21 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v22)
        {
          v23 = v22;
          v12 = 0;
          v24 = *v29;
          do
          {
            v25 = 0;
            v26 = v12;
            do
            {
              if (*v29 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v12 = [v8 objectForKey:*(*(&v28 + 1) + 8 * v25)];

              if (v12)
              {
                [v20 addObject:v12];
              }

              ++v25;
              v26 = v12;
            }

            while (v23 != v25);
            v23 = [v21 countByEnumeratingWithState:&v28 objects:v32 count:16];
          }

          while (v23);
        }

        else
        {
          v12 = 0;
        }

        if ([v20 count])
        {
          v16 = [v20 copy];
        }

        else
        {
          v16 = 0;
        }

        v9 = v27;

        goto LABEL_7;
      }

      v12 = v15;
      v33 = v15;
      v13 = MEMORY[0x277CBEA60];
      v14 = &v33;
    }

    v16 = [v13 arrayWithObjects:v14 count:1];
LABEL_7:

    goto LABEL_8;
  }

  v16 = 0;
LABEL_8:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __80__CSLPRFCompositeApplicationLibrary__applicationsByCounterpartFromApplications___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 counterpartIdentifiers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) setObject:v4 forKey:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_applicationLibrary:(void *)a3 didAddOrUpdateApplications:
{
  v95 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v49 = *(a1 + 8);
    if (v49 != v5 && *(a1 + 16) != v5)
    {
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknownLibrary:%p primary:%p, secondary:%p, %@", v5, v49, *(a1 + 16), v5];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v38 = NSStringFromSelector(sel__applicationLibrary_didAddOrUpdateApplications_);
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        *buf = 138544642;
        v84 = v38;
        v85 = 2114;
        v86 = v40;
        v87 = 2048;
        v88 = a1;
        v89 = 2114;
        v90 = @"CSLPRFCompositeApplicationLibrary.m";
        v91 = 1024;
        v92 = 154;
        v93 = 2114;
        v94 = v37;
        _os_log_error_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v37 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x22CE9D704);
    }

    v7 = [MEMORY[0x277CBEB18] array];
    v47 = [MEMORY[0x277CBEB18] array];
    v43 = [MEMORY[0x277CBEB18] array];
    os_unfair_lock_lock((a1 + 72));
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v41 = v6;
    obj = v6;
    v44 = v7;
    v50 = [obj countByEnumeratingWithState:&v75 objects:v82 count:16];
    if (v50)
    {
      v48 = *v76;
      v42 = v5;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v76 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v75 + 1) + 8 * i);
          v10 = [v9 bundleIdentifier];
          v11 = [v9 counterpartIdentifiers];
          v12 = [*(a1 + 32) objectForKey:v10];

          v51 = v11;
          if (v49 == v5)
          {
            if (v12)
            {
              [v47 addObject:v9];
            }

            else
            {
              [v7 addObject:v9];
              v70[0] = MEMORY[0x277D85DD0];
              v70[1] = 3221225472;
              v70[2] = __84__CSLPRFCompositeApplicationLibrary__applicationLibrary_didAddOrUpdateApplications___block_invoke;
              v70[3] = &unk_278744760;
              v45 = v10;
              v71 = v45;
              v72 = a1;
              v73 = v9;
              v74 = v43;
              v19 = MEMORY[0x2318C26B0](v70);
              v66 = 0u;
              v67 = 0u;
              v68 = 0u;
              v69 = 0u;
              v20 = v11;
              v21 = [v20 countByEnumeratingWithState:&v66 objects:v81 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v67;
                do
                {
                  for (j = 0; j != v22; ++j)
                  {
                    if (*v67 != v23)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v19[2](v19, *(*(&v66 + 1) + 8 * j));
                  }

                  v22 = [v20 countByEnumeratingWithState:&v66 objects:v81 count:16];
                }

                while (v22);
              }

              v25 = [*(a1 + 64) objectForKey:v45];
              v26 = [v25 bundleIdentifier];
              (v19)[2](v19, v26);

              v5 = v42;
              v7 = v44;
              v11 = v51;
            }

            [*(a1 + 32) setObject:v9 forKey:v10];
            [*(a1 + 40) setObject:v9 forKey:v10];
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v27 = v11;
            v28 = [v27 countByEnumeratingWithState:&v62 objects:v80 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v63;
              do
              {
                for (k = 0; k != v29; ++k)
                {
                  if (*v63 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  [*(a1 + 48) setObject:v9 forKey:*(*(&v62 + 1) + 8 * k)];
                }

                v29 = [v27 countByEnumeratingWithState:&v62 objects:v80 count:16];
              }

              while (v29);
            }
          }

          else
          {
            if ([(CSLPRFCompositeApplicationLibrary *)a1 _application:v9 isUniqueAndNotCounterpartInApplications:*(a1 + 40) orApplicationsByCounterpart:*(a1 + 48)])
            {
              if (v12)
              {
                v13 = v47;
              }

              else
              {
                v13 = v7;
              }

              [v13 addObject:v9];
              [*(a1 + 32) setObject:v9 forKey:v10];
            }

            [*(a1 + 56) setObject:v9 forKey:v10];
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v14 = v11;
            v15 = [v14 countByEnumeratingWithState:&v58 objects:v79 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v59;
              do
              {
                for (m = 0; m != v16; ++m)
                {
                  if (*v59 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  [*(a1 + 64) bs_setSafeObject:v9 forKey:*(*(&v58 + 1) + 8 * m)];
                }

                v16 = [v14 countByEnumeratingWithState:&v58 objects:v79 count:16];
              }

              while (v16);
            }
          }
        }

        v50 = [obj countByEnumeratingWithState:&v75 objects:v82 count:16];
      }

      while (v50);
    }

    os_unfair_lock_unlock((a1 + 72));
    if ([v7 count])
    {
      v32 = v7;
      v33 = *(a1 + 24);
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __84__CSLPRFCompositeApplicationLibrary__applicationLibrary_didAddOrUpdateApplications___block_invoke_14;
      v56[3] = &unk_278744788;
      v56[4] = a1;
      v57 = v32;
      [v33 notifyObserversWithBlock:v56];
    }

    v6 = v41;
    if ([v47 count])
    {
      v34 = *(a1 + 24);
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __84__CSLPRFCompositeApplicationLibrary__applicationLibrary_didAddOrUpdateApplications___block_invoke_2;
      v54[3] = &unk_278744788;
      v54[4] = a1;
      v55 = v47;
      [v34 notifyObserversWithBlock:v54];
    }

    if ([v43 count])
    {
      v35 = *(a1 + 24);
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __84__CSLPRFCompositeApplicationLibrary__applicationLibrary_didAddOrUpdateApplications___block_invoke_3;
      v52[3] = &unk_278744788;
      v52[4] = a1;
      v53 = v43;
      [v35 notifyObserversWithBlock:v52];
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __84__CSLPRFCompositeApplicationLibrary__applicationLibrary_didAddOrUpdateApplications___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 isEqual:*(a1 + 32)] & 1) == 0)
  {
    v5 = [*(*(a1 + 40) + 32) objectForKey:v4];
    if (v5)
    {
      v6 = cslprf_app_library_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v10 = 134219010;
        v11 = v8;
        v12 = 2114;
        v13 = v9;
        v14 = 2114;
        v15 = v5;
        v16 = 2114;
        v17 = v9;
        v18 = 2114;
        v19 = v5;
        _os_log_debug_impl(&dword_22CE92000, v6, OS_LOG_TYPE_DEBUG, "%p did add application:%{public}@ will remove counterpart application:%{public}@ \napplication:%{public}@ \ncounterpart:%{public}@", &v10, 0x34u);
      }

      [*(a1 + 56) addObject:v4];
      [*(*(a1 + 40) + 32) removeObjectForKey:v4];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_application:(void *)a3 isUniqueAndNotCounterpartInApplications:(void *)a4 orApplicationsByCounterpart:
{
  if (!a1)
  {
    return 0;
  }

  v4 = [(CSLPRFCompositeApplicationLibrary *)a1 _applicationOrCounterpartsForApplication:a2 inApplications:a3 orApplicationsByCounterpart:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 count] == 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)removeObserver:(id)a3
{
  [(CSLPRFObservationHelper *)self->_observationHelper removeObserver:a3];
  if (![(CSLPRFObservationHelper *)self->_observationHelper observerCount])
  {

    [(CSLPRFCompositeApplicationLibrary *)self _stopObserving];
  }
}

- (void)_stopObserving
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 72));
    v2 = *(a1 + 76);
    *(a1 + 76) = 0;
    os_unfair_lock_unlock((a1 + 72));
    if (v2 == 1)
    {
      [*(a1 + 8) removeObserver:a1];
      v3 = *(a1 + 16);

      [v3 removeObserver:a1];
    }
  }
}

- (void)addObserver:(id)a3
{
  v8 = a3;
  v4 = [(CSLPRFObservationHelper *)self->_observationHelper observerCount];
  [(CSLPRFObservationHelper *)self->_observationHelper addObserver:v8];
  if (v4)
  {
    v5 = [(CSLPRFCompositeApplicationLibrary *)self _cachedApplications];
    v6 = [v5 allValues];
    [v8 applicationLibrary:self didAddApplications:v6];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    lock_observing = self->_lock_observing;
    self->_lock_observing = 1;
    os_unfair_lock_unlock(&self->_lock);
    if (!lock_observing)
    {
      [(CSLPRFApplicationLibrary *)self->_primaryLibrary addObserver:self];
      [(CSLPRFApplicationLibrary *)self->_secondaryLibrary addObserver:self];
    }
  }
}

- (id)_cachedApplications
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 72));
    v2 = *(a1 + 32);
    os_unfair_lock_unlock((a1 + 72));
    if (!v2)
    {
      v2 = [(CSLPRFCompositeApplicationLibrary *)a1 _loadApplications];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_loadApplications
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1[1] allApplicationsDictionary];
    v3 = [(CSLPRFCompositeApplicationLibrary *)v1 _applicationsByCounterpartFromApplications:v2];
    v4 = [v1[2] allApplicationsDictionary];
    v5 = [v2 mutableCopy];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __54__CSLPRFCompositeApplicationLibrary__loadApplications__block_invoke;
    v25[3] = &unk_278744738;
    v25[4] = v1;
    v26 = v2;
    v6 = v3;
    v27 = v6;
    v7 = v5;
    v28 = v7;
    v8 = v2;
    [v4 enumerateKeysAndObjectsUsingBlock:v25];
    os_unfair_lock_lock(v1 + 18);
    v9 = v1[4];
    objc_storeStrong(v1 + 4, v5);
    v10 = [v8 mutableCopy];
    v11 = v1[5];
    v1[5] = v10;

    v12 = v1[6];
    v1[6] = v6;
    v13 = v6;

    v14 = [v4 mutableCopy];
    v15 = v1[7];
    v1[7] = v14;

    v16 = [(CSLPRFCompositeApplicationLibrary *)v1 _applicationsByCounterpartFromApplications:v4];
    v17 = v1[8];
    v1[8] = v16;

    os_unfair_lock_unlock(v1 + 18);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__CSLPRFCompositeApplicationLibrary__loadApplications__block_invoke_2;
    block[3] = &unk_2787453E0;
    block[4] = v1;
    v18 = v7;
    v23 = v18;
    v24 = v9;
    v19 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v20 = v24;
    v1 = v18;
  }

  return v1;
}

void __54__CSLPRFCompositeApplicationLibrary__loadApplications__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([(CSLPRFCompositeApplicationLibrary *)*(a1 + 32) _application:v5 isUniqueAndNotCounterpartInApplications:*(a1 + 40) orApplicationsByCounterpart:*(a1 + 48)])
  {
    [*(a1 + 56) setObject:v5 forKey:v6];
  }
}

void __54__CSLPRFCompositeApplicationLibrary__loadApplications__block_invoke_2(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = [MEMORY[0x277CBEB18] array];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __95__CSLPRFCompositeApplicationLibrary__notifyObserversOfChangesWithApplications_oldApplications___block_invoke;
    v34[3] = &unk_278744D98;
    v23 = v4;
    v8 = v4;
    v35 = v8;
    v22 = v6;
    v36 = v22;
    v9 = v5;
    v37 = v9;
    [v3 enumerateKeysAndObjectsUsingBlock:v34];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          v16 = [v3 objectForKey:{v15, v22}];

          if (!v16)
          {
            [v7 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v12);
    }

    if ([v9 count])
    {
      v17 = *(v1 + 24);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __95__CSLPRFCompositeApplicationLibrary__notifyObserversOfChangesWithApplications_oldApplications___block_invoke_2;
      v28[3] = &unk_278744788;
      v28[4] = v1;
      v29 = v9;
      [v17 notifyObserversWithBlock:v28];
    }

    v18 = v22;
    if ([v22 count])
    {
      v19 = *(v1 + 24);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __95__CSLPRFCompositeApplicationLibrary__notifyObserversOfChangesWithApplications_oldApplications___block_invoke_3;
      v26[3] = &unk_278744788;
      v26[4] = v1;
      v27 = v18;
      [v19 notifyObserversWithBlock:v26];
    }

    if ([v7 count])
    {
      v20 = *(v1 + 24);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __95__CSLPRFCompositeApplicationLibrary__notifyObserversOfChangesWithApplications_oldApplications___block_invoke_4;
      v24[3] = &unk_278744788;
      v24[4] = v1;
      v25 = v7;
      [v20 notifyObserversWithBlock:v24];
    }

    v4 = v23;
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __95__CSLPRFCompositeApplicationLibrary__notifyObserversOfChangesWithApplications_oldApplications___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) objectForKey:a2];
  if (v5)
  {
    if ([v8 isEqual:v5])
    {
      goto LABEL_6;
    }

    v6 = v8;
    v7 = 40;
  }

  else
  {
    v6 = v8;
    v7 = 48;
  }

  [*(a1 + v7) addObject:v6];
LABEL_6:
}

- (void)allApplicationsWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [(CSLPRFCompositeApplicationLibrary *)self allApplications];
  (*(a3 + 2))(v5, v6);
}

- (NSDictionary)allApplicationsDictionary
{
  v2 = [(CSLPRFCompositeApplicationLibrary *)&self->super.isa _loadApplications];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)allApplications
{
  v2 = [(CSLPRFCompositeApplicationLibrary *)&self->super.isa _loadApplications];
  v3 = [v2 allValues];

  return v3;
}

- (void)applicationWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = [(CSLPRFCompositeApplicationLibrary *)self applicationWithBundleIdentifier:a3];
  (*(a4 + 2))(v7, v8);
}

- (id)applicationWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSLPRFCompositeApplicationLibrary *)self _cachedApplications];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)dealloc
{
  [(CSLPRFCompositeApplicationLibrary *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = CSLPRFCompositeApplicationLibrary;
  [(CSLPRFCompositeApplicationLibrary *)&v3 dealloc];
}

- (CSLPRFCompositeApplicationLibrary)initWithPrimaryLibrary:(id)a3 secondaryLibrary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = CSLPRFCompositeApplicationLibrary;
  v9 = [(CSLPRFCompositeApplicationLibrary *)&v20 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_primaryLibrary, a3);
    objc_storeStrong(&v10->_secondaryLibrary, a4);
    v11 = objc_alloc_init(CSLPRFObservationHelper);
    observationHelper = v10->_observationHelper;
    v10->_observationHelper = v11;

    v13 = [MEMORY[0x277CBEB38] dictionary];
    lock_applications = v10->_lock_applications;
    v10->_lock_applications = v13;

    v15 = [MEMORY[0x277CBEB38] dictionary];
    lock_primaryApplications = v10->_lock_primaryApplications;
    v10->_lock_primaryApplications = v15;

    v17 = [MEMORY[0x277CBEB38] dictionary];
    lock_secondaryApplications = v10->_lock_secondaryApplications;
    v10->_lock_secondaryApplications = v17;
  }

  return v10;
}

@end