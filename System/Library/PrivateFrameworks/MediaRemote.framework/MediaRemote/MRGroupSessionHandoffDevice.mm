@interface MRGroupSessionHandoffDevice
- (BOOL)isEqual:(id)equal;
- (MRGroupSessionHandoffDevice)initWithDiscoveredSession:(id)session;
- (unint64_t)hash;
@end

@implementation MRGroupSessionHandoffDevice

- (MRGroupSessionHandoffDevice)initWithDiscoveredSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = MRGroupSessionHandoffDevice;
  v5 = [(MRGroupSessionHandoffDevice *)&v9 init];
  if (v5)
  {
    identifier = [sessionCopy identifier];
    identifier = v5->_identifier;
    v5->_identifier = identifier;
  }

  return v5;
}

- (unint64_t)hash
{
  identifier = [(MRGroupSessionHandoffDevice *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(MRGroupSessionHandoffDevice *)self identifier];
      identifier2 = [(MRGroupSessionHandoffDevice *)v5 identifier];
      if (identifier == identifier2 || [identifier isEqual:identifier2])
      {
        bluetoothAddress = [(MRGroupSessionHandoffDevice *)self bluetoothAddress];
        bluetoothAddress2 = [(MRGroupSessionHandoffDevice *)v5 bluetoothAddress];
        if (bluetoothAddress == bluetoothAddress2)
        {
          v10 = 1;
        }

        else
        {
          v10 = [bluetoothAddress isEqual:bluetoothAddress2];
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end