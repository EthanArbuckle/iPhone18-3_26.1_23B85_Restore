@interface ASGeoCodeResult
- (ASGeoCodeResult)initWithAddress:(id)address location:(id)location updated:(id)updated;
- (ASGeoCodeResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASGeoCodeResult

- (ASGeoCodeResult)initWithAddress:(id)address location:(id)location updated:(id)updated
{
  addressCopy = address;
  locationCopy = location;
  updatedCopy = updated;
  v15.receiver = self;
  v15.super_class = ASGeoCodeResult;
  v12 = [(ASGeoCodeResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_address, address);
    objc_storeStrong(&v13->_location, location);
    objc_storeStrong(&v13->_updated, updated);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  address = self->_address;
  coderCopy = coder;
  [coderCopy encodeObject:address forKey:@"address"];
  [coderCopy encodeObject:self->_updated forKey:@"updated"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
}

- (ASGeoCodeResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = ASGeoCodeResult;
  v5 = [(ASGeoCodeResult *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"address"];

    v8 = objc_opt_self();
    v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"updated"];

    v10 = objc_opt_self();
    v11 = [coderCopy decodeObjectOfClass:v10 forKey:@"location"];

    if (!v7 || !v9)
    {

      v17 = 0;
      goto LABEL_7;
    }

    address = v5->_address;
    v5->_address = v7;
    v13 = v7;

    updated = v5->_updated;
    v5->_updated = v9;
    v15 = v9;

    location = v5->_location;
    v5->_location = v11;
  }

  v17 = v5;
LABEL_7:

  return v17;
}

@end