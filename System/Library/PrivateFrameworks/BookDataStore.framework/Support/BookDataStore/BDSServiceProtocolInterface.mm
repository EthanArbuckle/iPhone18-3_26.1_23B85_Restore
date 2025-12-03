@interface BDSServiceProtocolInterface
+ (void)configureInterface:(id)interface;
@end

@implementation BDSServiceProtocolInterface

+ (void)configureInterface:(id)interface
{
  interfaceCopy = interface;
  v88[0] = objc_opt_class();
  v88[1] = objc_opt_class();
  v4 = [NSArray arrayWithObjects:v88 count:2];
  v5 = [NSSet setWithArray:v4];

  v87[0] = objc_opt_class();
  v87[1] = objc_opt_class();
  v6 = [NSArray arrayWithObjects:v87 count:2];
  v7 = [NSSet setWithArray:v6];

  v86[0] = objc_opt_class();
  v86[1] = objc_opt_class();
  v86[2] = objc_opt_class();
  v8 = [NSArray arrayWithObjects:v86 count:3];
  v9 = [NSSet setWithArray:v8];
  [interfaceCopy setClasses:v9 forSelector:"setAssetDetails:completion:" argumentIndex:0 ofReply:0];

  [interfaceCopy setClasses:v5 forSelector:"getAssetDetailChangesSince:completion:" argumentIndex:0 ofReply:1];
  v65 = v7;
  [interfaceCopy setClasses:v7 forSelector:"assetDetailsForAssetIDs:completion:" argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v7 forSelector:"fetchAssetDetailsIncludingDeleted:completion:" argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v7 forSelector:"fetchAssetDetailsForUnsyncedTastes:" argumentIndex:0 ofReply:1];
  v85[0] = objc_opt_class();
  v85[1] = objc_opt_class();
  v10 = [NSArray arrayWithObjects:v85 count:2];
  v64 = [NSSet setWithArray:v10];

  v84[0] = objc_opt_class();
  v84[1] = objc_opt_class();
  v84[2] = objc_opt_class();
  v11 = [NSArray arrayWithObjects:v84 count:3];
  v12 = [NSSet setWithArray:v11];
  [interfaceCopy setClasses:v12 forSelector:"setReadingNowDetails:completion:" argumentIndex:0 ofReply:0];

  v13 = v5;
  [interfaceCopy setClasses:v5 forSelector:"getReadingNowDetailChangesSince:completion:" argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v64 forSelector:"readingNowDetailsForAssetIDs:completion:" argumentIndex:0 ofReply:1];
  v83[0] = objc_opt_class();
  v83[1] = objc_opt_class();
  v14 = [NSArray arrayWithObjects:v83 count:2];
  v15 = [NSSet setWithArray:v14];

  v82[0] = objc_opt_class();
  v82[1] = objc_opt_class();
  v82[2] = objc_opt_class();
  v16 = [NSArray arrayWithObjects:v82 count:3];
  v17 = [NSSet setWithArray:v16];
  [interfaceCopy setClasses:v17 forSelector:"setAssetReviews:completion:" argumentIndex:0 ofReply:0];

  [interfaceCopy setClasses:v13 forSelector:"getAssetReviewChangesSince:completion:" argumentIndex:0 ofReply:1];
  v63 = v15;
  [interfaceCopy setClasses:v15 forSelector:"assetReviewsForAssetReviewIDs:completion:" argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v15 forSelector:"fetchAssetReviewsForUserID:includingDeleted:completion:" argumentIndex:0 ofReply:1];
  v81[0] = objc_opt_class();
  v81[1] = objc_opt_class();
  v18 = [NSArray arrayWithObjects:v81 count:2];
  v62 = [NSSet setWithArray:v18];

  v80[0] = objc_opt_class();
  v80[1] = objc_opt_class();
  v80[2] = objc_opt_class();
  v19 = [NSArray arrayWithObjects:v80 count:3];
  v20 = [NSSet setWithArray:v19];
  [interfaceCopy setClasses:v20 forSelector:"addStoreItems:completion:" argumentIndex:0 ofReply:0];

  [interfaceCopy setClasses:v62 forSelector:"fetchStoreItemsIncludingDeleted:completion:" argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v13 forSelector:"getStoreItemChangesSince:completion:" argumentIndex:0 ofReply:1];
  v79[0] = objc_opt_class();
  v79[1] = objc_opt_class();
  v21 = [NSArray arrayWithObjects:v79 count:2];
  v22 = [NSSet setWithArray:v21];

  v78[0] = objc_opt_class();
  v78[1] = objc_opt_class();
  v78[2] = objc_opt_class();
  v23 = [NSArray arrayWithObjects:v78 count:3];
  v24 = [NSSet setWithArray:v23];
  [interfaceCopy setClasses:v24 forSelector:"setCollectionDetails:completion:" argumentIndex:0 ofReply:0];

  [interfaceCopy setClasses:v13 forSelector:"getCollectionDetailChangesSince:completion:" argumentIndex:0 ofReply:1];
  v61 = v22;
  [interfaceCopy setClasses:v22 forSelector:"collectionDetailsForCollectionIDs:completion:" argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v22 forSelector:"fetchCollectionDetailsIncludingDeleted:completion:" argumentIndex:0 ofReply:1];
  v77[0] = objc_opt_class();
  v77[1] = objc_opt_class();
  v25 = [NSArray arrayWithObjects:v77 count:2];
  v26 = [NSSet setWithArray:v25];

  v76[0] = objc_opt_class();
  v76[1] = objc_opt_class();
  v76[2] = objc_opt_class();
  v27 = [NSArray arrayWithObjects:v76 count:3];
  v28 = [NSSet setWithArray:v27];
  [interfaceCopy setClasses:v28 forSelector:"setCollectionMembers:completion:" argumentIndex:0 ofReply:0];

  [interfaceCopy setClasses:v13 forSelector:"getCollectionMemberChangesSince:completion:" argumentIndex:0 ofReply:1];
  v60 = v26;
  [interfaceCopy setClasses:v26 forSelector:"fetchCollectionMembersIncludingDeleted:completion:" argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v26 forSelector:"fetchCollectionMembersInCollectionID:completion:" argumentIndex:0 ofReply:1];
  v75[0] = objc_opt_class();
  v75[1] = objc_opt_class();
  v29 = [NSArray arrayWithObjects:v75 count:2];
  v30 = [NSSet setWithArray:v29];
  [interfaceCopy setClasses:v30 forSelector:"setBookWidgetInfo:completion:" argumentIndex:0 ofReply:0];

  v74[0] = objc_opt_class();
  v74[1] = objc_opt_class();
  v31 = [NSArray arrayWithObjects:v74 count:2];
  v32 = [NSSet setWithArray:v31];
  [interfaceCopy setClasses:v32 forSelector:"getBookWidgetDataWithLimit:completion:" argumentIndex:0 ofReply:1];

  v73[0] = objc_opt_class();
  v73[1] = objc_opt_class();
  v33 = [NSArray arrayWithObjects:v73 count:2];
  v34 = [NSSet setWithArray:v33];
  [interfaceCopy setClasses:v34 forSelector:"getBookWidgetInfoWithLimit:completion:" argumentIndex:0 ofReply:1];

  v72[0] = objc_opt_class();
  v72[1] = objc_opt_class();
  v35 = [NSArray arrayWithObjects:v72 count:2];
  v36 = [NSSet setWithArray:v35];

  v37 = v36;
  v59 = v36;
  [interfaceCopy setClasses:v36 forSelector:"setUserDatum:completion:" argumentIndex:0 ofReply:0];
  v71[0] = objc_opt_class();
  v71[1] = objc_opt_class();
  v38 = [NSArray arrayWithObjects:v71 count:2];
  v39 = [v37 setByAddingObjectsFromArray:v38];
  [interfaceCopy setClasses:v39 forSelector:"setUserData:completion:" argumentIndex:0 ofReply:0];

  v70[0] = objc_opt_class();
  v70[1] = objc_opt_class();
  v40 = [NSArray arrayWithObjects:v70 count:2];
  v58 = [NSSet setWithArray:v40];

  [interfaceCopy setClasses:v58 forSelector:"fetchUserDataIncludingDeleted:completion:" argumentIndex:0 ofReply:1];
  v41 = v13;
  v57 = v13;
  [interfaceCopy setClasses:v13 forSelector:"getUserDataChangesSince:completion:" argumentIndex:0 ofReply:1];
  v69[0] = objc_opt_class();
  v69[1] = objc_opt_class();
  v42 = [NSArray arrayWithObjects:v69 count:2];
  v43 = [NSSet setWithArray:v42];

  [interfaceCopy setClasses:v43 forSelector:"setEngagementData:completion:" argumentIndex:0 ofReply:0];
  v68[0] = objc_opt_class();
  v68[1] = objc_opt_class();
  v44 = [NSArray arrayWithObjects:v68 count:2];
  v45 = [v43 setByAddingObjectsFromArray:v44];
  [interfaceCopy setClasses:v45 forSelector:"setEngagementDatas:completion:" argumentIndex:0 ofReply:0];

  v67[0] = objc_opt_class();
  v67[1] = objc_opt_class();
  v46 = [NSArray arrayWithObjects:v67 count:2];
  v47 = [NSSet setWithArray:v46];

  [interfaceCopy setClasses:v47 forSelector:"fetchEngagementDatasIncludingDeleted:completion:" argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v41 forSelector:"getEngagementDataChangesSince:completion:" argumentIndex:0 ofReply:1];
  v48 = objc_opt_class();
  v49 = objc_opt_class();
  v50 = objc_opt_class();
  v51 = [NSSet setWithObjects:v48, v49, v50, objc_opt_class(), 0];
  [interfaceCopy setClasses:v51 forSelector:"priceTrackingSetConfiguration:completion:" argumentIndex:0 ofReply:0];

  v66[0] = objc_opt_class();
  v66[1] = objc_opt_class();
  v52 = [NSArray arrayWithObjects:v66 count:2];
  v53 = [NSSet setWithArray:v52];
  [interfaceCopy setClasses:v53 forSelector:"priceTrackingCtlAddTrackedItems:completion:" argumentIndex:0 ofReply:0];

  v54 = objc_opt_class();
  v55 = objc_opt_class();
  v56 = [NSSet setWithObjects:v54, v55, objc_opt_class(), 0];
  [interfaceCopy setClasses:v56 forSelector:"priceTrackingCtlOverrideReferencePrices:completion:" argumentIndex:0 ofReply:0];
}

@end