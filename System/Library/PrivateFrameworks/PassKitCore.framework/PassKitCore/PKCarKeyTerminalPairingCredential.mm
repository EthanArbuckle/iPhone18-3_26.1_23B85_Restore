@interface PKCarKeyTerminalPairingCredential
- (BOOL)_isEqualToCredential:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKCarKeyTerminalPairingCredential)initWithConfiguration:(id)a3 productIdentifier:(id)a4;
- (id)description;
@end

@implementation PKCarKeyTerminalPairingCredential

- (PKCarKeyTerminalPairingCredential)initWithConfiguration:(id)a3 productIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PKPaymentCredential *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    objc_storeStrong(&v10->_productIdentifier, a4);
    [(PKPaymentCredential *)v10 setDeletable:1];
    if ([v8 isEqualToString:@"carKey"])
    {
      [(PKPaymentCredential *)v10 setCredentialType:301];
    }

    v11 = [v7 localizedDescription];
    [(PKPaymentCredential *)v10 setLongDescription:v11];
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"configuration: '%@'; ", self->_configuration];
  [v3 appendFormat:@"productIdentifier: '%@'; ", self->_productIdentifier];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKCarKeyTerminalPairingCredential *)self _isEqualToCredential:v4];
  }

  return v5;
}

- (BOOL)_isEqualToCredential:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  configuration = self->_configuration;
  v4 = a3;
  v5 = [(PKAddCarKeyPassConfiguration *)configuration pairedReaderIdentifier];
  v6 = v4[14];

  v7 = [v6 pairedReaderIdentifier];
  v8 = v7;
  if (v5)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = v5 == v7;
  }

  else
  {
    v10 = [v5 isEqual:v7];
  }

  return v10;
}

@end