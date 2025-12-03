@interface CSLPRFCompositeApplicationLibrary
- (BOOL)_application:(void *)_application isUniqueAndNotCounterpartInApplications:(void *)applications orApplicationsByCounterpart:;
- (CSLPRFCompositeApplicationLibrary)initWithPrimaryLibrary:(id)library secondaryLibrary:(id)secondaryLibrary;
- (NSArray)allApplications;
- (NSDictionary)allApplicationsDictionary;
- (id)_applicationOrCounterpartsForApplication:(void *)application inApplications:(void *)applications orApplicationsByCounterpart:;
- (id)_applicationsByCounterpartFromApplications:(uint64_t)applications;
- (id)_cachedApplications;
- (id)_loadApplications;
- (id)applicationWithBundleIdentifier:(id)identifier;
- (void)_applicationLibrary:(void *)library didAddOrUpdateApplications:;
- (void)_stopObserving;
- (void)addObserver:(id)observer;
- (void)allApplicationsWithCompletion:(id)completion;
- (void)applicationLibrary:(id)library didRemoveApplications:(id)applications;
- (void)applicationWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation CSLPRFCompositeApplicationLibrary

- (void)applicationLibrary:(id)library didRemoveApplications:(id)applications
{
  v104 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  applicationsCopy = applications;
  primaryLibrary = self->_primaryLibrary;
  if (primaryLibrary != libraryCopy && self->_secondaryLibrary != libraryCopy)
  {
    libraryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"unknownLibrary:%p primary:%p, secondary:%p, %@", libraryCopy, primaryLibrary, self->_secondaryLibrary, libraryCopy];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v51 = NSStringFromSelector(a2);
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      *buf = 138544642;
      selfCopy2 = v51;
      v96 = 2114;
      v97 = v53;
      v98 = 2048;
      selfCopy = self;
      v100 = 2114;
      v101 = @"CSLPRFCompositeApplicationLibrary.m";
      v102 = 1024;
      *v103 = 240;
      *&v103[4] = 2114;
      *&v103[6] = libraryCopy;
      _os_log_error_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [libraryCopy UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x22CE9CB38);
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  if (primaryLibrary == libraryCopy)
  {
    allApplicationsDictionary = [(CSLPRFApplicationLibrary *)self->_secondaryLibrary allApplicationsDictionary];
  }

  else
  {
    allApplicationsDictionary = 0;
  }

  v59 = allApplicationsDictionary;
  v58 = [(CSLPRFCompositeApplicationLibrary *)self _applicationsByCounterpartFromApplications:allApplicationsDictionary];
  os_unfair_lock_lock(&self->_lock);
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = applicationsCopy;
  v67 = array;
  v64 = [obj countByEnumeratingWithState:&v86 objects:v93 count:16];
  if (v64)
  {
    v62 = *v87;
    v54 = libraryCopy;
    v57 = array3;
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
        counterpartIdentifiers = [(__CFString *)v14 counterpartIdentifiers];
        if (primaryLibrary != libraryCopy)
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
            [array3 addObject:v13];
            [(NSMutableDictionary *)self->_lock_applications removeObjectForKey:v13];
          }

          [(NSMutableDictionary *)self->_lock_secondaryApplications removeObjectForKey:v13];
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v18 = counterpartIdentifiers;
          v19 = [v18 countByEnumeratingWithState:&v74 objects:v90 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = counterpartIdentifiers;
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
            counterpartIdentifiers = v21;
          }

          goto LABEL_55;
        }

        v26 = [(CSLPRFCompositeApplicationLibrary *)self _applicationOrCounterpartsForApplication:v14 inApplications:v59 orApplicationsByCounterpart:v58];
        v18 = v26;
        v61 = i;
        v65 = counterpartIdentifiers;
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
                    bundleIdentifier = [v34 bundleIdentifier];
                    v36 = [v13 isEqual:bundleIdentifier];
                    v37 = v67;
                    if (v36)
                    {
                      v37 = array2;
                    }

                    v31 |= v36;
                    [v37 addObject:v34];
                    [(NSMutableDictionary *)self->_lock_applications setObject:v34 forKey:bundleIdentifier];
                  }

                  v30 = [v66 countByEnumeratingWithState:&v82 objects:v92 count:16];
                }

                while (v30);
                v28 = v66;

                libraryCopy = v54;
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
                selfCopy2 = self;
                v96 = 2114;
                v97 = v13;
                v98 = 2114;
                selfCopy = v45;
                v100 = 2114;
                v101 = v14;
                v102 = 2114;
                *v103 = v28;
                _os_log_debug_impl(&dword_22CE92000, v38, OS_LOG_TYPE_DEBUG, "%p did remove application:%{public}@ will replace with applications:%{public}@ \nremoved application:%{public}@ \nreplacement applications:%{public}@", buf, 0x34u);
              }

              array3 = v57;
              goto LABEL_47;
            }

