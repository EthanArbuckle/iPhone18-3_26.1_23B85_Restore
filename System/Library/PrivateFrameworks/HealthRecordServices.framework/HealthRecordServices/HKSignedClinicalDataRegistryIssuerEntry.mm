@interface HKSignedClinicalDataRegistryIssuerEntry
- (BOOL)isEqual:(id)equal;
- (HKSignedClinicalDataRegistryIssuerEntry)initWithCoder:(id)coder;
- (HKSignedClinicalDataRegistryIssuerEntry)initWithIdentifier:(id)identifier title:(id)title;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSignedClinicalDataRegistryIssuerEntry

- (HKSignedClinicalDataRegistryIssuerEntry)initWithIdentifier:(id)identifier title:(id)title
{
  identifierCopy = identifier;
  titleCopy = title;
  v14.receiver = self;
  v14.super_class = HKSignedClinicalDataRegistryIssuerEntry;
  v8 = [(HKSignedClinicalDataRegistryIssuerEntry *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = equalCopy;
  if (self != equalCopy)
  {
    v8 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_18:

      goto LABEL_19;
    }

    identifier = self->_identifier;
    identifier = [(HKSignedClinicalDataRegistryIssuerEntry *)v8 identifier];
    if (identifier == identifier)
    {
      goto LABEL_9;
    }

    identifier2 = [(HKSignedClinicalDataRegistryIssuerEntry *)v8 identifier];
    if (!identifier2)
    {
      v13 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v3 = identifier2;
    v12 = self->_identifier;
    identifier3 = [(HKSignedClinicalDataRegistryIssuerEntry *)v8 identifier];
    if ([(NSString *)v12 isEqualToString:identifier3])
    {
LABEL_9:
      title = self->_title;
      title = [(HKSignedClinicalDataRegistryIssuerEntry *)v8 title];
      v16 = title;
      if (title == title)
      {

        v13 = 1;
      }

      else
      {
        title2 = [(HKSignedClinicalDataRegistryIssuerEntry *)v8 title];
        if (title2)
        {
          v18 = title2;
          v19 = self->_title;
          title3 = [(HKSignedClinicalDataRegistryIssuerEntry *)v8 title];
          v13 = [(NSString *)v19 isEqualToString:title3];
        }

        else
        {

          v13 = 0;
        }
      }

      if (identifier == identifier)
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

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
}

- (HKSignedClinicalDataRegistryIssuerEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    if (v6)
    {
      self = [(HKSignedClinicalDataRegistryIssuerEntry *)self initWithIdentifier:v5 title:v6];
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