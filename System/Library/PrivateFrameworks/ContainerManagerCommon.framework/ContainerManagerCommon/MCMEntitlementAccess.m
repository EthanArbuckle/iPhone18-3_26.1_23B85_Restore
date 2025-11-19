@interface MCMEntitlementAccess
- (BOOL)isAllowedWithContainerConfig:(id)a3 identifier:(id)a4 part:(unint64_t)a5 partDomain:(id)a6 operation:(unint64_t)a7 access:(unint64_t)a8;
- (BOOL)isAllowedWithContainerConfig:(id)a3 part:(unint64_t)a4 partDomain:(id)a5 operation:(unint64_t)a6 access:(unint64_t)a7;
- (MCMEntitlementAccess)init;
- (MCMEntitlementAccess)initWithEntitlementData:(id)a3 containerConfigMap:(id)a4;
- (NSDictionary)rawData;
- (id)contributingIdentifiersForContainerConfig:(id)a3;
@end

@implementation MCMEntitlementAccess

- (NSDictionary)rawData
{
  v2 = *(self + OBJC_IVAR___MCMEntitlementAccess_rawData);

  v3 = sub_1DF3B0D9C();

  return v3;
}

- (MCMEntitlementAccess)initWithEntitlementData:(id)a3 containerConfigMap:(id)a4
{
  v4 = sub_1DF3B0DAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30CE8, &qword_1DF3BD908);
  v5 = sub_1DF3B0DAC();
  return sub_1DF2DED68(v4, v5);
}

- (BOOL)isAllowedWithContainerConfig:(id)a3 identifier:(id)a4 part:(unint64_t)a5 partDomain:(id)a6 operation:(unint64_t)a7 access:(unint64_t)a8
{
  v14 = sub_1DF3B0DCC();
  v16 = v15;
  if (a6)
  {
    v17 = sub_1DF3B0DCC();
    a6 = v18;
  }

  else
  {
    v17 = 0;
  }

  swift_unknownObjectRetain();
  v19 = self;
  v20 = sub_1DF2DF1B0(a3, v14, v16, a5, v17, a6, a7, a8);
  swift_unknownObjectRelease();

  return v20 & 1;
}

- (BOOL)isAllowedWithContainerConfig:(id)a3 part:(unint64_t)a4 partDomain:(id)a5 operation:(unint64_t)a6 access:(unint64_t)a7
{
  if (a5)
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
  v15 = self;
  v16 = sub_1DF2DF6AC(a3, a4, v12, v14, a6, a7);
  swift_unknownObjectRelease();

  return v16 & 1;
}

- (id)contributingIdentifiersForContainerConfig:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1DF2DFB9C(a3);
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