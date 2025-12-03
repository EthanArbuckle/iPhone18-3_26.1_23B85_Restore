@interface Ticket
- (NSString)description;
- (NSString)ticket;
- (_TtC25CloudSubscriptionFeatures6Ticket)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation Ticket

- (NSString)description
{
  selfCopy = self;
  sub_1DF50948C();

  v3 = sub_1DF564914();

  return v3;
}

- (NSString)ticket
{
  if (*(self + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket);
    v3 = *(self + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket + 8);

    v4 = sub_1DF564914();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1DF509C70(coderCopy);
}

- (_TtC25CloudSubscriptionFeatures6Ticket)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end