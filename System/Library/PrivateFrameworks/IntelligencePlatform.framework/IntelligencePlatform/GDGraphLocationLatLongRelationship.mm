@interface GDGraphLocationLatLongRelationship
- (GDGraphLocationLatLongRelationship)initWithLatitudeField:(id)field longitudeField:(id)longitudeField allLatitudeField:(id)latitudeField allLongitudeField:(id)allLongitudeField;
@end

@implementation GDGraphLocationLatLongRelationship

- (GDGraphLocationLatLongRelationship)initWithLatitudeField:(id)field longitudeField:(id)longitudeField allLatitudeField:(id)latitudeField allLongitudeField:(id)allLongitudeField
{
  fieldCopy = field;
  longitudeFieldCopy = longitudeField;
  latitudeFieldCopy = latitudeField;
  allLongitudeFieldCopy = allLongitudeField;
  v18.receiver = self;
  v18.super_class = GDGraphLocationLatLongRelationship;
  v15 = [(GDGraphLocationLatLongRelationship *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_latitude, field);
    objc_storeStrong(&v16->_longitude, longitudeField);
    objc_storeStrong(&v16->_allLatitude, latitudeField);
    objc_storeStrong(&v16->_allLongitude, allLongitudeField);
  }

  return v16;
}

@end