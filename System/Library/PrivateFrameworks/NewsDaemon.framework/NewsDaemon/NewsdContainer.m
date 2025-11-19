@interface NewsdContainer
+ (TFResolver)tfResolver;
- (_TtC5newsd14NewsdContainer)init;
@end

@implementation NewsdContainer

+ (TFResolver)tfResolver
{
  if (qword_10007DFF8 != -1)
  {
    swift_once();
  }

  Container.resolver.getter();
  sub_100002288(v4, v4[3]);
  v2 = dispatch thunk of ResolverType.bridgedResolver.getter();
  sub_10001653C(v4);

  return v2;
}

- (_TtC5newsd14NewsdContainer)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(NewsdContainer *)&v3 init];
}

@end