@interface HMDAccessoryInvitation
- (HMDAccessory)accessory;
- (HMDAccessoryInvitation)initWithAccessory:(id)a3 identifier:(id)a4 state:(int64_t)a5;
- (HMDAccessoryInvitation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDAccessoryInvitation

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(HMDAccessoryInvitation *)self identifier];
  [v6 encodeObject:v4 forKey:@"HM.accessoryInvitationIdentifier"];

  v5 = [(HMDAccessoryInvitation *)self accessory];
  [v6 encodeConditionalObject:v5 forKey:@"accessory"];

  [v6 encodeInt32:-[HMDAccessoryInvitation state](self forKey:{"state"), @"HM.accessoryInvitationState"}];
}

- (HMDAccessoryInvitation)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HMDAccessoryInvitation;
  v5 = [(HMDAccessoryInvitation *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.accessoryInvitationIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
    objc_storeWeak(&v5->_accessory, v8);

    v5->_state = [v4 decodeInt32ForKey:@"HM.accessoryInvitationState"];
  }

  return v5;
}

- (HMDAccessoryInvitation)initWithAccessory:(id)a3 identifier:(id)a4 state:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = HMDAccessoryInvitation;
  v10 = [(HMDAccessoryInvitation *)&v13 init];
  if (v10)
  {
    v11 = v9;
    if (!v9)
    {
      v11 = [MEMORY[0x277CCAD78] UUID];
    }

    objc_storeStrong(&v10->_identifier, v11);
    if (!v9)
    {
    }

    objc_storeWeak(&v10->_accessory, v8);
    v10->_state = a5;
  }

  return v10;
}

@end