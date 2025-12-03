@interface NPDPassLibrary
- (NPDPassLibrary)initWithConnection:(id)connection;
- (NPDPassLibraryDelegate)delegate;
- (void)broadcastCatalogChanged:(id)changed withNewPasses:(id)passes states:(id)states;
- (void)broadcastPassAdded:(id)added;
- (void)broadcastPassRemoved:(id)removed;
- (void)broadcastPassUpdated:(id)updated;
- (void)serviceResumed;
- (void)serviceSuspended;
@end

@implementation NPDPassLibrary

- (NPDPassLibrary)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v17.receiver = self;
  v17.super_class = NPDPassLibrary;
  v5 = [(NPDPassLibrary *)&v17 init];
  v6 = v5;
  if (v5)
  {
    [(NPDPassLibrary *)v5 setConnection:connectionCopy];
    v7 = [[NPKPassLibraryFilter alloc] initWithConnection:connectionCopy];
    [(NPDPassLibrary *)v6 setFilter:v7];

    v8 = [connectionCopy valueForEntitlement:@"application-identifier"];
    v9 = [v8 copy];
    remoteProcessApplicationIdentifier = v6->_remoteProcessApplicationIdentifier;
    v6->_remoteProcessApplicationIdentifier = v9;

    v6->_remoteProcessIdentifier = [connectionCopy processIdentifier];
    v11 = PKPassLibraryInterface();
    connection = [(NPDPassLibrary *)v6 connection];
    [connection setRemoteObjectInterface:v11];

    v13 = PDPassLibraryInterface();
    connection2 = [(NPDPassLibrary *)v6 connection];
    [connection2 setExportedInterface:v13];

    [(NPDPassLibrary *)v6 setServiceActive:1];
    v15 = dispatch_queue_create("com.apple.NanoPassKit.NPDPassLibrary", 0);
    [(NPDPassLibrary *)v6 setQueue:v15];
  }

  return v6;
}

- (void)serviceResumed
{
  queue = [(NPDPassLibrary *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003943C;
  block[3] = &unk_100071000;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)serviceSuspended
{
  queue = [(NPDPassLibrary *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000394D0;
  block[3] = &unk_100071000;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)broadcastPassAdded:(id)added
{
  addedCopy = added;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = addedCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Pass added: %@", buf, 0xCu);
    }
  }

  filter = [(NPDPassLibrary *)self filter];
  v9 = [filter allowAccessToPass:addedCopy];

  if (v9)
  {
    queue = [(NPDPassLibrary *)self queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100039650;
    v11[3] = &unk_100070E90;
    v11[4] = self;
    v12 = addedCopy;
    dispatch_async(queue, v11);
  }
}

- (void)broadcastPassUpdated:(id)updated
{
  updatedCopy = updated;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = updatedCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Pass updated: %@", buf, 0xCu);
    }
  }

  filter = [(NPDPassLibrary *)self filter];
  v9 = [filter allowAccessToPass:updatedCopy];

  if (v9)
  {
    queue = [(NPDPassLibrary *)self queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000399A4;
    v11[3] = &unk_100070E90;
    v11[4] = self;
    v12 = updatedCopy;
    dispatch_async(queue, v11);
  }
}

- (void)broadcastPassRemoved:(id)removed
{
  removedCopy = removed;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = removedCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Pass removed: %@", buf, 0xCu);
    }
  }

  filter = [(NPDPassLibrary *)self filter];
  v9 = [filter allowAccessToPass:removedCopy];

  if (v9)
  {
    queue = [(NPDPassLibrary *)self queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100039CF8;
    v11[3] = &unk_100070E90;
    v11[4] = self;
    v12 = removedCopy;
    dispatch_async(queue, v11);
  }
}

- (void)broadcastCatalogChanged:(id)changed withNewPasses:(id)passes states:(id)states
{
  changedCopy = changed;
  passesCopy = passes;
  statesCopy = states;
  v11 = pk_General_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_General_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = changedCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: Catalog changed: %@", buf, 0xCu);
    }
  }

  filter = [(NPDPassLibrary *)self filter];
  allowlist = [filter allowlist];
  passesAllAccess = [allowlist passesAllAccess];

  if (passesAllAccess)
  {
    queue = [(NPDPassLibrary *)self queue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10003A0A8;
    v18[3] = &unk_100071400;
    v18[4] = self;
    v19 = changedCopy;
    v20 = passesCopy;
    v21 = statesCopy;
    dispatch_async(queue, v18);
  }
}

- (NPDPassLibraryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end