@interface PKTransactionSearchQuery
- (BOOL)isEqual:(id)equal;
- (PKTransactionSearchQuery)initWithCoder:(id)coder;
- (PKTransactionSearchQuery)initWithIdentifier:(id)identifier keyboardLanguage:(id)language passUniqueIdentifier:(id)uniqueIdentifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKTransactionSearchQuery

- (PKTransactionSearchQuery)initWithIdentifier:(id)identifier keyboardLanguage:(id)language passUniqueIdentifier:(id)uniqueIdentifier
{
  uniqueIdentifierCopy = uniqueIdentifier;
  v13.receiver = self;
  v13.super_class = PKTransactionSearchQuery;
  v10 = [(PKSearchQuery *)&v13 initWithIdentifier:identifier keyboardLanguage:language];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_passUniqueIdentifier, uniqueIdentifier);
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKTransactionSearchQuery;
  coderCopy = coder;
  [(PKSearchQuery *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_passUniqueIdentifier forKey:{@"passUniqueIdentifier", v5.receiver, v5.super_class}];
}

- (PKTransactionSearchQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKTransactionSearchQuery;
  v5 = [(PKSearchQuery *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    passUniqueIdentifier = self->_passUniqueIdentifier;
    v6 = equalCopy[7];
    if (passUniqueIdentifier)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (passUniqueIdentifier == v6)
      {
LABEL_10:
        v10.receiver = self;
        v10.super_class = PKTransactionSearchQuery;
        v8 = [(PKSearchQuery *)&v10 isEqual:equalCopy];
        goto LABEL_11;
      }
    }

    else if (([(NSString *)passUniqueIdentifier isEqual:?]& 1) != 0)
    {
      goto LABEL_10;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_passUniqueIdentifier];
  v7.receiver = self;
  v7.super_class = PKTransactionSearchQuery;
  v4 = [(PKSearchQuery *)&v7 hash];
  v5 = PKCombinedHash(v4, v3);

  return v5;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = PKTransactionSearchQuery;
  v3 = [(PKSearchQuery *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"passUniqueIdentifier: '%@'; ", self->_passUniqueIdentifier];
  [v4 appendFormat:@">"];

  return v4;
}

@end