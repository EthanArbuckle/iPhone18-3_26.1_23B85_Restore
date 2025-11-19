@interface HealthTopicsDaemonPluginObject
- (NSString)pluginIdentifier;
- (_TtC24HealthTopicsDaemonPlugin30HealthTopicsDaemonPluginObject)init;
- (id)extensionForHealthDaemon:(id)a3;
- (id)extensionForProfile:(id)a3;
- (id)taskServerClasses;
@end

@implementation HealthTopicsDaemonPluginObject

- (NSString)pluginIdentifier
{
  sub_251F637A4();
  v2 = sub_251F639B4();

  return v2;
}

- (id)extensionForHealthDaemon:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  v5 = sub_251F5C8F8();
  swift_unknownObjectRelease();

  return v5;
}

- (id)extensionForProfile:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_251F5BDF8(v4);

  return v6;
}

- (_TtC24HealthTopicsDaemonPlugin30HealthTopicsDaemonPluginObject)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HealthTopicsDaemonPluginObject();
  return [(HealthTopicsDaemonPluginObject *)&v3 init];
}

- (id)taskServerClasses
{
  sub_251F5CB1C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_251F64670;
  *(v2 + 32) = type metadata accessor for HealthTopicsTaskServer();
  sub_251F5CB74();
  v3 = sub_251F63A14();

  return v3;
}

@end