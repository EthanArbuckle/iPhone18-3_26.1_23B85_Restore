@interface BLRemoveItemsFromMediaLibraryOperation
- (BLRemoveItemsFromMediaLibraryOperation)initWithStoreIDsToRemove:(id)remove;
- (void)run;
@end

@implementation BLRemoveItemsFromMediaLibraryOperation

- (BLRemoveItemsFromMediaLibraryOperation)initWithStoreIDsToRemove:(id)remove
{
  removeCopy = remove;
  v9.receiver = self;
  v9.super_class = BLRemoveItemsFromMediaLibraryOperation;
  v5 = [(BLOperation *)&v9 init];
  if (v5)
  {
    v6 = [removeCopy copy];
    storeIDsToRemove = v5->_storeIDsToRemove;
    v5->_storeIDsToRemove = v6;
  }

  return v5;
}

- (void)run
{
  v3 = +[ML3MusicLibrary autoupdatingSharedLibrary];
  v4 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyMediaType equalToValue:&off_1001299F8];
  v5 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyPurchaseHistoryID equalToInteger:0];
  v6 = ML3TrackPropertyStoreItemID;
  storeIDsToRemove = [(BLRemoveItemsFromMediaLibraryOperation *)self storeIDsToRemove];
  v8 = [ML3ContainsPredicate predicateWithProperty:v6 values:storeIDsToRemove];

  v25[0] = v4;
  v25[1] = v8;
  v25[2] = v5;
  v9 = [NSArray arrayWithObjects:v25 count:3];
  v10 = [ML3AllCompoundPredicate predicateMatchingPredicates:v9];

  v11 = [ML3Track queryWithLibrary:v3 predicate:v10];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10009D9B8;
  v21[3] = &unk_10011E310;
  v12 = objc_alloc_init(NSMutableArray);
  v22 = v12;
  [v11 enumeratePersistentIDsUsingBlock:v21];
  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10009DA18;
  v18[3] = &unk_10011E338;
  v14 = v12;
  v19 = v14;
  v15 = v13;
  v20 = v15;
  [v3 removeTracksWithPersistentIDs:v14 fromSource:0 withCompletionHandler:v18];
  v16 = dispatch_time(0, 300000000000);
  if (dispatch_group_wait(v15, v16))
  {
    v17 = BLServiceMediaLibraryManagerLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Timed out while waiting for media library to remove entries with ids %{public}@", buf, 0xCu);
    }
  }
}

@end