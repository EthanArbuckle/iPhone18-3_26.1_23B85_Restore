@interface HDIDSParticipant
- (HDIDSParticipant)init;
- (HDIDSParticipant)initWithDevice:(id)a3;
- (HDIDSParticipant)initWithIdentifier:(id)a3;
- (id)description;
@end

@implementation HDIDSParticipant

- (HDIDSParticipant)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDIDSParticipant)initWithDevice:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = HDIDSParticipant;
  v6 = [(HDIDSParticipant *)&v12 init];
  if (v6)
  {
    v7 = [v5 hd_destinationIdentifier];
    destinationIdentifier = v6->_destinationIdentifier;
    v6->_destinationIdentifier = v7;

    v9 = [v5 hd_deviceIdentifier];
    deviceIdentifier = v6->_deviceIdentifier;
    v6->_deviceIdentifier = v9;

    objc_storeStrong(&v6->_device, a3);
  }

  return v6;
}

- (HDIDSParticipant)initWithIdentifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HDIDSParticipant;
  v5 = [(HDIDSParticipant *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    destinationIdentifier = v5->_destinationIdentifier;
    v5->_destinationIdentifier = v6;

    v8 = [v4 copy];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v8;
  }

  return v5;
}

- (id)description
{
  device = self->_device;
  if (device)
  {
    v4 = [(IDSDevice *)device hd_shortDescription];
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v4 = [v5 stringWithFormat:@"<%@:%p destinationIdentifier=%@", v7, self, self->_destinationIdentifier];
  }

  return v4;
}

@end