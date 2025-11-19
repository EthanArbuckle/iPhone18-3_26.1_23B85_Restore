@interface DSIdentity
- (BOOL)isEqual:(id)a3;
- (BOOL)isLikeIdentity:(id)a3;
- (DSIdentity)initWithCoder:(id)a3;
- (DSIdentity)initWithContact:(id)a3;
- (DSIdentity)initWithEmail:(id)a3;
- (DSIdentity)initWithIdentity:(id)a3;
- (DSIdentity)initWithPhone:(id)a3;
- (NSString)ds_identifier;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DSIdentity

- (DSIdentity)initWithContact:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = DSIdentity;
  v5 = [(DSIdentity *)&v20 init];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [v4 identifier];
      [(DSIdentity *)v5 setIdentifier:v6];
    }

    v7 = [MEMORY[0x277CCAC00] componentsForContact:v4];
    [(DSIdentity *)v5 setIdentityNameComponents:v7];

    v8 = [v4 emailAddresses];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [v4 emailAddresses];
      v11 = [v10 firstObject];
      v12 = [v11 value];
      [(DSIdentity *)v5 setEmail:v12];
    }

    v13 = [v4 phoneNumbers];
    v14 = [v13 count];

    if (v14)
    {
      v15 = [v4 phoneNumbers];
      v16 = [v15 firstObject];
      v17 = [v16 value];
      v18 = [v17 stringValue];
      [(DSIdentity *)v5 setPhone:v18];
    }
  }

  return v5;
}

- (DSIdentity)initWithPhone:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DSIdentity;
  v5 = [(DSIdentity *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DSIdentity *)v5 setPhone:v4];
  }

  return v6;
}

- (DSIdentity)initWithEmail:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DSIdentity;
  v5 = [(DSIdentity *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DSIdentity *)v5 setEmail:v4];
  }

  return v6;
}

- (DSIdentity)initWithIdentity:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DSIdentity;
  v5 = [(DSIdentity *)&v11 init];
  if (v5)
  {
    v6 = [v4 unifiedContactIdentifier];
    [(DSIdentity *)v5 setIdentifier:v6];

    v7 = [v4 phoneNumber];
    [(DSIdentity *)v5 setPhone:v7];

    v8 = [v4 emailAddress];
    [(DSIdentity *)v5 setEmail:v8];

    v9 = [v4 nameComponents];
    [(DSIdentity *)v5 setIdentityNameComponents:v9];
  }

  return v5;
}

- (BOOL)isLikeIdentity:(id)a3
{
  v4 = a3;
  v5 = [(DSIdentity *)self identifier];
  if ([v5 length])
  {
    v6 = [v4 unifiedContactIdentifier];
    v7 = [(DSIdentity *)self identifier];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
LABEL_12:
      LOBYTE(v22) = 1;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v9 = [(DSIdentity *)self email];
  if ([v9 length])
  {
    v10 = [v4 emailAddress];
    v11 = [(DSIdentity *)self email];
    v12 = [v10 isEqualToString:v11];

    if (v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v13 = [(DSIdentity *)self phone];
  if ([v13 length])
  {
    v14 = [v4 phoneNumber];
    v15 = [v14 length];

    if (v15)
    {
      v16 = MEMORY[0x277CBDB70];
      v17 = [(DSIdentity *)self phone];
      v18 = [v16 phoneNumberWithStringValue:v17];

      v19 = MEMORY[0x277CBDB70];
      v20 = [v4 phoneNumber];
      v21 = [v19 phoneNumberWithStringValue:v20];

      LOBYTE(v20) = [v18 isLikePhoneNumber:v21];
      if (v20)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
  }

  v22 = [(DSIdentity *)self identityNameComponents];
  if (v22)
  {
    v24 = [v4 nameComponents];

    if (v24)
    {
      v25 = MEMORY[0x277CCAC08];
      v26 = [(DSIdentity *)self identityNameComponents];
      v27 = [v25 localizedStringFromPersonNameComponents:v26 style:0 options:0];

      v28 = MEMORY[0x277CCAC08];
      v29 = [v4 nameComponents];
      v30 = [v28 localizedStringFromPersonNameComponents:v29 style:0 options:0];

      if ([v27 length])
      {
        LOBYTE(v22) = [v27 isEqualToString:v30];
      }

      else
      {
        LOBYTE(v22) = 0;
      }
    }

    else
    {
      LOBYTE(v22) = 0;
    }
  }

LABEL_13:

  return v22;
}

- (NSString)ds_identifier
{
  v3 = [(DSIdentity *)self identifier];

  if (v3)
  {
    v4 = [(DSIdentity *)self identifier];
LABEL_5:
    v7 = v4;
    goto LABEL_6;
  }

  v5 = [(DSIdentity *)self email];
  v6 = [v5 length];

  if (v6)
  {
    v4 = [(DSIdentity *)self email];
    goto LABEL_5;
  }

  v9 = [(DSIdentity *)self phone];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [(DSIdentity *)self phone];
    v7 = [v11 ds_formattedPotentialPhoneNumber];
  }

  else
  {
    v7 = 0;
  }

LABEL_6:

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    if ([(DSIdentity *)v4 conformsToProtocol:&unk_285BA46E0])
    {
      v6 = v5;
      v7 = [(DSIdentity *)v6 unifiedContactIdentifier];
      v8 = [v7 length];

      if (v8)
      {
        v9 = [(DSIdentity *)self identifier];
        v10 = [(DSIdentity *)v6 unifiedContactIdentifier];
        v11 = [v9 isEqualToString:v10];
      }

      else
      {
        v13 = [(DSIdentity *)v6 phoneNumber];
        v14 = [v13 length];

        if (v14)
        {
          v9 = [(DSIdentity *)self phone];
          v15 = [(DSIdentity *)v6 phoneNumber];
        }

        else
        {
          v16 = [(DSIdentity *)v6 emailAddress];
          v17 = [v16 length];

          if (!v17)
          {
            v12 = 0;
            goto LABEL_13;
          }

          v9 = [(DSIdentity *)self email];
          v15 = [(DSIdentity *)v6 emailAddress];
        }

        v10 = v15;
        v11 = [v9 isEqual:v15];
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

- (DSIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DSIdentity;
  v5 = [(DSIdentity *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identityNameComponents"];
    identityNameComponents = v5->_identityNameComponents;
    v5->_identityNameComponents = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"email"];
    phone = v5->_phone;
    v5->_phone = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phone"];
    email = v5->_email;
    v5->_email = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_identityNameComponents forKey:@"identityNameComponents"];
  [v5 encodeObject:self->_phone forKey:@"email"];
  [v5 encodeObject:self->_email forKey:@"phone"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DSIdentity alloc];

  return [(DSIdentity *)v4 initWithIdentity:self];
}

@end