@interface GDGraphLocationAddressRelationship
- (GDGraphLocationAddressRelationship)initWithStreetField:(id)field subLocalityField:(id)localityField cityField:(id)cityField subAdministrativeAreaField:(id)areaField stateField:(id)stateField postalCodeField:(id)codeField countryField:(id)countryField isoCountryCodeField:(id)self0 inferredSemanticLabelField:(id)self1 allStreetField:(id)self2 allSubLocalityField:(id)self3 allCityField:(id)self4 allSubAdministrativeAreaField:(id)self5 allStateField:(id)self6 allPostalCodeField:(id)self7 allCountryField:(id)self8 allIsoCountryCodeField:(id)self9 allInferredSemanticLabelField:(id)semanticLabelField;
@end

@implementation GDGraphLocationAddressRelationship

- (GDGraphLocationAddressRelationship)initWithStreetField:(id)field subLocalityField:(id)localityField cityField:(id)cityField subAdministrativeAreaField:(id)areaField stateField:(id)stateField postalCodeField:(id)codeField countryField:(id)countryField isoCountryCodeField:(id)self0 inferredSemanticLabelField:(id)self1 allStreetField:(id)self2 allSubLocalityField:(id)self3 allCityField:(id)self4 allSubAdministrativeAreaField:(id)self5 allStateField:(id)self6 allPostalCodeField:(id)self7 allCountryField:(id)self8 allIsoCountryCodeField:(id)self9 allInferredSemanticLabelField:(id)semanticLabelField
{
  fieldCopy = field;
  localityFieldCopy = localityField;
  localityFieldCopy2 = localityField;
  cityFieldCopy = cityField;
  cityFieldCopy2 = cityField;
  areaFieldCopy = areaField;
  stateFieldCopy = stateField;
  codeFieldCopy = codeField;
  countryFieldCopy = countryField;
  countryCodeFieldCopy = countryCodeField;
  labelFieldCopy = labelField;
  streetFieldCopy = streetField;
  subLocalityFieldCopy = subLocalityField;
  allCityFieldCopy = allCityField;
  administrativeAreaFieldCopy = administrativeAreaField;
  allStateFieldCopy = allStateField;
  postalCodeFieldCopy = postalCodeField;
  allCountryFieldCopy = allCountryField;
  isoCountryCodeFieldCopy = isoCountryCodeField;
  semanticLabelFieldCopy = semanticLabelField;
  v50.receiver = self;
  v50.super_class = GDGraphLocationAddressRelationship;
  v31 = [(GDGraphLocationAddressRelationship *)&v50 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_street, field);
    objc_storeStrong(&v32->_subLocality, localityFieldCopy);
    objc_storeStrong(&v32->_city, cityFieldCopy);
    objc_storeStrong(&v32->_subAdministrativeArea, areaField);
    objc_storeStrong(&v32->_state, stateField);
    objc_storeStrong(&v32->_postalCode, codeField);
    objc_storeStrong(&v32->_country, countryField);
    objc_storeStrong(&v32->_isoCountryCode, countryCodeField);
    objc_storeStrong(&v32->_inferredSemanticLabel, labelField);
    objc_storeStrong(&v32->_allStreet, streetField);
    objc_storeStrong(&v32->_allSubLocality, subLocalityField);
    objc_storeStrong(&v32->_allCity, allCityField);
    objc_storeStrong(&v32->_allSubAdministrativeArea, administrativeAreaField);
    objc_storeStrong(&v32->_allState, allStateField);
    objc_storeStrong(&v32->_allPostalCode, postalCodeField);
    objc_storeStrong(&v32->_allCountry, allCountryField);
    objc_storeStrong(&v32->_allIsoCountryCode, isoCountryCodeField);
    objc_storeStrong(&v32->_allInferredSemanticLabel, semanticLabelField);
  }

  return v32;
}

@end