@interface AppRestoreDispatcher
+ (_TtC7backupd20AppRestoreDispatcher)shared;
- (id)appRestorerForAccount:(id)a3 stateQueue:(id)a4 delegate:(id)a5 error:(id *)a6;
- (void)cancelAndUninstallAllRestorers;
- (void)cancelAndUninstallRestorerForAccount:(id)a3;
- (void)cancelAndUninstallRestorerForPersonaIdentifier:(id)a3;
- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5;
- (void)coordinatorShouldBeginRestoringUserData:(id)a3;
- (void)retryAppDataDownloadsForAccount:(id)a3;
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

- (id)appRestorerForAccount:(id)a3 stateQueue:(id)a4 delegate:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  swift_unknownObjectRetain();
  v11 = self;
  sub_10003BCB4(v9, v10, a5);
  v13 = v12;

  swift_unknownObjectRelease();

  return v13;
}

- (void)coordinatorShouldBeginRestoringUserData:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003C210(v4);
}

- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5
{
  v8 = a3;
  v10 = a4;
  v9 = self;
  sub_10003C7FC(v8, v10, a5);
}

- (void)retryAppDataDownloadsForAccount:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003CE24(v4);
}

- (void)cancelAndUninstallAllRestorers
{
  v2 = self;
  sub_10003D278();
}

- (void)cancelAndUninstallRestorerForAccount:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003D424(v4);
}

- (void)cancelAndUninstallRestorerForPersonaIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_10003D510(v4, v6);
}

@end