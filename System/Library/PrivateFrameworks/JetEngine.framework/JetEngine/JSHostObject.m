@interface JSHostObject
- (BOOL)isOSAtLeast:(id)a3 :(id)a4 :(id)a5;
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

- (BOOL)isOSAtLeast:(id)a3 :(id)a4 :(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 toInt32];
  v11 = [v8 toInt32];
  v12 = [v9 toInt32];
  v13 = [objc_opt_self() processInfo];
  v15[0] = v10;
  v15[1] = v11;
  v15[2] = v12;
  LOBYTE(v10) = [v13 isOperatingSystemAtLeastVersion_];

  return v10;
}

- (NSString)clientIdentifier
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
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