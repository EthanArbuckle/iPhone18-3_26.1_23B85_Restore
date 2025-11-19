@interface GDGraphLocationLatLongRelationship
- (GDGraphLocationLatLongRelationship)initWithLatitudeField:(id)a3 longitudeField:(id)a4 allLatitudeField:(id)a5 allLongitudeField:(id)a6;
@end

@implementation GDGraphLocationLatLongRelationship

- (GDGraphLocationLatLongRelationship)initWithLatitudeField:(id)a3 longitudeField:(id)a4 allLatitudeField:(id)a5 allLongitudeField:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = GDGraphLocationLatLongRelationship;
  v15 = [(GDGraphLocationLatLongRelationship *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_latitude, a3);
    objc_storeStrong(&v16->_longitude, a4);
    objc_storeStrong(&v16->_allLatitude, a5);
    objc_storeStrong(&v16->_allLongitude, a6);
  }

  return v16;
}

@end