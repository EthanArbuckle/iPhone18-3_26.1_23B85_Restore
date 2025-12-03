@interface BLFamilyCircleController
+ (id)sharedInstance;
- (BLFamilyCircleController)init;
- (void)dq_processFamilyCircle:(id)circle completion:(id)completion;
- (void)refreshWithCompletion:(id)completion;
@end

@implementation BLFamilyCircleController

+ (id)sharedInstance
{
  if (qword_27EC71FF0 != -1)
  {
    sub_241D770BC();
  }

  v3 = qword_280BC58A8;

  return v3;
}

- (BLFamilyCircleController)init
{
  v14.receiver = self;
  v14.super_class = BLFamilyCircleController;
  v2 = [(BLFamilyCircleController *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.iBooks.BLFamilyCircleController", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
    activeStoreAccount = [mEMORY[0x277CF32F0] activeStoreAccount];
    ams_DSID = [activeStoreAccount ams_DSID];

    v9 = [MEMORY[0x277CBEB58] set];
    cachedDSIDs = v2->_cachedDSIDs;
    v2->_cachedDSIDs = v9;

    if (ams_DSID)
    {
      [(NSMutableSet *)v2->_cachedDSIDs addObject:ams_DSID];
    }

    v11 = [MEMORY[0x277CBEB58] set];
    ignoredDSIDs = v2->_ignoredDSIDs;
    v2->_ignoredDSIDs = v11;
  }

  return v2;
}

- (void)refreshWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
  activeStoreAccount = [mEMORY[0x277CF32F0] activeStoreAccount];

  if (activeStoreAccount)
  {
    defaultBag = [MEMORY[0x277CF3300] defaultBag];
    v8 = [objc_alloc(MEMORY[0x277CEE4E0]) initWithAccount:activeStoreAccount bag:defaultBag];
    performFamilyInfoLookup = [v8 performFamilyInfoLookup];
    objc_initWeak(location, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_241D72AEC;
    v13[3] = &unk_278D18AB8;
    v13[4] = self;
    objc_copyWeak(&v15, location);
    v14 = completionCopy;
    [performFamilyInfoLookup addFinishBlock:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
LABEL_7:

    goto LABEL_8;
  }

  v10 = BLFamilyLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(location[0]) = 0;
    _os_log_impl(&dword_241D1F000, v10, OS_LOG_TYPE_DEFAULT, "Attempted to look up family circle without a logged in account", location, 2u);
  }

  ignoredDSIDs = [(BLFamilyCircleController *)self ignoredDSIDs];
  [ignoredDSIDs removeAllObjects];

  defaultBag = MEMORY[0x245CFF560](completionCopy);
  if (defaultBag)
  {
    v8 = objc_opt_new();
    performFamilyInfoLookup = objc_opt_new();
    v12 = objc_opt_new();
    (defaultBag)[2](defaultBag, v8, performFamilyInfoLookup, v12);

    goto LABEL_7;
  }

LABEL_8:
}

- (void)dq_processFamilyCircle:(id)circle completion:(id)completion
{
  v70 = *MEMORY[0x277D85DE8];
  circleCopy = circle;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
  activeStoreAccount = [mEMORY[0x277CF32F0] activeStoreAccount];
  ams_DSID = [activeStoreAccount ams_DSID];

  v11 = [MEMORY[0x277CBEB58] set];
  cachedDSIDs = [(BLFamilyCircleController *)self cachedDSIDs];
  v52 = [cachedDSIDs mutableCopy];

  if ([circleCopy count])
  {
    v49 = ams_DSID;
    v50 = completionCopy;
    v13 = [circleCopy valueForKey:@"iTunesDSID"];
    [v11 addObjectsFromArray:v13];

    v14 = [circleCopy valueForKey:@"iCloudDSID"];
    [v11 addObjectsFromArray:v14];

    v15 = [MEMORY[0x277CBEB58] set];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v51 = circleCopy;
    v16 = circleCopy;
    v17 = [v16 countByEnumeratingWithState:&v53 objects:v69 count:16];
    if (!v17)
    {
      goto LABEL_20;
    }

    v18 = v17;
    v19 = *v54;
    while (1)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v54 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v53 + 1) + 8 * i);
        if (([v21 isCurrentSignedInUser] & 1) == 0)
        {
          isSharingPurchases = [v21 isSharingPurchases];
          iCloudDSID = [v21 iCloudDSID];

          if (isSharingPurchases)
          {
            if (iCloudDSID)
            {
              ignoredDSIDs = [(BLFamilyCircleController *)self ignoredDSIDs];
              iCloudDSID2 = [v21 iCloudDSID];
              [ignoredDSIDs removeObject:iCloudDSID2];
            }

            iTunesDSID = [v21 iTunesDSID];

            if (iTunesDSID)
            {
              ignoredDSIDs2 = [(BLFamilyCircleController *)self ignoredDSIDs];
              iTunesDSID2 = [v21 iTunesDSID];
              [ignoredDSIDs2 removeObject:iTunesDSID2];

LABEL_17:
              continue;
            }
          }

          else
          {
            if (iCloudDSID)
            {
              iCloudDSID3 = [v21 iCloudDSID];
              [v15 addObject:iCloudDSID3];
            }

            iTunesDSID3 = [v21 iTunesDSID];

            if (iTunesDSID3)
            {
              ignoredDSIDs2 = [v21 iTunesDSID];
              [v15 addObject:ignoredDSIDs2];
              goto LABEL_17;
            }
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v53 objects:v69 count:16];
      if (!v18)
      {
LABEL_20:

        ignoredDSIDs3 = [(BLFamilyCircleController *)self ignoredDSIDs];
        [v15 minusSet:ignoredDSIDs3];

        ignoredDSIDs4 = [(BLFamilyCircleController *)self ignoredDSIDs];
        [ignoredDSIDs4 intersectSet:v11];

        ignoredDSIDs5 = [(BLFamilyCircleController *)self ignoredDSIDs];
        [ignoredDSIDs5 unionSet:v15];

        v34 = v52;
        [v52 unionSet:v15];
        ignoredDSIDs6 = [(BLFamilyCircleController *)self ignoredDSIDs];
        [v11 minusSet:ignoredDSIDs6];

        completionCopy = v50;
        circleCopy = v51;
        ams_DSID = v49;
        goto LABEL_24;
      }
    }
  }

  if (ams_DSID)
  {
    [v11 addObject:ams_DSID];
  }

  ignoredDSIDs7 = [(BLFamilyCircleController *)self ignoredDSIDs];
  [ignoredDSIDs7 removeAllObjects];

  v34 = v52;
