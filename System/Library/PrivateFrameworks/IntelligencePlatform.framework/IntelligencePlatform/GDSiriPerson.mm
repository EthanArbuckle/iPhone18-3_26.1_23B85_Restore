@interface GDSiriPerson
- (GDSiriPerson)initWithContactIdentifiers:(id)identifiers givenNames:(id)names phoneticGivenNames:(id)givenNames middleNames:(id)middleNames phoneticMiddleNames:(id)phoneticMiddleNames lastNames:(id)lastNames phoneticLastNames:(id)phoneticLastNames prefixes:(id)self0 nickNames:(id)self1 organizations:(id)self2;
@end

@implementation GDSiriPerson

- (GDSiriPerson)initWithContactIdentifiers:(id)identifiers givenNames:(id)names phoneticGivenNames:(id)givenNames middleNames:(id)middleNames phoneticMiddleNames:(id)phoneticMiddleNames lastNames:(id)lastNames phoneticLastNames:(id)phoneticLastNames prefixes:(id)self0 nickNames:(id)self1 organizations:(id)self2
{
  identifiersCopy = identifiers;
  obj = names;
  namesCopy = names;
  givenNamesCopy = givenNames;
  givenNamesCopy2 = givenNames;
  middleNamesCopy = middleNames;
  phoneticMiddleNamesCopy = phoneticMiddleNames;
  phoneticMiddleNamesCopy2 = phoneticMiddleNames;
  lastNamesCopy = lastNames;
  lastNamesCopy2 = lastNames;
  phoneticLastNamesCopy = phoneticLastNames;
  prefixesCopy = prefixes;
  nickNamesCopy = nickNames;
  organizationsCopy = organizations;
  v36.receiver = self;
  v36.super_class = GDSiriPerson;
  v23 = [(GDSiriPerson *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_contactIdentifiers, identifiers);
    objc_storeStrong(&v24->_givenNames, obj);
    objc_storeStrong(&v24->_phoneticGivenNames, givenNamesCopy);
    objc_storeStrong(&v24->_middleNames, middleNames);
    objc_storeStrong(&v24->_phoneticMiddleNames, phoneticMiddleNamesCopy);
    objc_storeStrong(&v24->_lastNames, lastNamesCopy);
    objc_storeStrong(&v24->_phoneticLastNames, phoneticLastNames);
    objc_storeStrong(&v24->_prefixes, prefixes);
    objc_storeStrong(&v24->_nickNames, nickNames);
    objc_storeStrong(&v24->_organizations, organizations);
  }

  return v24;
}

@end