LABEL_41:
            [array3 addObject:v13];
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
        counterpartIdentifiers = v65;
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

  if ([array2 count])
  {
    v47 = self->_observationHelper;
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __78__CSLPRFCompositeApplicationLibrary_applicationLibrary_didRemoveApplications___block_invoke_2;
    v70[3] = &unk_278744788;
    v70[4] = self;
    v71 = array2;
    [(CSLPRFObservationHelper *)v47 notifyObserversWithBlock:v70];
  }

  if ([array3 count])
  {
    v48 = self->_observationHelper;
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __78__CSLPRFCompositeApplicationLibrary_applicationLibrary_didRemoveApplications___block_invoke_3;
    v68[3] = &unk_278744788;
    v68[4] = self;
    v69 = array3;
    [(CSLPRFObservationHelper *)v48 notifyObserversWithBlock:v68];
  }

  v49 = *MEMORY[0x277D85DE8];
}

- (id)_applicationsByCounterpartFromApplications:(uint64_t)applications
{
  if (applications)
  {
    v2 = MEMORY[0x277CBEB38];
    v3 = a2;
    dictionary = [v2 dictionary];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __80__CSLPRFCompositeApplicationLibrary__applicationsByCounterpartFromApplications___block_invoke;
    v7[3] = &unk_2787447B0;
    v5 = dictionary;
    v8 = v5;
    [v3 enumerateKeysAndObjectsUsingBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_applicationOrCounterpartsForApplication:(void *)application inApplications:(void *)applications orApplicationsByCounterpart:
{
  v34[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  applicationCopy = application;
  applicationsCopy = applications;
  if (self)
  {
    bundleIdentifier = [v7 bundleIdentifier];
    v11 = [applicationCopy objectForKey:bundleIdentifier];
    if (v11)
    {
      v12 = v11;
      v34[0] = v11;
      v13 = MEMORY[0x277CBEA60];
      v14 = v34;
    }

    else
    {
      v15 = [applicationsCopy objectForKey:bundleIdentifier];
      if (!v15)
      {
        v27 = applicationsCopy;
        counterpartIdentifiers = [v7 counterpartIdentifiers];
        v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(counterpartIdentifiers, "count")}];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v21 = counterpartIdentifiers;
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

              v12 = [applicationCopy objectForKey:*(*(&v28 + 1) + 8 * v25)];

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

        applicationsCopy = v27;

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

- (void)_applicationLibrary:(void *)library didAddOrUpdateApplications:
{
  v95 = *MEMORY[0x277D85DE8];
  v5 = a2;
  libraryCopy = library;
  if (self)
  {
    v49 = *(self + 8);
    if (v49 != v5 && *(self + 16) != v5)
    {
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknownLibrary:%p primary:%p, secondary:%p, %@", v5, v49, *(self + 16), v5];
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
        selfCopy = self;
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

    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    array3 = [MEMORY[0x277CBEB18] array];
    os_unfair_lock_lock((self + 72));
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v41 = libraryCopy;
    obj = libraryCopy;
    v44 = array;
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
          bundleIdentifier = [v9 bundleIdentifier];
          counterpartIdentifiers = [v9 counterpartIdentifiers];
          v12 = [*(self + 32) objectForKey:bundleIdentifier];

          v51 = counterpartIdentifiers;
          if (v49 == v5)
          {
            if (v12)
            {
              [array2 addObject:v9];
            }

            else
            {
              [array addObject:v9];
              v70[0] = MEMORY[0x277D85DD0];
              v70[1] = 3221225472;
              v70[2] = __84__CSLPRFCompositeApplicationLibrary__applicationLibrary_didAddOrUpdateApplications___block_invoke;
              v70[3] = &unk_278744760;
              v45 = bundleIdentifier;
              v71 = v45;
              selfCopy2 = self;
              v73 = v9;
              v74 = array3;
              v19 = MEMORY[0x2318C26B0](v70);
              v66 = 0u;
              v67 = 0u;
              v68 = 0u;
              v69 = 0u;
              v20 = counterpartIdentifiers;
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

              v25 = [*(self + 64) objectForKey:v45];
              bundleIdentifier2 = [v25 bundleIdentifier];
              (v19)[2](v19, bundleIdentifier2);

              v5 = v42;
              array = v44;
              counterpartIdentifiers = v51;
            }

            [*(self + 32) setObject:v9 forKey:bundleIdentifier];
            [*(self + 40) setObject:v9 forKey:bundleIdentifier];
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v27 = counterpartIdentifiers;
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

                  [*(self + 48) setObject:v9 forKey:*(*(&v62 + 1) + 8 * k)];
                }

                v29 = [v27 countByEnumeratingWithState:&v62 objects:v80 count:16];
              }

              while (v29);
            }
          }

          else
          {
            if ([(CSLPRFCompositeApplicationLibrary *)self _application:v9 isUniqueAndNotCounterpartInApplications:*(self + 40) orApplicationsByCounterpart:*(self + 48)])
            {
              if (v12)
              {
                v13 = array2;
              }

              else
              {
                v13 = array;
              }

              [v13 addObject:v9];
              [*(self + 32) setObject:v9 forKey:bundleIdentifier];
            }

            [*(self + 56) setObject:v9 forKey:bundleIdentifier];
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v14 = counterpartIdentifiers;
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

                  [*(self + 64) bs_setSafeObject:v9 forKey:*(*(&v58 + 1) + 8 * m)];
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

    os_unfair_lock_unlock((self + 72));
    if ([array count])
    {
      v32 = array;
      v33 = *(self + 24);
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __84__CSLPRFCompositeApplicationLibrary__applicationLibrary_didAddOrUpdateApplications___block_invoke_14;
      v56[3] = &unk_278744788;
      v56[4] = self;
      v57 = v32;
      [v33 notifyObserversWithBlock:v56];
    }

    libraryCopy = v41;
    if ([array2 count])
    {
      v34 = *(self + 24);
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __84__CSLPRFCompositeApplicationLibrary__applicationLibrary_didAddOrUpdateApplications___block_invoke_2;
      v54[3] = &unk_278744788;
      v54[4] = self;
      v55 = array2;
      [v34 notifyObserversWithBlock:v54];
    }

    if ([array3 count])
    {
      v35 = *(self + 24);
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __84__CSLPRFCompositeApplicationLibrary__applicationLibrary_didAddOrUpdateApplications___block_invoke_3;
      v52[3] = &unk_278744788;
      v52[4] = self;
      v53 = array3;
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

- (BOOL)_application:(void *)_application isUniqueAndNotCounterpartInApplications:(void *)applications orApplicationsByCounterpart:
{
  if (!self)
  {
    return 0;
  }

  v4 = [(CSLPRFCompositeApplicationLibrary *)self _applicationOrCounterpartsForApplication:a2 inApplications:_application orApplicationsByCounterpart:applications];
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

- (void)removeObserver:(id)observer
{
  [(CSLPRFObservationHelper *)self->_observationHelper removeObserver:observer];
  if (![(CSLPRFObservationHelper *)self->_observationHelper observerCount])
  {

    [(CSLPRFCompositeApplicationLibrary *)self _stopObserving];
  }
}

- (void)_stopObserving
{
  if (self)
  {
    os_unfair_lock_lock((self + 72));
    v2 = *(self + 76);
    *(self + 76) = 0;
    os_unfair_lock_unlock((self + 72));
    if (v2 == 1)
    {
      [*(self + 8) removeObserver:self];
      v3 = *(self + 16);

      [v3 removeObserver:self];
    }
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observerCount = [(CSLPRFObservationHelper *)self->_observationHelper observerCount];
  [(CSLPRFObservationHelper *)self->_observationHelper addObserver:observerCopy];
  if (observerCount)
  {
    _cachedApplications = [(CSLPRFCompositeApplicationLibrary *)self _cachedApplications];
    allValues = [_cachedApplications allValues];
    [observerCopy applicationLibrary:self didAddApplications:allValues];
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
  if (self)
  {
    os_unfair_lock_lock((self + 72));
    _loadApplications = *(self + 32);
    os_unfair_lock_unlock((self + 72));
    if (!_loadApplications)
    {
      _loadApplications = [(CSLPRFCompositeApplicationLibrary *)self _loadApplications];
    }
  }

  else
  {
    _loadApplications = 0;
  }

  return _loadApplications;
}

- (id)_loadApplications
{
  selfCopy = self;
  if (self)
  {
    allApplicationsDictionary = [self[1] allApplicationsDictionary];
    v3 = [(CSLPRFCompositeApplicationLibrary *)selfCopy _applicationsByCounterpartFromApplications:allApplicationsDictionary];
    allApplicationsDictionary2 = [selfCopy[2] allApplicationsDictionary];
    v5 = [allApplicationsDictionary mutableCopy];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __54__CSLPRFCompositeApplicationLibrary__loadApplications__block_invoke;
    v25[3] = &unk_278744738;
    v25[4] = selfCopy;
    v26 = allApplicationsDictionary;
    v6 = v3;
    v27 = v6;
    v7 = v5;
    v28 = v7;
    v8 = allApplicationsDictionary;
    [allApplicationsDictionary2 enumerateKeysAndObjectsUsingBlock:v25];
    os_unfair_lock_lock(selfCopy + 18);
    v9 = selfCopy[4];
    objc_storeStrong(selfCopy + 4, v5);
    v10 = [v8 mutableCopy];
    v11 = selfCopy[5];
    selfCopy[5] = v10;

    v12 = selfCopy[6];
    selfCopy[6] = v6;
    v13 = v6;

    v14 = [allApplicationsDictionary2 mutableCopy];
    v15 = selfCopy[7];
    selfCopy[7] = v14;

    v16 = [(CSLPRFCompositeApplicationLibrary *)selfCopy _applicationsByCounterpartFromApplications:allApplicationsDictionary2];
    v17 = selfCopy[8];
    selfCopy[8] = v16;

    os_unfair_lock_unlock(selfCopy + 18);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__CSLPRFCompositeApplicationLibrary__loadApplications__block_invoke_2;
    block[3] = &unk_2787453E0;
    block[4] = selfCopy;
    v18 = v7;
    v23 = v18;
    v24 = v9;
    v19 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v20 = v24;
    selfCopy = v18;
  }

  return selfCopy;
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

- (void)allApplicationsWithCompletion:(id)completion
{
  completionCopy = completion;
  allApplications = [(CSLPRFCompositeApplicationLibrary *)self allApplications];
  (*(completion + 2))(completionCopy, allApplications);
}

- (NSDictionary)allApplicationsDictionary
{
  _loadApplications = [(CSLPRFCompositeApplicationLibrary *)&self->super.isa _loadApplications];
  v3 = [_loadApplications copy];

  return v3;
}

- (NSArray)allApplications
{
  _loadApplications = [(CSLPRFCompositeApplicationLibrary *)&self->super.isa _loadApplications];
  allValues = [_loadApplications allValues];

  return allValues;
}

- (void)applicationWithBundleIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v8 = [(CSLPRFCompositeApplicationLibrary *)self applicationWithBundleIdentifier:identifier];
  (*(completion + 2))(completionCopy, v8);
}

- (id)applicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _cachedApplications = [(CSLPRFCompositeApplicationLibrary *)self _cachedApplications];
  v6 = [_cachedApplications objectForKey:identifierCopy];

  return v6;
}

- (void)dealloc
{
  [(CSLPRFCompositeApplicationLibrary *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = CSLPRFCompositeApplicationLibrary;
  [(CSLPRFCompositeApplicationLibrary *)&v3 dealloc];
}

- (CSLPRFCompositeApplicationLibrary)initWithPrimaryLibrary:(id)library secondaryLibrary:(id)secondaryLibrary
{
  libraryCopy = library;
  secondaryLibraryCopy = secondaryLibrary;
  v20.receiver = self;
  v20.super_class = CSLPRFCompositeApplicationLibrary;
  v9 = [(CSLPRFCompositeApplicationLibrary *)&v20 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_primaryLibrary, library);
    objc_storeStrong(&v10->_secondaryLibrary, secondaryLibrary);
    v11 = objc_alloc_init(CSLPRFObservationHelper);
    observationHelper = v10->_observationHelper;
    v10->_observationHelper = v11;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    lock_applications = v10->_lock_applications;
    v10->_lock_applications = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    lock_primaryApplications = v10->_lock_primaryApplications;
    v10->_lock_primaryApplications = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    lock_secondaryApplications = v10->_lock_secondaryApplications;
    v10->_lock_secondaryApplications = dictionary3;
  }

  return v10;
}

@end