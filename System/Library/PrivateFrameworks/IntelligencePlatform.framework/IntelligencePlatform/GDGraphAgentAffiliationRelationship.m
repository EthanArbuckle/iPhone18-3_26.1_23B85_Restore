@interface GDGraphAgentAffiliationRelationship
- (GDGraphAgentAffiliationRelationship)initWithLabelField:(id)a3 personIdField:(id)a4 allLabelField:(id)a5 allPersonIdField:(id)a6;
@end

@implementation GDGraphAgentAffiliationRelationship

- (GDGraphAgentAffiliationRelationship)initWithLabelField:(id)a3 personIdField:(id)a4 allLabelField:(id)a5 allPersonIdField:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = GDGraphAgentAffiliationRelationship;
  v15 = [(GDGraphAgentAffiliationRelationship *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_label, a3);
    objc_storeStrong(&v16->_personId, a4);
    objc_storeStrong(&v16->_allLabel, a5);
    objc_storeStrong(&v16->_allPersonId, a6);
  }

  return v16;
}

@end