@interface CKPowerLog
+ (void)sendTranscriptVisibilityChangedEvent:(id)a3 event:(int64_t)a4 metadata:(id)a5;
- (CKPowerLog)init;
@end

@implementation CKPowerLog

+ (void)sendTranscriptVisibilityChangedEvent:(id)a3 event:(int64_t)a4 metadata:(id)a5
{
  v7 = sub_190D51840();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D517E0();
  if (a5)
  {
    a5 = sub_190D56D90();
  }

  swift_getObjCClassMetadata();
  static CKPowerLog.sendTranscriptVisibilityChangedEvent(_:event:metadata:)(v10, a4, a5);

  (*(v8 + 8))(v10, v7);
}

- (CKPowerLog)init
{
  v3.receiver = self;
  v3.super_class = CKPowerLog;
  return [(CKPowerLog *)&v3 init];
}

@end