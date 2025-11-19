@interface IMDiagnosticCollection
- (IMDiagnosticCollection)init;
- (id)_dumpDefaultsForDomain:(id)a3;
- (id)_temporaryPathWithFileName:(id)a3;
- (id)_temporarySubdirectory;
- (id)run;
- (void)_captureAttachmentAtPath:(id)a3;
- (void)_collectIndexingDefaults;
- (void)_collectPTaskReport;
- (void)_collectPTasks;
- (void)_collectSpotlightClientState;
- (void)_collectUnreadCountReport;
- (void)_wait;
- (void)_withCollectionBlock:(id)a3;
- (void)_writeArrayOfCodingObjects:(id)a3 rootKey:(id)a4 toPath:(id)a5;
- (void)_writeDictionary:(id)a3 toPath:(id)a4;
@end

@implementation IMDiagnosticCollection

- (IMDiagnosticCollection)init
{
  v15.receiver = self;
  v15.super_class = IMDiagnosticCollection;
  v2 = [(IMDiagnosticCollection *)&v15 init];
  if (v2)
  {
    v3 = NSTemporaryDirectory();
    v4 = +[NSString stringGUID];
    v5 = [v3 stringByAppendingPathComponent:v4];
    v6 = *(v2 + 1);
    *(v2 + 1) = v5;

    v7 = +[NSFileManager defaultManager];
    [v7 createDirectoryAtPath:*(v2 + 1) withIntermediateDirectories:1 attributes:0 error:0];

    v8 = dispatch_queue_create("com.apple.DiagnosticExtensions.IMDiagnosticExtension", 0);
    v9 = *(v2 + 2);
    *(v2 + 2) = v8;

    v10 = dispatch_group_create();
    v11 = *(v2 + 3);
    *(v2 + 3) = v10;

    v12 = objc_alloc_init(NSMutableArray);
    v13 = *(v2 + 4);
    *(v2 + 4) = v12;

    dispatch_queue_set_specific(*(v2 + 2), "IMDiagnosticExtensionQueue", 1, 0);
  }

  return v2;
}

- (void)_captureAttachmentAtPath:(id)a3
{
  v4 = a3;
  if ([(IMDiagnosticCollection *)self _isOnQueue])
  {
    v5 = [DEAttachmentItem attachmentWithPath:v4];
    [v5 setDeleteOnAttach:&__kCFBooleanTrue];
    v6 = [(IMDiagnosticCollection *)self attachments];
    [v6 addObject:v5];
  }

  else
  {
    v7 = [(IMDiagnosticCollection *)self queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100001940;
    v8[3] = &unk_1000082F0;
    v8[4] = self;
    v9 = v4;
    dispatch_sync(v7, v8);
  }
}

- (id)_temporaryPathWithFileName:(id)a3
{
  v4 = a3;
  v5 = [(IMDiagnosticCollection *)self collectionDirectory];
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

- (id)_temporarySubdirectory
{
  v2 = [(IMDiagnosticCollection *)self collectionDirectory];
  v3 = +[NSString stringGUID];
  v4 = [v2 stringByAppendingPathComponent:v3];

  v5 = +[NSFileManager defaultManager];
  [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];

  return v4;
}

- (void)_withCollectionBlock:(id)a3
{
  v4 = a3;
  v5 = [(IMDiagnosticCollection *)self group];
  dispatch_group_enter(v5);

  v6 = [(IMDiagnosticCollection *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001B24;
  v8[3] = &unk_100008340;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)_writeDictionary:(id)a3 toPath:(id)a4
{
  v8 = a4;
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = &__NSDictionary0__struct;
  }

  v7 = [NSPropertyListSerialization dataWithPropertyList:v6 format:100 options:0 error:0];
  if ([v7 length])
  {
    [v7 writeToFile:v8 atomically:0];
    [(IMDiagnosticCollection *)self _captureAttachmentAtPath:v8];
  }
}

- (void)_writeArrayOfCodingObjects:(id)a3 rootKey:(id)a4 toPath:(id)a5
{
  v13 = a4;
  v14 = a3;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v12 = [IMDiagnosticSwiftBridge dictionaryForCodingObject:v11];

  [(IMDiagnosticCollection *)self _writeDictionary:v12 toPath:v8];
}

- (id)_dumpDefaultsForDomain:(id)a3
{
  v3 = CFPreferencesCopyMultiple(0, @"com.apple.IMCoreSpotlight", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);

  return v3;
}

- (void)_collectIndexingDefaults
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100001E28;
  v2[3] = &unk_100008368;
  v2[4] = self;
  [(IMDiagnosticCollection *)self _withCollectionBlock:v2];
}

- (void)_collectSpotlightClientState
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100001F3C;
  v2[3] = &unk_100008368;
  v2[4] = self;
  [(IMDiagnosticCollection *)self _withCollectionBlock:v2];
}

- (void)_collectPTaskReport
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000021F8;
  v2[3] = &unk_100008368;
  v2[4] = self;
  [(IMDiagnosticCollection *)self _withCollectionBlock:v2];
}

- (void)_collectUnreadCountReport
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000023FC;
  v2[3] = &unk_100008368;
  v2[4] = self;
  [(IMDiagnosticCollection *)self _withCollectionBlock:v2];
}

- (void)_collectPTasks
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000266C;
  v2[3] = &unk_100008368;
  v2[4] = self;
  [(IMDiagnosticCollection *)self _withCollectionBlock:v2];
}

- (void)_wait
{
  group = [(IMDiagnosticCollection *)self group];
  v2 = dispatch_time(0, 120000000000);
  dispatch_group_wait(group, v2);
}

- (id)run
{
  [(IMDiagnosticCollection *)self _collectIndexingDefaults];
  [(IMDiagnosticCollection *)self _collectSpotlightClientState];
  [(IMDiagnosticCollection *)self _collectPTaskReport];
  [(IMDiagnosticCollection *)self _collectPTasks];
  [(IMDiagnosticCollection *)self _collectUnreadCountReport];
  [(IMDiagnosticCollection *)self _wait];
  if ([(IMDiagnosticCollection *)self _isOnQueue])
  {
    v3 = [(IMDiagnosticCollection *)self attachments];
    v4 = [v3 copy];
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = sub_100002CBC;
    v12 = sub_100002CCC;
    v13 = 0;
    v5 = [(IMDiagnosticCollection *)self queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100002CD4;
    v7[3] = &unk_100008470;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(v5, v7);

    v4 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  return v4;
}

@end