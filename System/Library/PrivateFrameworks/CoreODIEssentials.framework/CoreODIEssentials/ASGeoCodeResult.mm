@interface ASGeoCodeResult
- (ASGeoCodeResult)initWithAddress:(id)a3 location:(id)a4 updated:(id)a5;
- (ASGeoCodeResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASGeoCodeResult

- (ASGeoCodeResult)initWithAddress:(id)a3 location:(id)a4 updated:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ASGeoCodeResult;
  v12 = [(ASGeoCodeResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_address, a3);
    objc_storeStrong(&v13->_location, a4);
    objc_storeStrong(&v13->_updated, a5);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  address = self->_address;
  v5 = a3;
  [v5 encodeObject:address forKey:@"address"];
  [v5 encodeObject:self->_updated forKey:@"updated"];
  [v5 encodeObject:self->_location forKey:@"location"];
}

- (ASGeoCodeResult)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ASGeoCodeResult;
  v5 = [(ASGeoCodeResult *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"address"];

    v8 = objc_opt_self();
    v9 = [v4 decodeObjectOfClass:v8 forKey:@"updated"];

    v10 = objc_opt_self();
    v11 = [v4 decodeObjectOfClass:v10 forKey:@"location"];

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