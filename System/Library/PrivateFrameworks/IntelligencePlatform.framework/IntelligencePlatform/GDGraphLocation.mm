@interface GDGraphLocation
- (GDGraphLocation)initWithEntityIdentifierField:(id)a3 nameField:(id)a4 locationLabelField:(id)a5 latLongField:(id)a6 addressField:(id)a7 identifiersField:(id)a8 muidField:(id)a9 allNameField:(id)a10 allLocationLabelField:(id)a11 allLatLongField:(id)a12 allAddressField:(id)a13 allMuidField:(id)a14;
@end

@implementation GDGraphLocation

- (GDGraphLocation)initWithEntityIdentifierField:(id)a3 nameField:(id)a4 locationLabelField:(id)a5 latLongField:(id)a6 addressField:(id)a7 identifiersField:(id)a8 muidField:(id)a9 allNameField:(id)a10 allLocationLabelField:(id)a11 allLatLongField:(id)a12 allAddressField:(id)a13 allMuidField:(id)a14
{
  v37 = a3;
  v28 = a4;
  v36 = a4;
  v35 = a5;
  v34 = a6;
  v29 = a7;
  v33 = a7;
  v32 = a8;
  v31 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  v38.receiver = self;
  v38.super_class = GDGraphLocation;
  v24 = [(GDGraphLocation *)&v38 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_entityIdentifier, a3);
    objc_storeStrong(&v25->_name, v28);
    objc_storeStrong(&v25->_locationLabel, a5);
    objc_storeStrong(&v25->_latLong, a6);
    objc_storeStrong(&v25->_address, v29);
    objc_storeStrong(&v25->_identifiers, a8);
    objc_storeStrong(&v25->_muid, a9);
    objc_storeStrong(&v25->_allName, a10);
    objc_storeStrong(&v25->_allLocationLabel, a11);
    objc_storeStrong(&v25->_allLatLong, a12);
    objc_storeStrong(&v25->_allAddress, a13);
    objc_storeStrong(&v25->_allMuid, a14);
  }

  return v25;
}

@end