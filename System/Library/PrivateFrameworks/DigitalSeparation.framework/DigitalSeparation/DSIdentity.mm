@interface DSIdentity
- (BOOL)isEqual:(id)equal;
- (BOOL)isLikeIdentity:(id)identity;
- (DSIdentity)initWithCoder:(id)coder;
- (DSIdentity)initWithContact:(id)contact;
- (DSIdentity)initWithEmail:(id)email;
- (DSIdentity)initWithIdentity:(id)identity;
- (DSIdentity)initWithPhone:(id)phone;
- (NSString)ds_identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DSIdentity

- (DSIdentity)initWithContact:(id)contact
{
  contactCopy = contact;
  v20.receiver = self;
  v20.super_class = DSIdentity;
  v5 = [(DSIdentity *)&v20 init];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      identifier = [contactCopy identifier];
      [(DSIdentity *)v5 setIdentifier:identifier];
    }

    v7 = [MEMORY[0x277CCAC00] componentsForContact:contactCopy];
    [(DSIdentity *)v5 setIdentityNameComponents:v7];

    emailAddresses = [contactCopy emailAddresses];
    v9 = [emailAddresses count];

    if (v9)
    {
      emailAddresses2 = [contactCopy emailAddresses];
      firstObject = [emailAddresses2 firstObject];
      value = [firstObject value];
      [(DSIdentity *)v5 setEmail:value];
    }

    phoneNumbers = [contactCopy phoneNumbers];
    v14 = [phoneNumbers count];

    if (v14)
    {
      phoneNumbers2 = [contactCopy phoneNumbers];
      firstObject2 = [phoneNumbers2 firstObject];
      value2 = [firstObject2 value];
      stringValue = [value2 stringValue];
      [(DSIdentity *)v5 setPhone:stringValue];
    }
  }

  return v5;
}

- (DSIdentity)initWithPhone:(id)phone
{
  phoneCopy = phone;
  v8.receiver = self;
  v8.super_class = DSIdentity;
  v5 = [(DSIdentity *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DSIdentity *)v5 setPhone:phoneCopy];
  }

  return v6;
}

- (DSIdentity)initWithEmail:(id)email
{
  emailCopy = email;
  v8.receiver = self;
  v8.super_class = DSIdentity;
  v5 = [(DSIdentity *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DSIdentity *)v5 setEmail:emailCopy];
  }

  return v6;
}

- (DSIdentity)initWithIdentity:(id)identity
{
  identityCopy = identity;
  v11.receiver = self;
  v11.super_class = DSIdentity;
  v5 = [(DSIdentity *)&v11 init];
  if (v5)
  {
    unifiedContactIdentifier = [identityCopy unifiedContactIdentifier];
    [(DSIdentity *)v5 setIdentifier:unifiedContactIdentifier];

    phoneNumber = [identityCopy phoneNumber];
    [(DSIdentity *)v5 setPhone:phoneNumber];

    emailAddress = [identityCopy emailAddress];
    [(DSIdentity *)v5 setEmail:emailAddress];

    nameComponents = [identityCopy nameComponents];
    [(DSIdentity *)v5 setIdentityNameComponents:nameComponents];
  }

  return v5;
}

