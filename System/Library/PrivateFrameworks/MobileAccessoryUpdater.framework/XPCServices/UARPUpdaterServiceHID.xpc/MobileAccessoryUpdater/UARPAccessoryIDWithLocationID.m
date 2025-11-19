@interface UARPAccessoryIDWithLocationID
- (UARPAccessoryIDWithLocationID)initWithAccessoryID:(id)a3 locationID:(id)a4;
@end

@implementation UARPAccessoryIDWithLocationID

- (UARPAccessoryIDWithLocationID)initWithAccessoryID:(id)a3 locationID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = UARPAccessoryIDWithLocationID;
  v9 = [(UARPAccessoryIDWithLocationID *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessoryID, a3);
    objc_storeStrong(&v10->_locationID, a4);
  }

  return v10;
}

@end