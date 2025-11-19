@interface HMDManagedObjectCodingChangeSetSummary
- (HMDManagedObjectCodingChangeSetSummary)initWithShortDescriptionForChangeSet:(id)a3 insertedObjectNames:(id)a4 modifiedObjectPropertyNames:(id)a5;
- (id)attributeDescriptions;
@end

@implementation HMDManagedObjectCodingChangeSetSummary

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDManagedObjectCodingChangeSetSummary *)self insertedObjectNames];
  v5 = [v3 initWithName:@"insertedObjectNames" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDManagedObjectCodingChangeSetSummary *)self modifiedObjectPropertyNames];
  v8 = [v6 initWithName:@"modifiedObjectPropertyNames" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDManagedObjectCodingChangeSetSummary)initWithShortDescriptionForChangeSet:(id)a3 insertedObjectNames:(id)a4 modifiedObjectPropertyNames:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDManagedObjectCodingChangeSetSummary;
  v12 = [(HMDManagedObjectCodingChangeSetSummary *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_shortDescriptionForChangeSet, a3);
    objc_storeStrong(&v13->_insertedObjectNames, a4);
    objc_storeStrong(&v13->_modifiedObjectPropertyNames, a5);
  }

  return v13;
}

@end