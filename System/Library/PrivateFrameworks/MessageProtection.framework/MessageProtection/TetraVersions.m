@interface TetraVersions
+ (BOOL)isTetraNoRatchetCompatibleWith:(unsigned int)a3;
- (_TtC17MessageProtection13TetraVersions)init;
@end

@implementation TetraVersions

+ (BOOL)isTetraNoRatchetCompatibleWith:(unsigned int)a3
{
  v6[3] = &type metadata for MessageProtectionFeatureFlags;
  v6[4] = lazy protocol witness table accessor for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags();
  LOBYTE(v6[0]) = 3;
  v4 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4 & (a3 > 0xD);
}

- (_TtC17MessageProtection13TetraVersions)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TetraVersions();
  return [(TetraVersions *)&v3 init];
}

@end