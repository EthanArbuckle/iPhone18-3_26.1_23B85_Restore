@interface BDSBookWidgetInfoManager
- (BDSBookWidgetInfoManager)initWithMOC:(id)c assetDetailManager:(id)manager readingNowDetailManager:(id)detailManager ubiquityManager:(id)ubiquityManager;
- (id)_bookWidgetInfoFromUbiquityMetadata:(id)metadata;
- (id)_infoFromReadingNowDetail:(id)detail;
- (void)bookWidgetInfosThatNeedToBeCreatedWithCompletion:(id)completion;
- (void)dataManager:(id)manager didInsertNewRecords:(id)records;
- (void)fetchAdamIDs:(NSArray *)ds completionHandler:(id)handler;
- (void)fetchBookAssets:(NSArray *)assets audiobookAssets:(NSArray *)audiobookAssets completionHandler:(id)handler;
- (void)fetchBookWidgetInfoIDsWithCloudAssetType:(id)type completion:(id)completion;
- (void)fetchBookWidgetInfoIDsWithCompletion:(id)completion;
- (void)getInfosWithLimit:(unint64_t)limit completionHandler:(id)handler;
- (void)populateInfosWithStoreData:(id)data completionHandler:(id)handler;
- (void)removeBookWidgetInfosForAssetIDs:(id)ds completion:(id)completion;
- (void)setBookWidgetInfo:(id)info completion:(id)completion;
- (void)setBookWidgetInfoOnly:(id)only completion:(id)completion;
- (void)ubiquityManager:(id)manager addedItemWithAssetID:(id)d metadata:(id)metadata;
- (void)ubiquityManager:(id)manager removedItemWithAssetID:(id)d;
- (void)ubiquityManager:(id)manager updatedItemWithAssetID:(id)d metadata:(id)metadata;
- (void)ubiquityManagerDidFinishInitialGather:(id)gather;
- (void)updateBookWidgetInfo:(id)info;
@end

@implementation BDSBookWidgetInfoManager

- (BDSBookWidgetInfoManager)initWithMOC:(id)c assetDetailManager:(id)manager readingNowDetailManager:(id)detailManager ubiquityManager:(id)ubiquityManager
{
  cCopy = c;
  managerCopy = manager;
  detailManagerCopy = detailManager;
  ubiquityManagerCopy = ubiquityManager;
  v18.receiver = self;
  v18.super_class = BDSBookWidgetInfoManager;
  v15 = [(BDSBookWidgetInfoManager *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_context, c);
    objc_storeStrong(&v16->_readingNowDetailManager, detailManager);
    objc_storeStrong(&v16->_assetDetailManager, manager);
    objc_storeStrong(&v16->_ubiquityManager, ubiquityManager);
    [(BDSUbiquityManager *)v16->_ubiquityManager setObserver:v16];
  }

  return v16;
}

- (void)updateBookWidgetInfo:(id)info
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006A64C;
  v5[3] = &unk_100241860;
  infoCopy = info;
  v4 = infoCopy;
  [(BDSBookWidgetInfoManager *)self bookWidgetInfosThatNeedToBeCreatedWithCompletion:v5];
}

- (void)bookWidgetInfosThatNeedToBeCreatedWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006A7C4;
  v4[3] = &unk_100241B08;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(BDSBookWidgetInfoManager *)selfCopy fetchBookWidgetInfoIDsWithCompletion:v4];
}

- (void)fetchBookWidgetInfoIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  context = [(BDSBookWidgetInfoManager *)self context];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006AABC;
  v7[3] = &unk_10023FED8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [context performBlock:v7];
}

- (void)getInfosWithLimit:(unint64_t)limit completionHandler:(id)handler
{
  handlerCopy = handler;
  context = [(BDSBookWidgetInfoManager *)self context];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006AD30;
  v9[3] = &unk_100241B30;
  v10 = handlerCopy;
  limitCopy = limit;
  v9[4] = self;
  v8 = handlerCopy;
  [context performBlock:v9];
}

- (void)fetchBookWidgetInfoIDsWithCloudAssetType:(id)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  context = [(BDSBookWidgetInfoManager *)self context];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006B0E8;
  v11[3] = &unk_1002404D8;
  v12 = typeCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = typeCopy;
  [context performBlock:v11];
}

- (void)setBookWidgetInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v8 = sub_10000DE28();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [infoCopy valueForKey:@"assetID"];
    *buf = 138412290;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setBookWidgetInfoWithStoreInfo %@", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006B430;
  v11[3] = &unk_100241B58;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [(BDSBookWidgetInfoManager *)self populateInfosWithStoreData:infoCopy completionHandler:v11];
}

- (void)setBookWidgetInfoOnly:(id)only completion:(id)completion
{
  onlyCopy = only;
  completionCopy = completion;
  v8 = sub_10000DE28();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [onlyCopy valueForKey:@"assetID"];
    *buf = 138412290;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setBookWidgetInfo %@", buf, 0xCu);
  }

  if ([onlyCopy count])
  {
    context = [(BDSBookWidgetInfoManager *)self context];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10006B650;
    v13[3] = &unk_100240488;
    v14 = onlyCopy;
    selfCopy = self;
    v16 = context;
    v17 = completionCopy;
    v11 = context;
    [v11 performBlock:v13];
  }

  else
  {
    v12 = objc_retainBlock(completionCopy);
    v11 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }
}

