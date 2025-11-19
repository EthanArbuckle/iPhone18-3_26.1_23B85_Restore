@interface ULMigrationMO
+ (id)createFromDO:(const void *)a3 inManagedObjectContext:(id)a4;
- (optional<ULMigrationDO>)convertToDO;
@end

@implementation ULMigrationMO

+ (id)createFromDO:(const void *)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = [[ULMigrationMO alloc] initWithContext:v5];
  [(ULMigrationMO *)v6 setTimestamp:*a3];
  [(ULMigrationMO *)v6 setState:*(a3 + 2)];

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