@interface NPDOutstandingPassDeletionStore
- (BOOL)isDeletionPendingForUniqueID:(id)d;
- (NPDOutstandingPassDeletionStore)initWithDomainAccessor:(id)accessor;
- (void)_performCleanup;
- (void)_saveOutstandingRecords;
- (void)clearStore;
- (void)dealloc;
- (void)noteDeletionPendingForUniqueID:(id)d;
- (void)noteDeletionSentForUniqueID:(id)d messageID:(id)iD;
- (void)noteDeliveryForMessageID:(id)d;
- (void)notePassDatabaseReconciled;
@end

@implementation NPDOutstandingPassDeletionStore

- (NPDOutstandingPassDeletionStore)initWithDomainAccessor:(id)accessor
{
  accessorCopy = accessor;
  v19.receiver = self;
  v19.super_class = NPDOutstandingPassDeletionStore;
  v5 = [(NPDOutstandingPassDeletionStore *)&v19 init];
  if (v5)
  {
    v6 = [accessorCopy dictionaryForKey:@"OutstandingDeletions"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = +[NSDictionary dictionary];

      v6 = v7;
    }

    v8 = [v6 mutableCopy];
    outstandingMessageRecords = v5->_outstandingMessageRecords;
    v5->_outstandingMessageRecords = v8;

    v10 = [accessorCopy arrayForKey:@"PendingDeletions"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = +[NSArray array];

      v10 = v11;
    }

    v12 = [v10 mutableCopy];
    pendingDeletionUniqueIDs = v5->_pendingDeletionUniqueIDs;
    v5->_pendingDeletionUniqueIDs = v12;

    v14 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100006200;
    handler[3] = &unk_100071000;
    v15 = v5;
    v18 = v15;
    dispatch_source_set_event_handler(v14, handler);
    dispatch_source_set_timer(v14, 0, 0x4E94914F0000uLL, 0);
    dispatch_resume(v14);
    [(NPDOutstandingPassDeletionStore *)v15 setCleanupTimer:v14];
  }

  return v5;
}

- (void)dealloc
{
  dispatch_source_cancel(self->_cleanupTimer);
  v3.receiver = self;
  v3.super_class = NPDOutstandingPassDeletionStore;
  [(NPDOutstandingPassDeletionStore *)&v3 dealloc];
}

- (void)noteDeletionPendingForUniqueID:(id)d
{
  dCopy = d;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Pass deletion store: noting deletion pending for %@", &v9, 0xCu);
    }
  }

  pendingDeletionUniqueIDs = [(NPDOutstandingPassDeletionStore *)self pendingDeletionUniqueIDs];
  [pendingDeletionUniqueIDs addObject:dCopy];

  [(NPDOutstandingPassDeletionStore *)self _saveOutstandingRecords];
}

- (void)noteDeletionSentForUniqueID:(id)d messageID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = dCopy;
      v18 = 2112;
      v19 = iDCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Pass deletion store: noting deletion sent for unique ID %@ with message ID %@", buf, 0x16u);
    }
  }

  [NSDate timeIntervalSinceReferenceDate:@"messageID"];
  v11 = [NSNumber numberWithDouble:?];
  v15[2] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:&v14 count:3];

  outstandingMessageRecords = [(NPDOutstandingPassDeletionStore *)self outstandingMessageRecords];
  [outstandingMessageRecords setObject:v12 forKey:iDCopy];

  [(NPDOutstandingPassDeletionStore *)self _saveOutstandingRecords];
}

- (void)noteDeliveryForMessageID:(id)d
{
  dCopy = d;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Pass deletion store: noting delivery for message ID %@", &v9, 0xCu);
    }
  }

  outstandingMessageRecords = [(NPDOutstandingPassDeletionStore *)self outstandingMessageRecords];
  [outstandingMessageRecords removeObjectForKey:dCopy];

  [(NPDOutstandingPassDeletionStore *)self _saveOutstandingRecords];
}

- (void)notePassDatabaseReconciled
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notice: Pass deletion store: noting pass database reconciled", v7, 2u);
    }
  }

  pendingDeletionUniqueIDs = [(NPDOutstandingPassDeletionStore *)self pendingDeletionUniqueIDs];
  [pendingDeletionUniqueIDs removeAllObjects];

  [(NPDOutstandingPassDeletionStore *)self _saveOutstandingRecords];
}

- (BOOL)isDeletionPendingForUniqueID:(id)d
{
  dCopy = d;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  outstandingMessageRecords = [(NPDOutstandingPassDeletionStore *)self outstandingMessageRecords];
  allValues = [outstandingMessageRecords allValues];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1000068B4;
  v19 = &unk_100071028;
  v7 = dCopy;
  v20 = v7;
  v21 = &v22;
  [allValues enumerateObjectsUsingBlock:&v16];

  v8 = *(v23 + 24);
  if ((v8 & 1) == 0)
  {
    v9 = [(NPDOutstandingPassDeletionStore *)self pendingDeletionUniqueIDs:v16];
    v10 = [v9 containsObject:v7];

    if (v10)
    {
      v11 = pk_Payment_log();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

      if (v12)
      {
        v13 = pk_Payment_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          pendingDeletionUniqueIDs = [(NPDOutstandingPassDeletionStore *)self pendingDeletionUniqueIDs];
          *buf = 138412546;
          v27 = v7;
          v28 = 2112;
          v29 = pendingDeletionUniqueIDs;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: Pass deletion store: deletion for %@ is not pending; Aall unique IDs pending deletion: %@", buf, 0x16u);
        }
      }

      v8 = 1;
      *(v23 + 24) = 1;
    }

    else
    {
      v8 = *(v23 + 24);
    }
  }

  _Block_object_dispose(&v22, 8);
  return v8 & 1;
}

- (void)clearStore
{
  v3 = +[NSMutableDictionary dictionary];
  [(NPDOutstandingPassDeletionStore *)self setOutstandingMessageRecords:v3];

  [(NPDOutstandingPassDeletionStore *)self _saveOutstandingRecords];
}

- (void)_saveOutstandingRecords
{
  domainAccessor = [(NPDOutstandingPassDeletionStore *)self domainAccessor];
  outstandingMessageRecords = [(NPDOutstandingPassDeletionStore *)self outstandingMessageRecords];
  [domainAccessor setObject:outstandingMessageRecords forKey:@"OutstandingDeletions"];

  pendingDeletionUniqueIDs = [(NPDOutstandingPassDeletionStore *)self pendingDeletionUniqueIDs];
  [domainAccessor setObject:pendingDeletionUniqueIDs forKey:@"PendingDeletions"];
}

- (void)_performCleanup
{
  v3 = +[NSMutableArray array];
  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  outstandingMessageRecords = [(NPDOutstandingPassDeletionStore *)self outstandingMessageRecords];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100006C90;
  v15 = &unk_100071050;
  v17 = v5;
  v7 = v3;
  v16 = v7;
  [outstandingMessageRecords enumerateKeysAndObjectsUsingBlock:&v12];

  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Pass deletion store: cleaning up %@", buf, 0xCu);
    }
  }

  v11 = [(NPDOutstandingPassDeletionStore *)self outstandingMessageRecords:v12];
  [v11 removeObjectsForKeys:v7];

  [(NPDOutstandingPassDeletionStore *)self _saveOutstandingRecords];
}

@end