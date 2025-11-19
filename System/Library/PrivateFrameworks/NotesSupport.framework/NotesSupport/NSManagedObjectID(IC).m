@interface NSManagedObjectID(IC)
- (id)ic_entityClass;
- (id)ic_uriString;
- (uint64_t)ic_isEntityOfClass:()IC;
@end

@implementation NSManagedObjectID(IC)

- (id)ic_entityClass
{
  v1 = [a1 entity];
  v2 = [v1 managedObjectClassName];
  v3 = NSClassFromString(v2);

  return v3;
}

- (id)ic_uriString
{
  v1 = [a1 URIRepresentation];
  v2 = [v1 absoluteString];

  return v2;
}

- (uint64_t)ic_isEntityOfClass:()IC
{
  v4 = [a1 ic_entityClass];

  return [v4 isSubclassOfClass:a3];
}

@end