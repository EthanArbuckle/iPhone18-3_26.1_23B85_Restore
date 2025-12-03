@interface HMDManagedObjectCodingChangeSetSummary
- (HMDManagedObjectCodingChangeSetSummary)initWithShortDescriptionForChangeSet:(id)set insertedObjectNames:(id)names modifiedObjectPropertyNames:(id)propertyNames;
- (id)attributeDescriptions;
@end

@implementation HMDManagedObjectCodingChangeSetSummary

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  insertedObjectNames = [(HMDManagedObjectCodingChangeSetSummary *)self insertedObjectNames];
  v5 = [v3 initWithName:@"insertedObjectNames" value:insertedObjectNames];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  modifiedObjectPropertyNames = [(HMDManagedObjectCodingChangeSetSummary *)self modifiedObjectPropertyNames];
  v8 = [v6 initWithName:@"modifiedObjectPropertyNames" value:modifiedObjectPropertyNames];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDManagedObjectCodingChangeSetSummary)initWithShortDescriptionForChangeSet:(id)set insertedObjectNames:(id)names modifiedObjectPropertyNames:(id)propertyNames
{
  setCopy = set;
  namesCopy = names;
  propertyNamesCopy = propertyNames;
  v15.receiver = self;
  v15.super_class = HMDManagedObjectCodingChangeSetSummary;
  v12 = [(HMDManagedObjectCodingChangeSetSummary *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_shortDescriptionForChangeSet, set);
    objc_storeStrong(&v13->_insertedObjectNames, names);
    objc_storeStrong(&v13->_modifiedObjectPropertyNames, propertyNames);
  }

  return v13;
}

@end