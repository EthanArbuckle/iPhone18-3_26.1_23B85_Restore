@interface DNDModeAssertionSource
- (BOOL)isEqual:(id)equal;
- (DNDModeAssertionSource)initWithClientIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier;
- (DNDModeAssertionSource)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDModeAssertionSource

- (DNDModeAssertionSource)initWithClientIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier
{
  identifierCopy = identifier;
  deviceIdentifierCopy = deviceIdentifier;
  v14.receiver = self;
  v14.super_class = DNDModeAssertionSource;
  v8 = [(DNDModeAssertionSource *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    clientIdentifier = v8->_clientIdentifier;
    v8->_clientIdentifier = v9;

    v11 = [deviceIdentifierCopy copy];
    deviceIdentifier = v8->_deviceIdentifier;
    v8->_deviceIdentifier = v11;
  }

  return v8;
}

- (unint64_t)hash
{
  clientIdentifier = [(DNDModeAssertionSource *)self clientIdentifier];
  v4 = [clientIdentifier hash];
  deviceIdentifier = [(DNDModeAssertionSource *)self deviceIdentifier];
  v6 = [deviceIdentifier hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      clientIdentifier = [(DNDModeAssertionSource *)self clientIdentifier];
      clientIdentifier2 = [(DNDModeAssertionSource *)v6 clientIdentifier];
      if (clientIdentifier != clientIdentifier2)
      {
        clientIdentifier3 = [(DNDModeAssertionSource *)self clientIdentifier];
        if (!clientIdentifier3)
        {
          v13 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v3 = clientIdentifier3;
        clientIdentifier4 = [(DNDModeAssertionSource *)v6 clientIdentifier];
        if (!clientIdentifier4)
        {
          v13 = 0;
LABEL_23:

          goto LABEL_24;
        }

        clientIdentifier5 = [(DNDModeAssertionSource *)self clientIdentifier];
        clientIdentifier6 = [(DNDModeAssertionSource *)v6 clientIdentifier];
        if (![clientIdentifier5 isEqual:clientIdentifier6])
        {
          v13 = 0;
LABEL_22:

          goto LABEL_23;
        }

        v24 = clientIdentifier6;
        v25 = clientIdentifier5;
        v26 = clientIdentifier4;
      }

      deviceIdentifier = [(DNDModeAssertionSource *)self deviceIdentifier];
      deviceIdentifier2 = [(DNDModeAssertionSource *)v6 deviceIdentifier];
      v16 = deviceIdentifier2;
      if (deviceIdentifier == deviceIdentifier2)
      {

        v13 = 1;
      }

      else
      {
        deviceIdentifier3 = [(DNDModeAssertionSource *)self deviceIdentifier];
        if (deviceIdentifier3)
        {
          v18 = deviceIdentifier3;
          deviceIdentifier4 = [(DNDModeAssertionSource *)v6 deviceIdentifier];
          if (deviceIdentifier4)
          {
            deviceIdentifier5 = [(DNDModeAssertionSource *)self deviceIdentifier];
            [(DNDModeAssertionSource *)v6 deviceIdentifier];
            v20 = v23 = v3;
            v13 = [deviceIdentifier5 isEqual:v20];

            v3 = v23;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {

          v13 = 0;
        }
      }

      clientIdentifier5 = v25;
      clientIdentifier4 = v26;
      clientIdentifier6 = v24;
      if (clientIdentifier == clientIdentifier2)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    v13 = 0;
  }

LABEL_25:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  clientIdentifier = [(DNDModeAssertionSource *)self clientIdentifier];
  deviceIdentifier = [(DNDModeAssertionSource *)self deviceIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p clientIdentifier: '%@'; deviceIdentifier: '%@'>", v4, self, clientIdentifier, deviceIdentifier];;

  return v7;
}

- (DNDModeAssertionSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];

  v7 = [(DNDModeAssertionSource *)self initWithClientIdentifier:v5 deviceIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientIdentifier = [(DNDModeAssertionSource *)self clientIdentifier];
  [coderCopy encodeObject:clientIdentifier forKey:@"clientIdentifier"];

  deviceIdentifier = [(DNDModeAssertionSource *)self deviceIdentifier];
  [coderCopy encodeObject:deviceIdentifier forKey:@"deviceIdentifier"];
}

@end