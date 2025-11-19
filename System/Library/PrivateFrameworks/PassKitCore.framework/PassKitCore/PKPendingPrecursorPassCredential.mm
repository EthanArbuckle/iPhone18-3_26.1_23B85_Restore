@interface PKPendingPrecursorPassCredential
- (BOOL)representsCredential:(id)a3;
- (BOOL)representsPass:(id)a3;
- (PKPendingPrecursorPassCredential)initWithCoder:(id)a3;
- (PKPendingPrecursorPassCredential)initWithPassTypeIdentifier:(id)a3 passSerialNumber:(id)a4;
- (PKPendingPrecursorPassCredential)initWithPrecursorCredential:(id)a3;
- (id)credential;
- (id)initForDatabase;
- (void)_copyIntoPendingProvision:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPendingPrecursorPassCredential

- (id)initForDatabase
{
  v3.receiver = self;
  v3.super_class = PKPendingPrecursorPassCredential;
  return [(PKPendingPrecursorPassCredential *)&v3 init];
}

- (PKPendingPrecursorPassCredential)initWithPrecursorCredential:(id)a3
{
  v4 = a3;
  v5 = [v4 passTypeIdentifier];
  v6 = [v4 serialNumber];

  v7 = [(PKPendingPrecursorPassCredential *)self initWithPassTypeIdentifier:v5 passSerialNumber:v6];
  return v7;
}

- (PKPendingPrecursorPassCredential)initWithPassTypeIdentifier:(id)a3 passSerialNumber:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = PKGeneratePassUniqueID(v7, v8);
  v10 = [@"Precursor-" stringByAppendingString:v9];

  v14.receiver = self;
  v14.super_class = PKPendingPrecursorPassCredential;
  v11 = [(PKPendingProvisioning *)&v14 initWithUniqueIdentifier:v10 status:1];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_passTypeIdentifier, a3);
    objc_storeStrong(&v12->_passSerialNumber, a4);
  }

  return v12;
}

- (BOOL)representsCredential:(id)a3
{
  v4 = a3;
  if ([v4 isPrecursorCredential])
  {
    v5 = [v4 precursorCredential];
    goto LABEL_5;
  }

  if ([v4 isRemoteCredential])
  {
    v5 = [v4 remoteCredential];
LABEL_5:
    v6 = v5;
    v7 = [v5 passTypeIdentifier];
    passTypeIdentifier = self->_passTypeIdentifier;
    v9 = v7;
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

    v13 = [v6 serialNumber];
    passSerialNumber = self->_passSerialNumber;
    v11 = v13;
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

- (BOOL)representsPass:(id)a3
{
  v4 = a3;
  v5 = [v4 passTypeIdentifier];
  passTypeIdentifier = self->_passTypeIdentifier;
  v7 = v5;
  v8 = passTypeIdentifier;
  v9 = v8;
  if (v7 == v8)
  {

LABEL_7:
    v11 = [v4 serialNumber];
    passSerialNumber = self->_passSerialNumber;
    v9 = v11;
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

- (PKPendingPrecursorPassCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPendingPrecursorPassCredential;
  v5 = [(PKPendingProvisioning *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passSerialNumber"];
    passSerialNumber = v5->_passSerialNumber;
    v5->_passSerialNumber = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPendingPrecursorPassCredential;
  v4 = a3;
  [(PKPendingProvisioning *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_passTypeIdentifier forKey:{@"passTypeIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_passSerialNumber forKey:@"passSerialNumber"];
}

- (void)_copyIntoPendingProvision:(id)a3
{
  v9.receiver = self;
  v9.super_class = PKPendingPrecursorPassCredential;
  v4 = a3;
  [(PKPendingProvisioning *)&v9 _copyIntoPendingProvision:v4];
  v5 = [(NSString *)self->_passTypeIdentifier copy:v9.receiver];
  v6 = v4[7];
  v4[7] = v5;

  v7 = [(NSString *)self->_passSerialNumber copy];
  v8 = v4[8];
  v4[8] = v7;
}

@end