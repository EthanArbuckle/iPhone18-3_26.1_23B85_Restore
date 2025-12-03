@interface NSManagedObjectID(IC)
- (id)ic_entityClass;
- (id)ic_uriString;
- (uint64_t)ic_isEntityOfClass:()IC;
@end

@implementation NSManagedObjectID(IC)

- (id)ic_entityClass
{
  entity = [self entity];
  managedObjectClassName = [entity managedObjectClassName];
  v3 = NSClassFromString(managedObjectClassName);

  return v3;
}

- (id)ic_uriString
{
  uRIRepresentation = [self URIRepresentation];
  absoluteString = [uRIRepresentation absoluteString];

  return absoluteString;
}

- (uint64_t)ic_isEntityOfClass:()IC
{
  ic_entityClass = [self ic_entityClass];

  return [ic_entityClass isSubclassOfClass:a3];
}

@end