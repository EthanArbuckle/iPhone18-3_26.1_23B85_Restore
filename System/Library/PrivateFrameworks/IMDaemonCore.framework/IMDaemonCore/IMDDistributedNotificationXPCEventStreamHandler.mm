@interface IMDDistributedNotificationXPCEventStreamHandler
+ (id)sharedInstance;
- (IMDDistributedNotificationXPCEventStreamHandler)init;
- (IMDDistributedNotificationXPCEventStreamHandler)initWithEventStreamName:(const char *)a3;
@end

@implementation IMDDistributedNotificationXPCEventStreamHandler

+ (id)sharedInstance
{
  if (qword_2814210A0 != -1)
  {
    sub_22B7D0BBC();
  }

  v3 = qword_2814210E8;

  return v3;
}

- (IMDDistributedNotificationXPCEventStreamHandler)init
{
  v3.receiver = self;
  v3.super_class = IMDDistributedNotificationXPCEventStreamHandler;
  return [(IMDXPCEventStreamHandler *)&v3 initWithEventStreamName:"com.apple.distnoted.matching"];
}

- (IMDDistributedNotificationXPCEventStreamHandler)initWithEventStreamName:(const char *)a3
{
  [(IMDDistributedNotificationXPCEventStreamHandler *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end