@interface MUCoordinateViewModel
- (MUCoordinateViewModel)initWithMapItem:(id)item isUserLocation:(BOOL)location;
- (NSString)valueString;
@end

@implementation MUCoordinateViewModel

- (NSString)valueString
{
  v3 = objc_alloc_init(MUCoordinateStringFormatter);
  if (self->_isUserLocation)
  {
    mEMORY[0x1E696F268] = [MEMORY[0x1E696F268] sharedLocationManager];
    isAuthorizedForPreciseLocation = [mEMORY[0x1E696F268] isAuthorizedForPreciseLocation];

    v6 = isAuthorizedForPreciseLocation ^ 1u;
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

- (MUCoordinateViewModel)initWithMapItem:(id)item isUserLocation:(BOOL)location
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = MUCoordinateViewModel;
  v8 = [(MUCoordinateViewModel *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mapItem, item);
    v9->_isUserLocation = location;
  }

  return v9;
}

@end