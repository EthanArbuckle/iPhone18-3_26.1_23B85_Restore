@interface MCMEntitlementAccess
- (BOOL)isAllowedWithContainerConfig:(id)config identifier:(id)identifier part:(unint64_t)part partDomain:(id)domain operation:(unint64_t)operation access:(unint64_t)access;
- (BOOL)isAllowedWithContainerConfig:(id)config part:(unint64_t)part partDomain:(id)domain operation:(unint64_t)operation access:(unint64_t)access;
- (MCMEntitlementAccess)init;
- (MCMEntitlementAccess)initWithEntitlementData:(id)data containerConfigMap:(id)map;
- (NSDictionary)rawData;
- (id)contributingIdentifiersForContainerConfig:(id)config;
@end

@implementation MCMEntitlementAccess

- (NSDictionary)rawData
{
  v2 = *(self + OBJC_IVAR___MCMEntitlementAccess_rawData);

  v3 = sub_1DF3B0D9C();

  return v3;
}

- (MCMEntitlementAccess)initWithEntitlementData:(id)data containerConfigMap:(id)map
{
  v4 = sub_1DF3B0DAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30CE8, &qword_1DF3BD908);
  v5 = sub_1DF3B0DAC();
  return sub_1DF2DED68(v4, v5);
}

- (BOOL)isAllowedWithContainerConfig:(id)config identifier:(id)identifier part:(unint64_t)part partDomain:(id)domain operation:(unint64_t)operation access:(unint64_t)access
{
  v14 = sub_1DF3B0DCC();
  v16 = v15;
  if (domain)
  {
    v17 = sub_1DF3B0DCC();
    domain = v18;
  }

  else
  {
    v17 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  v20 = sub_1DF2DF1B0(config, v14, v16, part, v17, domain, operation, access);
  swift_unknownObjectRelease();

  return v20 & 1;
}

- (BOOL)isAllowedWithContainerConfig:(id)config part:(unint64_t)part partDomain:(id)domain operation:(unint64_t)operation access:(unint64_t)access
{
  if (domain)
  {
    v12 = sub_1DF3B0DCC();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  v16 = sub_1DF2DF6AC(config, part, v12, v14, operation, access);
  swift_unknownObjectRelease();

  return v16 & 1;
}

- (id)contributingIdentifiersForContainerConfig:(id)config
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1DF2DFB9C(config);
  swift_unknownObjectRelease();

  v6 = sub_1DF3B0E5C();

  return v6;
}

- (MCMEntitlementAccess)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end