@interface HMMTRSystemCommissionerPairingManagerPairingIdentity
- (BOOL)isEquivalentTo:(id)a3;
- (BOOL)isIdentifiable;
- (HMMTRSystemCommissionerPairingManagerPairingIdentity)initWithUUID:(id)a3 vendorID:(id)a4 productID:(id)a5 serialNumber:(id)a6 setupPayload:(id)a7;
@end

@implementation HMMTRSystemCommissionerPairingManagerPairingIdentity

- (BOOL)isEquivalentTo:(id)a3
{
  v4 = a3;
  v5 = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)self vendorID];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  v7 = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)self productID];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v7;
  v9 = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)self serialNumber];
  if (!v9)
  {
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  v10 = v9;
  v11 = [v4 vendorID];
  if (!v11)
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = v11;
  v13 = [v4 productID];
  if (!v13)
  {

    goto LABEL_11;
  }

  v14 = v13;
  v15 = [v4 serialNumber];

  if (!v15)
  {
LABEL_14:
    v16 = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)self setupPayload];
    v17 = [v4 setupPayload];
    v22 = [v16 isEqual:v17];
    goto LABEL_15;
  }

  v16 = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)self vendorID];
  v17 = [v4 vendorID];
  if ([v16 isEqual:v17])
  {
    v18 = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)self productID];
    v19 = [v4 productID];
    if ([v18 isEqual:v19])
    {
      v20 = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)self serialNumber];
      v21 = [v4 serialNumber];
      v22 = [v20 isEqual:v21];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

LABEL_15:

  return v22;
}

- (BOOL)isIdentifiable
{
  v4 = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)self vendorID];
  if (v4)
  {
    v2 = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)self productID];
    if (v2)
    {
      v5 = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)self serialNumber];
      if (v5)
      {

        v6 = 1;
LABEL_6:

        goto LABEL_7;
      }
    }
  }

  v7 = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)self setupPayload];
  v6 = v7 != 0;

  if (v4)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v6;
}

- (HMMTRSystemCommissionerPairingManagerPairingIdentity)initWithUUID:(id)a3 vendorID:(id)a4 productID:(id)a5 serialNumber:(id)a6 setupPayload:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = HMMTRSystemCommissionerPairingManagerPairingIdentity;
  v17 = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_uuid, a3);
    objc_storeStrong(&v18->_vendorID, a4);
    objc_storeStrong(&v18->_productID, a5);
    objc_storeStrong(&v18->_serialNumber, a6);
    objc_storeStrong(&v18->_setupPayload, a7);
  }

  return v18;
}

@end