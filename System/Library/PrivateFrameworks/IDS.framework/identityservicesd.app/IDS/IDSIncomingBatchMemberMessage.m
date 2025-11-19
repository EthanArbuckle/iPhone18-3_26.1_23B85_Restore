@interface IDSIncomingBatchMemberMessage
+ (NSString)errorDomain;
- (IDSIncomingBatchMemberMessage)init;
- (IDSIncomingBatchMemberMessage)initWithMessageDictionary:(id)a3 topic:(id)a4;
- (NSString)batchIdentifier;
- (NSString)description;
- (id)initFrom:(id)a3 batchIdentifier:(id)a4 storePromise:(id)a5 processPromise:(id)a6;
- (void)wasProcessedWithMessage:(id)a3;
- (void)wasStoredWithGuid:(id)a3;
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

- (id)initFrom:(id)a3 batchIdentifier:(id)a4 storePromise:(id)a5 processPromise:(id)a6
{
  v9 = sub_100936B38();
  v11 = v10;
  v12 = a3;
  v13 = a5;
  return sub_10074C274(v12, v9, v11, a5, a6);
}

- (void)wasStoredWithGuid:(id)a3
{
  sub_100936B38();
  v4 = self;
  sub_10074C4C8();
}

- (void)wasProcessedWithMessage:(id)a3
{
  if (*(self + OBJC_IVAR___IDSIncomingBatchMemberMessage_wasProcessed))
  {
    __break(1u);
  }

  else
  {
    *(self + OBJC_IVAR___IDSIncomingBatchMemberMessage_wasProcessed) = 1;
    [*(self + OBJC_IVAR___IDSIncomingBatchMemberMessage_processPromise) fulfillWithValue:a3];
  }
}

- (NSString)description
{
  v2 = self;
  sub_10074C958();

  v3 = sub_100936B28();

  return v3;
}

- (IDSIncomingBatchMemberMessage)initWithMessageDictionary:(id)a3 topic:(id)a4
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