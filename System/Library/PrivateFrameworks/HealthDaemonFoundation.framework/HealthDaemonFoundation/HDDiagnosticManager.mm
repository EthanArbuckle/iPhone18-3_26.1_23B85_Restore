@interface HDDiagnosticManager
+ (id)sharedDiagnosticManager;
- (HDDiagnosticManager)init;
- (id)_diagnosticsForKeys:(id)keys shouldLog:(BOOL)log;
- (id)_diagnosticsOverview;
- (void)addObject:(id)object;
- (void)removeObject:(id)object;
@end

@implementation HDDiagnosticManager

+ (id)sharedDiagnosticManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HDDiagnosticManager_sharedDiagnosticManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedDiagnosticManager_onceToken != -1)
  {
    dispatch_once(&sharedDiagnosticManager_onceToken, block);
  }

  v2 = sharedDiagnosticManager___sharedDiagnosticManager;

  return v2;
}

uint64_t __46__HDDiagnosticManager_sharedDiagnosticManager__block_invoke(uint64_t a1)
{
  sharedDiagnosticManager___sharedDiagnosticManager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (HDDiagnosticManager)init
{
  v6.receiver = self;
  v6.super_class = HDDiagnosticManager;
  v2 = [(HDDiagnosticManager *)&v6 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    objects = v2->_objects;
    v2->_objects = weakObjectsHashTable;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_objects addObject:objectCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_objects removeObject:objectCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_diagnosticsForKeys:(id)keys shouldLog:(BOOL)log
{
  logCopy = log;
  v58 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  string = [MEMORY[0x277CCAB68] string];
  if (![keysCopy count])
  {
    _diagnosticsOverview = [(HDDiagnosticManager *)self _diagnosticsOverview];
    _LogOrAppend(_diagnosticsOverview, string, logCopy);
  }

  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_objects allObjects];
  os_unfair_lock_unlock(&self->_lock);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v8 = allObjects;
  v9 = [v8 countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v52;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v52 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v51 + 1) + 8 * i);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        if (![keysCopy count] || objc_msgSend(keysCopy, "containsObject:", v15))
        {
          array = [dictionary objectForKeyedSubscript:v15];
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
            [dictionary setObject:array forKeyedSubscript:v15];
          }

          [array addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v10);
  }

  v33 = v8;
  v34 = keysCopy;

  allKeys = [dictionary allKeys];
  v18 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v18;
  v37 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v37)
  {
    v36 = *v48;
    do
    {
      v19 = 0;
      do
      {
        if (*v48 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v40 = v19;
        v20 = *(*(&v47 + 1) + 8 * v19);
        v21 = [dictionary objectForKeyedSubscript:v20];
        v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n======== %@ ==========", v20];
        _LogOrAppend(v39, string, logCopy);
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v22 = v21;
        v23 = [v22 countByEnumeratingWithState:&v43 objects:v55 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v44;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v44 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v43 + 1) + 8 * j);
              v28 = MEMORY[0x277CCACA8];
              diagnosticDescription = [v27 diagnosticDescription];
              v30 = [v28 stringWithFormat:@"<%@:%p> %@", v20, v27, diagnosticDescription];

              _LogOrAppend(v30, string, logCopy);
            }

            v24 = [v22 countByEnumeratingWithState:&v43 objects:v55 count:16];
          }

          while (v24);
        }

        v19 = v40 + 1;
      }

      while (v40 + 1 != v37);
      v37 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v37);
  }

  v31 = *MEMORY[0x277D85DE8];

  return string;
}

- (id)_diagnosticsOverview
{
  v2 = [MEMORY[0x277CCAB68] stringWithString:@"======== Overview ==========\n"];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = HKDiagnosticStringFromDate();
  [v2 appendFormat:@"Date: %@\n", v4];

  currentDeviceProductType = [MEMORY[0x277CCDD30] currentDeviceProductType];
  [v2 appendFormat:@"Device: %@\n", currentDeviceProductType];

  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    currentInternalDeviceModel = [mEMORY[0x277CCDD30] currentInternalDeviceModel];
    [v2 appendFormat:@"Internal Model: %@\n", currentInternalDeviceModel];
  }

  currentOSVersion = [MEMORY[0x277CCDD30] currentOSVersion];
  currentOSBuild = [MEMORY[0x277CCDD30] currentOSBuild];
  [v2 appendFormat:@"Build: %@ (%@)\n", currentOSVersion, currentOSBuild];

  mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
  [v2 appendFormat:@"Disk capacity: %.1f GB\n", vcvtd_n_f64_u64(objc_msgSend(mEMORY[0x277CCDD30]2, "totalDiskCapacity"), 0x1EuLL)];

  mEMORY[0x277CCDD30]3 = [MEMORY[0x277CCDD30] sharedBehavior];
  [v2 appendFormat:@"Disk space available: %.3f GB", vcvtd_n_f64_u64(objc_msgSend(mEMORY[0x277CCDD30]3, "currentDiskSpaceAvailable"), 0x1EuLL)];

  return v2;
}

@end