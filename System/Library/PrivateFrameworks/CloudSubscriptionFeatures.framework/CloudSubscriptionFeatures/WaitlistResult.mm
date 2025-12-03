@interface WaitlistResult
- (NSArray)featureIDs;
- (NSString)ticket;
- (_TtC25CloudSubscriptionFeatures14WaitlistResult)init;
- (_TtC25CloudSubscriptionFeatures14WaitlistResult)initWithTicket:(id)ticket status:(id)status featureIDs:(id)ds;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WaitlistResult

- (NSString)ticket
{
  if (*(self + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket);
    v3 = *(self + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket + 8);

    v4 = sub_1DF564914();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)featureIDs
{
  v2 = *(self + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs);

  v3 = sub_1DF564A94();

  return v3;
}

- (_TtC25CloudSubscriptionFeatures14WaitlistResult)initWithTicket:(id)ticket status:(id)status featureIDs:(id)ds
{
  if (ticket)
  {
    v7 = sub_1DF564944();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = sub_1DF564AA4();
  v11 = (self + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket);
  *v11 = v7;
  v11[1] = v9;
  *(self + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status) = status;
  *(self + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs) = v10;
  v14.receiver = self;
  v14.super_class = type metadata accessor for WaitlistResult();
  statusCopy = status;
  return [(WaitlistResult *)&v14 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1DF4BC154(coderCopy);
}

- (_TtC25CloudSubscriptionFeatures14WaitlistResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end