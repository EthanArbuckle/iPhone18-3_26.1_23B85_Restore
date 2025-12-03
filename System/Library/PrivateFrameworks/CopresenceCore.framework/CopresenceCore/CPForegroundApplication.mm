@interface CPForegroundApplication
- (BOOL)isGameCenterApplication;
- (CPForegroundApplication)init;
- (NSString)bundleIdentifier;
- (NSString)localizedApplicationName;
@end

@implementation CPForegroundApplication

- (NSString)bundleIdentifier
{
  v2 = *(self + OBJC_IVAR___CPForegroundApplication_bundleIdentifier);
  v3 = *(self + OBJC_IVAR___CPForegroundApplication_bundleIdentifier + 8);

  v4 = MEMORY[0x1B270FF70](v2, v3);

  return v4;
}

- (NSString)localizedApplicationName
{
  selfCopy = self;
  v3 = CPForegroundApplication.localizedApplicationName.getter();
  v5 = v4;

  v6 = MEMORY[0x1B270FF70](v3, v5);

  return v6;
}

- (BOOL)isGameCenterApplication
{
  v3 = OBJC_IVAR___CPForegroundApplication_featureFlags;
  swift_beginAccess();
  v4 = *(self + v3);
  selfCopy = self;
  if ([v4 gameCenterSharePlayIntegration] && (v6 = CPForegroundApplication.applicationRecord.getter()) != 0)
  {
    v7 = v6;
    entitlements = [v6 entitlements];

    v9 = LSPropertyList.containsAnyGameCenterEntitlements()();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CPForegroundApplication)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end