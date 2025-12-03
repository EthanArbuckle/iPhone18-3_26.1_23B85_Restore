@interface MFDAutosave
+ (id)endpointInfo;
+ (id)log;
+ (id)sharedInstance;
- (MFDAutosave)init;
- (void)_autosavedMessageWithIdentifier:(id)identifier localOnly:(BOOL)only completion:(id)completion;
- (void)autosaveMessageData:(id)data replacingIdentifier:(id)identifier completion:(id)completion;
- (void)autosaveSessionForIdentifier:(id)identifier completion:(id)completion;
- (void)autosavedMessageDataWithIdentifier:(id)identifier completion:(id)completion;
- (void)getIdleAutosaves:(id)autosaves;
- (void)hasAutosavedMessageWithIdentifier:(id)identifier completion:(id)completion;
- (void)removeAutosavedMessageWithIdentifier:(id)identifier;
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
  block[4] = self;
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

- (void)hasAutosavedMessageWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = completionCopy;
  if (identifierCopy)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100052988;
    v10[3] = &unk_100157FD0;
    v11 = completionCopy;
    [(MFDAutosave *)self _autosavedMessageWithIdentifier:identifierCopy localOnly:0 completion:v10];
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

- (void)removeAutosavedMessageWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100052B98;
    v6[3] = &unk_100157FF8;
    v7 = identifierCopy;
    [(MFDAutosave *)self _autosavedMessageWithIdentifier:v7 localOnly:1 completion:v6];
  }
}

- (void)_autosavedMessageWithIdentifier:(id)identifier localOnly:(BOOL)only completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  autosaveScheduler = [(MFDAutosave *)self autosaveScheduler];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100052EA0;
  v13[3] = &unk_100158020;
  v11 = identifierCopy;
  v14 = v11;
  onlyCopy = only;
  v12 = completionCopy;
  v15 = v12;
  [autosaveScheduler performBlock:v13];
}

- (void)autosavedMessageDataWithIdentifier:(id)identifier completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000532FC;
  v8[3] = &unk_100158048;
  identifierCopy = identifier;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = identifierCopy;
  [(MFDAutosave *)self _autosavedMessageWithIdentifier:v7 localOnly:0 completion:v8];
}

- (void)autosaveMessageData:(id)data replacingIdentifier:(id)identifier completion:(id)completion
{
  dataCopy = data;
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = [MFMailMessage messageWithRFC822Data:dataCopy];
  mf_documentReference = [v10 mf_documentReference];
  absoluteString = [mf_documentReference absoluteString];
  v13 = absoluteString;
  if (v10 && absoluteString)
  {
    v14 = [NSString stringWithFormat:@"MFDAutosave transaction: documentID=%@", absoluteString];
    v15 = [EFProcessTransaction transactionWithDescription:v14];

    v16 = [NSString stringWithFormat:@"(Autosave documentID=%@)", v13];
    v17 = +[MFDAutosave log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Enqueuing autosave. %@", buf, 0xCu);
    }

    autosaveScheduler = [(MFDAutosave *)self autosaveScheduler];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10005385C;
    v25[3] = &unk_100158070;
    v19 = v16;
    v26 = v19;
    v27 = mf_documentReference;
    v28 = identifierCopy;
    v29 = v13;
    v30 = v10;
    v32 = completionCopy;
    v20 = v15;
    v31 = v20;
    [autosaveScheduler performBlock:v25];
  }

  else
  {
    if (v10)
    {
      v20 = [NSError errorWithDomain:MSAutosaveErrorDomain code:1 userInfo:0];
      v21 = +[MFDAutosave log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        ef_publicDescription = [v20 ef_publicDescription];
        sub_1000D3DC8(ef_publicDescription, buf, v21);
      }
    }

    else
    {
      v20 = [NSError errorWithDomain:MSAutosaveErrorDomain code:3 userInfo:0];
      v21 = +[MFDAutosave log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        ef_publicDescription2 = [v20 ef_publicDescription];
        sub_1000D3D7C(ef_publicDescription2, buf, v21);
      }
    }

    (*(completionCopy + 2))(completionCopy, 0, v20);
  }
}

- (void)getIdleAutosaves:(id)autosaves
{
  autosavesCopy = autosaves;
  autosaveScheduler = [(MFDAutosave *)self autosaveScheduler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005414C;
  v7[3] = &unk_100158128;
  v6 = autosavesCopy;
  v7[4] = self;
  v8 = v6;
  [autosaveScheduler performBlock:v7];
}

- (void)autosaveSessionForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (identifierCopy)
  {
    objc_initWeak(&location, self);
    autosaveScheduler = [(MFDAutosave *)self autosaveScheduler];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000549BC;
    v10[3] = &unk_100158150;
    objc_copyWeak(&v13, &location);
    v11 = identifierCopy;
    v12 = completionCopy;
    [autosaveScheduler performBlock:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = [NSError errorWithDomain:MSAutosaveErrorDomain code:1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v9);
  }
}

@end