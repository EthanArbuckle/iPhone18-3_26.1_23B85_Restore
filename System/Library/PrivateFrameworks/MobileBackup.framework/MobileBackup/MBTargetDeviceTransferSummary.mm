@interface MBTargetDeviceTransferSummary
- (void)submitTelemetry;
- (void)trackDataTransferEndWithTotalByteCount:(unint64_t)a3 totalFileCount:(unint64_t)a4 bytesTransferred:(unint64_t)a5 filesTransferred:(unint64_t)a6;
- (void)trackDataTransferStart;
- (void)trackDoneStart;
- (void)trackEngineEngineEndWithError:(id)a3;
- (void)trackInitMessageStart;
- (void)trackKeychainRestoreStart;
- (void)trackKeychainTransferStart;
- (void)trackPreflightStart;
- (void)trackRestoreStart;
@end

@implementation MBTargetDeviceTransferSummary

- (void)trackEngineEngineEndWithError:(id)a3
{
  v5 = sub_1000042B4(&qword_10041EE08, &qword_1002B9788);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = a3;
  v10 = self;
  Date.init()();
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  v12 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__engineEnd;
  swift_beginAccess();
  sub_100027AC0(v8, v10 + v12);
  swift_endAccess();
  v13 = *(&v10->super.isa + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__engineError);
  *(&v10->super.isa + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__engineError) = a3;
}

- (void)trackInitMessageStart
{
  v2 = self;
  sub_100023A50(&OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__initAttemptCount, &OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__initMessageStart);
}

- (void)trackKeychainTransferStart
{
  v2 = self;
  sub_100023A50(&OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainTransferAttemptCount, &OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainTransferStart);
}

- (void)trackKeychainRestoreStart
{
  v2 = self;
  sub_100023A50(&OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainRestoreAttemptCount, &OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainRestoreStart);
}

- (void)trackPreflightStart
{
  v2 = self;
  sub_100023A50(&OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__preflightAttemptCount, &OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__preflightStart);
}

- (void)trackDataTransferStart
{
  v2 = self;
  sub_100023A50(&OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__dataTransferAttemptCount, &OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__dataTransferStart);
}

- (void)trackDataTransferEndWithTotalByteCount:(unint64_t)a3 totalFileCount:(unint64_t)a4 bytesTransferred:(unint64_t)a5 filesTransferred:(unint64_t)a6
{
  v10 = self;
  sub_100023D9C(a3, a4, a5, a6);
}

- (void)trackRestoreStart
{
  v2 = self;
  sub_100023A50(&OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__restoreAttemptCount, &OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__restoreStart);
}

- (void)trackDoneStart
{
  v2 = self;
  sub_100023A50(&OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__doneAttemptCount, &OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__doneStart);
}

- (void)submitTelemetry
{
  v2 = self;
  sub_100024120();
}

@end