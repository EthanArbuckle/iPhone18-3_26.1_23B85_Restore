@interface IDSDiagnosticInfoHandler
+ (id)sharedInstance;
- (IDSDiagnosticInfoHandler)init;
- (void)dumpDiagnosticsToReceiver:(id)a3;
- (void)registerDiagnosticInfoBlock:(id)a3 title:(id)a4 queue:(id)a5;
@end

@implementation IDSDiagnosticInfoHandler

+ (id)sharedInstance
{
  if (qword_100CBF288 != -1)
  {
    sub_10092BE00();
  }

  v3 = qword_100CBF290;

  return v3;
}

- (IDSDiagnosticInfoHandler)init
{
  v8.receiver = self;
  v8.super_class = IDSDiagnosticInfoHandler;
  v2 = [(IDSDiagnosticInfoHandler *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    diagnosticEntries = v2->_diagnosticEntries;
    v2->_diagnosticEntries = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = +[IDSFoundationLog DiagnosticInfoHandler];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Initialized IDSDiagnosticInfoHandler", v7, 2u);
    }
  }

  return v2;
}

- (void)registerDiagnosticInfoBlock:(id)a3 title:(id)a4 queue:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3 && v8)
  {
    v10 = a3;
    v11 = +[IDSFoundationLog DiagnosticInfoHandler];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Registering diagnostic block with title: %@", &v14, 0xCu);
    }

    v12 = objc_alloc_init(IDSDiagnosticInfoEntry);
    [(IDSDiagnosticInfoEntry *)v12 setTitle:v8];
    if (v9)
    {
      [(IDSDiagnosticInfoEntry *)v12 setQueue:v9];
    }

    else
    {
      v13 = dispatch_get_global_queue(-32768, 0);
      [(IDSDiagnosticInfoEntry *)v12 setQueue:v13];
    }

    [(IDSDiagnosticInfoEntry *)v12 setInfoBlock:v10];

    [(NSMutableArray *)self->_diagnosticEntries addObject:v12];
  }
}

- (void)dumpDiagnosticsToReceiver:(id)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = +[IDSFoundationLog DiagnosticInfoHandler];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NSMutableArray *)self->_diagnosticEntries count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting dump of %ld diagnostic entries", &buf, 0xCu);
    }

    v6 = [(NSMutableArray *)self->_diagnosticEntries __imArrayByApplyingBlock:&stru_100BE12B0];
    v7 = +[NSDate date];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x2020000000;
    v31 = [(NSMutableArray *)self->_diagnosticEntries count];
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v27 = 1;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = self->_diagnosticEntries;
    v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v8)
    {
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          v11 = v3;
          if (*v23 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [v12 queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1005CA140;
          block[3] = &unk_100BE1300;
          block[4] = v12;
          block[5] = self;
          v20 = v26;
          v17 = v6;
          p_buf = &buf;
          v3 = v11;
          v18 = v11;
          v19 = v7;
          dispatch_async(v13, block);
        }

        v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v8);
    }

    _Block_object_dispose(v26, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    [v3 receiveDiagnosticChunk:@"IDS/IDSDiagnosticInfoHandler is disabled." isLast:1];
  }
}

@end