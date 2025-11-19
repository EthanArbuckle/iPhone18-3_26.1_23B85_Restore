@interface _DKChangeSetMO
+ (id)fetchAdditionChangeSetRequest;
+ (id)fetchDeletionChangeSetRequest;
@end

@implementation _DKChangeSetMO

+ (id)fetchAdditionChangeSetRequest
{
  objc_opt_self();
  v0 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"AdditionChangeSet"];

  return v0;
}

+ (id)fetchDeletionChangeSetRequest
{
  objc_opt_self();
  v0 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"DeletionChangeSet"];

  return v0;
}

@end