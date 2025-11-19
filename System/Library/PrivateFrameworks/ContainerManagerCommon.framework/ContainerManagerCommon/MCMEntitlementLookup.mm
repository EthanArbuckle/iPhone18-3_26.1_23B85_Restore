@interface MCMEntitlementLookup
- (BOOL)isAllowedWithContainerConfig:(id)a3 identifier:(id)a4 part:(unint64_t)a5 partDomain:(id)a6 operation:(unint64_t)a7 access:(unint64_t)a8;
- (BOOL)isAllowedWithContainerConfig:(id)a3 part:(unint64_t)a4 partDomain:(id)a5 operation:(unint64_t)a6 access:(unint64_t)a7;
- (MCMEntitlementLookup)init;
- (MCMEntitlementLookup)initWithEntitlementData:(id)a3 containerConfigMap:(id)a4;
- (NSDictionary)rawData;
- (id)contributingIdentifiersForContainerConfig:(id)a3;
@end

@implementation MCMEntitlementLookup

- (BOOL)isAllowedWithContainerConfig:(id)a3 identifier:(id)a4 part:(unint64_t)a5 partDomain:(id)a6 operation:(unint64_t)a7 access:(unint64_t)a8
{
  v12 = sub_1DF3B0DCC();
  v14 = v13;
  if (a6)
  {
    sub_1DF3B0DCC();
  }

  swift_unknownObjectRetain();
  v15 = self;
  v16 = sub_1DF2CF904(a3, v12, v14, a7);
  swift_unknownObjectRelease();

  return v16 & 1;
}

- (NSDictionary)rawData
{
  v2 = *(self + OBJC_IVAR___MCMEntitlementLookup_rawData);

  v3 = sub_1DF3B0D9C();

  return v3;
}

- (MCMEntitlementLookup)initWithEntitlementData:(id)a3 containerConfigMap:(id)a4
{
  v4 = sub_1DF3B0DAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30CE8, &qword_1DF3BD908);
  v5 = sub_1DF3B0DAC();
  return sub_1DF2DB9E0(v4, v5);
}

- (BOOL)isAllowedWithContainerConfig:(id)a3 part:(unint64_t)a4 partDomain:(id)a5 operation:(unint64_t)a6 access:(unint64_t)a7
{
  if (a5)
  {
    sub_1DF3B0DCC();
  }

  swift_unknownObjectRetain();
  v10 = self;
  v11 = sub_1DF2DD330(a3, a6);
  swift_unknownObjectRelease();

  return v11 & 1;
}

- (id)contributingIdentifiersForContainerConfig:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1DF2DC104(a3);
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