- (void)populateInfosWithStoreData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v34 = +[NSMutableArray array];
  v32 = +[NSMutableArray array];
  v33 = +[NSMutableArray array];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = dataCopy;
  v7 = [v6 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v7)
  {
    v8 = *v49;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v48 + 1) + 8 * i);
        assetID = [v10 assetID];
        if (assetID)
        {
          cloudAssetType = [v10 cloudAssetType];
          v13 = cloudAssetType == 0;

          if (v13)
          {
            v16 = objc_opt_new();
            v17 = [v16 numberFromString:assetID];
            v18 = v17 == 0;

            if (!v18)
            {
              [v33 addObject:assetID];
            }
          }

          else
          {
            cloudAssetType2 = [v10 cloudAssetType];
            v15 = [cloudAssetType2 isEqualToString:@"StoreEbook"];

            if (v15)
            {
              [v34 addObject:assetID];
              goto LABEL_19;
            }

            cloudAssetType3 = [v10 cloudAssetType];
            v20 = [cloudAssetType3 isEqualToString:@"StoreAudiobook"];

            if (v20)
            {
              [v32 addObject:assetID];
              goto LABEL_19;
            }

            cloudAssetType4 = [v10 cloudAssetType];
            if (![cloudAssetType4 isEqualToString:@"SideloadedLocal"])
            {
              cloudAssetType5 = [v10 cloudAssetType];
              v23 = [cloudAssetType5 isEqualToString:@"SideloadedUbiquity"];

              if (v23)
              {
                goto LABEL_19;
              }

              cloudAssetType4 = sub_10000DE28();
              if (os_log_type_enabled(cloudAssetType4, OS_LOG_TYPE_DEFAULT))
              {
                cloudAssetType6 = [v10 cloudAssetType];
                assetID2 = [v10 assetID];
                *buf = 138412546;
                *&buf[4] = cloudAssetType6;
                *&buf[12] = 2112;
                *&buf[14] = assetID2;
                _os_log_impl(&_mh_execute_header, cloudAssetType4, OS_LOG_TYPE_DEFAULT, "Unexpected cloudAssetType: %@ for assetID: %@", buf, 0x16u);
              }
            }
          }
        }

LABEL_19:
      }

      v7 = [v6 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v7);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v53 = sub_10006C248;
  v54 = sub_10006C258;
  v55 = +[NSMutableDictionary dictionary];
  v26 = dispatch_group_create();
  if ([v34 count] || objc_msgSend(v32, "count"))
  {
    dispatch_group_enter(v26);
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10006C260;
    v43[3] = &unk_100241B80;
    v47 = buf;
    v44 = v32;
    v45 = v34;
    v46 = v26;
    [(BDSBookWidgetInfoManager *)self fetchBookAssets:v45 audiobookAssets:v44 completionHandler:v43];
  }

  if ([v33 count])
  {
    dispatch_group_enter(v26);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10006C2EC;
    v39[3] = &unk_100241BA8;
    v42 = buf;
    v40 = v33;
    v41 = v26;
    [(BDSBookWidgetInfoManager *)self fetchAdamIDs:v40 completionHandler:v39];
  }

  v27 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006C378;
  block[3] = &unk_100241BD0;
  v38 = buf;
  v36 = v6;
  v37 = handlerCopy;
  v28 = handlerCopy;
  v29 = v6;
  dispatch_group_notify(v26, v27, block);

  _Block_object_dispose(buf, 8);
}

- (void)removeBookWidgetInfosForAssetIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([dsCopy count])
  {
    context = [(BDSBookWidgetInfoManager *)self context];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006C6E8;
    v11[3] = &unk_1002404D8;
    v12 = dsCopy;
    v13 = context;
    v14 = completionCopy;
    v9 = context;
    [v9 performBlock:v11];
  }

  else
  {
    v10 = objc_retainBlock(completionCopy);
    v9 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

- (void)ubiquityManagerDidFinishInitialGather:(id)gather
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006CA44;
  v6[3] = &unk_100241BF8;
  gatherCopy = gather;
  selfCopy = self;
  v9 = [[BDSOSTransaction alloc] initWithTransactionName:"BookWidgetInfoManagerUbiquityInitialGather"];
  v4 = v9;
  v5 = gatherCopy;
  [(BDSBookWidgetInfoManager *)self fetchBookWidgetInfoIDsWithCloudAssetType:@"SideloadedUbiquity" completion:v6];
}

