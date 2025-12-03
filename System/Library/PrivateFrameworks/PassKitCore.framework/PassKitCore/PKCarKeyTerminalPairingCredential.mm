@interface PKCarKeyTerminalPairingCredential
- (BOOL)_isEqualToCredential:(id)credential;
- (BOOL)isEqual:(id)equal;
- (PKCarKeyTerminalPairingCredential)initWithConfiguration:(id)configuration productIdentifier:(id)identifier;
- (id)description;
@end

@implementation PKCarKeyTerminalPairingCredential

- (PKCarKeyTerminalPairingCredential)initWithConfiguration:(id)configuration productIdentifier:(id)identifier
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  v9 = [(PKPaymentCredential *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    objc_storeStrong(&v10->_productIdentifier, identifier);
    [(PKPaymentCredential *)v10 setDeletable:1];
    if ([identifierCopy isEqualToString:@"carKey"])
    {
      [(PKPaymentCredential *)v10 setCredentialType:301];
    }

    localizedDescription = [configurationCopy localizedDescription];
    [(PKPaymentCredential *)v10 setLongDescription:localizedDescription];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKCarKeyTerminalPairingCredential *)self _isEqualToCredential:equalCopy];
  }

  return v5;
}

- (BOOL)_isEqualToCredential:(id)credential
{
  if (!credential)
  {
    return 0;
  }

  configuration = self->_configuration;
  credentialCopy = credential;
  pairedReaderIdentifier = [(PKAddCarKeyPassConfiguration *)configuration pairedReaderIdentifier];
  v6 = credentialCopy[14];

  pairedReaderIdentifier2 = [v6 pairedReaderIdentifier];
  v8 = pairedReaderIdentifier2;
  if (pairedReaderIdentifier)
  {
    v9 = pairedReaderIdentifier2 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = pairedReaderIdentifier == pairedReaderIdentifier2;
  }

  else
  {
    v10 = [pairedReaderIdentifier isEqual:pairedReaderIdentifier2];
  }

  return v10;
}

@end