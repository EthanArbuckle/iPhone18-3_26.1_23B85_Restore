@interface CompanionTestObject
+ (id)sharedObject;
- (CompanionTestObject)init;
- (void)clearAllSeenArticleIdentifiersWithReply:(id)a3;
- (void)consumeSeenArticleIdentifiers:(id)a3 withReply:(id)a4;
- (void)fetchHeadlineMetadataWithReply:(id)a3;
- (void)markArticleIdentifiersAsSaved:(id)a3 articleIdentifiersAsNotSaved:(id)a4 withReply:(id)a5;
- (void)setPreferredRefreshDates:(id)a3 withReply:(id)a4;
- (void)setSavedArticleIdentifiers:(id)a3 withReply:(id)a4;
- (void)updateAndSyncHeadlinesWithReply:(id)a3;
@end

@implementation CompanionTestObject

+ (id)sharedObject
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001F14;
  block[3] = &unk_1000103B8;
  block[4] = a1;
  if (qword_100016E90 != -1)
  {
    dispatch_once(&qword_100016E90, block);
  }

  v2 = qword_100016E88;

  return v2;
}

- (CompanionTestObject)init
{
  v7.receiver = self;
  v7.super_class = CompanionTestObject;
  v2 = [(CompanionTestObject *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.nanonewscd.xpc.serialQueue", v3);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;
  }

  return v2;
}

- (void)updateAndSyncHeadlinesWithReply:(id)a3
{
  v3 = a3;
  v4 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "updateAndSyncHeadlinesWithReply: called…", v6, 2u);
  }

  v5 = +[NNCompanionSyncService sharedCompanionSyncService];
  [v5 updateHeadlines];

  if (v3)
  {
    v3[2](v3);
  }
}

- (void)fetchHeadlineMetadataWithReply:(id)a3
{
  v4 = a3;
  v5 = [(CompanionTestObject *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002120;
  block[3] = &unk_1000103E0;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)clearAllSeenArticleIdentifiersWithReply:(id)a3
{
  v4 = a3;
  v5 = [(CompanionTestObject *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002320;
  block[3] = &unk_1000103E0;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)setSavedArticleIdentifiers:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CompanionTestObject *)self serialQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000244C;
  v11[3] = &unk_100010408;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
}

- (void)setPreferredRefreshDates:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CompanionTestObject *)self serialQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000257C;
  v11[3] = &unk_100010408;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
}

- (void)markArticleIdentifiersAsSaved:(id)a3 articleIdentifiersAsNotSaved:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CompanionTestObject *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002750;
  block[3] = &unk_100010430;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, block);
}

- (void)consumeSeenArticleIdentifiers:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CompanionTestObject *)self serialQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002AA0;
  v11[3] = &unk_100010408;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
}

@end