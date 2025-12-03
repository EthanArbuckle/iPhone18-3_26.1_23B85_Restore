@interface DonationListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC21contactsdonationagent24DonationListenerDelegate)init;
@end

@implementation DonationListenerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10000364C(connectionCopy);

  return v9 & 1;
}

- (_TtC21contactsdonationagent24DonationListenerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end