@interface JSHostObject
- (BOOL)isOSAtLeast:(id)least :(id)a4 :(id)a5;
- (NSString)clientIdentifier;
- (NSString)clientVersion;
- (NSString)platform;
- (_TtC9JetEngine12JSHostObject)init;
@end

@implementation JSHostObject

- (_TtC9JetEngine12JSHostObject)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(JSHostObject *)&v3 init];
}

- (NSString)platform
{
  v2 = sub_1AB460514();

  return v2;
}

- (BOOL)isOSAtLeast:(id)least :(id)a4 :(id)a5
{
  leastCopy = least;
  v8 = a4;
  v9 = a5;
  toInt32 = [leastCopy toInt32];
  toInt322 = [v8 toInt32];
  toInt323 = [v9 toInt32];
  processInfo = [objc_opt_self() processInfo];
  v15[0] = toInt32;
  v15[1] = toInt322;
  v15[2] = toInt323;
  LOBYTE(toInt32) = [processInfo isOperatingSystemAtLeastVersion_];

  return toInt32;
}

- (NSString)clientIdentifier
{
  mainBundle = [objc_opt_self() mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (bundleIdentifier)
  {
    sub_1AB460544();
  }

  v4 = sub_1AB460514();

  return v4;
}

- (NSString)clientVersion
{
  sub_1AB42D59C();
  v2 = sub_1AB460514();

  return v2;
}

@end