@interface BDSServiceProtocolInterface
+ (void)configureInterface:(id)interface;
@end

@implementation BDSServiceProtocolInterface

+ (void)configureInterface:(id)interface
{
  v112[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  interfaceCopy = interface;
  v112[0] = objc_opt_class();
  v112[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:2];
  v6 = [v3 setWithArray:v5];

  v7 = MEMORY[0x1E695DFD8];
  v111[0] = objc_opt_class();
  v111[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:2];
  v9 = [v7 setWithArray:v8];

  v10 = MEMORY[0x1E695DFD8];
  v110[0] = objc_opt_class();
  v110[1] = objc_opt_class();
  v110[2] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v110 count:3];
  v12 = [v10 setWithArray:v11];
  [interfaceCopy setClasses:v12 forSelector:sel_setAssetDetails_completion_ argumentIndex:0 ofReply:0];

  [interfaceCopy setClasses:v6 forSelector:sel_getAssetDetailChangesSince_completion_ argumentIndex:0 ofReply:1];
  v89 = v9;
  [interfaceCopy setClasses:v9 forSelector:sel_assetDetailsForAssetIDs_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v9 forSelector:sel_fetchAssetDetailsIncludingDeleted_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v9 forSelector:sel_fetchAssetDetailsForUnsyncedTastes_ argumentIndex:0 ofReply:1];
  v13 = MEMORY[0x1E695DFD8];
  v109[0] = objc_opt_class();
  v109[1] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:2];
  v88 = [v13 setWithArray:v14];

  v15 = MEMORY[0x1E695DFD8];
  v108[0] = objc_opt_class();
  v108[1] = objc_opt_class();
  v108[2] = objc_opt_class();
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v108 count:3];
  v17 = [v15 setWithArray:v16];
  [interfaceCopy setClasses:v17 forSelector:sel_setReadingNowDetails_completion_ argumentIndex:0 ofReply:0];

  v18 = v6;
  [interfaceCopy setClasses:v6 forSelector:sel_getReadingNowDetailChangesSince_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v88 forSelector:sel_readingNowDetailsForAssetIDs_completion_ argumentIndex:0 ofReply:1];
  v19 = MEMORY[0x1E695DFD8];
  v107[0] = objc_opt_class();
  v107[1] = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:2];
  v21 = [v19 setWithArray:v20];

  v22 = MEMORY[0x1E695DFD8];
  v106[0] = objc_opt_class();
  v106[1] = objc_opt_class();
  v106[2] = objc_opt_class();
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:3];
  v24 = [v22 setWithArray:v23];
  [interfaceCopy setClasses:v24 forSelector:sel_setAssetReviews_completion_ argumentIndex:0 ofReply:0];

  [interfaceCopy setClasses:v18 forSelector:sel_getAssetReviewChangesSince_completion_ argumentIndex:0 ofReply:1];
  v87 = v21;
  [interfaceCopy setClasses:v21 forSelector:sel_assetReviewsForAssetReviewIDs_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v21 forSelector:sel_fetchAssetReviewsForUserID_includingDeleted_completion_ argumentIndex:0 ofReply:1];
  v25 = MEMORY[0x1E695DFD8];
  v105[0] = objc_opt_class();
  v105[1] = objc_opt_class();
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:2];
  v86 = [v25 setWithArray:v26];

  v27 = MEMORY[0x1E695DFD8];
  v104[0] = objc_opt_class();
  v104[1] = objc_opt_class();
  v104[2] = objc_opt_class();
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:3];
  v29 = [v27 setWithArray:v28];
  [interfaceCopy setClasses:v29 forSelector:sel_addStoreItems_completion_ argumentIndex:0 ofReply:0];

  [interfaceCopy setClasses:v86 forSelector:sel_fetchStoreItemsIncludingDeleted_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v18 forSelector:sel_getStoreItemChangesSince_completion_ argumentIndex:0 ofReply:1];
  v30 = MEMORY[0x1E695DFD8];
  v103[0] = objc_opt_class();
  v103[1] = objc_opt_class();
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:2];
  v32 = [v30 setWithArray:v31];

  v33 = MEMORY[0x1E695DFD8];
  v102[0] = objc_opt_class();
  v102[1] = objc_opt_class();
  v102[2] = objc_opt_class();
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:3];
  v35 = [v33 setWithArray:v34];
  [interfaceCopy setClasses:v35 forSelector:sel_setCollectionDetails_completion_ argumentIndex:0 ofReply:0];

  [interfaceCopy setClasses:v18 forSelector:sel_getCollectionDetailChangesSince_completion_ argumentIndex:0 ofReply:1];
  v85 = v32;
  [interfaceCopy setClasses:v32 forSelector:sel_collectionDetailsForCollectionIDs_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v32 forSelector:sel_fetchCollectionDetailsIncludingDeleted_completion_ argumentIndex:0 ofReply:1];
  v36 = MEMORY[0x1E695DFD8];
  v101[0] = objc_opt_class();
  v101[1] = objc_opt_class();
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:2];
  v38 = [v36 setWithArray:v37];

  v39 = MEMORY[0x1E695DFD8];
  v100[0] = objc_opt_class();
  v100[1] = objc_opt_class();
  v100[2] = objc_opt_class();
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:3];
  v41 = [v39 setWithArray:v40];
  [interfaceCopy setClasses:v41 forSelector:sel_setCollectionMembers_completion_ argumentIndex:0 ofReply:0];

  [interfaceCopy setClasses:v18 forSelector:sel_getCollectionMemberChangesSince_completion_ argumentIndex:0 ofReply:1];
  v84 = v38;
  [interfaceCopy setClasses:v38 forSelector:sel_fetchCollectionMembersIncludingDeleted_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v38 forSelector:sel_fetchCollectionMembersInCollectionID_completion_ argumentIndex:0 ofReply:1];
  v42 = MEMORY[0x1E695DFD8];
  v99[0] = objc_opt_class();
  v99[1] = objc_opt_class();
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:2];
  v44 = [v42 setWithArray:v43];
  [interfaceCopy setClasses:v44 forSelector:sel_setBookWidgetInfo_completion_ argumentIndex:0 ofReply:0];

  v45 = MEMORY[0x1E695DFD8];
  v98[0] = objc_opt_class();
  v98[1] = objc_opt_class();
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:2];
  v47 = [v45 setWithArray:v46];
  [interfaceCopy setClasses:v47 forSelector:sel_getBookWidgetDataWithLimit_completion_ argumentIndex:0 ofReply:1];

  v48 = MEMORY[0x1E695DFD8];
  v97[0] = objc_opt_class();
  v97[1] = objc_opt_class();
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:2];
  v50 = [v48 setWithArray:v49];
  [interfaceCopy setClasses:v50 forSelector:sel_getBookWidgetInfoWithLimit_completion_ argumentIndex:0 ofReply:1];

  v51 = MEMORY[0x1E695DFD8];
  v96[0] = objc_opt_class();
  v96[1] = objc_opt_class();
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:2];
  v53 = [v51 setWithArray:v52];

  v54 = v53;
  v83 = v53;
  [interfaceCopy setClasses:v53 forSelector:sel_setUserDatum_completion_ argumentIndex:0 ofReply:0];
  v95[0] = objc_opt_class();
  v95[1] = objc_opt_class();
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:2];
  v56 = [v54 setByAddingObjectsFromArray:v55];
  [interfaceCopy setClasses:v56 forSelector:sel_setUserData_completion_ argumentIndex:0 ofReply:0];

  v57 = MEMORY[0x1E695DFD8];
  v94[0] = objc_opt_class();
  v94[1] = objc_opt_class();
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:2];
  v82 = [v57 setWithArray:v58];

  [interfaceCopy setClasses:v82 forSelector:sel_fetchUserDataIncludingDeleted_completion_ argumentIndex:0 ofReply:1];
  v59 = v18;
  v81 = v18;
  [interfaceCopy setClasses:v18 forSelector:sel_getUserDataChangesSince_completion_ argumentIndex:0 ofReply:1];
  v60 = MEMORY[0x1E695DFD8];
  v93[0] = objc_opt_class();
  v93[1] = objc_opt_class();
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
  v62 = [v60 setWithArray:v61];

  [interfaceCopy setClasses:v62 forSelector:sel_setEngagementData_completion_ argumentIndex:0 ofReply:0];
  v92[0] = objc_opt_class();
  v92[1] = objc_opt_class();
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
  v64 = [v62 setByAddingObjectsFromArray:v63];
  [interfaceCopy setClasses:v64 forSelector:sel_setEngagementDatas_completion_ argumentIndex:0 ofReply:0];

  v65 = MEMORY[0x1E695DFD8];
  v91[0] = objc_opt_class();
  v91[1] = objc_opt_class();
  v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
  v67 = [v65 setWithArray:v66];

  [interfaceCopy setClasses:v67 forSelector:sel_fetchEngagementDatasIncludingDeleted_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v59 forSelector:sel_getEngagementDataChangesSince_completion_ argumentIndex:0 ofReply:1];
  v68 = MEMORY[0x1E695DFD8];
  v69 = objc_opt_class();
  v70 = objc_opt_class();
  v71 = objc_opt_class();
  v72 = [v68 setWithObjects:{v69, v70, v71, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v72 forSelector:sel_priceTrackingSetConfiguration_completion_ argumentIndex:0 ofReply:0];

  v73 = MEMORY[0x1E695DFD8];
  v90[0] = objc_opt_class();
  v90[1] = objc_opt_class();
  v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
  v75 = [v73 setWithArray:v74];
  [interfaceCopy setClasses:v75 forSelector:sel_priceTrackingCtlAddTrackedItems_completion_ argumentIndex:0 ofReply:0];

  v76 = MEMORY[0x1E695DFD8];
  v77 = objc_opt_class();
  v78 = objc_opt_class();
  v79 = [v76 setWithObjects:{v77, v78, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v79 forSelector:sel_priceTrackingCtlOverrideReferencePrices_completion_ argumentIndex:0 ofReply:0];

  v80 = *MEMORY[0x1E69E9840];
}

@end