LABEL_24:
  v37 = [v11 mutableCopy];
  cachedDSIDs2 = [(BLFamilyCircleController *)self cachedDSIDs];
  [v37 minusSet:cachedDSIDs2];

  [v34 minusSet:v11];
  cachedDSIDs3 = [(BLFamilyCircleController *)self cachedDSIDs];
  v40 = [cachedDSIDs3 mutableCopy];

  [v40 intersectSet:v11];
  v41 = [v11 mutableCopy];
  [(BLFamilyCircleController *)self setCachedDSIDs:v41];

  v42 = BLFamilyLog();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [v37 count];
    v44 = [v34 count];
    v45 = [v40 count];
    *buf = 138413570;
    v58 = v37;
    v59 = 2048;
    v60 = v43;
    v61 = 2112;
    v62 = v34;
    v63 = 2048;
    v64 = v44;
    v65 = 2112;
    v66 = v40;
    v67 = 2048;
    v68 = v45;
    _os_log_impl(&dword_241D1F000, v42, OS_LOG_TYPE_DEFAULT, "Processed Family:  Added: %@ (%lu) | Removed: %@ (%lu) | Unchanged: %@ (%lu)", buf, 0x3Eu);
  }

  v46 = MEMORY[0x245CFF560](completionCopy);
  v47 = v46;
  if (v46)
  {
    (*(v46 + 16))(v46, v37, v34, v40);
  }

  v48 = *MEMORY[0x277D85DE8];
}

@end