@interface BDSNBPinningManager
+ (BDSNBPinningManager)sharedManager;
- (BDSNBPinningManager)init;
- (BOOL)_isExplicitMaterialAllowed;
- (BOOL)_shouldPinJaliscoItem:(id)item allowsExplicit:(BOOL)explicit;
- (BOOL)_shouldPinMediaItem:(id)item allowsExplicit:(BOOL)explicit;
- (id)_jaliscoAudiobookWithAssetId:(id)id;
- (id)updateWantToRead:(BOOL)read updateReadingNow:(BOOL)now updateManuallyPinned:(BOOL)pinned jaliscoUpdateSuccessful:(BOOL)successful withCompletion:(id)completion;
- (void)_prepareMediaItemForPinning:(id)pinning parentProgress:(id)progress completion:(id)completion;
- (void)_prepareMediaItemForPinningIfNeeded:(id)needed parentProgress:(id)progress completion:(id)completion;
- (void)audiobookStoreEnabledWithCompletion:(id)completion;
- (void)fetchMostRecentAudiobookWithCompletion:(id)completion;
- (void)updateBitrateForItemWithAdamID:(id)d completion:(id)completion;
@end

@implementation BDSNBPinningManager

+ (BDSNBPinningManager)sharedManager
{
  if (qword_100274A88 != -1)
  {
    sub_1001C159C();
  }

  v3 = qword_100274A90;

  return v3;
}

- (BDSNBPinningManager)init
{
  v11.receiver = self;
  v11.super_class = BDSNBPinningManager;
  v2 = [(BDSNBPinningManager *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("BDSNBPinningManager notify queue", v3);
    notifyQueue = v2->_notifyQueue;
    v2->_notifyQueue = v4;

    v6 = [BLHLSAudiobookFetcher alloc];
    v7 = +[BDSAppBundleIdentifier bdsAppBundleIdentifier];
    v8 = [v6 initCanUseCellularData:1 powerRequired:0 bundleID:v7];
    audiobookFetcher = v2->_audiobookFetcher;
    v2->_audiobookFetcher = v8;
  }

  return v2;
}

- (void)_prepareMediaItemForPinningIfNeeded:(id)needed parentProgress:(id)progress completion:(id)completion
{
  neededCopy = needed;
  progressCopy = progress;
  completionCopy = completion;
  if (neededCopy && ![BLMediaItemUtils bitrateForItem:neededCopy])
  {
    [(BDSNBPinningManager *)self _prepareMediaItemForPinning:neededCopy parentProgress:progressCopy completion:completionCopy];
  }

  else
  {
    if (progressCopy)
    {
      v10 = [NSProgress progressWithTotalUnitCount:1];
      [progressCopy addChild:v10 withPendingUnitCount:1];
      [v10 setCompletedUnitCount:1];
    }

    v11 = objc_retainBlock(completionCopy);
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0);
    }
  }
}

- (void)_prepareMediaItemForPinning:(id)pinning parentProgress:(id)progress completion:(id)completion
{
  pinningCopy = pinning;
  progressCopy = progress;
  completionCopy = completion;
  v11 = sub_10000DC90();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = pinningCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "We want to update the bitrate so fetching master playlist for mediaItem: %@", buf, 0xCu);
  }

  v12 = [pinningCopy valueForProperty:MPMediaItemPropertyHLSPlaylistURL];
  if ([v12 length])
  {
    v13 = [NSURL URLWithString:v12];
    audiobookFetcher = [(BDSNBPinningManager *)self audiobookFetcher];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10005652C;
    v22 = &unk_1002414E0;
    v23 = pinningCopy;
    v24 = completionCopy;
    v15 = [audiobookFetcher setupDownloadTaskForFetchingMasterPlaylistAndSelectingStreamFromMasterPlaylistURL:v13 completion:&v19];

    progress = [v15 progress];
    [progressCopy addChild:progress withPendingUnitCount:1];

    [v15 resume];
    v17 = v23;
LABEL_9:

    goto LABEL_10;
  }

  v18 = sub_10000DC90();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_1001C15B0();
  }

  v13 = objc_retainBlock(completionCopy);
  if (v13)
  {
    v17 = [NSError errorWithDomain:@"BDSErrorDomain" code:1003 userInfo:0];
    (v13)[2](v13, v17);
    goto LABEL_9;
  }

LABEL_10:
}

- (BOOL)_shouldPinMediaItem:(id)item allowsExplicit:(BOOL)explicit
{
  itemCopy = item;
  v6 = itemCopy;
  v7 = itemCopy && (explicit || ([itemCopy isExplicitItem] & 1) == 0);

  return v7;
}

- (BOOL)_shouldPinJaliscoItem:(id)item allowsExplicit:(BOOL)explicit
{
  bOOLValue = item == 0;
  if (item && !explicit)
  {
    isExplicit = [item isExplicit];
    bOOLValue = [isExplicit BOOLValue];
  }

  return bOOLValue ^ 1;
}

