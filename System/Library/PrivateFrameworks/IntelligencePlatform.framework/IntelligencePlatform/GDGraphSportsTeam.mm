@interface GDGraphSportsTeam
- (GDGraphSportsTeam)initWithEntityIdentifierField:(id)a3 nameField:(id)a4 identifiersField:(id)a5 qidField:(id)a6 umcIdentifierField:(id)a7 allNameField:(id)a8 allQidField:(id)a9 allUmcIdentifierField:(id)a10;
@end

@implementation GDGraphSportsTeam

- (GDGraphSportsTeam)initWithEntityIdentifierField:(id)a3 nameField:(id)a4 identifiersField:(id)a5 qidField:(id)a6 umcIdentifierField:(id)a7 allNameField:(id)a8 allQidField:(id)a9 allUmcIdentifierField:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = GDGraphSportsTeam;
  v19 = [(GDGraphSportsTeam *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_entityIdentifier, a3);
    objc_storeStrong(&v20->_name, a4);
    objc_storeStrong(&v20->_identifiers, a5);
    objc_storeStrong(&v20->_qid, a6);
    objc_storeStrong(&v20->_umcIdentifier, a7);
    objc_storeStrong(&v20->_allName, a8);
    objc_storeStrong(&v20->_allQid, a9);
    objc_storeStrong(&v20->_allUmcIdentifier, a10);
  }

  return v20;
}

@end