@interface GDGraphPerson
- (GDGraphPerson)initWithEntityIdentifierField:(id)field fullNamesField:(id)namesField prefixesField:(id)prefixesField givenNamesField:(id)givenNamesField phoneticGivenNamesField:(id)phoneticGivenNamesField middleNamesField:(id)middleNamesField phoneticMiddleNamesField:(id)phoneticMiddleNamesField familyNamesField:(id)self0 phoneticFamilyNamesField:(id)self1 previousFamilyNamesField:(id)self2 suffixesField:(id)self3 nicknamesField:(id)self4 birthNamesField:(id)self5 birthdayField:(id)self6 occupationField:(id)self7 isFavoriteField:(id)self8 isCurrentUserField:(id)self9 isInferredDeviceUserField:(id)deviceUserField associatedPeopleField:(id)peopleField locationsField:(id)locationsField employersField:(id)employersField topicsField:(id)topicsField handlesField:(id)handlesField identifiersField:(id)identifiersField contactIdentifierField:(id)identifierField visualIdentifiersField:(id)visualIdentifiersField allBirthdayField:(id)allBirthdayField allOccupationField:(id)field0 allIsFavoriteField:(id)field1 allIsCurrentUserField:(id)field2 allIsInferredDeviceUserField:(id)field3 allContactIdentifierField:(id)field4;
- (NSPersonNameComponents)suggestedNameComponentsInner;
- (int64_t)autonamingSuggestionReasonInner;
@end

@implementation GDGraphPerson

