@interface CPSLocationConfirmationRequest
- (CPSLocationConfirmationRequest)initWithCoder:(id)a3;
- (CPSLocationConfirmationRequest)initWithRequestState:(int64_t)a3 clipBundleID:(id)a4 applicationName:(id)a5 deviceLocation:(id)a6 expectedRegion:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPSLocationConfirmationRequest

- (CPSLocationConfirmationRequest)initWithRequestState:(int64_t)a3 clipBundleID:(id)a4 applicationName:(id)a5 deviceLocation:(id)a6 expectedRegion:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = CPSLocationConfirmationRequest;
  v17 = [(CPSLocationConfirmationRequest *)&v21 init];
  v18 = v17;
  if (v17)
  {
    v17->_requestState = a3;
    objc_storeStrong(&v17->_clipBundleID, a4);
    objc_storeStrong(&v18->_applicationName, a5);
    objc_storeStrong(&v18->_deviceLocation, a6);
    objc_storeStrong(&v18->_expectedRegion, a7);
    v19 = v18;
  }

  return v18;
}

- (CPSLocationConfirmationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CPSLocationConfirmationRequest;
  v5 = [(CPSLocationConfirmationRequest *)&v16 init];
  if (v5)
  {
    v5->_requestState = [v4 decodeIntegerForKey:@"codeType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clipBundleID"];
    clipBundleID = v5->_clipBundleID;
    v5->_clipBundleID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationName"];
    applicationName = v5->_applicationName;
    v5->_applicationName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceLocation"];
    deviceLocation = v5->_deviceLocation;
    v5->_deviceLocation = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expectedRegion"];
    expectedRegion = v5->_expectedRegion;
    v5->_expectedRegion = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  requestState = self->_requestState;
  v5 = a3;
  [v5 encodeInteger:requestState forKey:@"codeType"];
  [v5 encodeObject:self->_clipBundleID forKey:@"clipBundleID"];
  [v5 encodeObject:self->_applicationName forKey:@"applicationName"];
  [v5 encodeObject:self->_deviceLocation forKey:@"deviceLocation"];
  [v5 encodeObject:self->_expectedRegion forKey:@"expectedRegion"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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