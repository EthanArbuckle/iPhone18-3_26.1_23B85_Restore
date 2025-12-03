@interface IDSIncomingBatchMemberMessage
+ (NSString)errorDomain;
- (IDSIncomingBatchMemberMessage)init;
- (IDSIncomingBatchMemberMessage)initWithMessageDictionary:(id)dictionary topic:(id)topic;
- (NSString)batchIdentifier;
- (NSString)description;
- (id)initFrom:(id)from batchIdentifier:(id)identifier storePromise:(id)promise processPromise:(id)processPromise;
- (void)wasProcessedWithMessage:(id)message;
- (void)wasStoredWithGuid:(id)guid;
@end

@implementation IDSIncomingBatchMemberMessage

- (NSString)batchIdentifier
{

  v2 = sub_100936B28();

  return v2;
}

+ (NSString)errorDomain
{
  v2 = sub_100936B28();

  return v2;
}

- (id)initFrom:(id)from batchIdentifier:(id)identifier storePromise:(id)promise processPromise:(id)processPromise
{
  v9 = sub_100936B38();
  v11 = v10;
  fromCopy = from;
  promiseCopy = promise;
  return sub_10074C274(fromCopy, v9, v11, promise, processPromise);
}

- (void)wasStoredWithGuid:(id)guid
{
  sub_100936B38();
  selfCopy = self;
  sub_10074C4C8();
}

- (void)wasProcessedWithMessage:(id)message
{
  if (*(self + OBJC_IVAR___IDSIncomingBatchMemberMessage_wasProcessed))
  {
    __break(1u);
  }

  else
  {
    *(self + OBJC_IVAR___IDSIncomingBatchMemberMessage_wasProcessed) = 1;
    [*(self + OBJC_IVAR___IDSIncomingBatchMemberMessage_processPromise) fulfillWithValue:message];
  }
}

- (NSString)description
{
  selfCopy = self;
  sub_10074C958();

  v3 = sub_100936B28();

  return v3;
}

- (IDSIncomingBatchMemberMessage)initWithMessageDictionary:(id)dictionary topic:(id)topic
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (IDSIncomingBatchMemberMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end