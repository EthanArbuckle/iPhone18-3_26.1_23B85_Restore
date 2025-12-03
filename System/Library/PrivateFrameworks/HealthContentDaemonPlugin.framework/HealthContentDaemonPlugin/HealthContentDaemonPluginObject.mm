@interface HealthContentDaemonPluginObject
- (NSString)pluginIdentifier;
- (_TtC25HealthContentDaemonPlugin31HealthContentDaemonPluginObject)init;
- (id)extensionForHealthDaemon:(id)daemon;
- (id)extensionForProfile:(id)profile;
- (id)newInternalContentDatabaseManagerForProfile:(id)profile;
- (id)taskServerClasses;
@end

@implementation HealthContentDaemonPluginObject

- (NSString)pluginIdentifier
{
  v2 = *(self + OBJC_IVAR____TtC25HealthContentDaemonPlugin31HealthContentDaemonPluginObject_pluginIdentifier);
  v3 = *(self + OBJC_IVAR____TtC25HealthContentDaemonPlugin31HealthContentDaemonPluginObject_pluginIdentifier + 8);

  v4 = sub_25154D250();

  return v4;
}

- (id)extensionForHealthDaemon:(id)daemon
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = sub_25154BBAC();
  swift_unknownObjectRelease();

  return v5;
}

- (id)extensionForProfile:(id)profile
{
  profileCopy = profile;
  selfCopy = self;
  v6 = sub_25154BE28(profileCopy);

  return v6;
}

- (id)newInternalContentDatabaseManagerForProfile:(id)profile
{
  v4 = objc_allocWithZone(MEMORY[0x277D103A8]);

  return [v4 initWithProfile_];
}

- (_TtC25HealthContentDaemonPlugin31HealthContentDaemonPluginObject)init
{
  v3 = (self + OBJC_IVAR____TtC25HealthContentDaemonPlugin31HealthContentDaemonPluginObject_pluginIdentifier);
  *v3 = sub_25154CD60();
  v3[1] = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for HealthContentDaemonPluginObject();
  return [(HealthContentDaemonPluginObject *)&v6 init];
}

- (id)taskServerClasses
{
  sub_25154CAB8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25154E5A0;
  *(v2 + 32) = sub_25154CB5C(0, &qword_2813D8388, 0x277D103A0);
  *(v2 + 40) = sub_25154CB5C(0, &qword_2813D8380, 0x277D103D0);
  *(v2 + 48) = type metadata accessor for HealthOntologyStoreTaskServer();
  sub_25154CB10();
  v3 = sub_25154D2F0();

  return v3;
}

@end