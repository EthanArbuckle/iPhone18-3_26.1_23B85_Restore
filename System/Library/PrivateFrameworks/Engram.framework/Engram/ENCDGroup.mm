@interface ENCDGroup
+ (id)fetchRequest;
+ (id)groupFromGroup:(id)group insertIntoManagedObjectContext:(id)context;
+ (id)insertIntoManagedObjectContext:(id)context;
+ (id)predicateForGroupID:(id)d;
+ (id)predicateForGroupIDs:(id)ds;
+ (id)predicateForStableGroupID:(id)d;
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

+ (id)insertIntoManagedObjectContext:(id)context
{
  v4 = MEMORY[0x277CBE408];
  contextCopy = context;
  v6 = objc_opt_self();
  v7 = NSStringFromClass(v6);
  v8 = [v4 entityForName:v7 inManagedObjectContext:contextCopy];

  v9 = [[self alloc] initWithEntity:v8 insertIntoManagedObjectContext:contextCopy];

  return v9;
}

+ (id)groupFromGroup:(id)group insertIntoManagedObjectContext:(id)context
{
  groupCopy = group;
  v6 = [ENCDGroup insertIntoManagedObjectContext:context];
  groupID = [groupCopy groupID];
  [v6 setGroupID:groupID];

  groupID2 = [groupCopy groupID];
  stableGroupID = [groupID2 stableGroupID];
  [v6 setStableGroupID:stableGroupID];

  groupID3 = [groupCopy groupID];
  [v6 setGroupIDGeneration:{objc_msgSend(groupID3, "generation")}];

  sharedApplicationData = [groupCopy sharedApplicationData];
  [v6 setSharedApplicationData:sharedApplicationData];

  cypher = [groupCopy cypher];

  [v6 setCypher:cypher];

  return v6;
}

+ (id)predicateForGroupID:(id)d
{
  v3 = MEMORY[0x277CCAC30];
  dCopy = d;
  v5 = NSStringFromSelector(sel_groupID);
  dCopy = [v3 predicateWithFormat:@"%K == %@", v5, dCopy];

  return dCopy;
}

+ (id)predicateForGroupIDs:(id)ds
{
  v3 = MEMORY[0x277CCAC30];
  dsCopy = ds;
  v5 = NSStringFromSelector(sel_groupID);
  dsCopy = [v3 predicateWithFormat:@"%K IN %@", v5, dsCopy];

  return dsCopy;
}

+ (id)predicateForStableGroupID:(id)d
{
  v3 = MEMORY[0x277CCAC30];
  dCopy = d;
  v5 = NSStringFromSelector(sel_stableGroupID);
  dCopy = [v3 predicateWithFormat:@"%K == %@", v5, dCopy];

  return dCopy;
}

@end