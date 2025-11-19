@interface PKTransactionSearchQuery
- (BOOL)isEqual:(id)a3;
- (PKTransactionSearchQuery)initWithCoder:(id)a3;
- (PKTransactionSearchQuery)initWithIdentifier:(id)a3 keyboardLanguage:(id)a4 passUniqueIdentifier:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKTransactionSearchQuery

- (PKTransactionSearchQuery)initWithIdentifier:(id)a3 keyboardLanguage:(id)a4 passUniqueIdentifier:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PKTransactionSearchQuery;
  v10 = [(PKSearchQuery *)&v13 initWithIdentifier:a3 keyboardLanguage:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_passUniqueIdentifier, a5);
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKTransactionSearchQuery;
  v4 = a3;
  [(PKSearchQuery *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_passUniqueIdentifier forKey:{@"passUniqueIdentifier", v5.receiver, v5.super_class}];
}

- (PKTransactionSearchQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKTransactionSearchQuery;
  v5 = [(PKSearchQuery *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    passUniqueIdentifier = self->_passUniqueIdentifier;
    v6 = v4[7];
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
        v8 = [(PKSearchQuery *)&v10 isEqual:v4];
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