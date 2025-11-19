@interface IMDIncomingClientConnectionListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (IMDIncomingClientConnectionListener)init;
- (void)dealloc;
@end

@implementation IMDIncomingClientConnectionListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_22B4CF8C8();

  return v9 & 1;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR___IMDIncomingClientConnectionListener_queue);
  v5 = self;

  sub_22B7DACB8();

  v6.receiver = v5;
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