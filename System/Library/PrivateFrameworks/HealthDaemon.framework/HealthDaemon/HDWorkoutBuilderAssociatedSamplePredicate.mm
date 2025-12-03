@interface HDWorkoutBuilderAssociatedSamplePredicate
- (id)SQLJoinClausesForEntityClass:(Class)class;
@end

@implementation HDWorkoutBuilderAssociatedSamplePredicate

- (id)SQLJoinClausesForEntityClass:(Class)class
{
  v3 = [(objc_class *)class joinClausesForProperty:@"uuid"];
  v4 = MEMORY[0x277D10B50];
  v5 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v6 = [v4 innerJoinClauseFromTable:v5 toTargetEntity:objc_opt_class() as:0 localReference:@"uuid" targetKey:@"uuid"];

  v7 = [v3 setByAddingObject:v6];

  return v7;
}

@end