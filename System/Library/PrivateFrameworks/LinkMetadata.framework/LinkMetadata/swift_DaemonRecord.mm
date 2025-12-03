@interface swift_DaemonRecord
+ (NSArray)enumerated;
+ (NSString)daemonFilePath;
+ (id)fromBundleIdentifier:(id)identifier;
+ (void)setEnumerated:(id)enumerated;
- (NSString)bundleIdentifier;
- (void)setBundleIdentifier:(id)identifier;
@end

@implementation swift_DaemonRecord

+ (id)fromBundleIdentifier:(id)identifier
{
  v3 = sub_18F093B8C();
  v5 = static DaemonRecord.from(bundleIdentifier:)(v3, v4);

  return v5;
}

- (NSString)bundleIdentifier
{
  DaemonRecord.bundleIdentifier.getter();
  v2 = sub_18F093B5C();

  return v2;
}

- (void)setBundleIdentifier:(id)identifier
{
  v4 = sub_18F093B8C();
  v6 = v5;
  selfCopy = self;
  DaemonRecord.bundleIdentifier.setter(v4, v6);
}

+ (NSString)daemonFilePath
{
  static DaemonRecord.daemonFilePath.getter();
  v2 = sub_18F093B5C();

  return v2;
}

+ (NSArray)enumerated
{
  swift_getObjCClassMetadata();
  static DaemonRecord.enumerated.getter();
  v2 = sub_18F093DBC();

  return v2;
}

+ (void)setEnumerated:(id)enumerated
{
  swift_getObjCClassMetadata();
  v3 = sub_18F093DCC();
  static DaemonRecord.enumerated.setter(v3);
}

@end