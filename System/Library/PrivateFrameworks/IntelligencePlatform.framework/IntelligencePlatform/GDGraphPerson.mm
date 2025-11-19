@interface GDGraphPerson
- (GDGraphPerson)initWithEntityIdentifierField:(id)a3 fullNamesField:(id)a4 prefixesField:(id)a5 givenNamesField:(id)a6 phoneticGivenNamesField:(id)a7 middleNamesField:(id)a8 phoneticMiddleNamesField:(id)a9 familyNamesField:(id)a10 phoneticFamilyNamesField:(id)a11 previousFamilyNamesField:(id)a12 suffixesField:(id)a13 nicknamesField:(id)a14 birthNamesField:(id)a15 birthdayField:(id)a16 occupationField:(id)a17 isFavoriteField:(id)a18 isCurrentUserField:(id)a19 isInferredDeviceUserField:(id)a20 associatedPeopleField:(id)a21 locationsField:(id)a22 employersField:(id)a23 topicsField:(id)a24 handlesField:(id)a25 identifiersField:(id)a26 contactIdentifierField:(id)a27 visualIdentifiersField:(id)a28 allBirthdayField:(id)a29 allOccupationField:(id)a30 allIsFavoriteField:(id)a31 allIsCurrentUserField:(id)a32 allIsInferredDeviceUserField:(id)a33 allContactIdentifierField:(id)a34;
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
  v7 = self;
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
  v2 = self;
  v3 = GDGraphPerson.autonamingSuggestionReasonInner.getter();

  return v3;
}

- (GDGraphPerson)initWithEntityIdentifierField:(id)a3 fullNamesField:(id)a4 prefixesField:(id)a5 givenNamesField:(id)a6 phoneticGivenNamesField:(id)a7 middleNamesField:(id)a8 phoneticMiddleNamesField:(id)a9 familyNamesField:(id)a10 phoneticFamilyNamesField:(id)a11 previousFamilyNamesField:(id)a12 suffixesField:(id)a13 nicknamesField:(id)a14 birthNamesField:(id)a15 birthdayField:(id)a16 occupationField:(id)a17 isFavoriteField:(id)a18 isCurrentUserField:(id)a19 isInferredDeviceUserField:(id)a20 associatedPeopleField:(id)a21 locationsField:(id)a22 employersField:(id)a23 topicsField:(id)a24 handlesField:(id)a25 identifiersField:(id)a26 contactIdentifierField:(id)a27 visualIdentifiersField:(id)a28 allBirthdayField:(id)a29 allOccupationField:(id)a30 allIsFavoriteField:(id)a31 allIsCurrentUserField:(id)a32 allIsInferredDeviceUserField:(id)a33 allContactIdentifierField:(id)a34
{
  v77 = a3;
  v49 = a4;
  v76 = a4;
  v75 = a5;
  v74 = a6;
  v73 = a7;
  v50 = a8;
  v72 = a8;
  v71 = a9;
  v70 = a10;
  v69 = a11;
  v68 = a12;
  v67 = a13;
  v66 = a14;
  v65 = a15;
  v64 = a16;
  v63 = a17;
  v62 = a18;
  v61 = a19;
  v60 = a20;
  v39 = a21;
  v40 = a22;
  v41 = a23;
  v58 = a24;
  v42 = a25;
  v43 = a26;
  v59 = a27;
  v57 = a28;
  v56 = a29;
  v55 = a30;
  v54 = a31;
  v53 = a32;
  v51 = a33;
  v44 = a34;
  v78.receiver = self;
  v78.super_class = GDGraphPerson;
  v45 = [(GDGraphPerson *)&v78 init];
  v46 = v45;
  if (v45)
  {
    objc_storeStrong(&v45->_entityIdentifier, a3);
    objc_storeStrong(&v46->_fullNames, v49);
    objc_storeStrong(&v46->_prefixes, a5);
    objc_storeStrong(&v46->_givenNames, a6);
    objc_storeStrong(&v46->_phoneticGivenNames, a7);
    objc_storeStrong(&v46->_middleNames, v50);
    objc_storeStrong(&v46->_phoneticMiddleNames, a9);
    objc_storeStrong(&v46->_familyNames, a10);
    objc_storeStrong(&v46->_phoneticFamilyNames, a11);
    objc_storeStrong(&v46->_previousFamilyNames, a12);
    objc_storeStrong(&v46->_suffixes, a13);
    objc_storeStrong(&v46->_nicknames, a14);
    objc_storeStrong(&v46->_birthNames, a15);
    objc_storeStrong(&v46->_birthday, a16);
    objc_storeStrong(&v46->_occupation, a17);
    objc_storeStrong(&v46->_isFavorite, a18);
    objc_storeStrong(&v46->_isCurrentUser, a19);
    objc_storeStrong(&v46->_isInferredDeviceUser, a20);
    objc_storeStrong(&v46->_associatedPeople, a21);
    objc_storeStrong(&v46->_locations, a22);
    objc_storeStrong(&v46->_employers, a23);
    objc_storeStrong(&v46->_topics, a24);
    objc_storeStrong(&v46->_handles, a25);
    objc_storeStrong(&v46->_identifiers, a26);
    objc_storeStrong(&v46->_contactIdentifier, a27);
    objc_storeStrong(&v46->_visualIdentifiers, a28);
    objc_storeStrong(&v46->_allBirthday, a29);
    objc_storeStrong(&v46->_allOccupation, a30);
    objc_storeStrong(&v46->_allIsFavorite, a31);
    objc_storeStrong(&v46->_allIsCurrentUser, a32);
    objc_storeStrong(&v46->_allIsInferredDeviceUser, a33);
    objc_storeStrong(&v46->_allContactIdentifier, a34);
  }

  return v46;
}

@end