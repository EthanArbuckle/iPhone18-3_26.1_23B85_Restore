@interface HKSignedClinicalDataIssuer
- (BOOL)isEqual:(id)a3;
- (HKSignedClinicalDataIssuer)init;
- (HKSignedClinicalDataIssuer)initWithCoder:(id)a3;
- (HKSignedClinicalDataIssuer)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5 wellKnownURL:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSignedClinicalDataIssuer

- (HKSignedClinicalDataIssuer)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKSignedClinicalDataIssuer)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5 wellKnownURL:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = HKSignedClinicalDataIssuer;
  v14 = [(HKSignedClinicalDataIssuer *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [v11 copy];
    title = v14->_title;
    v14->_title = v17;

    v19 = [v12 copy];
    subtitle = v14->_subtitle;
    v14->_subtitle = v19;

    v21 = [v13 copy];
    wellKnownURL = v14->_wellKnownURL;
    v14->_wellKnownURL = v21;
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_title hash]^ v3;
  v5 = [(NSString *)self->_subtitle hash];
  return v4 ^ v5 ^ [(NSURL *)self->_wellKnownURL hash];
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
      LOBYTE(v13) = 0;
LABEL_42:

      goto LABEL_43;
    }

    identifier = self->_identifier;
    v9 = [(HKSignedClinicalDataIssuer *)v7 identifier];
    if (identifier != v9)
    {
      v10 = [(HKSignedClinicalDataIssuer *)v7 identifier];
      if (!v10)
      {
        LOBYTE(v13) = 0;
        goto LABEL_41;
      }

      v3 = v10;
      v11 = self->_identifier;
      v12 = [(HKSignedClinicalDataIssuer *)v7 identifier];
      if (![(NSString *)v11 isEqualToString:v12])
      {
        LOBYTE(v13) = 0;
LABEL_40:

        goto LABEL_41;
      }

      v41 = v12;
    }

    title = self->_title;
    v15 = [(HKSignedClinicalDataIssuer *)v7 title];
    v42 = title;
    if (title != v15)
    {
      v16 = [(HKSignedClinicalDataIssuer *)v7 title];
      if (!v16)
      {
        LOBYTE(v13) = 0;
        goto LABEL_38;
      }

      v17 = v16;
      v18 = self->_title;
      v13 = [(HKSignedClinicalDataIssuer *)v7 title];
      if (![(NSString *)v18 isEqualToString:v13])
      {

        LOBYTE(v13) = 0;
        goto LABEL_39;
      }

      v38 = v13;
      v39 = v17;
    }

    subtitle = self->_subtitle;
    v40 = [(HKSignedClinicalDataIssuer *)v7 subtitle];
    if (subtitle == v40)
    {
      v37 = v3;
    }

    else
    {
      v13 = [(HKSignedClinicalDataIssuer *)v7 subtitle];
      if (!v13)
      {
        v31 = v38;
        v32 = v39;
        v30 = v40;
        goto LABEL_30;
      }

      v20 = self->_subtitle;
      v21 = [(HKSignedClinicalDataIssuer *)v7 subtitle];
      v22 = v20;
      v23 = v21;
      if (![(NSString *)v22 isEqualToString:v21])
      {

        LOBYTE(v13) = 0;
        v29 = v42 == v15;
        goto LABEL_33;
      }

      v34 = v23;
      v36 = v13;
      v37 = v3;
    }

    wellKnownURL = self->_wellKnownURL;
    v25 = [(HKSignedClinicalDataIssuer *)v7 wellKnownURL];
    LOBYTE(v13) = wellKnownURL == v25;
    if (wellKnownURL != v25)
    {
      v26 = [(HKSignedClinicalDataIssuer *)v7 wellKnownURL];
      if (v26)
      {
        v27 = v26;
        v13 = self->_wellKnownURL;
        v28 = [(HKSignedClinicalDataIssuer *)v7 wellKnownURL];
        LOBYTE(v13) = [v13 isEqual:v28];

        if (subtitle != v40)
        {
        }

        v29 = v42 == v15;
        v3 = v37;
LABEL_33:
        v32 = v39;
        if (!v29)
        {

LABEL_37:
        }

LABEL_38:

LABEL_39:
        v12 = v41;
        if (identifier != v9)
        {
          goto LABEL_40;
        }

LABEL_41:

        goto LABEL_42;
      }
    }

    v30 = v40;
    if (subtitle == v40)
    {

      v3 = v37;
      v31 = v38;
      v32 = v39;
      if (v42 == v15)
      {
        goto LABEL_38;
      }

LABEL_36:

      goto LABEL_37;
    }

    v3 = v37;
    v31 = v38;
    v32 = v39;
LABEL_30:

    if (v42 == v15)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  LOBYTE(v13) = 1;
LABEL_43:

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"Identifier"];
  [v5 encodeObject:self->_title forKey:@"Title"];
  [v5 encodeObject:self->_subtitle forKey:@"Subtitle"];
  [v5 encodeObject:self->_wellKnownURL forKey:@"WellKnownURL"];
}

- (HKSignedClinicalDataIssuer)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Title"];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Subtitle"];
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WellKnownURL"];
      self = [(HKSignedClinicalDataIssuer *)self initWithIdentifier:v5 title:v6 subtitle:v7 wellKnownURL:v8];

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

  return v9;
}

@end