- (BOOL)_isExplicitMaterialAllowed
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:MCFeatureBookstoreEroticaAllowed];

  return v3 != 2;
}

- (id)_jaliscoAudiobookWithAssetId:(id)id
{
  idCopy = id;
  if ([idCopy length])
  {
    v4 = [NSSet setWithObject:idCopy];
    v5 = +[BLJaliscoDAAPClient sharedClient];
    v6 = [v5 fetchItemsForStoreIDs:v4];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          isAudiobook = [v11 isAudiobook];
          bOOLValue = [isAudiobook BOOLValue];

          if (bOOLValue)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)updateWantToRead:(BOOL)read updateReadingNow:(BOOL)now updateManuallyPinned:(BOOL)pinned jaliscoUpdateSuccessful:(BOOL)successful withCompletion:(id)completion
{
  successfulCopy = successful;
  pinnedCopy = pinned;
  LODWORD(v8) = now;
  readCopy = read;
  completionCopy = completion;
  v11 = sub_10000DC90();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *v109 = readCopy;
    *&v109[4] = 1024;
    *&v109[6] = v8;
    LOWORD(v110) = 1024;
    *(&v110 + 2) = pinnedCopy;
    HIWORD(v110) = 1024;
    v111 = successfulCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating wantToRead:%d, readingNow:%d, manuallyPinned:%d jaliscoUpdateSuccessful:%d", buf, 0x1Au);
  }

  v12 = [NSProgress progressWithTotalUnitCount:100];
  _isExplicitMaterialAllowed = [(BDSNBPinningManager *)self _isExplicitMaterialAllowed];
  sharedManager = [sub_100077BF0() sharedManager];
  group = dispatch_group_create();
  v59 = +[NSMutableOrderedSet orderedSet];
  v60 = +[NSMutableOrderedSet orderedSet];
  v58 = [NSProgress progressWithTotalUnitCount:3];
  [v12 addChild:? withPendingUnitCount:?];
  v14 = [NSProgress progressWithTotalUnitCount:3];
  [v12 addChild:v14 withPendingUnitCount:33];
  v57 = readCopy;
  if (readCopy)
  {
    dispatch_group_enter(group);
    v15 = +[BCCloudCollectionsManager sharedManager];
    collectionMemberManagerInstance = [v15 collectionMemberManagerInstance];
    v100[0] = _NSConcreteStackBlock;
    v100[1] = 3221225472;
    v100[2] = sub_1000573D4;
    v100[3] = &unk_100241508;
    v101 = v12;
    v102 = group;
    v103 = v60;
    selfCopy = self;
    v105 = v58;
    v98[0] = _NSConcreteStackBlock;
    v98[1] = 3221225472;
    v98[2] = sub_10005766C;
    v98[3] = &unk_100241530;
    v99 = v102;
    [collectionMemberManagerInstance fetchCollectionMembersInCollectionID:@"Want_To_Read_Collection_ID" maximumResultCount:3 filter:v100 completion:v98];
  }

  if (v8)
  {
    dispatch_group_enter(group);
    v17 = +[BCCloudAssetManager sharedManager];
    readingNowDetailManagerInstance = [v17 readingNowDetailManagerInstance];
    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = sub_100057674;
    v92[3] = &unk_100241558;
    v93 = v12;
    v94 = group;
    v95 = v59;
    selfCopy2 = self;
    v97 = v14;
    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_10005793C;
    v90[3] = &unk_100241530;
    v91 = v94;
    [readingNowDetailManagerInstance trackedRreadingNowDetailsInDescendingOrderMaximumResultCount:3 filter:v92 completion:v90];
  }

  v56 = v14;
  v61 = v12;
  v66 = +[NSMutableSet set];
  if (pinnedCopy)
  {
    v55 = v8;
    v54 = completionCopy;
    v63 = +[NSMutableSet set];
    v19 = sub_10000DC90();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      pinnedAudiobooks = [sharedManager pinnedAudiobooks];
      *buf = 138412290;
      *v109 = pinnedAudiobooks;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Checking for pinned audiobooks that need their bitrate set. Pinned books: %@", buf, 0xCu);
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    obj = [sharedManager pinnedAudiobooks];
    v21 = [obj countByEnumeratingWithState:&v86 objects:v107 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v87;
      v65 = !successfulCopy;
      do
      {
        v24 = 0;
        do
        {
          if (*v87 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v86 + 1) + 8 * v24);
          v26 = sub_10000DC90();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *v109 = v25;
            _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Checking %@", buf, 0xCu);
          }

          stringValue = [v25 stringValue];
          v28 = [BDSMediaLibraryUtils representativeDAAPMediaItemsWithAssetId:stringValue];

          if (v28)
          {
            v29 = sub_10000DC90();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              v36 = [BLMediaItemUtils bitrateForItem:v28];
              *buf = 138412546;
              *v109 = v28;
              *&v109[8] = 2048;
              v110 = v36;
              _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Checking item %@ with bitrate %lu", buf, 0x16u);
            }

            if ([(BDSNBPinningManager *)self _shouldPinMediaItem:v28 allowsExplicit:_isExplicitMaterialAllowed])
            {
              if ([BLMediaItemUtils bitrateForItem:v28])
              {
                goto LABEL_30;
              }

              v30 = sub_10000DC90();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v109 = v25;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Found pinned item that did not have a bitrate set. Will update for assetID: %@", buf, 0xCu);
              }

              v31 = v63;
              v32 = v28;
            }

            else
            {
              v31 = v66;
              v32 = v25;
            }

            [v31 addObject:v32];
          }

          else
          {
            [v25 stringValue];
            v34 = v33 = _isExplicitMaterialAllowed;
            v35 = [(BDSNBPinningManager *)self _jaliscoAudiobookWithAssetId:v34];

            _isExplicitMaterialAllowed = v33;
            if ((([(BDSNBPinningManager *)self _shouldPinJaliscoItem:v35 allowsExplicit:v33]| v65) & 1) == 0)
            {
              [v66 addObject:v25];
            }
          }

LABEL_30:

          v24 = v24 + 1;
        }

        while (v22 != v24);
        v22 = [obj countByEnumeratingWithState:&v86 objects:v107 count:16];
      }

      while (v22);
    }

    v37 = +[NSProgress progressWithTotalUnitCount:](NSProgress, "progressWithTotalUnitCount:", [v63 count]);
    [v12 addChild:v37 withPendingUnitCount:34];
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v8 = v63;
    v38 = [v8 countByEnumeratingWithState:&v82 objects:v106 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v83;
      do
      {
        for (i = 0; i != v39; i = i + 1)
        {
          if (*v83 != v40)
          {
            objc_enumerationMutation(v8);
          }

          v42 = *(*(&v82 + 1) + 8 * i);
          dispatch_group_enter(group);
          v80[0] = _NSConcreteStackBlock;
          v80[1] = 3221225472;
          v80[2] = sub_100057944;
          v80[3] = &unk_100241580;
          v80[4] = v42;
          v81 = group;
          [(BDSNBPinningManager *)self _prepareMediaItemForPinning:v42 parentProgress:v37 completion:v80];
        }

        v39 = [v8 countByEnumeratingWithState:&v82 objects:v106 count:16];
      }

      while (v39);
    }

    LOBYTE(v8) = v55;
    LOBYTE(readCopy) = v57;
    completionCopy = v54;
  }

  notifyQueue = [(BDSNBPinningManager *)self notifyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057A20;
  block[3] = &unk_1002415A8;
  v71 = v60;
  v72 = v58;
  v73 = v59;
  v74 = v56;
  v78 = readCopy;
  v79 = v8;
  v75 = sharedManager;
  v76 = v66;
  v77 = completionCopy;
  v44 = completionCopy;
  v45 = v66;
  v46 = sharedManager;
  v47 = v56;
  v48 = v59;
  v49 = v58;
  v50 = v60;
  dispatch_group_notify(group, notifyQueue, block);

  v51 = v77;
  v52 = v61;

  return v61;
}

