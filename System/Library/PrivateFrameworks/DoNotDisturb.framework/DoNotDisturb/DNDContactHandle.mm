@interface DNDContactHandle
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesContactHandle:(id)handle;
- (DNDContactHandle)initWithCoder:(id)coder;
- (id)_descriptionForRedacted:(BOOL)redacted;
- (id)_initWithContactIdentifier:(id)identifier type:(unint64_t)type value:(id)value;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)normalizedValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDContactHandle

- (unint64_t)hash
{
  contactIdentifier = [(DNDContactHandle *)self contactIdentifier];
  v4 = [contactIdentifier hash];
  v5 = [(DNDContactHandle *)self type]^ v4;
  value = [(DNDContactHandle *)self value];
  v7 = [value hash];

  return v5 ^ v7;
}

- (id)_initWithContactIdentifier:(id)identifier type:(unint64_t)type value:(id)value
{
  identifierCopy = identifier;
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = DNDContactHandle;
  v10 = [(DNDContactHandle *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    contactIdentifier = v10->_contactIdentifier;
    v10->_contactIdentifier = v11;

    v10->_type = type;
    v13 = [valueCopy copy];
    value = v10->_value;
    v10->_value = v13;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = equalCopy;
      contactIdentifier = [(DNDContactHandle *)self contactIdentifier];
      contactIdentifier2 = [(DNDContactHandle *)v8 contactIdentifier];
      if (contactIdentifier != contactIdentifier2)
      {
        contactIdentifier3 = [(DNDContactHandle *)self contactIdentifier];
        if (!contactIdentifier3)
        {
          v13 = 0;
LABEL_28:

          goto LABEL_29;
        }

        v3 = contactIdentifier3;
        contactIdentifier4 = [(DNDContactHandle *)v8 contactIdentifier];
        if (!contactIdentifier4)
        {
          v13 = 0;
LABEL_27:

          goto LABEL_28;
        }

        contactIdentifier5 = [(DNDContactHandle *)self contactIdentifier];
        contactIdentifier6 = [(DNDContactHandle *)v8 contactIdentifier];
        if (![contactIdentifier5 isEqual:contactIdentifier6])
        {
          v13 = 0;
LABEL_26:

          goto LABEL_27;
        }

        v26 = contactIdentifier5;
      }

      type = [(DNDContactHandle *)self type];
      if (type == [(DNDContactHandle *)v8 type])
      {
        value = [(DNDContactHandle *)self value];
        value2 = [(DNDContactHandle *)v8 value];
        v17 = value2;
        if (value != value2)
        {
          v25 = contactIdentifier6;
          value3 = [(DNDContactHandle *)self value];
          if (value3)
          {
            v19 = value3;
            value4 = [(DNDContactHandle *)v8 value];
            if (value4)
            {
              v24 = value4;
              value5 = [(DNDContactHandle *)self value];
              value6 = [(DNDContactHandle *)v8 value];
              v13 = [value5 isEqual:value6];

              value4 = v24;
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

          contactIdentifier6 = v25;
          contactIdentifier5 = v26;
          if (contactIdentifier == contactIdentifier2)
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

      contactIdentifier5 = v26;
      if (contactIdentifier == contactIdentifier2)
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

- (BOOL)matchesContactHandle:(id)handle
{
  handleCopy = handle;
  contactIdentifier = [(DNDContactHandle *)self contactIdentifier];
  if (contactIdentifier)
  {
    contactIdentifier2 = [(DNDContactHandle *)self contactIdentifier];
    contactIdentifier3 = [handleCopy contactIdentifier];
    if (contactIdentifier2 == contactIdentifier3)
    {
      v12 = 1;
    }

    else
    {
      contactIdentifier4 = [(DNDContactHandle *)self contactIdentifier];
      if (contactIdentifier4)
      {
        contactIdentifier5 = [handleCopy contactIdentifier];
        if (contactIdentifier5)
        {
          contactIdentifier6 = [(DNDContactHandle *)self contactIdentifier];
          contactIdentifier7 = [handleCopy contactIdentifier];
          v12 = [contactIdentifier6 isEqual:contactIdentifier7];
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

  value = [(DNDContactHandle *)self value];
  if (value && (v14 = -[DNDContactHandle type](self, "type"), v14 == [handleCopy type]))
  {
    value2 = [(DNDContactHandle *)self value];
    value3 = [handleCopy value];
    if (value2 == value3)
    {
      v21 = 1;
    }

    else
    {
      value4 = [(DNDContactHandle *)self value];
      if (value4)
      {
        value5 = [handleCopy value];
        if (value5)
        {
          value6 = [(DNDContactHandle *)self value];
          value7 = [handleCopy value];
          v21 = [value6 isEqual:value7];
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

- (id)_descriptionForRedacted:(BOOL)redacted
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
  if (redacted)
  {
    dnd_privacyObfuscatedString = [(NSString *)value dnd_privacyObfuscatedString];
    value = [v5 stringWithFormat:@"<%@: %p contactIdentifier: %@; type: %@; value: %@;>", v6, self, contactIdentifier, v13, dnd_privacyObfuscatedString];;

    v13 = dnd_privacyObfuscatedString;
  }

  else
  {
    value = [v5 stringWithFormat:@"<%@: %p contactIdentifier: %@; type: %@; value: %@;>", v6, self, contactIdentifier, v12, value];;
  }

  return value;
}

- (id)normalizedValue
{
  normalizedValue = self->_normalizedValue;
  if (!normalizedValue)
  {
    value = [(DNDContactHandle *)self value];
    type = [(DNDContactHandle *)self type];
    v6 = value;
    v7 = v6;
    if (type == 2)
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDMutableContactHandle alloc];
  contactIdentifier = self->_contactIdentifier;
  type = self->_type;
  value = self->_value;

  return [(DNDContactHandle *)v4 _initWithContactIdentifier:contactIdentifier type:type value:value];
}

- (DNDContactHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  v6 = [coderCopy decodeIntegerForKey:@"type"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];

  v8 = [(DNDContactHandle *)self _initWithContactIdentifier:v5 type:v6 value:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  contactIdentifier = self->_contactIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:contactIdentifier forKey:@"contactIdentifier"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_value forKey:@"value"];
}

@end