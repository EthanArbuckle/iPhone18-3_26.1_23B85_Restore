@interface GDGraphLocation
- (GDGraphLocation)initWithEntityIdentifierField:(id)field nameField:(id)nameField locationLabelField:(id)labelField latLongField:(id)longField addressField:(id)addressField identifiersField:(id)identifiersField muidField:(id)muidField allNameField:(id)self0 allLocationLabelField:(id)self1 allLatLongField:(id)self2 allAddressField:(id)self3 allMuidField:(id)self4;
@end

@implementation GDGraphLocation

- (GDGraphLocation)initWithEntityIdentifierField:(id)field nameField:(id)nameField locationLabelField:(id)labelField latLongField:(id)longField addressField:(id)addressField identifiersField:(id)identifiersField muidField:(id)muidField allNameField:(id)self0 allLocationLabelField:(id)self1 allLatLongField:(id)self2 allAddressField:(id)self3 allMuidField:(id)self4
{
  fieldCopy = field;
  nameFieldCopy = nameField;
  nameFieldCopy2 = nameField;
  labelFieldCopy = labelField;
  longFieldCopy = longField;
  addressFieldCopy = addressField;
  addressFieldCopy2 = addressField;
  identifiersFieldCopy = identifiersField;
  muidFieldCopy = muidField;
  allNameFieldCopy = allNameField;
  locationLabelFieldCopy = locationLabelField;
  latLongFieldCopy = latLongField;
  allAddressFieldCopy = allAddressField;
  allMuidFieldCopy = allMuidField;
  v38.receiver = self;
  v38.super_class = GDGraphLocation;
  v24 = [(GDGraphLocation *)&v38 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_entityIdentifier, field);
    objc_storeStrong(&v25->_name, nameFieldCopy);
    objc_storeStrong(&v25->_locationLabel, labelField);
    objc_storeStrong(&v25->_latLong, longField);
    objc_storeStrong(&v25->_address, addressFieldCopy);
    objc_storeStrong(&v25->_identifiers, identifiersField);
    objc_storeStrong(&v25->_muid, muidField);
    objc_storeStrong(&v25->_allName, allNameField);
    objc_storeStrong(&v25->_allLocationLabel, locationLabelField);
    objc_storeStrong(&v25->_allLatLong, latLongField);
    objc_storeStrong(&v25->_allAddress, allAddressField);
    objc_storeStrong(&v25->_allMuid, allMuidField);
  }

  return v25;
}

@end