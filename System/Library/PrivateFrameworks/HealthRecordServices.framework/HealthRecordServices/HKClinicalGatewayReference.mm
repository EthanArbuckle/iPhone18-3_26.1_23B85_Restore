@interface HKClinicalGatewayReference
- (BOOL)isEqual:(id)equal;
- (HKClinicalGatewayReference)init;
- (HKClinicalGatewayReference)initWithCoder:(id)coder;
- (HKClinicalGatewayReference)initWithGatewayID:(id)d gatewayBatchID:(id)iD minCompatibleAPIVersion:(int64_t)version FHIRVersion:(id)rVersion;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKClinicalGatewayReference

- (HKClinicalGatewayReference)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalGatewayReference)initWithGatewayID:(id)d gatewayBatchID:(id)iD minCompatibleAPIVersion:(int64_t)version FHIRVersion:(id)rVersion
{
  dCopy = d;
  iDCopy = iD;
  rVersionCopy = rVersion;
  v21.receiver = self;
  v21.super_class = HKClinicalGatewayReference;
  v13 = [(HKClinicalGatewayReference *)&v21 init];
  if (v13)
  {
    v14 = [dCopy copy];
    gatewayID = v13->_gatewayID;
    v13->_gatewayID = v14;

    v16 = [iDCopy copy];
    gatewayBatchID = v13->_gatewayBatchID;
    v13->_gatewayBatchID = v16;

    v13->_minCompatibleAPIVersion = version;
    v18 = [rVersionCopy copy];
    FHIRVersion = v13->_FHIRVersion;
    v13->_FHIRVersion = v18;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self != equalCopy)
  {
    v7 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_36:

      goto LABEL_37;
    }

    gatewayID = self->_gatewayID;
    gatewayID = [(HKClinicalGatewayReference *)v7 gatewayID];
    if (gatewayID != gatewayID)
    {
      gatewayID2 = [(HKClinicalGatewayReference *)v7 gatewayID];
      if (!gatewayID2)
      {
        v13 = 0;
        goto LABEL_35;
      }

      v3 = gatewayID2;
      v11 = self->_gatewayID;
      gatewayID3 = [(HKClinicalGatewayReference *)v7 gatewayID];
      if (![(NSString *)v11 isEqualToString:gatewayID3])
      {
        v13 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v33 = gatewayID3;
    }

    gatewayBatchID = self->_gatewayBatchID;
    gatewayBatchID = [(HKClinicalGatewayReference *)v7 gatewayBatchID];
    if (gatewayBatchID == gatewayBatchID)
    {
      minCompatibleAPIVersion = self->_minCompatibleAPIVersion;
      if (minCompatibleAPIVersion != [(HKClinicalGatewayReference *)v7 minCompatibleAPIVersion])
      {
        v13 = 0;
LABEL_31:

        goto LABEL_32;
      }
    }

    else
    {
      gatewayBatchID2 = [(HKClinicalGatewayReference *)v7 gatewayBatchID];
      if (!gatewayBatchID2)
      {
        v13 = 0;
        goto LABEL_29;
      }

      v32 = gatewayBatchID2;
      v17 = self->_gatewayBatchID;
      gatewayBatchID3 = [(HKClinicalGatewayReference *)v7 gatewayBatchID];
      if (![(NSString *)v17 isEqualToString:gatewayBatchID3])
      {

        v13 = 0;
LABEL_32:
        v28 = gatewayID == gatewayID;
        goto LABEL_33;
      }

      v30 = gatewayBatchID3;
      v19 = self->_minCompatibleAPIVersion;
      if (v19 != [(HKClinicalGatewayReference *)v7 minCompatibleAPIVersion])
      {
        v13 = 0;
LABEL_28:

LABEL_29:
        gatewayID3 = v33;

        if (gatewayID == gatewayID)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }
    }

    v31 = v3;
    FHIRVersion = self->_FHIRVersion;
    fHIRVersion = [(HKClinicalGatewayReference *)v7 FHIRVersion];
    v23 = fHIRVersion;
    if (FHIRVersion == fHIRVersion)
    {

      v13 = 1;
    }

    else
    {
      fHIRVersion2 = [(HKClinicalGatewayReference *)v7 FHIRVersion];
      if (fHIRVersion2)
      {
        v25 = fHIRVersion2;
        v26 = self->_FHIRVersion;
        fHIRVersion3 = [(HKClinicalGatewayReference *)v7 FHIRVersion];
        v13 = [(HKFHIRVersion *)v26 isEqual:fHIRVersion3];

        if (gatewayBatchID != gatewayBatchID)
        {
        }

        v28 = gatewayID == gatewayID;
        v3 = v31;
LABEL_33:
        gatewayID3 = v33;
        if (!v28)
        {
          goto LABEL_34;
        }

LABEL_35:

        goto LABEL_36;
      }

      v13 = 0;
    }

    gatewayBatchID3 = v30;
    v3 = v31;
    if (gatewayBatchID != gatewayBatchID)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v13 = 1;
LABEL_37:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_gatewayID hash];
  v4 = [(NSString *)self->_gatewayBatchID hash]^ v3;
  minCompatibleAPIVersion = self->_minCompatibleAPIVersion;
  return v4 ^ minCompatibleAPIVersion ^ [(HKFHIRVersion *)self->_FHIRVersion hash];
}

- (void)encodeWithCoder:(id)coder
{
  gatewayID = self->_gatewayID;
  coderCopy = coder;
  [coderCopy encodeObject:gatewayID forKey:@"gatewayID"];
  [coderCopy encodeObject:self->_gatewayBatchID forKey:@"gatewayBatchID"];
  [coderCopy encodeInteger:self->_minCompatibleAPIVersion forKey:@"minCompatibleAPIVersion"];
  [coderCopy encodeObject:self->_FHIRVersion forKey:@"FHIRVersion"];
}

- (HKClinicalGatewayReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gatewayID"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gatewayBatchID"];
    if (v6 && ([coderCopy containsValueForKey:@"minCompatibleAPIVersion"] & 1) != 0)
    {
      v7 = [coderCopy decodeIntegerForKey:@"minCompatibleAPIVersion"];
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FHIRVersion"];
      if (v8)
      {
        self = [(HKClinicalGatewayReference *)self initWithGatewayID:v5 gatewayBatchID:v6 minCompatibleAPIVersion:v7 FHIRVersion:v8];
        selfCopy = self;
      }

      else
      {
        [coderCopy hrs_failWithCocoaValueNotFoundError];
        selfCopy = 0;
      }
    }

    else
    {
      [coderCopy hrs_failWithCocoaValueNotFoundError];
      selfCopy = 0;
    }
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

@end