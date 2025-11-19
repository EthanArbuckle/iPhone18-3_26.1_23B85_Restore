@interface MFDAutosave
+ (id)endpointInfo;
+ (id)log;
+ (id)sharedInstance;
- (MFDAutosave)init;
- (void)_autosavedMessageWithIdentifier:(id)a3 localOnly:(BOOL)a4 completion:(id)a5;
- (void)autosaveMessageData:(id)a3 replacingIdentifier:(id)a4 completion:(id)a5;
- (void)autosaveSessionForIdentifier:(id)a3 completion:(id)a4;
- (void)autosavedMessageDataWithIdentifier:(id)a3 completion:(id)a4;
- (void)getIdleAutosaves:(id)a3;
- (void)hasAutosavedMessageWithIdentifier:(id)a3 completion:(id)a4;
- (void)removeAutosavedMessageWithIdentifier:(id)a3;
@end

@implementation MFDAutosave

+ (id)sharedInstance
{
  if (qword_1001857D0 != -1)
  {
    sub_1000D3C00();
  }

  v3 = qword_1001857C8;

  return v3;
}

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100052584;
  block[3] = &unk_1001562E8;
  block[4] = a1;
  if (qword_1001857C0 != -1)
  {
    dispatch_once(&qword_1001857C0, block);
  }

  v2 = qword_1001857B8;

  return v2;
}

- (MFDAutosave)init
{
  v8.receiver = self;
  v8.super_class = MFDAutosave;
  v2 = [(MFDAutosave *)&v8 init];
  if (v2)
  {
    v3 = [EFScheduler serialDispatchQueueSchedulerWithName:@"MFDAutosaveQueue"];
    autosaveScheduler = v2->_autosaveScheduler;
    v2->_autosaveScheduler = v3;

    v5 = +[NSHashTable weakObjectsHashTable];
    activeAutosaveSessions = v2->_activeAutosaveSessions;
    v2->_activeAutosaveSessions = v5;
  }

  return v2;
}

+ (id)endpointInfo
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSDAutosaveProtocol];
  v3 = [MFXPCEndpointInfo endpointInfoWithExportedInterface:v2 remoteObjectInterface:0 shouldAcceptClient:0 exportedObjectForClient:&stru_100157F88];
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  [v2 setClasses:v5 forSelector:"getIdleAutosaves:" argumentIndex:0 ofReply:1];

  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSDAutosaveSessionProtocol];
  [v2 setInterface:v6 forSelector:"autosaveSessionForIdentifier:completion:" argumentIndex:0 ofReply:1];

  return v3;
}

- (void)hasAutosavedMessageWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100052988;
    v10[3] = &unk_100157FD0;
    v11 = v7;
    [(MFDAutosave *)self _autosavedMessageWithIdentifier:v6 localOnly:0 completion:v10];
  }

  else
  {
    v9 = +[MFDAutosave log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3C14(v9);
    }

    v8[2](v8, 0);
  }
}

- (void)removeAutosavedMessageWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100052B98;
    v6[3] = &unk_100157FF8;
    v7 = v4;
    [(MFDAutosave *)self _autosavedMessageWithIdentifier:v7 localOnly:1 completion:v6];
  }
}

- (void)_autosavedMessageWithIdentifier:(id)a3 localOnly:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(MFDAutosave *)self autosaveScheduler];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100052EA0;
  v13[3] = &unk_100158020;
  v11 = v8;
  v14 = v11;
  v16 = a4;
  v12 = v9;
  v15 = v12;
  [v10 performBlock:v13];
}

- (void)autosavedMessageDataWithIdentifier:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000532FC;
  v8[3] = &unk_100158048;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(MFDAutosave *)self _autosavedMessageWithIdentifier:v7 localOnly:0 completion:v8];
}

- (void)autosaveMessageData:(id)a3 replacingIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v24 = a4;
  v9 = a5;
  v10 = [MFMailMessage messageWithRFC822Data:v8];
  v11 = [v10 mf_documentReference];
  v12 = [v11 absoluteString];
  v13 = v12;
  if (v10 && v12)
  {
    v14 = [NSString stringWithFormat:@"MFDAutosave transaction: documentID=%@", v12];
    v15 = [EFProcessTransaction transactionWithDescription:v14];

    v16 = [NSString stringWithFormat:@"(Autosave documentID=%@)", v13];
    v17 = +[MFDAutosave log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Enqueuing autosave. %@", buf, 0xCu);
    }

    v18 = [(MFDAutosave *)self autosaveScheduler];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10005385C;
    v25[3] = &unk_100158070;
    v19 = v16;
    v26 = v19;
    v27 = v11;
    v28 = v24;
    v29 = v13;
    v30 = v10;
    v32 = v9;
    v20 = v15;
    v31 = v20;
    [v18 performBlock:v25];
  }

  else
  {
    if (v10)
    {
      v20 = [NSError errorWithDomain:MSAutosaveErrorDomain code:1 userInfo:0];
      v21 = +[MFDAutosave log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [v20 ef_publicDescription];
        sub_1000D3DC8(v22, buf, v21);
      }
    }

    else
    {
      v20 = [NSError errorWithDomain:MSAutosaveErrorDomain code:3 userInfo:0];
      v21 = +[MFDAutosave log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = [v20 ef_publicDescription];
        sub_1000D3D7C(v23, buf, v21);
      }
    }

    (*(v9 + 2))(v9, 0, v20);
  }
}

- (void)getIdleAutosaves:(id)a3
{
  v4 = a3;
  v5 = [(MFDAutosave *)self autosaveScheduler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005414C;
  v7[3] = &unk_100158128;
  v6 = v4;
  v7[4] = self;
  v8 = v6;
  [v5 performBlock:v7];
}

- (void)autosaveSessionForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    objc_initWeak(&location, self);
    v8 = [(MFDAutosave *)self autosaveScheduler];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000549BC;
    v10[3] = &unk_100158150;
    objc_copyWeak(&v13, &location);
    v11 = v6;
    v12 = v7;
    [v8 performBlock:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = [NSError errorWithDomain:MSAutosaveErrorDomain code:1 userInfo:0];
    (*(v7 + 2))(v7, 0, v9);
  }
}

@end