@interface BLFamilyCircleController
+ (id)sharedInstance;
- (BLFamilyCircleController)init;
- (void)dq_processFamilyCircle:(id)a3 completion:(id)a4;
- (void)refreshWithCompletion:(id)a3;
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

    v6 = [MEMORY[0x277CF32F0] sharedProvider];
    v7 = [v6 activeStoreAccount];
    v8 = [v7 ams_DSID];

    v9 = [MEMORY[0x277CBEB58] set];
    cachedDSIDs = v2->_cachedDSIDs;
    v2->_cachedDSIDs = v9;

    if (v8)
    {
      [(NSMutableSet *)v2->_cachedDSIDs addObject:v8];
    }

    v11 = [MEMORY[0x277CBEB58] set];
    ignoredDSIDs = v2->_ignoredDSIDs;
    v2->_ignoredDSIDs = v11;
  }

  return v2;
}

- (void)refreshWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF32F0] sharedProvider];
  v6 = [v5 activeStoreAccount];

  if (v6)
  {
    v7 = [MEMORY[0x277CF3300] defaultBag];
    v8 = [objc_alloc(MEMORY[0x277CEE4E0]) initWithAccount:v6 bag:v7];
    v9 = [v8 performFamilyInfoLookup];
    objc_initWeak(location, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_241D72AEC;
    v13[3] = &unk_278D18AB8;
    v13[4] = self;
    objc_copyWeak(&v15, location);
    v14 = v4;
    [v9 addFinishBlock:v13];

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

  v11 = [(BLFamilyCircleController *)self ignoredDSIDs];
  [v11 removeAllObjects];

  v7 = MEMORY[0x245CFF560](v4);
  if (v7)
  {
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v12 = objc_opt_new();
    (v7)[2](v7, v8, v9, v12);

    goto LABEL_7;
  }

LABEL_8:
}

- (void)dq_processFamilyCircle:(id)a3 completion:(id)a4
{
  v70 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v8 = [MEMORY[0x277CF32F0] sharedProvider];
  v9 = [v8 activeStoreAccount];
  v10 = [v9 ams_DSID];

  v11 = [MEMORY[0x277CBEB58] set];
  v12 = [(BLFamilyCircleController *)self cachedDSIDs];
  v52 = [v12 mutableCopy];

  if ([v6 count])
  {
    v49 = v10;
    v50 = v7;
    v13 = [v6 valueForKey:@"iTunesDSID"];
    [v11 addObjectsFromArray:v13];

    v14 = [v6 valueForKey:@"iCloudDSID"];
    [v11 addObjectsFromArray:v14];

    v15 = [MEMORY[0x277CBEB58] set];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v51 = v6;
    v16 = v6;
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
          v22 = [v21 isSharingPurchases];
          v23 = [v21 iCloudDSID];

          if (v22)
          {
            if (v23)
            {
              v24 = [(BLFamilyCircleController *)self ignoredDSIDs];
              v25 = [v21 iCloudDSID];
              [v24 removeObject:v25];
            }

            v26 = [v21 iTunesDSID];

            if (v26)
            {
              v27 = [(BLFamilyCircleController *)self ignoredDSIDs];
              v28 = [v21 iTunesDSID];
              [v27 removeObject:v28];

LABEL_17:
              continue;
            }
          }

          else
          {
            if (v23)
            {
              v29 = [v21 iCloudDSID];
              [v15 addObject:v29];
            }

            v30 = [v21 iTunesDSID];

            if (v30)
            {
              v27 = [v21 iTunesDSID];
              [v15 addObject:v27];
              goto LABEL_17;
            }
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v53 objects:v69 count:16];
      if (!v18)
      {
LABEL_20:

        v31 = [(BLFamilyCircleController *)self ignoredDSIDs];
        [v15 minusSet:v31];

        v32 = [(BLFamilyCircleController *)self ignoredDSIDs];
        [v32 intersectSet:v11];

        v33 = [(BLFamilyCircleController *)self ignoredDSIDs];
        [v33 unionSet:v15];

        v34 = v52;
        [v52 unionSet:v15];
        v35 = [(BLFamilyCircleController *)self ignoredDSIDs];
        [v11 minusSet:v35];

        v7 = v50;
        v6 = v51;
        v10 = v49;
        goto LABEL_24;
      }
    }
  }

  if (v10)
  {
    [v11 addObject:v10];
  }

  v36 = [(BLFamilyCircleController *)self ignoredDSIDs];
  [v36 removeAllObjects];

  v34 = v52;
LABEL_24:
  v37 = [v11 mutableCopy];
  v38 = [(BLFamilyCircleController *)self cachedDSIDs];
  [v37 minusSet:v38];

  [v34 minusSet:v11];
  v39 = [(BLFamilyCircleController *)self cachedDSIDs];
  v40 = [v39 mutableCopy];

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

  v46 = MEMORY[0x245CFF560](v7);
  v47 = v46;
  if (v46)
  {
    (*(v46 + 16))(v46, v37, v34, v40);
  }

  v48 = *MEMORY[0x277D85DE8];
}

@end