- (void)ubiquityManager:(id)manager addedItemWithAssetID:(id)d metadata:(id)metadata
{
  metadataCopy = metadata;
  v7 = [[BDSOSTransaction alloc] initWithTransactionName:"BookWidgetInfoManagerUbiquityAddedItem"];
  v8 = [(BDSBookWidgetInfoManager *)self _bookWidgetInfoFromUbiquityMetadata:metadataCopy];

  v13 = v8;
  v9 = [NSArray arrayWithObjects:&v13 count:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006CE28;
  v11[3] = &unk_10023F6F8;
  v12 = v7;
  v10 = v7;
  [(BDSBookWidgetInfoManager *)self setBookWidgetInfoOnly:v9 completion:v11];
}

- (void)ubiquityManager:(id)manager updatedItemWithAssetID:(id)d metadata:(id)metadata
{
  metadataCopy = metadata;
  v7 = [[BDSOSTransaction alloc] initWithTransactionName:"BookWidgetInfoManagerUbiquityUpdatedItem"];
  v8 = [(BDSBookWidgetInfoManager *)self _bookWidgetInfoFromUbiquityMetadata:metadataCopy];

  v13 = v8;
  v9 = [NSArray arrayWithObjects:&v13 count:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006CF60;
  v11[3] = &unk_10023F6F8;
  v12 = v7;
  v10 = v7;
  [(BDSBookWidgetInfoManager *)self setBookWidgetInfoOnly:v9 completion:v11];
}

- (void)ubiquityManager:(id)manager removedItemWithAssetID:(id)d
{
  dCopy = d;
  v6 = [[BDSOSTransaction alloc] initWithTransactionName:"BookWidgetInfoManagerUbiquityRemovedItem"];
  v11 = dCopy;
  v7 = [NSArray arrayWithObjects:&v11 count:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006D080;
  v9[3] = &unk_10023F6F8;
  v10 = v6;
  v8 = v6;
  [(BDSBookWidgetInfoManager *)self removeBookWidgetInfosForAssetIDs:v7 completion:v9];
}

- (id)_bookWidgetInfoFromUbiquityMetadata:(id)metadata
{
  metadataCopy = metadata;
  objc_opt_class();
  v4 = [metadataCopy objectForKeyedSubscript:@"com.apple.iBooks.url"];
  v5 = BUDynamicCast();
  standardizedURL = [v5 standardizedURL];
  absoluteString = [standardizedURL absoluteString];

  v8 = [BDSBookWidgetInfo alloc];
  v9 = [metadataCopy objectForKeyedSubscript:@"com.apple.iBooks.assetID"];
  v10 = [metadataCopy objectForKeyedSubscript:@"com.apple.iBooks.title"];
  v11 = [metadataCopy objectForKeyedSubscript:@"com.apple.iBooks.cloudAssetType"];
  v12 = [metadataCopy objectForKeyedSubscript:@"com.apple.iBooks.libraryAssetType"];

  v13 = [(BDSBookWidgetInfo *)v8 initWithAssetID:v9 title:v10 coverURL:absoluteString pageProgressionDirection:0 cloudAssetType:v11 libraryContentAssetType:v12];

  return v13;
}

- (void)dataManager:(id)manager didInsertNewRecords:(id)records
{
  recordsCopy = records;
  v6 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = recordsCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 conformsToProtocol:{&OBJC_PROTOCOL___BCReadingNowDetail, v18}])
        {
          v13 = v12;
          v14 = [(BDSBookWidgetInfoManager *)self _infoFromReadingNowDetail:v13];
          if (v14)
          {
            [v6 addObject:v14];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v9);
  }

  v15 = [v6 count];
  v16 = sub_10000DE28();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      *buf = 138412290;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "didInsertNewRecords %@", buf, 0xCu);
    }

    [(BDSBookWidgetInfoManager *)self setBookWidgetInfo:v6 completion:0];
  }

  else
  {
    if (v17)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "didInsertNewRecords NOTHING TO DO", buf, 2u);
    }
  }
}

- (id)_infoFromReadingNowDetail:(id)detail
{
  detailCopy = detail;
  assetID = [detailCopy assetID];

  if (assetID)
  {
    v5 = [BDSBookWidgetInfo alloc];
    assetID2 = [detailCopy assetID];
    assetID = [(BDSBookWidgetInfo *)v5 initWithAssetID:assetID2];

    cloudAssetType = [detailCopy cloudAssetType];
    [(BDSBookWidgetInfo *)assetID setCloudAssetType:cloudAssetType];
  }

  return assetID;
}

- (void)fetchAdamIDs:(NSArray *)ds completionHandler:(id)handler
{
  v7 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = ds;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1001C6348();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001F15E0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001F15E8;
  v15[5] = v14;
  dsCopy = ds;
  selfCopy = self;
  sub_100118770(0, 0, v10, &unk_1001F15F0, v15);
}

- (void)fetchBookAssets:(NSArray *)assets audiobookAssets:(NSArray *)audiobookAssets completionHandler:(id)handler
{
  v9 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = assets;
  v14[3] = audiobookAssets;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1001C6348();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001F15C8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001F0DB0;
  v17[5] = v16;
  assetsCopy = assets;
  audiobookAssetsCopy = audiobookAssets;
  selfCopy = self;
  sub_100118770(0, 0, v12, &unk_1001F33E0, v17);
}

@end