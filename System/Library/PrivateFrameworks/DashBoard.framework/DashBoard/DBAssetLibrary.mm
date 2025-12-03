@interface DBAssetLibrary
+ (_TtC9DashBoard14DBAssetLibrary)shared;
+ (void)setShared:(id)shared;
- (CARSession)session;
- (_TtP9DashBoard22DBAssetLibraryDelegate_)delegate;
- (id)verifiedPunchThroughsWithBundleIdentifier:(id)identifier;
- (void)setSession:(id)session;
@end

@implementation DBAssetLibrary

- (_TtP9DashBoard22DBAssetLibraryDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (_TtC9DashBoard14DBAssetLibrary)shared
{
  if (qword_27EE948D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DBAssetLibrary.shared;
}

+ (void)setShared:(id)shared
{
  v3 = qword_27EE948D0;
  sharedCopy = shared;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static DBAssetLibrary.shared;
  static DBAssetLibrary.shared = sharedCopy;
}

- (CARSession)session
{
  v3 = OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_session;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSession:(id)session
{
  v5 = OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_session;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = session;
  sessionCopy = session;
  selfCopy = self;

  sub_248228A0C();
}

- (id)verifiedPunchThroughsWithBundleIdentifier:(id)identifier
{
  v4 = sub_248383960();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9 = DBAssetLibrary.verifiedPunchThroughs(bundleIdentifier:)(v8);

  if (v9)
  {
    v10 = sub_248383B00();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end