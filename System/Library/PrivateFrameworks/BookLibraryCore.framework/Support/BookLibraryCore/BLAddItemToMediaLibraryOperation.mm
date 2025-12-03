@interface BLAddItemToMediaLibraryOperation
- (BLAddItemToMediaLibraryOperation)initWithIPodLibraryItem:(id)item;
- (BLMLImporterItem)IPodLibraryItem;
- (NSNumber)insertedItemPersistentIdentifier;
- (id)_libraryItem;
- (void)_setInsertedItemPersistentIdentifier:(int64_t)identifier;
- (void)run;
@end

@implementation BLAddItemToMediaLibraryOperation

- (BLAddItemToMediaLibraryOperation)initWithIPodLibraryItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = BLAddItemToMediaLibraryOperation;
  v5 = [(BLOperation *)&v9 init];
  if (v5)
  {
    v6 = [itemCopy copy];
    libraryItem = v5->_libraryItem;
    v5->_libraryItem = v6;
  }

  return v5;
}

- (BLMLImporterItem)IPodLibraryItem
{
  [(BLOperation *)self lock];
  v3 = [(BLMLImporterItem *)self->_libraryItem copy];
  [(BLOperation *)self unlock];

  return v3;
}

- (NSNumber)insertedItemPersistentIdentifier
{
  [(BLOperation *)self lock];
  v3 = self->_insertedItemPersistentIdentifier;
  [(BLOperation *)self unlock];

  return v3;
}

- (void)run
{
  _libraryItem = [(BLAddItemToMediaLibraryOperation *)self _libraryItem];
  v4 = BLServiceMediaLibraryManagerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = v5;
    itemMediaPath = [_libraryItem itemMediaPath];
    *buf = 138412546;
    v18 = v5;
    v19 = 2112;
    v20 = itemMediaPath;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@: Adding media item to iPod library: %@", buf, 0x16u);
  }

  v8 = +[BLMLImporter deviceMLImporter];
  v16 = 0;
  v9 = [v8 addLibraryItem:_libraryItem error:&v16];
  v10 = v16;

  v11 = BLServiceMediaLibraryManagerLog();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v18 = v9;
      v19 = 2112;
      v20 = _libraryItem;
      v13 = "Item added. Persistent id %lld Item: %@";
      v14 = v12;
      v15 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v14, v15, v13, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v18 = _libraryItem;
    v19 = 2112;
    v20 = v10;
    v13 = "Adding failed for item %@. Error  %@";
    v14 = v12;
    v15 = OS_LOG_TYPE_ERROR;
    goto LABEL_8;
  }

  [(BLAddItemToMediaLibraryOperation *)self _setInsertedItemPersistentIdentifier:v9];
  [(BLOperation *)self setError:v10];
  [(BLOperation *)self setSuccess:v9 != 0];
}

- (id)_libraryItem
{
  [(BLOperation *)self lock];
  v3 = self->_libraryItem;
  [(BLOperation *)self unlock];

  return v3;
}

- (void)_setInsertedItemPersistentIdentifier:(int64_t)identifier
{
  [(BLOperation *)self lock];
  v5 = [[NSNumber alloc] initWithLongLong:identifier];
  insertedItemPersistentIdentifier = self->_insertedItemPersistentIdentifier;
  self->_insertedItemPersistentIdentifier = v5;

  [(BLOperation *)self unlock];
}

@end