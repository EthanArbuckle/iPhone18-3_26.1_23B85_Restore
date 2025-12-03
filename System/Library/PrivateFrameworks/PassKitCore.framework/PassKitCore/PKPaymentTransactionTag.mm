@interface PKPaymentTransactionTag
- (BOOL)isEqual:(id)equal;
- (PKPaymentTransactionTag)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentTransactionTag

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (!v6 || self->_type != v6[1])
  {
    goto LABEL_18;
  }

  rank = self->_rank;
  v9 = v7[4];
  if (rank && v9)
  {
    if (([(NSDecimalNumber *)rank isEqual:?]& 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (rank != v9)
  {
    goto LABEL_18;
  }

  localeIdentifier = self->_localeIdentifier;
  v11 = v7[3];
  if (!localeIdentifier || !v11)
  {
    if (localeIdentifier == v11)
    {
      goto LABEL_14;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  if (([(NSString *)localeIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  localizedTitle = self->_localizedTitle;
  v13 = v7[2];
  if (localizedTitle && v13)
  {
    v14 = [(NSString *)localizedTitle isEqual:?];
  }

  else
  {
    v14 = localizedTitle == v13;
  }

LABEL_19:

  return v14;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_rank];
  [array safelyAddObject:self->_localeIdentifier];
  [array safelyAddObject:self->_localizedTitle];
  v4 = PKCombinedHash(17, array);
  v5 = self->_type - v4 + 32 * v4;

  return v5;
}

- (PKPaymentTransactionTag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKPaymentTransactionTag;
  v5 = [(PKPaymentTransactionTag *)&v13 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];
    localeIdentifier = v5->_localeIdentifier;
    v5->_localeIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rank"];
    rank = v5->_rank;
    v5->_rank = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [coderCopy encodeObject:self->_localeIdentifier forKey:@"localeIdentifier"];
  [coderCopy encodeObject:self->_rank forKey:@"rank"];
}

@end