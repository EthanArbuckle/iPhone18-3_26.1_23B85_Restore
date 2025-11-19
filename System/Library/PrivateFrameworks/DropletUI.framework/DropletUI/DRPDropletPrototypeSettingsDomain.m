@interface DRPDropletPrototypeSettingsDomain
+ (Class)rootSettingsClass;
+ (id)domainGroupName;
+ (id)domainName;
+ (id)rootSettings;
@end

@implementation DRPDropletPrototypeSettingsDomain

+ (id)rootSettings
{
  swift_getObjCClassMetadata();
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___DRPDropletPrototypeSettingsDomain;
  result = objc_msgSendSuper2(&v4, sel_rootSettings);
  if (result)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClassUnconditional();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

+ (id)domainGroupName
{
  v2 = sub_249ED6C60();

  return v2;
}

+ (id)domainName
{
  v2 = sub_249ED6C60();

  return v2;
}

+ (Class)rootSettingsClass
{
  type metadata accessor for DRPDropletPrototypeSettings(0);

  return swift_getObjCClassFromMetadata();
}

@end