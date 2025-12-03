@interface HMDManagedObject
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (NSString)debugDescription;
- (NSString)description;
@end

@implementation HMDManagedObject

- (BOOL)validateForUpdate:(id *)update
{
  v7.receiver = self;
  v7.super_class = HMDManagedObject;
  v5 = [(HMDManagedObject *)&v7 validateForUpdate:?];
  if (v5)
  {
    LOBYTE(v5) = [(HMDManagedObject *)self validateForInsertOrUpdate:update];
  }

  return v5;
}

- (BOOL)validateForInsert:(id *)insert
{
  v7.receiver = self;
  v7.super_class = HMDManagedObject;
  v5 = [(HMDManagedObject *)&v7 validateForInsert:?];
  if (v5)
  {
    LOBYTE(v5) = [(HMDManagedObject *)self validateForInsertOrUpdate:insert];
  }

  return v5;
}

- (NSString)debugDescription
{
  v4.receiver = self;
  v4.super_class = HMDManagedObject;
  v2 = [(HMDManagedObject *)&v4 description];

  return v2;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  objectID = [(HMDManagedObject *)self objectID];
  hmd_debugIdentifier = [objectID hmd_debugIdentifier];
  v5 = [v2 stringWithFormat:@"<%@>", hmd_debugIdentifier];

  return v5;
}

@end