@interface HMDManagedObject
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (NSString)debugDescription;
- (NSString)description;
@end

@implementation HMDManagedObject

- (BOOL)validateForUpdate:(id *)a3
{
  v7.receiver = self;
  v7.super_class = HMDManagedObject;
  v5 = [(HMDManagedObject *)&v7 validateForUpdate:?];
  if (v5)
  {
    LOBYTE(v5) = [(HMDManagedObject *)self validateForInsertOrUpdate:a3];
  }

  return v5;
}

- (BOOL)validateForInsert:(id *)a3
{
  v7.receiver = self;
  v7.super_class = HMDManagedObject;
  v5 = [(HMDManagedObject *)&v7 validateForInsert:?];
  if (v5)
  {
    LOBYTE(v5) = [(HMDManagedObject *)self validateForInsertOrUpdate:a3];
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
  v3 = [(HMDManagedObject *)self objectID];
  v4 = [v3 hmd_debugIdentifier];
  v5 = [v2 stringWithFormat:@"<%@>", v4];

  return v5;
}

@end