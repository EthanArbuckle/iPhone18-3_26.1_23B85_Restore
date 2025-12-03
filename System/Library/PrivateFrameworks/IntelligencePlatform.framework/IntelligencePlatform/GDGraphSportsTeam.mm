@interface GDGraphSportsTeam
- (GDGraphSportsTeam)initWithEntityIdentifierField:(id)field nameField:(id)nameField identifiersField:(id)identifiersField qidField:(id)qidField umcIdentifierField:(id)identifierField allNameField:(id)allNameField allQidField:(id)allQidField allUmcIdentifierField:(id)self0;
@end

@implementation GDGraphSportsTeam

- (GDGraphSportsTeam)initWithEntityIdentifierField:(id)field nameField:(id)nameField identifiersField:(id)identifiersField qidField:(id)qidField umcIdentifierField:(id)identifierField allNameField:(id)allNameField allQidField:(id)allQidField allUmcIdentifierField:(id)self0
{
  fieldCopy = field;
  nameFieldCopy = nameField;
  identifiersFieldCopy = identifiersField;
  qidFieldCopy = qidField;
  identifierFieldCopy = identifierField;
  allNameFieldCopy = allNameField;
  allQidFieldCopy = allQidField;
  umcIdentifierFieldCopy = umcIdentifierField;
  v28.receiver = self;
  v28.super_class = GDGraphSportsTeam;
  v19 = [(GDGraphSportsTeam *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_entityIdentifier, field);
    objc_storeStrong(&v20->_name, nameField);
    objc_storeStrong(&v20->_identifiers, identifiersField);
    objc_storeStrong(&v20->_qid, qidField);
    objc_storeStrong(&v20->_umcIdentifier, identifierField);
    objc_storeStrong(&v20->_allName, allNameField);
    objc_storeStrong(&v20->_allQid, allQidField);
    objc_storeStrong(&v20->_allUmcIdentifier, umcIdentifierField);
  }

  return v20;
}

@end