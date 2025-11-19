@interface AUDAccessory
- (AUDAccessory)initWithCoder:(id)a3;
- (AUDAccessory)initWithUID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AUDAccessory

- (void)dealloc
{
  uid = self->_uid;
  if (uid)
  {
  }

  fwVersion = self->_fwVersion;
  if (fwVersion)
  {
  }

  v5.receiver = self;
  v5.super_class = AUDAccessory;
  [(AUDAccessory *)&v5 dealloc];
}

- (AUDAccessory)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AUDAccessory;
  v4 = [(AUDAccessory *)&v6 init];
  if (v4)
  {
    v4->_uid = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"AUDAccessory_UID"];
    v4->_fwVersion = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"AUDAccessory_FWVersion"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_uid forKey:@"AUDAccessory_UID"];
  fwVersion = self->_fwVersion;

  [a3 encodeObject:fwVersion forKey:@"AUDAccessory_FWVersion"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_alloc(objc_opt_class()) initWithUID:{-[NSString copyWithZone:](-[AUDAccessory uid](self, "uid"), "copyWithZone:", a3)}];
  if (v5)
  {
    [v5 setFwVersion:{-[NSString copyWithZone:](-[AUDAccessory fwVersion](self, "fwVersion"), "copyWithZone:", a3)}];
  }

  return v5;
}

- (AUDAccessory)initWithUID:(id)a3
{
  v3 = self;
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = AUDAccessory;
    v3 = [(AUDAccessory *)&v6 init];
    if (v3)
    {
      v3->_uid = [a3 copy];
      v3->_fwVersion = 0;
    }
  }

  return v3;
}

@end