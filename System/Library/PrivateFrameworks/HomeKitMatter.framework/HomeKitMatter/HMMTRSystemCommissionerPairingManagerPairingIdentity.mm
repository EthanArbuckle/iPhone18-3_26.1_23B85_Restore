@interface HMMTRSystemCommissionerPairingManagerPairingIdentity
- (BOOL)isEquivalentTo:(id)to;
- (BOOL)isIdentifiable;
- (HMMTRSystemCommissionerPairingManagerPairingIdentity)initWithUUID:(id)d vendorID:(id)iD productID:(id)productID serialNumber:(id)number setupPayload:(id)payload;
@end

@implementation HMMTRSystemCommissionerPairingManagerPairingIdentity

- (BOOL)isEquivalentTo:(id)to
{
  toCopy = to;
  vendorID = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)self vendorID];
  if (!vendorID)
  {
    goto LABEL_14;
  }

  v6 = vendorID;
  productID = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)self productID];
  if (!productID)
  {
    goto LABEL_13;
  }

  v8 = productID;
  serialNumber = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)self serialNumber];
  if (!serialNumber)
  {
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  v10 = serialNumber;
  vendorID2 = [toCopy vendorID];
  if (!vendorID2)
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = vendorID2;
  productID2 = [toCopy productID];
  if (!productID2)
  {

    goto LABEL_11;
  }

  v14 = productID2;
  serialNumber2 = [toCopy serialNumber];

  if (!serialNumber2)
  {
LABEL_14:
    setupPayload = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)self setupPayload];
    setupPayload2 = [toCopy setupPayload];
    v22 = [setupPayload isEqual:setupPayload2];
    goto LABEL_15;
  }

  setupPayload = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)self vendorID];
  setupPayload2 = [toCopy vendorID];
  if ([setupPayload isEqual:setupPayload2])
  {
    productID3 = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)self productID];
    productID4 = [toCopy productID];
    if ([productID3 isEqual:productID4])
    {
      serialNumber3 = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)self serialNumber];
      serialNumber4 = [toCopy serialNumber];
      v22 = [serialNumber3 isEqual:serialNumber4];
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
  vendorID = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)self vendorID];
  if (vendorID)
  {
    productID = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)self productID];
    if (productID)
    {
      serialNumber = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)self serialNumber];
      if (serialNumber)
      {

        v6 = 1;
LABEL_6:

        goto LABEL_7;
      }
    }
  }

  setupPayload = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)self setupPayload];
  v6 = setupPayload != 0;

  if (vendorID)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v6;
}

- (HMMTRSystemCommissionerPairingManagerPairingIdentity)initWithUUID:(id)d vendorID:(id)iD productID:(id)productID serialNumber:(id)number setupPayload:(id)payload
{
  dCopy = d;
  iDCopy = iD;
  productIDCopy = productID;
  numberCopy = number;
  payloadCopy = payload;
  v21.receiver = self;
  v21.super_class = HMMTRSystemCommissionerPairingManagerPairingIdentity;
  v17 = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_uuid, d);
    objc_storeStrong(&v18->_vendorID, iD);
    objc_storeStrong(&v18->_productID, productID);
    objc_storeStrong(&v18->_serialNumber, number);
    objc_storeStrong(&v18->_setupPayload, payload);
  }

  return v18;
}

@end