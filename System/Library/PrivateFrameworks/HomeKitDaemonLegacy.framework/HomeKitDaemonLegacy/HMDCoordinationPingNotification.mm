@interface HMDCoordinationPingNotification
- (HMDCoordinationPingNotification)initWithCoder:(id)coder;
- (HMDCoordinationPingNotification)initWithPrimaryResidentUUID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDCoordinationPingNotification

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HMDCoordinationPingNotification;
  coderCopy = coder;
  [(COMeshCommand *)&v6 encodeWithCoder:coderCopy];
  v5 = [(HMDCoordinationPingNotification *)self primaryResidentUUID:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"primaryResidentUUID"];
}

- (HMDCoordinationPingNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryResidentUUID"];
  v8.receiver = self;
  v8.super_class = HMDCoordinationPingNotification;
  v6 = [(COMeshCommand *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
    objc_storeStrong(&v6->_primaryResidentUUID, v5);
  }

  return v6;
}

- (HMDCoordinationPingNotification)initWithPrimaryResidentUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = HMDCoordinationPingNotification;
  v6 = [(COMeshCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_primaryResidentUUID, d);
  }

  return v7;
}

@end