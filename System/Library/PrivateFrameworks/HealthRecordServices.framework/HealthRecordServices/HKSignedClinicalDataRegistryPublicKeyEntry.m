@interface HKSignedClinicalDataRegistryPublicKeyEntry
- (BOOL)isEqual:(id)a3;
- (HKSignedClinicalDataRegistryPublicKeyEntry)initWithCoder:(id)a3;
- (HKSignedClinicalDataRegistryPublicKeyEntry)initWithKeyID:(id)a3 added:(id)a4 removed:(id)a5 source:(id)a6 jwkData:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSignedClinicalDataRegistryPublicKeyEntry

- (HKSignedClinicalDataRegistryPublicKeyEntry)initWithKeyID:(id)a3 added:(id)a4 removed:(id)a5 source:(id)a6 jwkData:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = HKSignedClinicalDataRegistryPublicKeyEntry;
  v17 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    kid = v17->_kid;
    v17->_kid = v18;

    v20 = [v13 copy];
    added = v17->_added;
    v17->_added = v20;

    v22 = [v14 copy];
    removed = v17->_removed;
    v17->_removed = v22;

    v24 = [v15 copy];
    source = v17->_source;
    v17->_source = v24;

    v26 = [v16 copy];
    jwk = v17->_jwk;
    v17->_jwk = v26;
  }

  return v17;
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
      v14 = 0;
LABEL_49:

      goto LABEL_50;
    }

    kid = self->_kid;
    v9 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 kid];
    if (kid != v9)
    {
      v10 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 kid];
      if (!v10)
      {
        v14 = 0;
        goto LABEL_48;
      }

      v11 = v10;
      v12 = self->_kid;
      v13 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 kid];
      if (![(NSString *)v12 isEqualToString:v13])
      {
        v14 = 0;
LABEL_47:

        goto LABEL_48;
      }

      v56 = v11;
      v55 = v13;
    }

    added = self->_added;
    v16 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 added];
    if (added != v16)
    {
      v17 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 added];
      if (!v17)
      {
        goto LABEL_35;
      }

      v54 = v17;
      v18 = self->_added;
      v3 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 added];
      if (([(NSDate *)v18 isEqual:v3]& 1) == 0)
      {
        goto LABEL_34;
      }
    }

    removed = self->_removed;
    v20 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 removed];
    v53 = removed;
    if (removed == v20)
    {
      v52 = added;
      v27 = v16;
LABEL_20:
      source = self->_source;
      v29 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 source];
      v30 = v29;
      v49 = source;
      v51 = v3;
      if (source == v29)
      {
        v47 = v29;
        v48 = v20;
        v16 = v27;
      }

      else
      {
        v31 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 source];
        if (!v31)
        {
          v14 = 0;
          v16 = v27;
          added = v52;
          goto LABEL_37;
        }

        v45 = v31;
        v48 = v20;
        v32 = self->_source;
        v33 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 source];
        v34 = v32;
        v35 = v33;
        v16 = v27;
        if (![(NSString *)v34 isEqualToString:v33])
        {

          v14 = 0;
          v20 = v48;
          added = v52;
          v42 = v53;
          goto LABEL_41;
        }

        v44 = v35;
        v47 = v30;
      }

      added = v52;
      jwk = self->_jwk;
      v37 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 jwk];
      v14 = jwk == v37;
      if (jwk != v37)
      {
        v38 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 jwk];
        if (v38)
        {
          v39 = v38;
          v40 = self->_jwk;
          v41 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 jwk];
          v14 = [(NSData *)v40 isEqual:v41];

          if (v49 != v47)
          {
          }

          goto LABEL_39;
        }
      }

      v30 = v47;
      if (v49 == v47)
      {
LABEL_39:

        v20 = v48;
        goto LABEL_40;
      }

      v20 = v48;
LABEL_37:

LABEL_40:
      v42 = v53;
LABEL_41:
      if (v42 != v20)
      {
      }

      goto LABEL_43;
    }

    v21 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 removed];
    if (!v21)
    {
      v51 = v3;
      v14 = 0;
LABEL_43:

      if (added != v16)
      {
      }

LABEL_46:
      v13 = v55;
      v11 = v56;
      if (kid != v9)
      {
        goto LABEL_47;
      }

LABEL_48:

      goto LABEL_49;
    }

    v50 = v21;
    v52 = added;
    v22 = v20;
    v23 = self->_removed;
    v24 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 removed];
    v25 = v23;
    v26 = v24;
    if (([(NSDate *)v25 isEqual:v24]& 1) != 0)
    {
      v27 = v16;
      v46 = v26;
      v20 = v22;
      goto LABEL_20;
    }

    if (added != v16)
    {
LABEL_34:
    }

LABEL_35:

    v14 = 0;
    goto LABEL_46;
  }

  v14 = 1;
LABEL_50:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  kid = self->_kid;
  v5 = a3;
  [v5 encodeObject:kid forKey:@"kid"];
  [v5 encodeObject:self->_added forKey:@"added"];
  [v5 encodeObject:self->_removed forKey:@"removed"];
  [v5 encodeObject:self->_source forKey:@"source"];
  [v5 encodeObject:self->_jwk forKey:@"jwk"];
}

- (HKSignedClinicalDataRegistryPublicKeyEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kid"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"added"];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"removed"];
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"source"];
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"jwk"];
      self = [(HKSignedClinicalDataRegistryPublicKeyEntry *)self initWithKeyID:v5 added:v6 removed:v7 source:v8 jwkData:v9];

      v10 = self;
    }

    else
    {
      [v4 hrs_failWithCocoaValueNotFoundError];
      v10 = 0;
    }
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v10 = 0;
  }

  return v10;
}

@end