- (NSPersonNameComponents)suggestedNameComponentsInner
{
  v3 = sub_1ABAD219C(&qword_1EB4D2BC0, &qword_1ABF39E20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  selfCopy = self;
  GDGraphPerson.suggestedNameComponentsInner.getter(v6);

  v8 = sub_1ABF21BC4();
  v9 = 0;
  if (sub_1ABA7E1E0(v6, 1, v8) != 1)
  {
    v9 = sub_1ABF21B94();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  return v9;
}

- (int64_t)autonamingSuggestionReasonInner
{
  selfCopy = self;
  v3 = GDGraphPerson.autonamingSuggestionReasonInner.getter();

  return v3;
}

- (GDGraphPerson)initWithEntityIdentifierField:(id)field fullNamesField:(id)namesField prefixesField:(id)prefixesField givenNamesField:(id)givenNamesField phoneticGivenNamesField:(id)phoneticGivenNamesField middleNamesField:(id)middleNamesField phoneticMiddleNamesField:(id)phoneticMiddleNamesField familyNamesField:(id)self0 phoneticFamilyNamesField:(id)self1 previousFamilyNamesField:(id)self2 suffixesField:(id)self3 nicknamesField:(id)self4 birthNamesField:(id)self5 birthdayField:(id)self6 occupationField:(id)self7 isFavoriteField:(id)self8 isCurrentUserField:(id)self9 isInferredDeviceUserField:(id)deviceUserField associatedPeopleField:(id)peopleField locationsField:(id)locationsField employersField:(id)employersField topicsField:(id)topicsField handlesField:(id)handlesField identifiersField:(id)identifiersField contactIdentifierField:(id)identifierField visualIdentifiersField:(id)visualIdentifiersField allBirthdayField:(id)allBirthdayField allOccupationField:(id)field0 allIsFavoriteField:(id)field1 allIsCurrentUserField:(id)field2 allIsInferredDeviceUserField:(id)field3 allContactIdentifierField:(id)field4
{
  fieldCopy = field;
  namesFieldCopy = namesField;
  namesFieldCopy2 = namesField;
  prefixesFieldCopy = prefixesField;
  givenNamesFieldCopy = givenNamesField;
  phoneticGivenNamesFieldCopy = phoneticGivenNamesField;
  middleNamesFieldCopy = middleNamesField;
  middleNamesFieldCopy2 = middleNamesField;
  phoneticMiddleNamesFieldCopy = phoneticMiddleNamesField;
  familyNamesFieldCopy = familyNamesField;
  phoneticFamilyNamesFieldCopy = phoneticFamilyNamesField;
  previousFamilyNamesFieldCopy = previousFamilyNamesField;
  suffixesFieldCopy = suffixesField;
  nicknamesFieldCopy = nicknamesField;
  birthNamesFieldCopy = birthNamesField;
  birthdayFieldCopy = birthdayField;
  occupationFieldCopy = occupationField;
  favoriteFieldCopy = favoriteField;
  userFieldCopy = userField;
  deviceUserFieldCopy = deviceUserField;
  peopleFieldCopy = peopleField;
  locationsFieldCopy = locationsField;
  employersFieldCopy = employersField;
  topicsFieldCopy = topicsField;
  handlesFieldCopy = handlesField;
  identifiersFieldCopy = identifiersField;
  identifierFieldCopy = identifierField;
  visualIdentifiersFieldCopy = visualIdentifiersField;
  allBirthdayFieldCopy = allBirthdayField;
  allOccupationFieldCopy = allOccupationField;
  isFavoriteFieldCopy = isFavoriteField;
  currentUserFieldCopy = currentUserField;
  inferredDeviceUserFieldCopy = inferredDeviceUserField;
  contactIdentifierFieldCopy = contactIdentifierField;
  v78.receiver = self;
  v78.super_class = GDGraphPerson;
  v45 = [(GDGraphPerson *)&v78 init];
  v46 = v45;
  if (v45)
  {
    objc_storeStrong(&v45->_entityIdentifier, field);
    objc_storeStrong(&v46->_fullNames, namesFieldCopy);
    objc_storeStrong(&v46->_prefixes, prefixesField);
    objc_storeStrong(&v46->_givenNames, givenNamesField);
    objc_storeStrong(&v46->_phoneticGivenNames, phoneticGivenNamesField);
    objc_storeStrong(&v46->_middleNames, middleNamesFieldCopy);
    objc_storeStrong(&v46->_phoneticMiddleNames, phoneticMiddleNamesField);
    objc_storeStrong(&v46->_familyNames, familyNamesField);
    objc_storeStrong(&v46->_phoneticFamilyNames, phoneticFamilyNamesField);
    objc_storeStrong(&v46->_previousFamilyNames, previousFamilyNamesField);
    objc_storeStrong(&v46->_suffixes, suffixesField);
    objc_storeStrong(&v46->_nicknames, nicknamesField);
    objc_storeStrong(&v46->_birthNames, birthNamesField);
    objc_storeStrong(&v46->_birthday, birthdayField);
    objc_storeStrong(&v46->_occupation, occupationField);
    objc_storeStrong(&v46->_isFavorite, favoriteField);
    objc_storeStrong(&v46->_isCurrentUser, userField);
    objc_storeStrong(&v46->_isInferredDeviceUser, deviceUserField);
    objc_storeStrong(&v46->_associatedPeople, peopleField);
    objc_storeStrong(&v46->_locations, locationsField);
    objc_storeStrong(&v46->_employers, employersField);
    objc_storeStrong(&v46->_topics, topicsField);
    objc_storeStrong(&v46->_handles, handlesField);
    objc_storeStrong(&v46->_identifiers, identifiersField);
    objc_storeStrong(&v46->_contactIdentifier, identifierField);
    objc_storeStrong(&v46->_visualIdentifiers, visualIdentifiersField);
    objc_storeStrong(&v46->_allBirthday, allBirthdayField);
    objc_storeStrong(&v46->_allOccupation, allOccupationField);
    objc_storeStrong(&v46->_allIsFavorite, isFavoriteField);
    objc_storeStrong(&v46->_allIsCurrentUser, currentUserField);
    objc_storeStrong(&v46->_allIsInferredDeviceUser, inferredDeviceUserField);
    objc_storeStrong(&v46->_allContactIdentifier, contactIdentifierField);
  }

  return v46;
}

@end