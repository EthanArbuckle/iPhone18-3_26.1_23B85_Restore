@interface MRGroupSessionHandoffDevice
- (BOOL)isEqual:(id)a3;
- (MRGroupSessionHandoffDevice)initWithDiscoveredSession:(id)a3;
- (unint64_t)hash;
@end

@implementation MRGroupSessionHandoffDevice

- (MRGroupSessionHandoffDevice)initWithDiscoveredSession:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MRGroupSessionHandoffDevice;
  v5 = [(MRGroupSessionHandoffDevice *)&v9 init];
  if (v5)
  {
    v6 = [v4 identifier];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(MRGroupSessionHandoffDevice *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MRGroupSessionHandoffDevice *)self identifier];
      v7 = [(MRGroupSessionHandoffDevice *)v5 identifier];
      if (v6 == v7 || [v6 isEqual:v7])
      {
        v8 = [(MRGroupSessionHandoffDevice *)self bluetoothAddress];
        v9 = [(MRGroupSessionHandoffDevice *)v5 bluetoothAddress];
        if (v8 == v9)
        {
          v10 = 1;
        }

        else
        {
          v10 = [v8 isEqual:v9];
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