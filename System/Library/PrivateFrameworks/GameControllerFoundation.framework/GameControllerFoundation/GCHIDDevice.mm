@interface GCHIDDevice
- (GCHIDDevice)init;
- (NSArray)elements;
- (NSNumber)maxFeatureReportSize;
- (NSNumber)maxInputReportSize;
- (NSNumber)maxOutputReportSize;
- (NSNumber)productID;
- (NSNumber)vendorID;
- (NSNumber)versionNumber;
- (NSString)manufacturer;
- (NSString)product;
- (NSString)transport;
- (id)debugDescription;
- (id)valueForHIDDeviceKey:(id)a3;
- (id)valueForKey:(id)a3;
@end

@implementation GCHIDDevice

- (GCHIDDevice)init
{
  [(GCHIDDevice *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)debugDescription
{
  v15 = MEMORY[0x1E696AEC0];
  v16.receiver = self;
  v16.super_class = GCHIDDevice;
  v14 = [(GCHIDDevice *)&v16 debugDescription];
  v3 = [(GCHIDDevice *)self transport];
  v4 = [(GCHIDDevice *)self vendorID];
  v5 = [(GCHIDDevice *)self productID];
  v6 = [(GCHIDDevice *)self versionNumber];
  v7 = [(GCHIDDevice *)self manufacturer];
  v8 = [(GCHIDDevice *)self product];
  v9 = [(GCHIDDevice *)self maxInputReportSize];
  v10 = [(GCHIDDevice *)self maxOutputReportSize];
  v11 = [(GCHIDDevice *)self maxFeatureReportSize];
  v12 = [v15 stringWithFormat:@"%@ {\n\t transport = %@\n\t vendorID = %@\n\t productID = %@\n\t versionNumber = %@\n\t manufacturer = %@\n\t product = %@\n\t maxInputReportSize = %@\n\t maxOutputReportSize = %@\n\t maxFeatureReportSize = %@\n}", v14, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (NSString)transport
{
  v2 = [(GCHIDDevice *)self propertyForKey:@"Transport"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)vendorID
{
  v2 = [(GCHIDDevice *)self propertyForKey:@"VendorID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)productID
{
  v2 = [(GCHIDDevice *)self propertyForKey:@"ProductID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)versionNumber
{
  v2 = [(GCHIDDevice *)self propertyForKey:@"VersionNumber"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)manufacturer
{
  v2 = [(GCHIDDevice *)self propertyForKey:@"Manufacturer"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)product
{
  v2 = [(GCHIDDevice *)self propertyForKey:@"Product"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)maxInputReportSize
{
  v2 = [(GCHIDDevice *)self propertyForKey:@"MaxInputReportSize"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)maxOutputReportSize
{
  v2 = [(GCHIDDevice *)self propertyForKey:@"MaxOutputReportSize"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)maxFeatureReportSize
{
  v2 = [(GCHIDDevice *)self propertyForKey:@"MaxFeatureReportSize"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSArray)elements
{
  v2 = IOHIDDeviceCopyMatchingElements(self, 0, 0);

  return v2;
}

- (id)valueForHIDDeviceKey:(id)a3
{
  v4 = a3;
  v5 = GCHIDDeviceAttributeKeys();
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [v4 substringToIndex:1];
    v8 = [v7 lowercaseString];

    v9 = [v4 stringByReplacingCharactersInRange:0 withString:{1, v8}];
    v10 = [(GCHIDDevice *)self valueForKey:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  v5 = GCHIDDeviceAttributeKeys();
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [v4 substringToIndex:1];
    v8 = [v7 lowercaseString];

    v9 = [v4 stringByReplacingCharactersInRange:0 withString:{1, v8}];

    v4 = v9;
  }

  v12.receiver = self;
  v12.super_class = GCHIDDevice;
  v10 = [(GCHIDDevice *)&v12 valueForKey:v4];

  return v10;
}

@end