- (BOOL)isLikeIdentity:(id)identity
{
  identityCopy = identity;
  identifier = [(DSIdentity *)self identifier];
  if ([identifier length])
  {
    unifiedContactIdentifier = [identityCopy unifiedContactIdentifier];
    identifier2 = [(DSIdentity *)self identifier];
    v8 = [unifiedContactIdentifier isEqualToString:identifier2];

    if (v8)
    {
LABEL_12:
      LOBYTE(identityNameComponents) = 1;
      goto LABEL_13;
    }
  }

  else
  {
  }

  email = [(DSIdentity *)self email];
  if ([email length])
  {
    emailAddress = [identityCopy emailAddress];
    email2 = [(DSIdentity *)self email];
    v12 = [emailAddress isEqualToString:email2];

    if (v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  phone = [(DSIdentity *)self phone];
  if ([phone length])
  {
    phoneNumber = [identityCopy phoneNumber];
    v15 = [phoneNumber length];

    if (v15)
    {
      v16 = MEMORY[0x277CBDB70];
      phone2 = [(DSIdentity *)self phone];
      v18 = [v16 phoneNumberWithStringValue:phone2];

      v19 = MEMORY[0x277CBDB70];
      phoneNumber2 = [identityCopy phoneNumber];
      v21 = [v19 phoneNumberWithStringValue:phoneNumber2];

      LOBYTE(phoneNumber2) = [v18 isLikePhoneNumber:v21];
      if (phoneNumber2)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
  }

  identityNameComponents = [(DSIdentity *)self identityNameComponents];
  if (identityNameComponents)
  {
    nameComponents = [identityCopy nameComponents];

    if (nameComponents)
    {
      v25 = MEMORY[0x277CCAC08];
      identityNameComponents2 = [(DSIdentity *)self identityNameComponents];
      v27 = [v25 localizedStringFromPersonNameComponents:identityNameComponents2 style:0 options:0];

      v28 = MEMORY[0x277CCAC08];
      nameComponents2 = [identityCopy nameComponents];
      v30 = [v28 localizedStringFromPersonNameComponents:nameComponents2 style:0 options:0];

      if ([v27 length])
      {
        LOBYTE(identityNameComponents) = [v27 isEqualToString:v30];
      }

      else
      {
        LOBYTE(identityNameComponents) = 0;
      }
    }

    else
    {
      LOBYTE(identityNameComponents) = 0;
    }
  }

LABEL_13:

  return identityNameComponents;
}

- (NSString)ds_identifier
{
  identifier = [(DSIdentity *)self identifier];

  if (identifier)
  {
    identifier2 = [(DSIdentity *)self identifier];
LABEL_5:
    ds_formattedPotentialPhoneNumber = identifier2;
    goto LABEL_6;
  }

  email = [(DSIdentity *)self email];
  v6 = [email length];

  if (v6)
  {
    identifier2 = [(DSIdentity *)self email];
    goto LABEL_5;
  }

  phone = [(DSIdentity *)self phone];
  v10 = [phone length];

  if (v10)
  {
    phone2 = [(DSIdentity *)self phone];
    ds_formattedPotentialPhoneNumber = [phone2 ds_formattedPotentialPhoneNumber];
  }

  else
  {
    ds_formattedPotentialPhoneNumber = 0;
  }

LABEL_6:

  return ds_formattedPotentialPhoneNumber;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    if ([(DSIdentity *)equalCopy conformsToProtocol:&unk_285BA46E0])
    {
      v6 = v5;
      unifiedContactIdentifier = [(DSIdentity *)v6 unifiedContactIdentifier];
      v8 = [unifiedContactIdentifier length];

      if (v8)
      {
        identifier = [(DSIdentity *)self identifier];
        unifiedContactIdentifier2 = [(DSIdentity *)v6 unifiedContactIdentifier];
        v11 = [identifier isEqualToString:unifiedContactIdentifier2];
      }

      else
      {
        phoneNumber = [(DSIdentity *)v6 phoneNumber];
        v14 = [phoneNumber length];

        if (v14)
        {
          identifier = [(DSIdentity *)self phone];
          phoneNumber2 = [(DSIdentity *)v6 phoneNumber];
        }

        else
        {
          emailAddress = [(DSIdentity *)v6 emailAddress];
          v17 = [emailAddress length];

          if (!v17)
          {
            v12 = 0;
            goto LABEL_13;
          }

          identifier = [(DSIdentity *)self email];
          phoneNumber2 = [(DSIdentity *)v6 emailAddress];
        }

        unifiedContactIdentifier2 = phoneNumber2;
        v11 = [identifier isEqual:phoneNumber2];
      }

      v12 = v11;

LABEL_13:
      goto LABEL_14;
    }

    v12 = 0;
  }

LABEL_14:

  return v12;
}

- (DSIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = DSIdentity;
  v5 = [(DSIdentity *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identityNameComponents"];
    identityNameComponents = v5->_identityNameComponents;
    v5->_identityNameComponents = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"email"];
    phone = v5->_phone;
    v5->_phone = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phone"];
    email = v5->_email;
    v5->_email = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_identityNameComponents forKey:@"identityNameComponents"];
  [coderCopy encodeObject:self->_phone forKey:@"email"];
  [coderCopy encodeObject:self->_email forKey:@"phone"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DSIdentity alloc];

  return [(DSIdentity *)v4 initWithIdentity:self];
}

@end