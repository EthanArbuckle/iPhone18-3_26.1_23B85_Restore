@interface HMDCloudSyncUploadReasonLogEvent
+ (id)uploadReason:(id)reason acceptedHomeManagerZonePush:(BOOL)push;
+ (id)uploadReason:(id)reason acceptedHomeZonePush:(BOOL)push;
+ (id)uploadReason:(id)reason acceptedLegacyPush:(BOOL)push;
- (HMDCloudSyncUploadReasonLogEvent)initWithUploadReason:(id)reason legacyPushCount:(int64_t)count homeZonePushCount:(int64_t)pushCount homeManagerPushCount:(int64_t)managerPushCount;
@end

@implementation HMDCloudSyncUploadReasonLogEvent

- (HMDCloudSyncUploadReasonLogEvent)initWithUploadReason:(id)reason legacyPushCount:(int64_t)count homeZonePushCount:(int64_t)pushCount homeManagerPushCount:(int64_t)managerPushCount
{
  reasonCopy = reason;
  v15.receiver = self;
  v15.super_class = HMDCloudSyncUploadReasonLogEvent;
  v12 = [(HMMLogEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_saveReason, reason);
    v13->_legacyPushCount = count;
    v13->_homeZonePushCount = pushCount;
    v13->_homeManagerPushCount = managerPushCount;
  }

  return v13;
}

+ (id)uploadReason:(id)reason acceptedHomeManagerZonePush:(BOOL)push
{
  pushCopy = push;
  reasonCopy = reason;
  v6 = [HMDCloudSyncUploadReasonLogEvent alloc];
  if (pushCopy)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  v8 = [(HMDCloudSyncUploadReasonLogEvent *)v6 initWithUploadReason:reasonCopy legacyPushCount:0 homeZonePushCount:0 homeManagerPushCount:v7];

  return v8;
}

+ (id)uploadReason:(id)reason acceptedHomeZonePush:(BOOL)push
{
  pushCopy = push;
  reasonCopy = reason;
  v6 = [HMDCloudSyncUploadReasonLogEvent alloc];
  if (pushCopy)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  v8 = [(HMDCloudSyncUploadReasonLogEvent *)v6 initWithUploadReason:reasonCopy legacyPushCount:0 homeZonePushCount:v7 homeManagerPushCount:0];

  return v8;
}

+ (id)uploadReason:(id)reason acceptedLegacyPush:(BOOL)push
{
  pushCopy = push;
  reasonCopy = reason;
  v6 = [HMDCloudSyncUploadReasonLogEvent alloc];
  if (pushCopy)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  v8 = [(HMDCloudSyncUploadReasonLogEvent *)v6 initWithUploadReason:reasonCopy legacyPushCount:v7 homeZonePushCount:0 homeManagerPushCount:0];

  return v8;
}

@end