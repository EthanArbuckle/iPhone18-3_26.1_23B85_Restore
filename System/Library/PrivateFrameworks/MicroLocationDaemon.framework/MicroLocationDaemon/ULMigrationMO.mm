@interface ULMigrationMO
+ (id)createFromDO:(const void *)o inManagedObjectContext:(id)context;
- (optional<ULMigrationDO>)convertToDO;
@end

@implementation ULMigrationMO

+ (id)createFromDO:(const void *)o inManagedObjectContext:(id)context
{
  contextCopy = context;
  v6 = [[ULMigrationMO alloc] initWithContext:contextCopy];
  [(ULMigrationMO *)v6 setTimestamp:*o];
  [(ULMigrationMO *)v6 setState:*(o + 2)];

  return v6;
}

- (optional<ULMigrationDO>)convertToDO
{
  v3 = v1;
  [(ULMigrationMO *)self timestamp];
  v6 = v4;
  v5 = ULMigrationDO::ULMigrationDO(v3, [(ULMigrationMO *)self state], &v6);
  *(v3 + 16) = 1;
  return v5;
}

@end