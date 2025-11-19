@interface HMDCoordinationPingNotification
- (HMDCoordinationPingNotification)initWithCoder:(id)a3;
- (HMDCoordinationPingNotification)initWithPrimaryResidentUUID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDCoordinationPingNotification

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMDCoordinationPingNotification;
  v4 = a3;
  [(COMeshCommand *)&v6 encodeWithCoder:v4];
  v5 = [(HMDCoordinationPingNotification *)self primaryResidentUUID:v6.receiver];
  [v4 encodeObject:v5 forKey:@"primaryResidentUUID"];
}

- (HMDCoordinationPingNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryResidentUUID"];
  v8.receiver = self;
  v8.super_class = HMDCoordinationPingNotification;
  v6 = [(COMeshCommand *)&v8 initWithCoder:v4];

  if (v6)
  {
    objc_storeStrong(&v6->_primaryResidentUUID, v5);
  }

  return v6;
}

- (HMDCoordinationPingNotification)initWithPrimaryResidentUUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDCoordinationPingNotification;
  v6 = [(COMeshCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_primaryResidentUUID, a3);
  }

  return v7;
}

@end