@interface PARFlightSearchRequest
- (PARFlightSearchRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PARFlightSearchRequest

- (PARFlightSearchRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PARFlightSearchRequest;
  v5 = [(PARRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flightQuery"];
    flightQuery = v5->_flightQuery;
    v5->_flightQuery = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleId"];
    appBundleId = v5->_appBundleId;
    v5->_appBundleId = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PARFlightSearchRequest;
  coderCopy = coder;
  [(PARRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_date forKey:{@"date", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_flightQuery forKey:@"flightQuery"];
  [coderCopy encodeObject:self->_appBundleId forKey:@"appBundleId"];
}

@end