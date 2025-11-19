@interface MUCoordinateViewModel
- (MUCoordinateViewModel)initWithMapItem:(id)a3 isUserLocation:(BOOL)a4;
- (NSString)valueString;
@end

@implementation MUCoordinateViewModel

- (NSString)valueString
{
  v3 = objc_alloc_init(MUCoordinateStringFormatter);
  if (self->_isUserLocation)
  {
    v4 = [MEMORY[0x1E696F268] sharedLocationManager];
    v5 = [v4 isAuthorizedForPreciseLocation];

    v6 = v5 ^ 1u;
  }

  else
  {
    v6 = 0;
  }

  [(MUCoordinateStringFormatter *)v3 setCoarseLocation:v6];
  [(MKMapItem *)self->_mapItem _coordinate];
  v7 = [(MUCoordinateStringFormatter *)v3 stringFromCoordinate:?];

  return v7;
}

- (MUCoordinateViewModel)initWithMapItem:(id)a3 isUserLocation:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MUCoordinateViewModel;
  v8 = [(MUCoordinateViewModel *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mapItem, a3);
    v9->_isUserLocation = a4;
  }

  return v9;
}

@end