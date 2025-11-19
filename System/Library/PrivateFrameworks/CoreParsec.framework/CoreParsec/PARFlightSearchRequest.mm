@interface PARFlightSearchRequest
- (PARFlightSearchRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PARFlightSearchRequest

- (PARFlightSearchRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PARFlightSearchRequest;
  v5 = [(PARRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"flightQuery"];
    flightQuery = v5->_flightQuery;
    v5->_flightQuery = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleId"];
    appBundleId = v5->_appBundleId;
    v5->_appBundleId = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PARFlightSearchRequest;
  v4 = a3;
  [(PARRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_date forKey:{@"date", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_flightQuery forKey:@"flightQuery"];
  [v4 encodeObject:self->_appBundleId forKey:@"appBundleId"];
}

@end