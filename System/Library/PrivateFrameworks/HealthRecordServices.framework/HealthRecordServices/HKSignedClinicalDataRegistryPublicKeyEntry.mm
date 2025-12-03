@interface HKSignedClinicalDataRegistryPublicKeyEntry
- (BOOL)isEqual:(id)equal;
- (HKSignedClinicalDataRegistryPublicKeyEntry)initWithCoder:(id)coder;
- (HKSignedClinicalDataRegistryPublicKeyEntry)initWithKeyID:(id)d added:(id)added removed:(id)removed source:(id)source jwkData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSignedClinicalDataRegistryPublicKeyEntry

- (HKSignedClinicalDataRegistryPublicKeyEntry)initWithKeyID:(id)d added:(id)added removed:(id)removed source:(id)source jwkData:(id)data
{
  dCopy = d;
  addedCopy = added;
  removedCopy = removed;
  sourceCopy = source;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = HKSignedClinicalDataRegistryPublicKeyEntry;
  v17 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)&v29 init];
  if (v17)
  {
    v18 = [dCopy copy];
    kid = v17->_kid;
    v17->_kid = v18;

    v20 = [addedCopy copy];
    added = v17->_added;
    v17->_added = v20;

    v22 = [removedCopy copy];
    removed = v17->_removed;
    v17->_removed = v22;

    v24 = [sourceCopy copy];
    source = v17->_source;
    v17->_source = v24;

    v26 = [dataCopy copy];
    jwk = v17->_jwk;
    v17->_jwk = v26;
  }

  return v17;
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
    added = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 added];
    if (added != added)
    {
      added2 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 added];
      if (!added2)
      {
        goto LABEL_35;
      }

      v54 = added2;
      v18 = self->_added;
      added3 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 added];
      if (([(NSDate *)v18 isEqual:added3]& 1) == 0)
      {
        goto LABEL_34;
      }
    }

    removed = self->_removed;
    removed = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 removed];
    v53 = removed;
    if (removed == removed)
    {
      v52 = added;
      v27 = added;
LABEL_20:
      source = self->_source;
      source = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 source];
      v30 = source;
      v49 = source;
      v51 = added3;
      if (source == source)
      {
        v47 = source;
        v48 = removed;
        added = v27;
      }

      else
      {
        source2 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 source];
        if (!source2)
        {
          v14 = 0;
          added = v27;
          added = v52;
          goto LABEL_37;
        }

        v45 = source2;
        v48 = removed;
        v32 = self->_source;
        source3 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 source];
        v34 = v32;
        v35 = source3;
        added = v27;
        if (![(NSString *)v34 isEqualToString:source3])
        {

          v14 = 0;
          removed = v48;
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

        removed = v48;
        goto LABEL_40;
      }

      removed = v48;
LABEL_37:

LABEL_40:
      v42 = v53;
LABEL_41:
      if (v42 != removed)
      {
      }

      goto LABEL_43;
    }

    removed2 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 removed];
    if (!removed2)
    {
      v51 = added3;
      v14 = 0;
LABEL_43:

      if (added != added)
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

    v50 = removed2;
    v52 = added;
    v22 = removed;
    v23 = self->_removed;
    removed3 = [(HKSignedClinicalDataRegistryPublicKeyEntry *)v7 removed];
    v25 = v23;
    v26 = removed3;
    if (([(NSDate *)v25 isEqual:removed3]& 1) != 0)
    {
      v27 = added;
      v46 = v26;
      removed = v22;
      goto LABEL_20;
    }

    if (added != added)
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

- (void)encodeWithCoder:(id)coder
{
  kid = self->_kid;
  coderCopy = coder;
  [coderCopy encodeObject:kid forKey:@"kid"];
  [coderCopy encodeObject:self->_added forKey:@"added"];
  [coderCopy encodeObject:self->_removed forKey:@"removed"];
  [coderCopy encodeObject:self->_source forKey:@"source"];
  [coderCopy encodeObject:self->_jwk forKey:@"jwk"];
}

- (HKSignedClinicalDataRegistryPublicKeyEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kid"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"added"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"removed"];
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"jwk"];
      self = [(HKSignedClinicalDataRegistryPublicKeyEntry *)self initWithKeyID:v5 added:v6 removed:v7 source:v8 jwkData:v9];

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

  return selfCopy;
}

@end