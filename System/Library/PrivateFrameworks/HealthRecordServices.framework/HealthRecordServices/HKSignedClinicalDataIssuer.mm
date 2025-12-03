@interface HKSignedClinicalDataIssuer
- (BOOL)isEqual:(id)equal;
- (HKSignedClinicalDataIssuer)init;
- (HKSignedClinicalDataIssuer)initWithCoder:(id)coder;
- (HKSignedClinicalDataIssuer)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle wellKnownURL:(id)l;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (HKSignedClinicalDataIssuer)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle wellKnownURL:(id)l
{
  identifierCopy = identifier;
  titleCopy = title;
  subtitleCopy = subtitle;
  lCopy = l;
  v24.receiver = self;
  v24.super_class = HKSignedClinicalDataIssuer;
  v14 = [(HKSignedClinicalDataIssuer *)&v24 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [titleCopy copy];
    title = v14->_title;
    v14->_title = v17;

    v19 = [subtitleCopy copy];
    subtitle = v14->_subtitle;
    v14->_subtitle = v19;

    v21 = [lCopy copy];
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
      LOBYTE(title3) = 0;
LABEL_42:

      goto LABEL_43;
    }

    identifier = self->_identifier;
    identifier = [(HKSignedClinicalDataIssuer *)v7 identifier];
    if (identifier != identifier)
    {
      identifier2 = [(HKSignedClinicalDataIssuer *)v7 identifier];
      if (!identifier2)
      {
        LOBYTE(title3) = 0;
        goto LABEL_41;
      }

      v3 = identifier2;
      v11 = self->_identifier;
      identifier3 = [(HKSignedClinicalDataIssuer *)v7 identifier];
      if (![(NSString *)v11 isEqualToString:identifier3])
      {
        LOBYTE(title3) = 0;
LABEL_40:

        goto LABEL_41;
      }

      v41 = identifier3;
    }

    title = self->_title;
    title = [(HKSignedClinicalDataIssuer *)v7 title];
    v42 = title;
    if (title != title)
    {
      title2 = [(HKSignedClinicalDataIssuer *)v7 title];
      if (!title2)
      {
        LOBYTE(title3) = 0;
        goto LABEL_38;
      }

      v17 = title2;
      v18 = self->_title;
      title3 = [(HKSignedClinicalDataIssuer *)v7 title];
      if (![(NSString *)v18 isEqualToString:title3])
      {

        LOBYTE(title3) = 0;
        goto LABEL_39;
      }

      v38 = title3;
      v39 = v17;
    }

    subtitle = self->_subtitle;
    subtitle = [(HKSignedClinicalDataIssuer *)v7 subtitle];
    if (subtitle == subtitle)
    {
      v37 = v3;
    }

    else
    {
      title3 = [(HKSignedClinicalDataIssuer *)v7 subtitle];
      if (!title3)
      {
        v31 = v38;
        v32 = v39;
        v30 = subtitle;
        goto LABEL_30;
      }

      v20 = self->_subtitle;
      subtitle2 = [(HKSignedClinicalDataIssuer *)v7 subtitle];
      v22 = v20;
      v23 = subtitle2;
      if (![(NSString *)v22 isEqualToString:subtitle2])
      {

        LOBYTE(title3) = 0;
        v29 = v42 == title;
        goto LABEL_33;
      }

      v34 = v23;
      v36 = title3;
      v37 = v3;
    }

    wellKnownURL = self->_wellKnownURL;
    wellKnownURL = [(HKSignedClinicalDataIssuer *)v7 wellKnownURL];
    LOBYTE(title3) = wellKnownURL == wellKnownURL;
    if (wellKnownURL != wellKnownURL)
    {
      wellKnownURL2 = [(HKSignedClinicalDataIssuer *)v7 wellKnownURL];
      if (wellKnownURL2)
      {
        v27 = wellKnownURL2;
        title3 = self->_wellKnownURL;
        wellKnownURL3 = [(HKSignedClinicalDataIssuer *)v7 wellKnownURL];
        LOBYTE(title3) = [title3 isEqual:wellKnownURL3];

        if (subtitle != subtitle)
        {
        }

        v29 = v42 == title;
        v3 = v37;
LABEL_33:
        v32 = v39;
        if (!v29)
        {

LABEL_37:
        }

LABEL_38:

LABEL_39:
        identifier3 = v41;
        if (identifier != identifier)
        {
          goto LABEL_40;
        }

LABEL_41:

        goto LABEL_42;
      }
    }

    v30 = subtitle;
    if (subtitle == subtitle)
    {

      v3 = v37;
      v31 = v38;
      v32 = v39;
      if (v42 == title)
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

    if (v42 == title)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  LOBYTE(title3) = 1;
LABEL_43:

  return title3;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"Identifier"];
  [coderCopy encodeObject:self->_title forKey:@"Title"];
  [coderCopy encodeObject:self->_subtitle forKey:@"Subtitle"];
  [coderCopy encodeObject:self->_wellKnownURL forKey:@"WellKnownURL"];
}

- (HKSignedClinicalDataIssuer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Title"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Subtitle"];
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WellKnownURL"];
      self = [(HKSignedClinicalDataIssuer *)self initWithIdentifier:v5 title:v6 subtitle:v7 wellKnownURL:v8];

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