@interface MedicalIDDaemonPlugin
- (NSString)pluginIdentifier;
- (_TtC15MedicalIDDaemon21MedicalIDDaemonPlugin)init;
- (id)extensionForHealthDaemon:(id)daemon;
- (id)extensionForProfile:(id)profile;
- (void)setPluginIdentifier:(id)identifier;
@end

@implementation MedicalIDDaemonPlugin

- (NSString)pluginIdentifier
{
  v2 = (self + OBJC_IVAR____TtC15MedicalIDDaemon21MedicalIDDaemonPlugin_pluginIdentifier);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_22948549C();

  return v5;
}

- (void)setPluginIdentifier:(id)identifier
{
  v4 = sub_2294854AC();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC15MedicalIDDaemon21MedicalIDDaemonPlugin_pluginIdentifier);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (id)extensionForHealthDaemon:(id)daemon
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = sub_229484FDC();
  swift_unknownObjectRelease();

  return v5;
}

- (id)extensionForProfile:(id)profile
{
  profileCopy = profile;
  selfCopy = self;
  sub_2294846F4(profileCopy);

  return 0;
}

- (_TtC15MedicalIDDaemon21MedicalIDDaemonPlugin)init
{
  v2 = (self + OBJC_IVAR____TtC15MedicalIDDaemon21MedicalIDDaemonPlugin_pluginIdentifier);
  *v2 = 0x496C61636964654DLL;
  v2[1] = 0xE900000000000044;
  v4.receiver = self;
  v4.super_class = type metadata accessor for MedicalIDDaemonPlugin();
  return [(MedicalIDDaemonPlugin *)&v4 init];
}

@end