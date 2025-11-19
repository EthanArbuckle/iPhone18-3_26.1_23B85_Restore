@interface DNDModeAssertionSource
- (BOOL)isEqual:(id)a3;
- (DNDModeAssertionSource)initWithClientIdentifier:(id)a3 deviceIdentifier:(id)a4;
- (DNDModeAssertionSource)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDModeAssertionSource

- (DNDModeAssertionSource)initWithClientIdentifier:(id)a3 deviceIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = DNDModeAssertionSource;
  v8 = [(DNDModeAssertionSource *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    clientIdentifier = v8->_clientIdentifier;
    v8->_clientIdentifier = v9;

    v11 = [v7 copy];
    deviceIdentifier = v8->_deviceIdentifier;
    v8->_deviceIdentifier = v11;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(DNDModeAssertionSource *)self clientIdentifier];
  v4 = [v3 hash];
  v5 = [(DNDModeAssertionSource *)self deviceIdentifier];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(DNDModeAssertionSource *)self clientIdentifier];
      v8 = [(DNDModeAssertionSource *)v6 clientIdentifier];
      if (v7 != v8)
      {
        v9 = [(DNDModeAssertionSource *)self clientIdentifier];
        if (!v9)
        {
          v13 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v3 = v9;
        v10 = [(DNDModeAssertionSource *)v6 clientIdentifier];
        if (!v10)
        {
          v13 = 0;
LABEL_23:

          goto LABEL_24;
        }

        v11 = [(DNDModeAssertionSource *)self clientIdentifier];
        v12 = [(DNDModeAssertionSource *)v6 clientIdentifier];
        if (![v11 isEqual:v12])
        {
          v13 = 0;
LABEL_22:

          goto LABEL_23;
        }

        v24 = v12;
        v25 = v11;
        v26 = v10;
      }

      v14 = [(DNDModeAssertionSource *)self deviceIdentifier];
      v15 = [(DNDModeAssertionSource *)v6 deviceIdentifier];
      v16 = v15;
      if (v14 == v15)
      {

        v13 = 1;
      }

      else
      {
        v17 = [(DNDModeAssertionSource *)self deviceIdentifier];
        if (v17)
        {
          v18 = v17;
          v19 = [(DNDModeAssertionSource *)v6 deviceIdentifier];
          if (v19)
          {
            v22 = [(DNDModeAssertionSource *)self deviceIdentifier];
            [(DNDModeAssertionSource *)v6 deviceIdentifier];
            v20 = v23 = v3;
            v13 = [v22 isEqual:v20];

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

      v11 = v25;
      v10 = v26;
      v12 = v24;
      if (v7 == v8)
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
  v5 = [(DNDModeAssertionSource *)self clientIdentifier];
  v6 = [(DNDModeAssertionSource *)self deviceIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p clientIdentifier: '%@'; deviceIdentifier: '%@'>", v4, self, v5, v6];;

  return v7;
}

- (DNDModeAssertionSource)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];

  v7 = [(DNDModeAssertionSource *)self initWithClientIdentifier:v5 deviceIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DNDModeAssertionSource *)self clientIdentifier];
  [v4 encodeObject:v5 forKey:@"clientIdentifier"];

  v6 = [(DNDModeAssertionSource *)self deviceIdentifier];
  [v4 encodeObject:v6 forKey:@"deviceIdentifier"];
}

@end