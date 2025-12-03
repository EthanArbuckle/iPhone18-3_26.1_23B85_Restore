@interface AppRestoreDispatcher
+ (_TtC7backupd20AppRestoreDispatcher)shared;
- (id)appRestorerForAccount:(id)account stateQueue:(id)queue delegate:(id)delegate error:(id *)error;
- (void)cancelAndUninstallAllRestorers;
- (void)cancelAndUninstallRestorerForAccount:(id)account;
- (void)cancelAndUninstallRestorerForPersonaIdentifier:(id)identifier;
- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client;
- (void)coordinatorShouldBeginRestoringUserData:(id)data;
- (void)retryAppDataDownloadsForAccount:(id)account;
@end

@implementation AppRestoreDispatcher

+ (_TtC7backupd20AppRestoreDispatcher)shared
{
  if (qword_10041DEF8 != -1)
  {
    swift_once();
  }

  v3 = qword_100421CB8;

  return v3;
}

- (id)appRestorerForAccount:(id)account stateQueue:(id)queue delegate:(id)delegate error:(id *)error
{
  accountCopy = account;
  queueCopy = queue;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10003BCB4(accountCopy, queueCopy, delegate);
  v13 = v12;

  swift_unknownObjectRelease();

  return v13;
}

- (void)coordinatorShouldBeginRestoringUserData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  sub_10003C210(dataCopy);
}

- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client
{
  coordinatorCopy = coordinator;
  reasonCopy = reason;
  selfCopy = self;
  sub_10003C7FC(coordinatorCopy, reasonCopy, client);
}

- (void)retryAppDataDownloadsForAccount:(id)account
{
  accountCopy = account;
  selfCopy = self;
  sub_10003CE24(accountCopy);
}

- (void)cancelAndUninstallAllRestorers
{
  selfCopy = self;
  sub_10003D278();
}

- (void)cancelAndUninstallRestorerForAccount:(id)account
{
  accountCopy = account;
  selfCopy = self;
  sub_10003D424(accountCopy);
}

- (void)cancelAndUninstallRestorerForPersonaIdentifier:(id)identifier
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_10003D510(v4, v6);
}

@end