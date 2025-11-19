@interface DNDContactHandle
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesContactHandle:(id)a3;
- (DNDContactHandle)initWithCoder:(id)a3;
- (id)_descriptionForRedacted:(BOOL)a3;
- (id)_initWithContactIdentifier:(id)a3 type:(unint64_t)a4 value:(id)a5;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)normalizedValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDContactHandle

- (unint64_t)hash
{
  v3 = [(DNDContactHandle *)self contactIdentifier];
  v4 = [v3 hash];
  v5 = [(DNDContactHandle *)self type]^ v4;
  v6 = [(DNDContactHandle *)self value];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (id)_initWithContactIdentifier:(id)a3 type:(unint64_t)a4 value:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = DNDContactHandle;
  v10 = [(DNDContactHandle *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    contactIdentifier = v10->_contactIdentifier;
    v10->_contactIdentifier = v11;

    v10->_type = a4;
    v13 = [v9 copy];
    value = v10->_value;
    v10->_value = v13;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (self == v7)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [(DNDContactHandle *)self contactIdentifier];
      v10 = [(DNDContactHandle *)v8 contactIdentifier];
      if (v9 != v10)
      {
        v11 = [(DNDContactHandle *)self contactIdentifier];
        if (!v11)
        {
          v13 = 0;
LABEL_28:

          goto LABEL_29;
        }

        v3 = v11;
        v4 = [(DNDContactHandle *)v8 contactIdentifier];
        if (!v4)
        {
          v13 = 0;
LABEL_27:

          goto LABEL_28;
        }

        v12 = [(DNDContactHandle *)self contactIdentifier];
        v5 = [(DNDContactHandle *)v8 contactIdentifier];
        if (![v12 isEqual:v5])
        {
          v13 = 0;
LABEL_26:

          goto LABEL_27;
        }

        v26 = v12;
      }

      v14 = [(DNDContactHandle *)self type];
      if (v14 == [(DNDContactHandle *)v8 type])
      {
        v15 = [(DNDContactHandle *)self value];
        v16 = [(DNDContactHandle *)v8 value];
        v17 = v16;
        if (v15 != v16)
        {
          v25 = v5;
          v18 = [(DNDContactHandle *)self value];
          if (v18)
          {
            v19 = v18;
            v20 = [(DNDContactHandle *)v8 value];
            if (v20)
            {
              v24 = v20;
              v23 = [(DNDContactHandle *)self value];
              v22 = [(DNDContactHandle *)v8 value];
              v13 = [v23 isEqual:v22];

              v20 = v24;
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {

            v13 = 0;
          }

          v5 = v25;
          v12 = v26;
          if (v9 == v10)
          {
            goto LABEL_28;
          }

          goto LABEL_26;
        }

        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      v12 = v26;
      if (v9 == v10)
      {
        goto LABEL_28;
      }

      goto LABEL_26;
    }

    v13 = 0;
  }

LABEL_29:

  return v13;
}

- (BOOL)matchesContactHandle:(id)a3
{
  v4 = a3;
  v5 = [(DNDContactHandle *)self contactIdentifier];
  if (v5)
  {
    v6 = [(DNDContactHandle *)self contactIdentifier];
    v7 = [v4 contactIdentifier];
    if (v6 == v7)
    {
      v12 = 1;
    }

    else
    {
      v8 = [(DNDContactHandle *)self contactIdentifier];
      if (v8)
      {
        v9 = [v4 contactIdentifier];
        if (v9)
        {
          v10 = [(DNDContactHandle *)self contactIdentifier];
          v11 = [v4 contactIdentifier];
          v12 = [v10 isEqual:v11];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = [(DNDContactHandle *)self value];
  if (v13 && (v14 = -[DNDContactHandle type](self, "type"), v14 == [v4 type]))
  {
    v15 = [(DNDContactHandle *)self value];
    v16 = [v4 value];
    if (v15 == v16)
    {
      v21 = 1;
    }

    else
    {
      v17 = [(DNDContactHandle *)self value];
      if (v17)
      {
        v18 = [v4 value];
        if (v18)
        {
          v19 = [(DNDContactHandle *)self value];
          v20 = [v4 value];
          v21 = [v19 isEqual:v20];
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  return (v12 | v21) & 1;
}

- (id)_descriptionForRedacted:(BOOL)a3
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  contactIdentifier = self->_contactIdentifier;
  type = self->_type;
  v9 = @"unknown";
  if (type == 2)
  {
    v9 = @"phone";
  }

  if (type == 1)
  {
    v10 = @"email";
  }

  else
  {
    v10 = v9;
  }

  value = self->_value;
  v12 = v10;
  v13 = v12;
  if (a3)
  {
    v14 = [(NSString *)value dnd_privacyObfuscatedString];
    v15 = [v5 stringWithFormat:@"<%@: %p contactIdentifier: %@; type: %@; value: %@;>", v6, self, contactIdentifier, v13, v14];;

    v13 = v14;
  }

  else
  {
    v15 = [v5 stringWithFormat:@"<%@: %p contactIdentifier: %@; type: %@; value: %@;>", v6, self, contactIdentifier, v12, value];;
  }

  return v15;
}

- (id)normalizedValue
{
  normalizedValue = self->_normalizedValue;
  if (!normalizedValue)
  {
    v4 = [(DNDContactHandle *)self value];
    v5 = [(DNDContactHandle *)self type];
    v6 = v4;
    v7 = v6;
    if (v5 == 2)
    {
      v7 = [DNDContact normalizePhoneNumber:v6];
    }

    v8 = [v7 copy];
    v9 = self->_normalizedValue;
    self->_normalizedValue = v8;

    normalizedValue = self->_normalizedValue;
  }

  return normalizedValue;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDMutableContactHandle alloc];
  contactIdentifier = self->_contactIdentifier;
  type = self->_type;
  value = self->_value;

  return [(DNDContactHandle *)v4 _initWithContactIdentifier:contactIdentifier type:type value:value];
}

- (DNDContactHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  v6 = [v4 decodeIntegerForKey:@"type"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];

  v8 = [(DNDContactHandle *)self _initWithContactIdentifier:v5 type:v6 value:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  contactIdentifier = self->_contactIdentifier;
  v5 = a3;
  [v5 encodeObject:contactIdentifier forKey:@"contactIdentifier"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeObject:self->_value forKey:@"value"];
}

@end