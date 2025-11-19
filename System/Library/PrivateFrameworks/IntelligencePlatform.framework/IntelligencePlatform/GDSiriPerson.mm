@interface GDSiriPerson
- (GDSiriPerson)initWithContactIdentifiers:(id)a3 givenNames:(id)a4 phoneticGivenNames:(id)a5 middleNames:(id)a6 phoneticMiddleNames:(id)a7 lastNames:(id)a8 phoneticLastNames:(id)a9 prefixes:(id)a10 nickNames:(id)a11 organizations:(id)a12;
@end

@implementation GDSiriPerson

- (GDSiriPerson)initWithContactIdentifiers:(id)a3 givenNames:(id)a4 phoneticGivenNames:(id)a5 middleNames:(id)a6 phoneticMiddleNames:(id)a7 lastNames:(id)a8 phoneticLastNames:(id)a9 prefixes:(id)a10 nickNames:(id)a11 organizations:(id)a12
{
  v35 = a3;
  obj = a4;
  v34 = a4;
  v27 = a5;
  v33 = a5;
  v32 = a6;
  v28 = a7;
  v31 = a7;
  v29 = a8;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v36.receiver = self;
  v36.super_class = GDSiriPerson;
  v23 = [(GDSiriPerson *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_contactIdentifiers, a3);
    objc_storeStrong(&v24->_givenNames, obj);
    objc_storeStrong(&v24->_phoneticGivenNames, v27);
    objc_storeStrong(&v24->_middleNames, a6);
    objc_storeStrong(&v24->_phoneticMiddleNames, v28);
    objc_storeStrong(&v24->_lastNames, v29);
    objc_storeStrong(&v24->_phoneticLastNames, a9);
    objc_storeStrong(&v24->_prefixes, a10);
    objc_storeStrong(&v24->_nickNames, a11);
    objc_storeStrong(&v24->_organizations, a12);
  }

  return v24;
}

@end