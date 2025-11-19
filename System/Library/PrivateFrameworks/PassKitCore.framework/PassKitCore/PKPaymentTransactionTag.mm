@interface PKPaymentTransactionTag
- (BOOL)isEqual:(id)a3;
- (PKPaymentTransactionTag)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentTransactionTag

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_rank];
  [v3 safelyAddObject:self->_localeIdentifier];
  [v3 safelyAddObject:self->_localizedTitle];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;

  return v5;
}

- (PKPaymentTransactionTag)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPaymentTransactionTag;
  v5 = [(PKPaymentTransactionTag *)&v13 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];
    localeIdentifier = v5->_localeIdentifier;
    v5->_localeIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rank"];
    rank = v5->_rank;
    v5->_rank = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [v5 encodeObject:self->_localeIdentifier forKey:@"localeIdentifier"];
  [v5 encodeObject:self->_rank forKey:@"rank"];
}

@end