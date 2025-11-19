@interface SGDCloudKitSyncPersistedState
@end

@implementation SGDCloudKitSyncPersistedState

void __44___SGDCloudKitSyncPersistedState_properties__block_invoke()
{
  v49[9] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v0 = MEMORY[0x277D42648];
  v1 = objc_opt_class();
  v47 = NSStringFromClass(v1);
  v46 = NSStringFromSelector(sel_salt);
  v45 = [v0 tupleWithFirst:v47 second:v46];
  v49[0] = v45;
  v2 = MEMORY[0x277D42648];
  v3 = objc_opt_class();
  v44 = NSStringFromClass(v3);
  v43 = NSStringFromSelector(sel_saltAtomicReferenceId);
  v42 = [v2 tupleWithFirst:v44 second:v43];
  v49[1] = v42;
  v4 = MEMORY[0x277D42648];
  v5 = objc_opt_class();
  v41 = NSStringFromClass(v5);
  v40 = NSStringFromSelector(sel_saltUsesManatee);
  v39 = [v4 tupleWithFirst:v41 second:v40];
  v49[2] = v39;
  v6 = MEMORY[0x277D42648];
  v7 = objc_opt_class();
  v38 = NSStringFromClass(v7);
  v37 = NSStringFromSelector(sel_syncToken);
  v36 = [v6 tupleWithFirst:v38 second:v37];
  v49[3] = v36;
  v8 = MEMORY[0x277D42648];
  v9 = objc_opt_class();
  v35 = NSStringFromClass(v9);
  v34 = NSStringFromSelector(sel_hasSubscription);
  v33 = [v8 tupleWithFirst:v35 second:v34];
  v49[4] = v33;
  v10 = MEMORY[0x277D42648];
  v11 = objc_opt_class();
  v32 = NSStringFromClass(v11);
  v31 = NSStringFromSelector(sel_eventsWereRemovedFromEventKit);
  v12 = [v10 tupleWithFirst:v32 second:v31];
  v49[5] = v12;
  v13 = MEMORY[0x277D42648];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = NSStringFromSelector(sel_primaryICloudCalendarAccount);
  v17 = [v13 tupleWithFirst:v15 second:v16];
  v49[6] = v17;
  v18 = MEMORY[0x277D42648];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = NSStringFromSelector(sel_hasDeferredSync);
  v22 = [v18 tupleWithFirst:v20 second:v21];
  v49[7] = v22;
  v23 = MEMORY[0x277D42648];
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  v26 = NSStringFromSelector(sel_hasDeferredProcessStateChanges);
  v27 = [v23 tupleWithFirst:v25 second:v26];
  v49[8] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:9];
  v29 = properties__pasExprOnceResult;
  properties__pasExprOnceResult = v28;

  objc_autoreleasePoolPop(context);
  v30 = *MEMORY[0x277D85DE8];
}

@end