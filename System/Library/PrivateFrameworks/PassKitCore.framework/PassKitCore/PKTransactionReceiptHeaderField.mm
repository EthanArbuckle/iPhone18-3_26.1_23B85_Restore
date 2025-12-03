@interface PKTransactionReceiptHeaderField
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTransactionReceiptHeaderField:(id)field;
- (PKTransactionReceiptHeaderField)initWithCoder:(id)coder;
- (PKTransactionReceiptHeaderField)initWithDictionary:(id)dictionary bundle:(id)bundle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKTransactionReceiptHeaderField

- (PKTransactionReceiptHeaderField)initWithDictionary:(id)dictionary bundle:(id)bundle
{
  dictionaryCopy = dictionary;
  bundleCopy = bundle;
  v18.receiver = self;
  v18.super_class = PKTransactionReceiptHeaderField;
  v8 = [(PKTransactionReceiptHeaderField *)&v18 init];
  if (v8)
  {
    v9 = [dictionaryCopy PKStringForKey:@"key"];
    key = v8->_key;
    v8->_key = v9;

    v11 = [dictionaryCopy PKStringForKey:@"label"];
    v12 = v11;
    if (v11)
    {
      v13 = PKLocalizedReceiptStringForReceiptBundle(v11, bundleCopy);
      label = v8->_label;
      v8->_label = v13;
    }

    v15 = [dictionaryCopy PKStringForKey:@"value"];
    value = v8->_value;
    v8->_value = v15;
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"key: '%@'; ", self->_key];
  [v3 appendFormat:@"label: '%@'; ", self->_label];
  [v3 appendFormat:@"value: '%@'; ", self->_value];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKTransactionReceiptHeaderField *)self isEqualToTransactionReceiptHeaderField:v5];
  }

  return v6;
}

- (BOOL)isEqualToTransactionReceiptHeaderField:(id)field
{
  fieldCopy = field;
  v5 = fieldCopy;
  if (fieldCopy)
  {
    v6 = fieldCopy[1];
    v7 = self->_key;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      LOBYTE(v10) = 0;
      if (!v7 || !v8)
      {
        goto LABEL_20;
      }

      v10 = [(NSString *)v7 isEqualToString:v8];

      if (!v10)
      {
        goto LABEL_21;
      }
    }

    v11 = v5[2];
    v7 = self->_label;
    v12 = v11;
    v9 = v12;
    if (v7 == v12)
    {

LABEL_15:
      v13 = v5[3];
      v7 = self->_value;
      v14 = v13;
      v9 = v14;
      if (v7 == v14)
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        LOBYTE(v10) = 0;
        if (v7 && v14)
        {
          LOBYTE(v10) = [(NSString *)v7 isEqualToString:v14];
        }
      }

      goto LABEL_20;
    }

    LOBYTE(v10) = 0;
    if (v7 && v12)
    {
      v10 = [(NSString *)v7 isEqualToString:v12];

      if (!v10)
      {
        goto LABEL_21;
      }

      goto LABEL_15;
    }

LABEL_20:

    goto LABEL_21;
  }

  LOBYTE(v10) = 0;
LABEL_21:

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_key];
  [v3 safelyAddObject:self->_label];
  [v3 safelyAddObject:self->_value];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (PKTransactionReceiptHeaderField)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKTransactionReceiptHeaderField;
  v5 = [(PKTransactionReceiptHeaderField *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    key = v5->_key;
    v5->_key = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  key = self->_key;
  coderCopy = coder;
  [coderCopy encodeObject:key forKey:@"key"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
  [coderCopy encodeObject:self->_value forKey:@"value"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_label copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_value copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

@end