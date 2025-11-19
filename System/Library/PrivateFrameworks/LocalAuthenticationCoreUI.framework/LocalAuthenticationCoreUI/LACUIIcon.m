@interface LACUIIcon
+ (UIImage)genericIcon;
+ (id)imageForBundleIdentifier:(id)a3;
+ (id)imageForPath:(id)a3;
- (LACUIIcon)init;
@end

@implementation LACUIIcon

+ (UIImage)genericIcon
{
  v2 = [objc_opt_self() genericApplicationIcon];
  v3 = LACUIImageWithIcon(v2);

  return v3;
}

+ (id)imageForBundleIdentifier:(id)a3
{
  if (a3)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    v6 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v7 = MEMORY[0x259C58D00](v3, v5);
    v8 = [v6 initWithBundleIdentifier_];

    v9 = LACUIImageWithIcon(v8);

    v10 = v9;
  }

  else
  {
    v10 = [a1 genericIcon];
  }

  return v10;
}

+ (id)imageForPath:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = specialized static LACUIIcon.icon(forPath:)(v4, v6);

  if (v7)
  {
    v8 = LACUIImageWithIcon(v7);

    v9 = v8;
  }

  else
  {
    v9 = [a1 genericIcon];
  }

  return v9;
}

- (LACUIIcon)init
{
  v3.receiver = self;
  v3.super_class = LACUIIcon;
  return [(LACUIIcon *)&v3 init];
}

@end