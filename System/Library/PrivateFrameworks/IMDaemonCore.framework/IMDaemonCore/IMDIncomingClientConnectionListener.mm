@interface IMDIncomingClientConnectionListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (IMDIncomingClientConnectionListener)init;
- (void)dealloc;
@end

@implementation IMDIncomingClientConnectionListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_22B4CF8C8();

  return v9 & 1;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR___IMDIncomingClientConnectionListener_queue);
  selfCopy = self;

  sub_22B7DACB8();

  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(IMDIncomingClientConnectionListener *)&v6 dealloc];
}

- (IMDIncomingClientConnectionListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end