- (void)fetchMostRecentAudiobookWithCompletion:(id)completion
{
  completionCopy = completion;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_100057F18;
  v11[4] = sub_100057F28;
  v12 = 0;
  v4 = +[BCCloudAssetManager sharedManager];
  readingNowDetailManagerInstance = [v4 readingNowDetailManagerInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100057F30;
  v10[3] = &unk_1002415D0;
  v10[4] = v11;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100058084;
  v7[3] = &unk_1002415F8;
  v9 = v11;
  v6 = completionCopy;
  v8 = v6;
  [readingNowDetailManagerInstance trackedRreadingNowDetailsInDescendingOrderMaximumResultCount:1 filter:v10 completion:v7];

  _Block_object_dispose(v11, 8);
}

- (void)updateBitrateForItemWithAdamID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = sub_10000DC90();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "updating bitrate for item with adamID %@", buf, 0xCu);
  }

  stringValue = [dCopy stringValue];
  v10 = [BDSMediaLibraryUtils representativeDAAPMediaItemsWithAssetId:stringValue];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000582E4;
  v13[3] = &unk_100240438;
  v14 = dCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = dCopy;
  [(BDSNBPinningManager *)self _prepareMediaItemForPinning:v10 parentProgress:0 completion:v13];
}

- (void)audiobookStoreEnabledWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100058480;
  v4[3] = &unk_100241620;
  completionCopy = completion;
  v3 = completionCopy;
  [BUBag audiobookStoreIsAvailable:v4];
}

@end