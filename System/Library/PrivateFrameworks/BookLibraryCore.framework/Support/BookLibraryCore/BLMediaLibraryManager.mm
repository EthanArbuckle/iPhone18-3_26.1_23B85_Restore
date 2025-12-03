@interface BLMediaLibraryManager
- (BLMediaLibraryManager)init;
- (int64_t)addLibraryItem:(id)item error:(id *)error;
- (void)addLibraryItemWithoutWaiting:(id)waiting;
- (void)removeMediaItemsForStoreID:(int64_t)d;
- (void)removeMediaItemsForStoreIDs:(id)ds;
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

- (int64_t)addLibraryItem:(id)item error:(id *)error
{
  itemCopy = item;
  v7 = BLServiceMediaLibraryManagerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = itemCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding (and waiting for finish) library item %@", buf, 0xCu);
  }

  v8 = [[BLAddItemToMediaLibraryOperation alloc] initWithIPodLibraryItem:itemCopy];
  operationQueue = [(BLMediaLibraryManager *)self operationQueue];
  v15 = v8;
  v10 = [NSArray arrayWithObjects:&v15 count:1];
  [operationQueue addOperations:v10 waitUntilFinished:1];

  error = [(BLOperation *)v8 error];

  if (error)
  {
    if (error)
    {
      [(BLOperation *)v8 error];
      *error = bl_itemIdentifierValue = 0;
    }

    else
    {
      bl_itemIdentifierValue = 0;
    }
  }

  else
  {
    insertedItemPersistentIdentifier = [(BLAddItemToMediaLibraryOperation *)v8 insertedItemPersistentIdentifier];
    bl_itemIdentifierValue = [insertedItemPersistentIdentifier bl_itemIdentifierValue];
  }

  return bl_itemIdentifierValue;
}

- (void)addLibraryItemWithoutWaiting:(id)waiting
{
  waitingCopy = waiting;
  v5 = BLServiceMediaLibraryManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = waitingCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Enqueueing operation to add library item %@", &v8, 0xCu);
  }

  v6 = [[BLAddItemToMediaLibraryOperation alloc] initWithIPodLibraryItem:waitingCopy];
  operationQueue = [(BLMediaLibraryManager *)self operationQueue];
  [operationQueue addOperation:v6];
}

- (void)removeMediaItemsForStoreID:(int64_t)d
{
  v4 = [NSNumber numberWithLongLong:d];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [(BLMediaLibraryManager *)self removeMediaItemsForStoreIDs:v5];
}

- (void)removeMediaItemsForStoreIDs:(id)ds
{
  dsCopy = ds;
  v5 = BLServiceMediaLibraryManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = dsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Enqueueing operation to remove meida library entires for storeIDs %@", &v8, 0xCu);
  }

  v6 = [[BLRemoveItemsFromMediaLibraryOperation alloc] initWithStoreIDsToRemove:dsCopy];
  operationQueue = [(BLMediaLibraryManager *)self operationQueue];
  [operationQueue addOperation:v6];
}

@end