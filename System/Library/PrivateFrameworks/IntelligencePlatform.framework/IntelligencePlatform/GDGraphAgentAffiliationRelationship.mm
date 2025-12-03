@interface GDGraphAgentAffiliationRelationship
- (GDGraphAgentAffiliationRelationship)initWithLabelField:(id)field personIdField:(id)idField allLabelField:(id)labelField allPersonIdField:(id)personIdField;
@end

@implementation GDGraphAgentAffiliationRelationship

- (GDGraphAgentAffiliationRelationship)initWithLabelField:(id)field personIdField:(id)idField allLabelField:(id)labelField allPersonIdField:(id)personIdField
{
  fieldCopy = field;
  idFieldCopy = idField;
  labelFieldCopy = labelField;
  personIdFieldCopy = personIdField;
  v18.receiver = self;
  v18.super_class = GDGraphAgentAffiliationRelationship;
  v15 = [(GDGraphAgentAffiliationRelationship *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_label, field);
    objc_storeStrong(&v16->_personId, idField);
    objc_storeStrong(&v16->_allLabel, labelField);
    objc_storeStrong(&v16->_allPersonId, personIdField);
  }

  return v16;
}

@end