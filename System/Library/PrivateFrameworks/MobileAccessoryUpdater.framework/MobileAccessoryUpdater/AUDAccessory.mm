@interface AUDAccessory
- (AUDAccessory)initWithCoder:(id)coder;
- (AUDAccessory)initWithUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

- (AUDAccessory)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AUDAccessory;
  v4 = [(AUDAccessory *)&v6 init];
  if (v4)
  {
    v4->_uid = [coder decodeObjectOfClass:objc_opt_class() forKey:@"AUDAccessory_UID"];
    v4->_fwVersion = [coder decodeObjectOfClass:objc_opt_class() forKey:@"AUDAccessory_FWVersion"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_uid forKey:@"AUDAccessory_UID"];
  fwVersion = self->_fwVersion;

  [coder encodeObject:fwVersion forKey:@"AUDAccessory_FWVersion"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_alloc(objc_opt_class()) initWithUID:{-[NSString copyWithZone:](-[AUDAccessory uid](self, "uid"), "copyWithZone:", zone)}];
  if (v5)
  {
    [v5 setFwVersion:{-[NSString copyWithZone:](-[AUDAccessory fwVersion](self, "fwVersion"), "copyWithZone:", zone)}];
  }

  return v5;
}

- (AUDAccessory)initWithUID:(id)d
{
  selfCopy = self;
  if (d)
  {
    v6.receiver = self;
    v6.super_class = AUDAccessory;
    selfCopy = [(AUDAccessory *)&v6 init];
    if (selfCopy)
    {
      selfCopy->_uid = [d copy];
      selfCopy->_fwVersion = 0;
    }
  }

  return selfCopy;
}

@end