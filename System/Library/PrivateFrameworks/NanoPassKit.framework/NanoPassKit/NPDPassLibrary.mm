@interface NPDPassLibrary
- (NPDPassLibrary)initWithConnection:(id)a3;
- (NPDPassLibraryDelegate)delegate;
- (void)broadcastCatalogChanged:(id)a3 withNewPasses:(id)a4 states:(id)a5;
- (void)broadcastPassAdded:(id)a3;
- (void)broadcastPassRemoved:(id)a3;
- (void)broadcastPassUpdated:(id)a3;
- (void)serviceResumed;
- (void)serviceSuspended;
@end

@implementation NPDPassLibrary

- (NPDPassLibrary)initWithConnection:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NPDPassLibrary;
  v5 = [(NPDPassLibrary *)&v17 init];
  v6 = v5;
  if (v5)
  {
    [(NPDPassLibrary *)v5 setConnection:v4];
    v7 = [[NPKPassLibraryFilter alloc] initWithConnection:v4];
    [(NPDPassLibrary *)v6 setFilter:v7];

    v8 = [v4 valueForEntitlement:@"application-identifier"];
    v9 = [v8 copy];
    remoteProcessApplicationIdentifier = v6->_remoteProcessApplicationIdentifier;
    v6->_remoteProcessApplicationIdentifier = v9;

    v6->_remoteProcessIdentifier = [v4 processIdentifier];
    v11 = PKPassLibraryInterface();
    v12 = [(NPDPassLibrary *)v6 connection];
    [v12 setRemoteObjectInterface:v11];

    v13 = PDPassLibraryInterface();
    v14 = [(NPDPassLibrary *)v6 connection];
    [v14 setExportedInterface:v13];

    [(NPDPassLibrary *)v6 setServiceActive:1];
    v15 = dispatch_queue_create("com.apple.NanoPassKit.NPDPassLibrary", 0);
    [(NPDPassLibrary *)v6 setQueue:v15];
  }

  return v6;
}

- (void)serviceResumed
{
  v3 = [(NPDPassLibrary *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003943C;
  block[3] = &unk_100071000;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)serviceSuspended
{
  v3 = [(NPDPassLibrary *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000394D0;
  block[3] = &unk_100071000;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)broadcastPassAdded:(id)a3
{
  v4 = a3;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Pass added: %@", buf, 0xCu);
    }
  }

  v8 = [(NPDPassLibrary *)self filter];
  v9 = [v8 allowAccessToPass:v4];

  if (v9)
  {
    v10 = [(NPDPassLibrary *)self queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100039650;
    v11[3] = &unk_100070E90;
    v11[4] = self;
    v12 = v4;
    dispatch_async(v10, v11);
  }
}

- (void)broadcastPassUpdated:(id)a3
{
  v4 = a3;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Pass updated: %@", buf, 0xCu);
    }
  }

  v8 = [(NPDPassLibrary *)self filter];
  v9 = [v8 allowAccessToPass:v4];

  if (v9)
  {
    v10 = [(NPDPassLibrary *)self queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000399A4;
    v11[3] = &unk_100070E90;
    v11[4] = self;
    v12 = v4;
    dispatch_async(v10, v11);
  }
}

- (void)broadcastPassRemoved:(id)a3
{
  v4 = a3;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Pass removed: %@", buf, 0xCu);
    }
  }

  v8 = [(NPDPassLibrary *)self filter];
  v9 = [v8 allowAccessToPass:v4];

  if (v9)
  {
    v10 = [(NPDPassLibrary *)self queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100039CF8;
    v11[3] = &unk_100070E90;
    v11[4] = self;
    v12 = v4;
    dispatch_async(v10, v11);
  }
}

- (void)broadcastCatalogChanged:(id)a3 withNewPasses:(id)a4 states:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pk_General_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_General_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: Catalog changed: %@", buf, 0xCu);
    }
  }

  v14 = [(NPDPassLibrary *)self filter];
  v15 = [v14 allowlist];
  v16 = [v15 passesAllAccess];

  if (v16)
  {
    v17 = [(NPDPassLibrary *)self queue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10003A0A8;
    v18[3] = &unk_100071400;
    v18[4] = self;
    v19 = v8;
    v20 = v9;
    v21 = v10;
    dispatch_async(v17, v18);
  }
}

- (NPDPassLibraryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end