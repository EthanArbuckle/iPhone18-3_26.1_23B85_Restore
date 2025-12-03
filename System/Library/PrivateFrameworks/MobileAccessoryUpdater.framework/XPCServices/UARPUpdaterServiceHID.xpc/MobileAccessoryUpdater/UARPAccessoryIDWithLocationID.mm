@interface UARPAccessoryIDWithLocationID
- (UARPAccessoryIDWithLocationID)initWithAccessoryID:(id)d locationID:(id)iD;
@end

@implementation UARPAccessoryIDWithLocationID

- (UARPAccessoryIDWithLocationID)initWithAccessoryID:(id)d locationID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = UARPAccessoryIDWithLocationID;
  v9 = [(UARPAccessoryIDWithLocationID *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessoryID, d);
    objc_storeStrong(&v10->_locationID, iD);
  }

  return v10;
}

@end