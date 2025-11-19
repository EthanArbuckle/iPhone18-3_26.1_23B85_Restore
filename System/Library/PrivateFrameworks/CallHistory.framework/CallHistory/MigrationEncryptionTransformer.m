@interface MigrationEncryptionTransformer
+ (Class)transformedValueClass;
- (MigrationEncryptionTransformer)init;
@end

@implementation MigrationEncryptionTransformer

+ (Class)transformedValueClass
{
  sub_1C3F65180();

  return swift_getObjCClassFromMetadata();
}

- (MigrationEncryptionTransformer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MigrationEncryptionTransformer();
  return [(MigrationEncryptionTransformer *)&v3 init];
}

@end