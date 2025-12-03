@interface PKAccountDetails
- (BOOL)isEqual:(id)equal;
- (PKAccountDetails)initWithAppleBalanceDetails:(id)details;
- (PKAccountDetails)initWithCloudRecord:(id)record type:(unint64_t)type;
- (PKAccountDetails)initWithCoder:(id)coder;
- (PKAccountDetails)initWithCreditDetails:(id)details;
- (PKAccountDetails)initWithDictionary:(id)dictionary type:(unint64_t)type;
- (PKAccountDetails)initWithSavingsDetails:(id)details;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCloudRecord:(id)record codingType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
- (void)ingestExtendedAccountDetails:(id)details;
@end

@implementation PKAccountDetails

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_creditDetails];
  [array safelyAddObject:self->_appleBalanceDetails];
  [array safelyAddObject:self->_savingsDetails];
  v4 = PKCombinedHash(17, array);
  v5 = self->_type - v4 + 32 * v4;

  return v5;
}

- (PKAccountDetails)initWithDictionary:(id)dictionary type:(unint64_t)type
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PKAccountDetails;
  v7 = [(PKAccountDetails *)&v13 init];
  if (v7)
  {
    switch(type)
    {
      case 1uLL:
        v8 = off_1E79BF920;
        v9 = 8;
        break;
      case 4uLL:
        v8 = off_1E79C1768;
        v9 = 24;
        break;
      case 3uLL:
        v8 = off_1E79BF3C0;
        v9 = 16;
        break;
      default:
LABEL_9:
        v7->_type = type;
        goto LABEL_10;
    }

    v10 = [objc_alloc(*v8) initWithDictionary:dictionaryCopy];
    v11 = *(&v7->super.isa + v9);
    *(&v7->super.isa + v9) = v10;

    goto LABEL_9;
  }

LABEL_10:

  return v7;
}

- (PKAccountDetails)initWithCreditDetails:(id)details
{
  detailsCopy = details;
  v9.receiver = self;
  v9.super_class = PKAccountDetails;
  v6 = [(PKAccountDetails *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_creditDetails, details);
    v7->_type = 1;
  }

  return v7;
}

- (PKAccountDetails)initWithAppleBalanceDetails:(id)details
{
  detailsCopy = details;
  v9.receiver = self;
  v9.super_class = PKAccountDetails;
  v6 = [(PKAccountDetails *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appleBalanceDetails, details);
    v7->_type = 3;
  }

  return v7;
}

- (PKAccountDetails)initWithSavingsDetails:(id)details
{
  detailsCopy = details;
  v9.receiver = self;
  v9.super_class = PKAccountDetails;
  v6 = [(PKAccountDetails *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_savingsDetails, details);
    v7->_type = 4;
  }

  return v7;
}

- (PKAccountDetails)initWithCloudRecord:(id)record type:(unint64_t)type
{
  recordCopy = record;
  v11.receiver = self;
  v11.super_class = PKAccountDetails;
  v7 = [(PKAccountDetails *)&v11 init];
  if (v7)
  {
    if (type == 3)
    {
      v8 = [[PKAppleBalanceAccountDetails alloc] initWithCloudRecord:recordCopy];
      appleBalanceDetails = v7->_appleBalanceDetails;
      v7->_appleBalanceDetails = v8;
    }

    v7->_type = type;
  }

  return v7;
}

- (void)ingestExtendedAccountDetails:(id)details
{
  if (self->_type == 1)
  {
    [(PKCreditAccountDetails *)self->_creditDetails ingestExtendedAccountDetails:details];
  }
}

- (void)encodeWithCloudRecord:(id)record codingType:(unint64_t)type
{
  if (self->_type == 3)
  {
    [(PKAppleBalanceAccountDetails *)self->_appleBalanceDetails encodeWithCloudRecord:record codingType:type];
  }
}

- (PKAccountDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKAccountDetails;
  v5 = [(PKAccountDetails *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creditDetails"];
    creditDetails = v5->_creditDetails;
    v5->_creditDetails = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appleBalanceDetails"];
    appleBalanceDetails = v5->_appleBalanceDetails;
    v5->_appleBalanceDetails = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"savingsDetails"];
    savingsDetails = v5->_savingsDetails;
    v5->_savingsDetails = v10;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  creditDetails = self->_creditDetails;
  coderCopy = coder;
  [coderCopy encodeObject:creditDetails forKey:@"creditDetails"];
  [coderCopy encodeObject:self->_appleBalanceDetails forKey:@"appleBalanceDetails"];
  [coderCopy encodeObject:self->_savingsDetails forKey:@"savingsDetails"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
}

- (id)description
{
  type = self->_type;
  switch(type)
  {
    case 1uLL:
      v5 = 8;
LABEL_7:
      v6 = [*(&self->super.isa + v5) description];

      return v6;
    case 4uLL:
      v5 = 24;
      goto LABEL_7;
    case 3uLL:
      v5 = 16;
      goto LABEL_7;
  }

  v6 = 0;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  creditDetails = self->_creditDetails;
  v6 = equalCopy[1];
  if (creditDetails && v6)
  {
    if (![(PKCreditAccountDetails *)creditDetails isEqual:?])
    {
      goto LABEL_17;
    }
  }

  else if (creditDetails != v6)
  {
    goto LABEL_17;
  }

  appleBalanceDetails = self->_appleBalanceDetails;
  v8 = equalCopy[2];
  if (appleBalanceDetails && v8)
  {
    if (![(PKAppleBalanceAccountDetails *)appleBalanceDetails isEqual:?])
    {
      goto LABEL_17;
    }
  }

  else if (appleBalanceDetails != v8)
  {
    goto LABEL_17;
  }

  savingsDetails = self->_savingsDetails;
  v10 = equalCopy[3];
  if (!savingsDetails || !v10)
  {
    if (savingsDetails == v10)
    {
      goto LABEL_15;
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  if (![(PKSavingsAccountDetails *)savingsDetails isEqual:?])
  {
    goto LABEL_17;
  }

LABEL_15:
  v11 = self->_type == equalCopy[4];
LABEL_18:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(PKCreditAccountDetails *)self->_creditDetails copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(PKAppleBalanceAccountDetails *)self->_appleBalanceDetails copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(PKSavingsAccountDetails *)self->_savingsDetails copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v5[4] = self->_type;
  return v5;
}

@end