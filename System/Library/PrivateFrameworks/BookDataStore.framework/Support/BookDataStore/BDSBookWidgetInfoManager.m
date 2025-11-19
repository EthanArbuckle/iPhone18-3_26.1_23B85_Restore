@interface BDSBookWidgetInfoManager
- (BDSBookWidgetInfoManager)initWithMOC:(id)a3 assetDetailManager:(id)a4 readingNowDetailManager:(id)a5 ubiquityManager:(id)a6;
- (id)_bookWidgetInfoFromUbiquityMetadata:(id)a3;
- (id)_infoFromReadingNowDetail:(id)a3;
- (void)bookWidgetInfosThatNeedToBeCreatedWithCompletion:(id)a3;
- (void)dataManager:(id)a3 didInsertNewRecords:(id)a4;
- (void)fetchAdamIDs:(NSArray *)a3 completionHandler:(id)a4;
- (void)fetchBookAssets:(NSArray *)a3 audiobookAssets:(NSArray *)a4 completionHandler:(id)a5;
- (void)fetchBookWidgetInfoIDsWithCloudAssetType:(id)a3 completion:(id)a4;
- (void)fetchBookWidgetInfoIDsWithCompletion:(id)a3;
- (void)getInfosWithLimit:(unint64_t)a3 completionHandler:(id)a4;
- (void)populateInfosWithStoreData:(id)a3 completionHandler:(id)a4;
- (void)removeBookWidgetInfosForAssetIDs:(id)a3 completion:(id)a4;
- (void)setBookWidgetInfo:(id)a3 completion:(id)a4;
- (void)setBookWidgetInfoOnly:(id)a3 completion:(id)a4;
- (void)ubiquityManager:(id)a3 addedItemWithAssetID:(id)a4 metadata:(id)a5;
- (void)ubiquityManager:(id)a3 removedItemWithAssetID:(id)a4;
- (void)ubiquityManager:(id)a3 updatedItemWithAssetID:(id)a4 metadata:(id)a5;
- (void)ubiquityManagerDidFinishInitialGather:(id)a3;
- (void)updateBookWidgetInfo:(id)a3;
@end

@implementation BDSBookWidgetInfoManager

- (BDSBookWidgetInfoManager)initWithMOC:(id)a3 assetDetailManager:(id)a4 readingNowDetailManager:(id)a5 ubiquityManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = BDSBookWidgetInfoManager;
  v15 = [(BDSBookWidgetInfoManager *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_context, a3);
    objc_storeStrong(&v16->_readingNowDetailManager, a5);
    objc_storeStrong(&v16->_assetDetailManager, a4);
    objc_storeStrong(&v16->_ubiquityManager, a6);
    [(BDSUbiquityManager *)v16->_ubiquityManager setObserver:v16];
  }

  return v16;
}

- (void)updateBookWidgetInfo:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006A64C;
  v5[3] = &unk_100241860;
  v6 = a3;
  v4 = v6;
  [(BDSBookWidgetInfoManager *)self bookWidgetInfosThatNeedToBeCreatedWithCompletion:v5];
}

- (void)bookWidgetInfosThatNeedToBeCreatedWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006A7C4;
  v4[3] = &unk_100241B08;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(BDSBookWidgetInfoManager *)v5 fetchBookWidgetInfoIDsWithCompletion:v4];
}

- (void)fetchBookWidgetInfoIDsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSBookWidgetInfoManager *)self context];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006AABC;
  v7[3] = &unk_10023FED8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)getInfosWithLimit:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(BDSBookWidgetInfoManager *)self context];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006AD30;
  v9[3] = &unk_100241B30;
  v10 = v6;
  v11 = a3;
  v9[4] = self;
  v8 = v6;
  [v7 performBlock:v9];
}

- (void)fetchBookWidgetInfoIDsWithCloudAssetType:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BDSBookWidgetInfoManager *)self context];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006B0E8;
  v11[3] = &unk_1002404D8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

- (void)setBookWidgetInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000DE28();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 valueForKey:@"assetID"];
    *buf = 138412290;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setBookWidgetInfoWithStoreInfo %@", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006B430;
  v11[3] = &unk_100241B58;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [(BDSBookWidgetInfoManager *)self populateInfosWithStoreData:v6 completionHandler:v11];
}

- (void)setBookWidgetInfoOnly:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000DE28();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 valueForKey:@"assetID"];
    *buf = 138412290;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setBookWidgetInfo %@", buf, 0xCu);
  }

  if ([v6 count])
  {
    v10 = [(BDSBookWidgetInfoManager *)self context];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10006B650;
    v13[3] = &unk_100240488;
    v14 = v6;
    v15 = self;
    v16 = v10;
    v17 = v7;
    v11 = v10;
    [v11 performBlock:v13];
  }

  else
  {
    v12 = objc_retainBlock(v7);
    v11 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }
}

