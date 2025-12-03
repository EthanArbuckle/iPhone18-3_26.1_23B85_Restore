@interface MCMEntitlementLookup
- (BOOL)isAllowedWithContainerConfig:(id)config identifier:(id)identifier part:(unint64_t)part partDomain:(id)domain operation:(unint64_t)operation access:(unint64_t)access;
- (BOOL)isAllowedWithContainerConfig:(id)config part:(unint64_t)part partDomain:(id)domain operation:(unint64_t)operation access:(unint64_t)access;
- (MCMEntitlementLookup)init;
- (MCMEntitlementLookup)initWithEntitlementData:(id)data containerConfigMap:(id)map;
- (NSDictionary)rawData;
- (id)contributingIdentifiersForContainerConfig:(id)config;
@end

@implementation MCMEntitlementLookup

- (BOOL)isAllowedWithContainerConfig:(id)config identifier:(id)identifier part:(unint64_t)part partDomain:(id)domain operation:(unint64_t)operation access:(unint64_t)access
{
  v12 = sub_1DF3B0DCC();
  v14 = v13;
  if (domain)
  {
    sub_1DF3B0DCC();
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  v16 = sub_1DF2CF904(config, v12, v14, operation);
  swift_unknownObjectRelease();

  return v16 & 1;
}

- (NSDictionary)rawData
{
  v2 = *(self + OBJC_IVAR___MCMEntitlementLookup_rawData);

  v3 = sub_1DF3B0D9C();

  return v3;
}

- (MCMEntitlementLookup)initWithEntitlementData:(id)data containerConfigMap:(id)map
{
  v4 = sub_1DF3B0DAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30CE8, &qword_1DF3BD908);
  v5 = sub_1DF3B0DAC();
  return sub_1DF2DB9E0(v4, v5);
}

- (BOOL)isAllowedWithContainerConfig:(id)config part:(unint64_t)part partDomain:(id)domain operation:(unint64_t)operation access:(unint64_t)access
{
  if (domain)
  {
    sub_1DF3B0DCC();
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  v11 = sub_1DF2DD330(config, operation);
  swift_unknownObjectRelease();

  return v11 & 1;
}

- (id)contributingIdentifiersForContainerConfig:(id)config
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1DF2DC104(config);
  swift_unknownObjectRelease();

  v6 = sub_1DF3B0E5C();

  return v6;
}

- (MCMEntitlementLookup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end