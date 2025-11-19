@interface HealthBalanceDaemonPlugin
+ (BOOL)shouldLoadPluginForDaemon:(id)a3;
- (NSString)pluginIdentifier;
- (_TtC19HealthBalanceDaemon25HealthBalanceDaemonPlugin)init;
- (id)extensionForHealthDaemon:(id)a3;
- (id)extensionForProfile:(id)a3;
- (id)taskServerClasses;
- (void)setPluginIdentifier:(id)a3;
@end

@implementation HealthBalanceDaemonPlugin

- (NSString)pluginIdentifier
{
  v2 = (self + OBJC_IVAR____TtC19HealthBalanceDaemon25HealthBalanceDaemonPlugin_pluginIdentifier);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_22892F098();

  return v5;
}

- (void)setPluginIdentifier:(id)a3
{
  v4 = sub_22892F0C8();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC19HealthBalanceDaemon25HealthBalanceDaemonPlugin_pluginIdentifier);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (id)extensionForHealthDaemon:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_2288EB82C(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (id)extensionForProfile:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_2288EBA90(v4);

  return v6;
}

+ (BOOL)shouldLoadPluginForDaemon:(id)a3
{
  swift_unknownObjectRetain();
  v4 = [a3 behavior];
  v5 = [v4 isRealityDevice];

  swift_unknownObjectRelease();
  return v5 ^ 1;
}

- (_TtC19HealthBalanceDaemon25HealthBalanceDaemonPlugin)init
{
  v3 = (self + OBJC_IVAR____TtC19HealthBalanceDaemon25HealthBalanceDaemonPlugin_pluginIdentifier);
  *v3 = sub_22892E3C8();
  v3[1] = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for HealthBalanceDaemonPlugin();
  return [(HealthBalanceDaemonPlugin *)&v6 init];
}

- (id)taskServerClasses
{
  sub_2288EC34C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228931EA0;
  sub_2288EC484(0, &unk_2813DF438, &unk_2813DF0E0, &unk_2289315A4, type metadata accessor for SleepingSampleDaySummaryQueryServer);
  *(v2 + 32) = v3;
  sub_2288EC3F0();
  *(v2 + 40) = v4;
  *(v2 + 48) = type metadata accessor for TrainingLoadSummaryQueryServer();
  sub_2288EC3A4();
  v5 = sub_22892F208();

  return v5;
}

@end