@interface LACUIIcon
+ (UIImage)genericIcon;
+ (id)imageForBundleIdentifier:(id)identifier;
+ (id)imageForPath:(id)path;
- (LACUIIcon)init;
@end

@implementation LACUIIcon

+ (UIImage)genericIcon
{
  genericApplicationIcon = [objc_opt_self() genericApplicationIcon];
  v3 = LACUIImageWithIcon(genericApplicationIcon);

  return v3;
}

+ (id)imageForBundleIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    v6 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v7 = MEMORY[0x259C58D00](v3, v5);
    initWithBundleIdentifier_ = [v6 initWithBundleIdentifier_];

    v9 = LACUIImageWithIcon(initWithBundleIdentifier_);

    genericIcon = v9;
  }

  else
  {
    genericIcon = [self genericIcon];
  }

  return genericIcon;
}

+ (id)imageForPath:(id)path
{
  if (path)
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

    genericIcon = v8;
  }

  else
  {
    genericIcon = [self genericIcon];
  }

  return genericIcon;
}

- (LACUIIcon)init
{
  v3.receiver = self;
  v3.super_class = LACUIIcon;
  return [(LACUIIcon *)&v3 init];
}

@end