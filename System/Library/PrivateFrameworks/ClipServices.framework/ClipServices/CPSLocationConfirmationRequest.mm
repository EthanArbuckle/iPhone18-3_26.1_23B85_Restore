@interface CPSLocationConfirmationRequest
- (CPSLocationConfirmationRequest)initWithCoder:(id)coder;
- (CPSLocationConfirmationRequest)initWithRequestState:(int64_t)state clipBundleID:(id)d applicationName:(id)name deviceLocation:(id)location expectedRegion:(id)region;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPSLocationConfirmationRequest

- (CPSLocationConfirmationRequest)initWithRequestState:(int64_t)state clipBundleID:(id)d applicationName:(id)name deviceLocation:(id)location expectedRegion:(id)region
{
  dCopy = d;
  nameCopy = name;
  locationCopy = location;
  regionCopy = region;
  v21.receiver = self;
  v21.super_class = CPSLocationConfirmationRequest;
  v17 = [(CPSLocationConfirmationRequest *)&v21 init];
  v18 = v17;
  if (v17)
  {
    v17->_requestState = state;
    objc_storeStrong(&v17->_clipBundleID, d);
    objc_storeStrong(&v18->_applicationName, name);
    objc_storeStrong(&v18->_deviceLocation, location);
    objc_storeStrong(&v18->_expectedRegion, region);
    v19 = v18;
  }

  return v18;
}

- (CPSLocationConfirmationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CPSLocationConfirmationRequest;
  v5 = [(CPSLocationConfirmationRequest *)&v16 init];
  if (v5)
  {
    v5->_requestState = [coderCopy decodeIntegerForKey:@"codeType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clipBundleID"];
    clipBundleID = v5->_clipBundleID;
    v5->_clipBundleID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationName"];
    applicationName = v5->_applicationName;
    v5->_applicationName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceLocation"];
    deviceLocation = v5->_deviceLocation;
    v5->_deviceLocation = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expectedRegion"];
    expectedRegion = v5->_expectedRegion;
    v5->_expectedRegion = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  requestState = self->_requestState;
  coderCopy = coder;
  [coderCopy encodeInteger:requestState forKey:@"codeType"];
  [coderCopy encodeObject:self->_clipBundleID forKey:@"clipBundleID"];
  [coderCopy encodeObject:self->_applicationName forKey:@"applicationName"];
  [coderCopy encodeObject:self->_deviceLocation forKey:@"deviceLocation"];
  [coderCopy encodeObject:self->_expectedRegion forKey:@"expectedRegion"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v4[1] = self->_requestState;
  v5 = [(NSString *)self->_clipBundleID copy];
  v6 = v4[4];
  v4[4] = v5;

  v7 = [(NSString *)self->_applicationName copy];
  v8 = v4[5];
  v4[5] = v7;

  v9 = [(CLLocation *)self->_deviceLocation copy];
  v10 = v4[2];
  v4[2] = v9;

  v11 = [(CLRegion *)self->_expectedRegion copy];
  v12 = v4[3];
  v4[3] = v11;

  return v4;
}

@end