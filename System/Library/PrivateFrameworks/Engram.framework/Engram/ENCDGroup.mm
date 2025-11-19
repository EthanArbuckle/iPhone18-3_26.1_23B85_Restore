@interface ENCDGroup
+ (id)fetchRequest;
+ (id)groupFromGroup:(id)a3 insertIntoManagedObjectContext:(id)a4;
+ (id)insertIntoManagedObjectContext:(id)a3;
+ (id)predicateForGroupID:(id)a3;
+ (id)predicateForGroupIDs:(id)a3;
+ (id)predicateForStableGroupID:(id)a3;
@end

@implementation ENCDGroup

+ (id)fetchRequest
{
  v2 = objc_alloc(MEMORY[0x277CBE428]);
  v3 = objc_opt_self();
  v4 = NSStringFromClass(v3);
  v5 = [v2 initWithEntityName:v4];

  return v5;
}

+ (id)insertIntoManagedObjectContext:(id)a3
{
  v4 = MEMORY[0x277CBE408];
  v5 = a3;
  v6 = objc_opt_self();
  v7 = NSStringFromClass(v6);
  v8 = [v4 entityForName:v7 inManagedObjectContext:v5];

  v9 = [[a1 alloc] initWithEntity:v8 insertIntoManagedObjectContext:v5];

  return v9;
}

+ (id)groupFromGroup:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = [ENCDGroup insertIntoManagedObjectContext:a4];
  v7 = [v5 groupID];
  [v6 setGroupID:v7];

  v8 = [v5 groupID];
  v9 = [v8 stableGroupID];
  [v6 setStableGroupID:v9];

  v10 = [v5 groupID];
  [v6 setGroupIDGeneration:{objc_msgSend(v10, "generation")}];

  v11 = [v5 sharedApplicationData];
  [v6 setSharedApplicationData:v11];

  v12 = [v5 cypher];

  [v6 setCypher:v12];

  return v6;
}

+ (id)predicateForGroupID:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = NSStringFromSelector(sel_groupID);
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

+ (id)predicateForGroupIDs:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = NSStringFromSelector(sel_groupID);
  v6 = [v3 predicateWithFormat:@"%K IN %@", v5, v4];

  return v6;
}

+ (id)predicateForStableGroupID:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = NSStringFromSelector(sel_stableGroupID);
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

@end