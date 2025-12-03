@interface PKPendingPrecursorPassCredential
- (BOOL)representsCredential:(id)credential;
- (BOOL)representsPass:(id)pass;
- (PKPendingPrecursorPassCredential)initWithCoder:(id)coder;
- (PKPendingPrecursorPassCredential)initWithPassTypeIdentifier:(id)identifier passSerialNumber:(id)number;
- (PKPendingPrecursorPassCredential)initWithPrecursorCredential:(id)credential;
- (id)credential;
- (id)initForDatabase;
- (void)_copyIntoPendingProvision:(id)provision;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPendingPrecursorPassCredential

- (id)initForDatabase
{
  v3.receiver = self;
  v3.super_class = PKPendingPrecursorPassCredential;
  return [(PKPendingPrecursorPassCredential *)&v3 init];
}

- (PKPendingPrecursorPassCredential)initWithPrecursorCredential:(id)credential
{
  credentialCopy = credential;
  passTypeIdentifier = [credentialCopy passTypeIdentifier];
  serialNumber = [credentialCopy serialNumber];

  v7 = [(PKPendingPrecursorPassCredential *)self initWithPassTypeIdentifier:passTypeIdentifier passSerialNumber:serialNumber];
  return v7;
}

- (PKPendingPrecursorPassCredential)initWithPassTypeIdentifier:(id)identifier passSerialNumber:(id)number
{
  identifierCopy = identifier;
  numberCopy = number;
  v9 = PKGeneratePassUniqueID(identifierCopy, numberCopy);
  v10 = [@"Precursor-" stringByAppendingString:v9];

  v14.receiver = self;
  v14.super_class = PKPendingPrecursorPassCredential;
  v11 = [(PKPendingProvisioning *)&v14 initWithUniqueIdentifier:v10 status:1];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_passTypeIdentifier, identifier);
    objc_storeStrong(&v12->_passSerialNumber, number);
  }

  return v12;
}

- (BOOL)representsCredential:(id)credential
{
  credentialCopy = credential;
  if ([credentialCopy isPrecursorCredential])
  {
    precursorCredential = [credentialCopy precursorCredential];
    goto LABEL_5;
  }

  if ([credentialCopy isRemoteCredential])
  {
    precursorCredential = [credentialCopy remoteCredential];
LABEL_5:
    v6 = precursorCredential;
    passTypeIdentifier = [precursorCredential passTypeIdentifier];
    passTypeIdentifier = self->_passTypeIdentifier;
    v9 = passTypeIdentifier;
    v10 = passTypeIdentifier;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      if (!v9 || !v10)
      {
        v17 = v9;
LABEL_19:

        v9 = v17;
LABEL_20:

        goto LABEL_21;
      }

      v12 = [(NSString *)v9 isEqualToString:v10];

      if (!v12)
      {
        goto LABEL_20;
      }
    }

    serialNumber = [v6 serialNumber];
    passSerialNumber = self->_passSerialNumber;
    v11 = serialNumber;
    v15 = passSerialNumber;
    v16 = v15;
    if (v11 == v15)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v11 && v15)
      {
        LOBYTE(v12) = [(NSString *)v11 isEqualToString:v15];
      }
    }

    v17 = v9;

    v9 = v11;
    goto LABEL_19;
  }

  LOBYTE(v12) = 0;
LABEL_21:

  return v12;
}

- (BOOL)representsPass:(id)pass
{
  passCopy = pass;
  passTypeIdentifier = [passCopy passTypeIdentifier];
  passTypeIdentifier = self->_passTypeIdentifier;
  v7 = passTypeIdentifier;
  v8 = passTypeIdentifier;
  v9 = v8;
  if (v7 == v8)
  {

LABEL_7:
    serialNumber = [passCopy serialNumber];
    passSerialNumber = self->_passSerialNumber;
    v9 = serialNumber;
    v13 = passSerialNumber;
    v14 = v13;
    if (v9 == v13)
    {
      LOBYTE(v10) = 1;
    }

    else
    {
      LOBYTE(v10) = 0;
      if (v9 && v13)
      {
        LOBYTE(v10) = [(NSString *)v9 isEqualToString:v13];
      }
    }

    v15 = v9;
    goto LABEL_14;
  }

  LOBYTE(v10) = 0;
  if (v7 && v8)
  {
    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  v15 = v7;
LABEL_14:

LABEL_15:
  return v10;
}

- (id)credential
{
  v2 = [[PKPrecursorPassCredential alloc] initWithPassTypeIdentifier:self->_passTypeIdentifier passSerialNumber:self->_passSerialNumber];

  return v2;
}

- (PKPendingPrecursorPassCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPendingPrecursorPassCredential;
  v5 = [(PKPendingProvisioning *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passSerialNumber"];
    passSerialNumber = v5->_passSerialNumber;
    v5->_passSerialNumber = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPendingPrecursorPassCredential;
  coderCopy = coder;
  [(PKPendingProvisioning *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_passTypeIdentifier forKey:{@"passTypeIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_passSerialNumber forKey:@"passSerialNumber"];
}

- (void)_copyIntoPendingProvision:(id)provision
{
  v9.receiver = self;
  v9.super_class = PKPendingPrecursorPassCredential;
  provisionCopy = provision;
  [(PKPendingProvisioning *)&v9 _copyIntoPendingProvision:provisionCopy];
  v5 = [(NSString *)self->_passTypeIdentifier copy:v9.receiver];
  v6 = provisionCopy[7];
  provisionCopy[7] = v5;

  v7 = [(NSString *)self->_passSerialNumber copy];
  v8 = provisionCopy[8];
  provisionCopy[8] = v7;
}

@end