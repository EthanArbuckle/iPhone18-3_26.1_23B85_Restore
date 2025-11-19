@interface NDLiveActivityServiceListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NDLiveActivityServiceListenerDelegate)init;
@end

@implementation NDLiveActivityServiceListenerDelegate

- (NDLiveActivityServiceListenerDelegate)init
{
  ObjectType = swift_getObjectType();
  if (qword_10007DFF8 != -1)
  {
    swift_once();
  }

  Container.resolver.getter();
  sub_100002288(v6, v6[3]);
  type metadata accessor for LiveActivityService();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    *(&self->super.isa + OBJC_IVAR___NDLiveActivityServiceListenerDelegate_liveActivityService) = result;
    sub_10001653C(v6);
    v5.receiver = self;
    v5.super_class = ObjectType;
    return [(NDLiveActivityServiceListenerDelegate *)&v5 init];
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100015E78(v7);

  return v9 & 1;
}

@end