- (void)populateInfosWithStoreData:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v30 = a4;
  v34 = +[NSMutableArray array];
  v32 = +[NSMutableArray array];
  v33 = +[NSMutableArray array];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = v5;
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
        v11 = [v10 assetID];
        if (v11)
        {
          v12 = [v10 cloudAssetType];
          v13 = v12 == 0;

          if (v13)
          {
            v16 = objc_opt_new();
            v17 = [v16 numberFromString:v11];
            v18 = v17 == 0;

            if (!v18)
            {
              [v33 addObject:v11];
            }
          }

          else
          {
            v14 = [v10 cloudAssetType];
            v15 = [v14 isEqualToString:@"StoreEbook"];

            if (v15)
            {
              [v34 addObject:v11];
              goto LABEL_19;
            }

            v19 = [v10 cloudAssetType];
            v20 = [v19 isEqualToString:@"StoreAudiobook"];

            if (v20)
            {
              [v32 addObject:v11];
              goto LABEL_19;
            }

            v21 = [v10 cloudAssetType];
            if (![v21 isEqualToString:@"SideloadedLocal"])
            {
              v22 = [v10 cloudAssetType];
              v23 = [v22 isEqualToString:@"SideloadedUbiquity"];

              if (v23)
              {
                goto LABEL_19;
              }

              v21 = sub_10000DE28();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v24 = [v10 cloudAssetType];
                v25 = [v10 assetID];
                *buf = 138412546;
                *&buf[4] = v24;
                *&buf[12] = 2112;
                *&buf[14] = v25;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Unexpected cloudAssetType: %@ for assetID: %@", buf, 0x16u);
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
  v37 = v30;
  v28 = v30;
  v29 = v6;
  dispatch_group_notify(v26, v27, block);

  _Block_object_dispose(buf, 8);
}

- (void)removeBookWidgetInfosForAssetIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(BDSBookWidgetInfoManager *)self context];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006C6E8;
    v11[3] = &unk_1002404D8;
    v12 = v6;
    v13 = v8;
    v14 = v7;
    v9 = v8;
    [v9 performBlock:v11];
  }

  else
  {
    v10 = objc_retainBlock(v7);
    v9 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

- (void)ubiquityManagerDidFinishInitialGather:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006CA44;
  v6[3] = &unk_100241BF8;
  v7 = a3;
  v8 = self;
  v9 = [[BDSOSTransaction alloc] initWithTransactionName:"BookWidgetInfoManagerUbiquityInitialGather"];
  v4 = v9;
  v5 = v7;
  [(BDSBookWidgetInfoManager *)self fetchBookWidgetInfoIDsWithCloudAssetType:@"SideloadedUbiquity" completion:v6];
}

- (void)ubiquityManager:(id)a3 addedItemWithAssetID:(id)a4 metadata:(id)a5
{
  v6 = a5;
  v7 = [[BDSOSTransaction alloc] initWithTransactionName:"BookWidgetInfoManagerUbiquityAddedItem"];
  v8 = [(BDSBookWidgetInfoManager *)self _bookWidgetInfoFromUbiquityMetadata:v6];

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

- (void)ubiquityManager:(id)a3 updatedItemWithAssetID:(id)a4 metadata:(id)a5
{
  v6 = a5;
  v7 = [[BDSOSTransaction alloc] initWithTransactionName:"BookWidgetInfoManagerUbiquityUpdatedItem"];
  v8 = [(BDSBookWidgetInfoManager *)self _bookWidgetInfoFromUbiquityMetadata:v6];

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

- (void)ubiquityManager:(id)a3 removedItemWithAssetID:(id)a4
{
  v5 = a4;
  v6 = [[BDSOSTransaction alloc] initWithTransactionName:"BookWidgetInfoManagerUbiquityRemovedItem"];
  v11 = v5;
  v7 = [NSArray arrayWithObjects:&v11 count:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006D080;
  v9[3] = &unk_10023F6F8;
  v10 = v6;
  v8 = v6;
  [(BDSBookWidgetInfoManager *)self removeBookWidgetInfosForAssetIDs:v7 completion:v9];
}

- (id)_bookWidgetInfoFromUbiquityMetadata:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKeyedSubscript:@"com.apple.iBooks.url"];
  v5 = BUDynamicCast();
  v6 = [v5 standardizedURL];
  v7 = [v6 absoluteString];

  v8 = [BDSBookWidgetInfo alloc];
  v9 = [v3 objectForKeyedSubscript:@"com.apple.iBooks.assetID"];
  v10 = [v3 objectForKeyedSubscript:@"com.apple.iBooks.title"];
  v11 = [v3 objectForKeyedSubscript:@"com.apple.iBooks.cloudAssetType"];
  v12 = [v3 objectForKeyedSubscript:@"com.apple.iBooks.libraryAssetType"];

  v13 = [(BDSBookWidgetInfo *)v8 initWithAssetID:v9 title:v10 coverURL:v7 pageProgressionDirection:0 cloudAssetType:v11 libraryContentAssetType:v12];

  return v13;
}

- (void)dataManager:(id)a3 didInsertNewRecords:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
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

- (id)_infoFromReadingNowDetail:(id)a3
{
  v3 = a3;
  v4 = [v3 assetID];

  if (v4)
  {
    v5 = [BDSBookWidgetInfo alloc];
    v6 = [v3 assetID];
    v4 = [(BDSBookWidgetInfo *)v5 initWithAssetID:v6];

    v7 = [v3 cloudAssetType];
    [(BDSBookWidgetInfo *)v4 setCloudAssetType:v7];
  }

  return v4;
}

- (void)fetchAdamIDs:(NSArray *)a3 completionHandler:(id)a4
{
  v7 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100118770(0, 0, v10, &unk_1001F15F0, v15);
}

- (void)fetchBookAssets:(NSArray *)a3 audiobookAssets:(NSArray *)a4 completionHandler:(id)a5
{
  v9 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_100118770(0, 0, v12, &unk_1001F33E0, v17);
}

@end