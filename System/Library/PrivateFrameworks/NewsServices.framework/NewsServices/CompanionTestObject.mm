@interface CompanionTestObject
+ (id)sharedObject;
- (CompanionTestObject)init;
- (void)clearAllSeenArticleIdentifiersWithReply:(id)reply;
- (void)consumeSeenArticleIdentifiers:(id)identifiers withReply:(id)reply;
- (void)fetchHeadlineMetadataWithReply:(id)reply;
- (void)markArticleIdentifiersAsSaved:(id)saved articleIdentifiersAsNotSaved:(id)notSaved withReply:(id)reply;
- (void)setPreferredRefreshDates:(id)dates withReply:(id)reply;
- (void)setSavedArticleIdentifiers:(id)identifiers withReply:(id)reply;
- (void)updateAndSyncHeadlinesWithReply:(id)reply;
@end

@implementation CompanionTestObject

+ (id)sharedObject
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001F14;
  block[3] = &unk_1000103B8;
  block[4] = self;
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

- (void)updateAndSyncHeadlinesWithReply:(id)reply
{
  replyCopy = reply;
  v4 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "updateAndSyncHeadlinesWithReply: called…", v6, 2u);
  }

  v5 = +[NNCompanionSyncService sharedCompanionSyncService];
  [v5 updateHeadlines];

  if (replyCopy)
  {
    replyCopy[2](replyCopy);
  }
}

- (void)fetchHeadlineMetadataWithReply:(id)reply
{
  replyCopy = reply;
  serialQueue = [(CompanionTestObject *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002120;
  block[3] = &unk_1000103E0;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(serialQueue, block);
}

- (void)clearAllSeenArticleIdentifiersWithReply:(id)reply
{
  replyCopy = reply;
  serialQueue = [(CompanionTestObject *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002320;
  block[3] = &unk_1000103E0;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(serialQueue, block);
}

- (void)setSavedArticleIdentifiers:(id)identifiers withReply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  serialQueue = [(CompanionTestObject *)self serialQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000244C;
  v11[3] = &unk_100010408;
  v12 = identifiersCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = identifiersCopy;
  dispatch_async(serialQueue, v11);
}

- (void)setPreferredRefreshDates:(id)dates withReply:(id)reply
{
  datesCopy = dates;
  replyCopy = reply;
  serialQueue = [(CompanionTestObject *)self serialQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000257C;
  v11[3] = &unk_100010408;
  v12 = datesCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = datesCopy;
  dispatch_async(serialQueue, v11);
}

- (void)markArticleIdentifiersAsSaved:(id)saved articleIdentifiersAsNotSaved:(id)notSaved withReply:(id)reply
{
  savedCopy = saved;
  notSavedCopy = notSaved;
  replyCopy = reply;
  serialQueue = [(CompanionTestObject *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002750;
  block[3] = &unk_100010430;
  v16 = savedCopy;
  v17 = notSavedCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = notSavedCopy;
  v14 = savedCopy;
  dispatch_async(serialQueue, block);
}

- (void)consumeSeenArticleIdentifiers:(id)identifiers withReply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  serialQueue = [(CompanionTestObject *)self serialQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002AA0;
  v11[3] = &unk_100010408;
  v12 = identifiersCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = identifiersCopy;
  dispatch_async(serialQueue, v11);
}

@end