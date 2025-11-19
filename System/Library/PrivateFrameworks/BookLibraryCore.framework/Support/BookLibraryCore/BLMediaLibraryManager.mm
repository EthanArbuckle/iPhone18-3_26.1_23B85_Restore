@interface BLMediaLibraryManager
- (BLMediaLibraryManager)init;
- (int64_t)addLibraryItem:(id)a3 error:(id *)a4;
- (void)addLibraryItemWithoutWaiting:(id)a3;
- (void)removeMediaItemsForStoreID:(int64_t)a3;
- (void)removeMediaItemsForStoreIDs:(id)a3;
@end

@implementation BLMediaLibraryManager

- (BLMediaLibraryManager)init
{
  v6.receiver = self;
  v6.super_class = BLMediaLibraryManager;
  v2 = [(BLMediaLibraryManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(BLOperationQueue);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    [(BLOperationQueue *)v2->_operationQueue setName:@"MediaLibraryManager Queue"];
    [(BLOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    [(BLOperationQueue *)v2->_operationQueue setQualityOfService:17];
  }

  return v2;
}

- (int64_t)addLibraryItem:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = BLServiceMediaLibraryManagerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding (and waiting for finish) library item %@", buf, 0xCu);
  }

  v8 = [[BLAddItemToMediaLibraryOperation alloc] initWithIPodLibraryItem:v6];
  v9 = [(BLMediaLibraryManager *)self operationQueue];
  v15 = v8;
  v10 = [NSArray arrayWithObjects:&v15 count:1];
  [v9 addOperations:v10 waitUntilFinished:1];

  v11 = [(BLOperation *)v8 error];

  if (v11)
  {
    if (a4)
    {
      [(BLOperation *)v8 error];
      *a4 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = [(BLAddItemToMediaLibraryOperation *)v8 insertedItemPersistentIdentifier];
    v12 = [v13 bl_itemIdentifierValue];
  }

  return v12;
}

- (void)addLibraryItemWithoutWaiting:(id)a3
{
  v4 = a3;
  v5 = BLServiceMediaLibraryManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Enqueueing operation to add library item %@", &v8, 0xCu);
  }

  v6 = [[BLAddItemToMediaLibraryOperation alloc] initWithIPodLibraryItem:v4];
  v7 = [(BLMediaLibraryManager *)self operationQueue];
  [v7 addOperation:v6];
}

- (void)removeMediaItemsForStoreID:(int64_t)a3
{
  v4 = [NSNumber numberWithLongLong:a3];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [(BLMediaLibraryManager *)self removeMediaItemsForStoreIDs:v5];
}

- (void)removeMediaItemsForStoreIDs:(id)a3
{
  v4 = a3;
  v5 = BLServiceMediaLibraryManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Enqueueing operation to remove meida library entires for storeIDs %@", &v8, 0xCu);
  }

  v6 = [[BLRemoveItemsFromMediaLibraryOperation alloc] initWithStoreIDsToRemove:v4];
  v7 = [(BLMediaLibraryManager *)self operationQueue];
  [v7 addOperation:v6];
}

@end