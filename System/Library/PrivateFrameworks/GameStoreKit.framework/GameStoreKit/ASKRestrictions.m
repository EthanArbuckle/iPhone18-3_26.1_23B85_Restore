@interface ASKRestrictions
- (ASKRestrictions)init;
- (BOOL)hasManagedAppleID;
- (BOOL)isAccountModificationRestricted;
- (BOOL)isAppInstallationAllowed;
- (BOOL)isAppUninstallationAllowed;
- (BOOL)isRunningInStoreDemoMode;
- (NSDictionary)contentRatingExceptionForBundleId;
- (int64_t)maximumAppContentRating;
@end

@implementation ASKRestrictions

- (int64_t)maximumAppContentRating
{

  sub_24F92BF18();

  return v3;
}

- (NSDictionary)contentRatingExceptionForBundleId
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD48);
  sub_24F92BF18();

  v2 = sub_24F92AE28();

  return v2;
}

- (BOOL)isAppInstallationAllowed
{

  sub_24F92BF18();

  return v3;
}

- (BOOL)isAppUninstallationAllowed
{

  sub_24F92BF18();

  return v3;
}

- (BOOL)isRunningInStoreDemoMode
{

  sub_24F92BF18();

  return v3;
}

- (BOOL)hasManagedAppleID
{

  sub_24F92BF18();

  return v3;
}

- (BOOL)isAccountModificationRestricted
{

  sub_24F92BF18();

  return v3;
}

- (ASKRestrictions)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end