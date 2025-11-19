@interface GDGraphLocationAddressRelationship
- (GDGraphLocationAddressRelationship)initWithStreetField:(id)a3 subLocalityField:(id)a4 cityField:(id)a5 subAdministrativeAreaField:(id)a6 stateField:(id)a7 postalCodeField:(id)a8 countryField:(id)a9 isoCountryCodeField:(id)a10 inferredSemanticLabelField:(id)a11 allStreetField:(id)a12 allSubLocalityField:(id)a13 allCityField:(id)a14 allSubAdministrativeAreaField:(id)a15 allStateField:(id)a16 allPostalCodeField:(id)a17 allCountryField:(id)a18 allIsoCountryCodeField:(id)a19 allInferredSemanticLabelField:(id)a20;
@end

@implementation GDGraphLocationAddressRelationship

- (GDGraphLocationAddressRelationship)initWithStreetField:(id)a3 subLocalityField:(id)a4 cityField:(id)a5 subAdministrativeAreaField:(id)a6 stateField:(id)a7 postalCodeField:(id)a8 countryField:(id)a9 isoCountryCodeField:(id)a10 inferredSemanticLabelField:(id)a11 allStreetField:(id)a12 allSubLocalityField:(id)a13 allCityField:(id)a14 allSubAdministrativeAreaField:(id)a15 allStateField:(id)a16 allPostalCodeField:(id)a17 allCountryField:(id)a18 allIsoCountryCodeField:(id)a19 allInferredSemanticLabelField:(id)a20
{
  v49 = a3;
  v35 = a4;
  v48 = a4;
  v36 = a5;
  v47 = a5;
  v46 = a6;
  v45 = a7;
  v44 = a8;
  v43 = a9;
  v42 = a10;
  v41 = a11;
  v40 = a12;
  v25 = a13;
  v26 = a14;
  v27 = a15;
  v28 = a16;
  v29 = a17;
  v39 = a18;
  v38 = a19;
  v30 = a20;
  v50.receiver = self;
  v50.super_class = GDGraphLocationAddressRelationship;
  v31 = [(GDGraphLocationAddressRelationship *)&v50 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_street, a3);
    objc_storeStrong(&v32->_subLocality, v35);
    objc_storeStrong(&v32->_city, v36);
    objc_storeStrong(&v32->_subAdministrativeArea, a6);
    objc_storeStrong(&v32->_state, a7);
    objc_storeStrong(&v32->_postalCode, a8);
    objc_storeStrong(&v32->_country, a9);
    objc_storeStrong(&v32->_isoCountryCode, a10);
    objc_storeStrong(&v32->_inferredSemanticLabel, a11);
    objc_storeStrong(&v32->_allStreet, a12);
    objc_storeStrong(&v32->_allSubLocality, a13);
    objc_storeStrong(&v32->_allCity, a14);
    objc_storeStrong(&v32->_allSubAdministrativeArea, a15);
    objc_storeStrong(&v32->_allState, a16);
    objc_storeStrong(&v32->_allPostalCode, a17);
    objc_storeStrong(&v32->_allCountry, a18);
    objc_storeStrong(&v32->_allIsoCountryCode, a19);
    objc_storeStrong(&v32->_allInferredSemanticLabel, a20);
  }

  return v32;
}

@end