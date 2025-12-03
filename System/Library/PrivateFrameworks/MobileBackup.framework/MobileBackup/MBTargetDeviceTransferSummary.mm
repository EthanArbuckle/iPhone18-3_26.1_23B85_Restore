@interface MBTargetDeviceTransferSummary
- (void)submitTelemetry;
- (void)trackDataTransferEndWithTotalByteCount:(unint64_t)count totalFileCount:(unint64_t)fileCount bytesTransferred:(unint64_t)transferred filesTransferred:(unint64_t)filesTransferred;
- (void)trackDataTransferStart;
- (void)trackDoneStart;
- (void)trackEngineEngineEndWithError:(id)error;
- (void)trackInitMessageStart;
- (void)trackKeychainRestoreStart;
- (void)trackKeychainTransferStart;
- (void)trackPreflightStart;
- (void)trackRestoreStart;
@end

@implementation MBTargetDeviceTransferSummary

- (void)trackEngineEngineEndWithError:(id)error
{
  v5 = sub_1000042B4(&qword_10041EE08, &qword_1002B9788);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  errorCopy = error;
  selfCopy = self;
  Date.init()();
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  v12 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__engineEnd;
  swift_beginAccess();
  sub_100027AC0(v8, selfCopy + v12);
  swift_endAccess();
  v13 = *(&selfCopy->super.isa + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__engineError);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__engineError) = error;
}

- (void)trackInitMessageStart
{
  selfCopy = self;
  sub_100023A50(&OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__initAttemptCount, &OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__initMessageStart);
}

- (void)trackKeychainTransferStart
{
  selfCopy = self;
  sub_100023A50(&OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainTransferAttemptCount, &OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainTransferStart);
}

- (void)trackKeychainRestoreStart
{
  selfCopy = self;
  sub_100023A50(&OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainRestoreAttemptCount, &OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainRestoreStart);
}

- (void)trackPreflightStart
{
  selfCopy = self;
  sub_100023A50(&OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__preflightAttemptCount, &OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__preflightStart);
}

- (void)trackDataTransferStart
{
  selfCopy = self;
  sub_100023A50(&OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__dataTransferAttemptCount, &OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__dataTransferStart);
}

- (void)trackDataTransferEndWithTotalByteCount:(unint64_t)count totalFileCount:(unint64_t)fileCount bytesTransferred:(unint64_t)transferred filesTransferred:(unint64_t)filesTransferred
{
  selfCopy = self;
  sub_100023D9C(count, fileCount, transferred, filesTransferred);
}

- (void)trackRestoreStart
{
  selfCopy = self;
  sub_100023A50(&OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__restoreAttemptCount, &OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__restoreStart);
}

- (void)trackDoneStart
{
  selfCopy = self;
  sub_100023A50(&OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__doneAttemptCount, &OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__doneStart);
}

- (void)submitTelemetry
{
  selfCopy = self;
  sub_100024120();
}

@end