@interface HKSignedClinicalDataRegistryIssuerEntry
- (BOOL)isEqual:(id)a3;
- (HKSignedClinicalDataRegistryIssuerEntry)initWithCoder:(id)a3;
- (HKSignedClinicalDataRegistryIssuerEntry)initWithIdentifier:(id)a3 title:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSignedClinicalDataRegistryIssuerEntry

- (HKSignedClinicalDataRegistryIssuerEntry)initWithIdentifier:(id)a3 title:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKSignedClinicalDataRegistryIssuerEntry;
  v8 = [(HKSignedClinicalDataRegistryIssuerEntry *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    title = v8->_title;
    v8->_title = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self != v6)
  {
    v8 = v6;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_18:

      goto LABEL_19;
    }

    identifier = self->_identifier;
    v10 = [(HKSignedClinicalDataRegistryIssuerEntry *)v8 identifier];
    if (identifier == v10)
    {
      goto LABEL_9;
    }

    v11 = [(HKSignedClinicalDataRegistryIssuerEntry *)v8 identifier];
    if (!v11)
    {
      v13 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v3 = v11;
    v12 = self->_identifier;
    v4 = [(HKSignedClinicalDataRegistryIssuerEntry *)v8 identifier];
    if ([(NSString *)v12 isEqualToString:v4])
    {
LABEL_9:
      title = self->_title;
      v15 = [(HKSignedClinicalDataRegistryIssuerEntry *)v8 title];
      v16 = v15;
      if (title == v15)
      {

        v13 = 1;
      }

      else
      {
        v17 = [(HKSignedClinicalDataRegistryIssuerEntry *)v8 title];
        if (v17)
        {
          v18 = v17;
          v19 = self->_title;
          v20 = [(HKSignedClinicalDataRegistryIssuerEntry *)v8 title];
          v13 = [(NSString *)v19 isEqualToString:v20];
        }

        else
        {

          v13 = 0;
        }
      }

      if (identifier == v10)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_17;
  }

  v13 = 1;
LABEL_19:

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_title forKey:@"title"];
}

- (HKSignedClinicalDataRegistryIssuerEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    if (v6)
    {
      self = [(HKSignedClinicalDataRegistryIssuerEntry *)self initWithIdentifier:v5 title:v6];
      v7 = self;
    }

    else
    {
      [v4 hrs_failWithCocoaValueNotFoundError];
      v7 = 0;
    }
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v7 = 0;
  }

  return v7;
}

@end