@interface CalDatabaseGetIDOfOneEventWithAnErrorPerSource
@end

@implementation CalDatabaseGetIDOfOneEventWithAnErrorPerSource

void ___CalDatabaseGetIDOfOneEventWithAnErrorPerSource_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [CADObjectID alloc];
  v8 = [v6 intValue];

  v12 = [(CADObjectID *)v7 initWithEntityType:6 entityID:v8 databaseID:*(a1 + 40)];
  v9 = [CADObjectID alloc];
  v10 = [v5 intValue];

  v11 = [(CADObjectID *)v9 initWithEntityType:2 entityID:v10 databaseID:*(a1 + 40)];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:v12];
}

@end