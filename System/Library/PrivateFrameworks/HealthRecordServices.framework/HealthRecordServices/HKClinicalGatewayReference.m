@interface HKClinicalGatewayReference
- (BOOL)isEqual:(id)a3;
- (HKClinicalGatewayReference)init;
- (HKClinicalGatewayReference)initWithCoder:(id)a3;
- (HKClinicalGatewayReference)initWithGatewayID:(id)a3 gatewayBatchID:(id)a4 minCompatibleAPIVersion:(int64_t)a5 FHIRVersion:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (HKClinicalGatewayReference)initWithGatewayID:(id)a3 gatewayBatchID:(id)a4 minCompatibleAPIVersion:(int64_t)a5 FHIRVersion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = HKClinicalGatewayReference;
  v13 = [(HKClinicalGatewayReference *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    gatewayID = v13->_gatewayID;
    v13->_gatewayID = v14;

    v16 = [v11 copy];
    gatewayBatchID = v13->_gatewayBatchID;
    v13->_gatewayBatchID = v16;

    v13->_minCompatibleAPIVersion = a5;
    v18 = [v12 copy];
    FHIRVersion = v13->_FHIRVersion;
    v13->_FHIRVersion = v18;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self != v5)
  {
    v7 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_36:

      goto LABEL_37;
    }

    gatewayID = self->_gatewayID;
    v9 = [(HKClinicalGatewayReference *)v7 gatewayID];
    if (gatewayID != v9)
    {
      v10 = [(HKClinicalGatewayReference *)v7 gatewayID];
      if (!v10)
      {
        v13 = 0;
        goto LABEL_35;
      }

      v3 = v10;
      v11 = self->_gatewayID;
      v12 = [(HKClinicalGatewayReference *)v7 gatewayID];
      if (![(NSString *)v11 isEqualToString:v12])
      {
        v13 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v33 = v12;
    }

    gatewayBatchID = self->_gatewayBatchID;
    v15 = [(HKClinicalGatewayReference *)v7 gatewayBatchID];
    if (gatewayBatchID == v15)
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
      v16 = [(HKClinicalGatewayReference *)v7 gatewayBatchID];
      if (!v16)
      {
        v13 = 0;
        goto LABEL_29;
      }

      v32 = v16;
      v17 = self->_gatewayBatchID;
      v18 = [(HKClinicalGatewayReference *)v7 gatewayBatchID];
      if (![(NSString *)v17 isEqualToString:v18])
      {

        v13 = 0;
LABEL_32:
        v28 = gatewayID == v9;
        goto LABEL_33;
      }

      v30 = v18;
      v19 = self->_minCompatibleAPIVersion;
      if (v19 != [(HKClinicalGatewayReference *)v7 minCompatibleAPIVersion])
      {
        v13 = 0;
LABEL_28:

LABEL_29:
        v12 = v33;

        if (gatewayID == v9)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }
    }

    v31 = v3;
    FHIRVersion = self->_FHIRVersion;
    v22 = [(HKClinicalGatewayReference *)v7 FHIRVersion];
    v23 = v22;
    if (FHIRVersion == v22)
    {

      v13 = 1;
    }

    else
    {
      v24 = [(HKClinicalGatewayReference *)v7 FHIRVersion];
      if (v24)
      {
        v25 = v24;
        v26 = self->_FHIRVersion;
        v27 = [(HKClinicalGatewayReference *)v7 FHIRVersion];
        v13 = [(HKFHIRVersion *)v26 isEqual:v27];

        if (gatewayBatchID != v15)
        {
        }

        v28 = gatewayID == v9;
        v3 = v31;
LABEL_33:
        v12 = v33;
        if (!v28)
        {
          goto LABEL_34;
        }

LABEL_35:

        goto LABEL_36;
      }

      v13 = 0;
    }

    v18 = v30;
    v3 = v31;
    if (gatewayBatchID != v15)
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

- (void)encodeWithCoder:(id)a3
{
  gatewayID = self->_gatewayID;
  v5 = a3;
  [v5 encodeObject:gatewayID forKey:@"gatewayID"];
  [v5 encodeObject:self->_gatewayBatchID forKey:@"gatewayBatchID"];
  [v5 encodeInteger:self->_minCompatibleAPIVersion forKey:@"minCompatibleAPIVersion"];
  [v5 encodeObject:self->_FHIRVersion forKey:@"FHIRVersion"];
}

- (HKClinicalGatewayReference)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gatewayID"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gatewayBatchID"];
    if (v6 && ([v4 containsValueForKey:@"minCompatibleAPIVersion"] & 1) != 0)
    {
      v7 = [v4 decodeIntegerForKey:@"minCompatibleAPIVersion"];
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FHIRVersion"];
      if (v8)
      {
        self = [(HKClinicalGatewayReference *)self initWithGatewayID:v5 gatewayBatchID:v6 minCompatibleAPIVersion:v7 FHIRVersion:v8];
        v9 = self;
      }

      else
      {
        [v4 hrs_failWithCocoaValueNotFoundError];
        v9 = 0;
      }
    }

    else
    {
      [v4 hrs_failWithCocoaValueNotFoundError];
      v9 = 0;
    }
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v9 = 0;
  }

  return v9;
}

@end