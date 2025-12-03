@interface IMDiagnosticCollection
- (IMDiagnosticCollection)init;
- (id)_dumpDefaultsForDomain:(id)domain;
- (id)_temporaryPathWithFileName:(id)name;
- (id)_temporarySubdirectory;
- (id)run;
- (void)_captureAttachmentAtPath:(id)path;
- (void)_collectIndexingDefaults;
- (void)_collectPTaskReport;
- (void)_collectPTasks;
- (void)_collectSpotlightClientState;
- (void)_collectUnreadCountReport;
- (void)_wait;
- (void)_withCollectionBlock:(id)block;
- (void)_writeArrayOfCodingObjects:(id)objects rootKey:(id)key toPath:(id)path;
- (void)_writeDictionary:(id)dictionary toPath:(id)path;
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

- (void)_captureAttachmentAtPath:(id)path
{
  pathCopy = path;
  if ([(IMDiagnosticCollection *)self _isOnQueue])
  {
    v5 = [DEAttachmentItem attachmentWithPath:pathCopy];
    [v5 setDeleteOnAttach:&__kCFBooleanTrue];
    attachments = [(IMDiagnosticCollection *)self attachments];
    [attachments addObject:v5];
  }

  else
  {
    queue = [(IMDiagnosticCollection *)self queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100001940;
    v8[3] = &unk_1000082F0;
    v8[4] = self;
    v9 = pathCopy;
    dispatch_sync(queue, v8);
  }
}

- (id)_temporaryPathWithFileName:(id)name
{
  nameCopy = name;
  collectionDirectory = [(IMDiagnosticCollection *)self collectionDirectory];
  v6 = [collectionDirectory stringByAppendingPathComponent:nameCopy];

  return v6;
}

- (id)_temporarySubdirectory
{
  collectionDirectory = [(IMDiagnosticCollection *)self collectionDirectory];
  v3 = +[NSString stringGUID];
  v4 = [collectionDirectory stringByAppendingPathComponent:v3];

  v5 = +[NSFileManager defaultManager];
  [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];

  return v4;
}

- (void)_withCollectionBlock:(id)block
{
  blockCopy = block;
  group = [(IMDiagnosticCollection *)self group];
  dispatch_group_enter(group);

  queue = [(IMDiagnosticCollection *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001B24;
  v8[3] = &unk_100008340;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  dispatch_async(queue, v8);
}

- (void)_writeDictionary:(id)dictionary toPath:(id)path
{
  pathCopy = path;
  if (dictionary)
  {
    dictionaryCopy = dictionary;
  }

  else
  {
    dictionaryCopy = &__NSDictionary0__struct;
  }

  v7 = [NSPropertyListSerialization dataWithPropertyList:dictionaryCopy format:100 options:0 error:0];
  if ([v7 length])
  {
    [v7 writeToFile:pathCopy atomically:0];
    [(IMDiagnosticCollection *)self _captureAttachmentAtPath:pathCopy];
  }
}

- (void)_writeArrayOfCodingObjects:(id)objects rootKey:(id)key toPath:(id)path
{
  keyCopy = key;
  objectsCopy = objects;
  pathCopy = path;
  keyCopy2 = key;
  objectsCopy2 = objects;
  v11 = [NSDictionary dictionaryWithObjects:&objectsCopy forKeys:&keyCopy count:1];
  v12 = [IMDiagnosticSwiftBridge dictionaryForCodingObject:v11];

  [(IMDiagnosticCollection *)self _writeDictionary:v12 toPath:pathCopy];
}

- (id)_dumpDefaultsForDomain:(id)domain
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
    attachments = [(IMDiagnosticCollection *)self attachments];
    v4 = [attachments copy];
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = sub_100002CBC;
    v12 = sub_100002CCC;
    v13 = 0;
    queue = [(IMDiagnosticCollection *)self queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100002CD4;
    v7[3] = &unk_100008470;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(queue, v7);

    v4 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  return v4;
}

@end