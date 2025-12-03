@interface HMDAccessoryInvitation
- (HMDAccessory)accessory;
- (HMDAccessoryInvitation)initWithAccessory:(id)accessory identifier:(id)identifier state:(int64_t)state;
- (HMDAccessoryInvitation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDAccessoryInvitation

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMDAccessoryInvitation *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HM.accessoryInvitationIdentifier"];

  accessory = [(HMDAccessoryInvitation *)self accessory];
  [coderCopy encodeConditionalObject:accessory forKey:@"accessory"];

  [coderCopy encodeInt32:-[HMDAccessoryInvitation state](self forKey:{"state"), @"HM.accessoryInvitationState"}];
}

- (HMDAccessoryInvitation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HMDAccessoryInvitation;
  v5 = [(HMDAccessoryInvitation *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.accessoryInvitationIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
    objc_storeWeak(&v5->_accessory, v8);

    v5->_state = [coderCopy decodeInt32ForKey:@"HM.accessoryInvitationState"];
  }

  return v5;
}

- (HMDAccessoryInvitation)initWithAccessory:(id)accessory identifier:(id)identifier state:(int64_t)state
{
  accessoryCopy = accessory;
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = HMDAccessoryInvitation;
  v10 = [(HMDAccessoryInvitation *)&v13 init];
  if (v10)
  {
    uUID = identifierCopy;
    if (!identifierCopy)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
    }

    objc_storeStrong(&v10->_identifier, uUID);
    if (!identifierCopy)
    {
    }

    objc_storeWeak(&v10->_accessory, accessoryCopy);
    v10->_state = state;
  }

  return v10;
}

@end