@interface PKPaymentTransactionAward
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPaymentTransactionAward:(id)award;
- (PKPaymentTransactionAward)initWithCoder:(id)coder;
- (PKPaymentTransactionAward)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)formattedStringValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setType:(int64_t)type;
- (void)setTypeString:(id)string;
@end

@implementation PKPaymentTransactionAward

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentTransactionAward allocWithZone:](PKPaymentTransactionAward init];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(NSString *)self->_typeString copyWithZone:zone];
  typeString = v5->_typeString;
  v5->_typeString = v8;

  v5->_type = self->_type;
  v10 = [(NSString *)self->_subtype copyWithZone:zone];
  subtype = v5->_subtype;
  v5->_subtype = v10;

  v12 = [(NSString *)self->_awardDescription copyWithZone:zone];
  awardDescription = v5->_awardDescription;
  v5->_awardDescription = v12;

  v5->_order = self->_order;
  v14 = [(PKTransactionAmount *)self->_amount copyWithZone:zone];
  amount = v5->_amount;
  v5->_amount = v14;

  v16 = [(NSString *)self->_localizedAmount copyWithZone:zone];
  localizedAmount = v5->_localizedAmount;
  v5->_localizedAmount = v16;

  v18 = [(NSString *)self->_relevantAccountName copyWithZone:zone];
  relevantAccountName = v5->_relevantAccountName;
  v5->_relevantAccountName = v18;

  v5->_hasDeepLink = self->_hasDeepLink;
  v20 = [(NSDate *)self->_claimExpiryDate copyWithZone:zone];
  claimExpiryDate = v5->_claimExpiryDate;
  v5->_claimExpiryDate = v20;

  v5->_claimExpired = self->_claimExpired;
  v22 = [(NSDate *)self->_redeemExpiryDate copyWithZone:zone];
  redeemExpiryDate = v5->_redeemExpiryDate;
  v5->_redeemExpiryDate = v22;

  v5->_redeemExpired = self->_redeemExpired;
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"awardIdentifier"];
  [coderCopy encodeObject:self->_typeString forKey:@"type"];
  [coderCopy encodeObject:self->_subtype forKey:@"subtype"];
  [coderCopy encodeObject:self->_awardDescription forKey:@"description"];
  [coderCopy encodeInteger:self->_order forKey:@"order"];
  [coderCopy encodeObject:self->_amount forKey:@"amount"];
  [coderCopy encodeObject:self->_localizedAmount forKey:@"localizedAmount"];
  [coderCopy encodeObject:self->_relevantAccountName forKey:@"relevantAccountName"];
  [coderCopy encodeBool:self->_hasDeepLink forKey:@"hasDeepLink"];
  [coderCopy encodeObject:self->_claimExpiryDate forKey:@"claimExpiryDate"];
  [coderCopy encodeBool:self->_claimExpired forKey:@"claimExpired"];
  [coderCopy encodeObject:self->_redeemExpiryDate forKey:@"redeemExpiryDate"];
  [coderCopy encodeBool:self->_redeemExpired forKey:@"redeemExpired"];
}

- (PKPaymentTransactionAward)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = PKPaymentTransactionAward;
  v5 = [(PKPaymentTransactionAward *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"awardIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    typeString = v5->_typeString;
    v5->_typeString = v8;

    v5->_type = PKPaymentTransactionAwardTypeFromString(v5->_typeString);
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtype"];
    subtype = v5->_subtype;
    v5->_subtype = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"description"];
    awardDescription = v5->_awardDescription;
    v5->_awardDescription = v12;

    v5->_order = [coderCopy decodeIntegerForKey:@"order"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedAmount"];
    localizedAmount = v5->_localizedAmount;
    v5->_localizedAmount = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relevantAccountName"];
    relevantAccountName = v5->_relevantAccountName;
    v5->_relevantAccountName = v18;

    v5->_hasDeepLink = [coderCopy decodeBoolForKey:@"hasDeepLink"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"claimExpiryDate"];
    claimExpiryDate = v5->_claimExpiryDate;
    v5->_claimExpiryDate = v20;

    v5->_claimExpired = [coderCopy decodeBoolForKey:@"claimExpired"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"redeemExpiryDate"];
    redeemExpiryDate = v5->_redeemExpiryDate;
    v5->_redeemExpiryDate = v22;

    v5->_redeemExpired = [coderCopy decodeBoolForKey:@"redeemExpired"];
  }

  return v5;
}

- (PKPaymentTransactionAward)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = PKPaymentTransactionAward;
  v5 = [(PKPaymentTransactionAward *)&v26 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"awardIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [dictionaryCopy PKStringForKey:@"type"];
    typeString = v5->_typeString;
    v5->_typeString = v8;

    v5->_type = PKPaymentTransactionAwardTypeFromString(v5->_typeString);
    v10 = [dictionaryCopy PKStringForKey:@"subtype"];
    subtype = v5->_subtype;
    v5->_subtype = v10;

    v12 = [dictionaryCopy PKStringForKey:@"description"];
    awardDescription = v5->_awardDescription;
    v5->_awardDescription = v12;

    v5->_order = 0x7FFFFFFFFFFFFFFFLL;
    v14 = [dictionaryCopy PKDictionaryForKey:@"amount"];
    v15 = [[PKTransactionAmount alloc] initWithDictionary:v14];
    amount = v5->_amount;
    v5->_amount = v15;

    v17 = [dictionaryCopy PKStringForKey:@"localizedAmount"];
    localizedAmount = v5->_localizedAmount;
    v5->_localizedAmount = v17;

    v19 = [dictionaryCopy PKStringForKey:@"relevantAccountName"];
    relevantAccountName = v5->_relevantAccountName;
    v5->_relevantAccountName = v19;

    v5->_hasDeepLink = [dictionaryCopy PKBoolForKey:@"hasDeepLink"];
    v21 = [dictionaryCopy PKDateForKey:@"claimExpiryDate"];
    claimExpiryDate = v5->_claimExpiryDate;
    v5->_claimExpiryDate = v21;

    v5->_claimExpired = [dictionaryCopy PKBoolForKey:@"claimExpired"];
    v23 = [dictionaryCopy PKDateForKey:@"redeemExpiryDate"];
    redeemExpiryDate = v5->_redeemExpiryDate;
    v5->_redeemExpiryDate = v23;

    v5->_redeemExpired = [dictionaryCopy PKBoolForKey:@"redeemExpired"];
  }

  return v5;
}

- (id)formattedStringValue
{
  if (self->_type == 1 || ![(NSString *)self->_localizedAmount length])
  {
    amount = self->_amount;
    awardDescription = self->_awardDescription;
    if (amount)
    {
      amount = [(PKTransactionAmount *)amount amount];
      formattedStringValue = [amount formattedStringValue];
      v8 = PKLocalizedAquamanString(&cfstr_TransactionDet_0.isa, &cfstr_12_0.isa, awardDescription, formattedStringValue);

      goto LABEL_8;
    }

    v3 = awardDescription;
  }

  else
  {
    v3 = PKLocalizedAquamanString(&cfstr_TransactionDet_0.isa, &cfstr_12_0.isa, self->_awardDescription, self->_localizedAmount);
  }

  v8 = v3;
LABEL_8:

  return v8;
}

- (void)setTypeString:(id)string
{
  objc_storeStrong(&self->_typeString, string);
  stringCopy = string;
  v6 = PKPaymentTransactionAwardTypeFromString(self->_typeString);

  self->_type = v6;
}

- (void)setType:(int64_t)type
{
  v3 = @"unknown";
  if (type == 2)
  {
    v3 = @"nonMonetary";
  }

  if (type == 1)
  {
    v4 = @"monetary";
  }

  else
  {
    v4 = v3;
  }

  [(PKPaymentTransactionAward *)self setTypeString:v4];
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_identifier forKeyedSubscript:@"awardIdentifier"];
  [v3 setObject:self->_typeString forKeyedSubscript:@"type"];
  [v3 setObject:self->_subtype forKeyedSubscript:@"subtype"];
  [v3 setObject:self->_awardDescription forKeyedSubscript:@"description"];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_order];
  [v3 setObject:v4 forKeyedSubscript:@"order"];

  dictionaryRepresentation = [(PKTransactionAmount *)self->_amount dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"amount"];

  [v3 setObject:self->_localizedAmount forKeyedSubscript:@"localizedAmount"];
  [v3 setObject:self->_relevantAccountName forKeyedSubscript:@"relevantAccountName"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasDeepLink];
  [v3 setObject:v6 forKeyedSubscript:@"hasDeepLink"];

  v7 = PKW3CDateStringFromDate(self->_claimExpiryDate);
  [v3 setObject:v7 forKeyedSubscript:@"claimExpiryDate"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_claimExpired];
  [v3 setObject:v8 forKeyedSubscript:@"claimExpired"];

  v9 = PKW3CDateStringFromDate(self->_redeemExpiryDate);
  [v3 setObject:v9 forKeyedSubscript:@"redeemExpiryDate"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_redeemExpired];
  [v3 setObject:v10 forKeyedSubscript:@"redeemExpired"];

  return v3;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_typeString];
  [array safelyAddObject:self->_subtype];
  [array safelyAddObject:self->_awardDescription];
  [array safelyAddObject:self->_amount];
  [array safelyAddObject:self->_relevantAccountName];
  [array safelyAddObject:self->_localizedAmount];
  [array safelyAddObject:self->_claimExpiryDate];
  [array safelyAddObject:self->_redeemExpiryDate];
  v4 = PKCombinedHash(17, array);
  v5 = self->_order - v4 + 32 * v4;
  v6 = self->_type - v5 + 32 * v5;
  v7 = self->_hasDeepLink - v6 + 32 * v6;
  v8 = self->_claimExpired - v7 + 32 * v7;
  v9 = self->_redeemExpired - v8 + 32 * v8;

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentTransactionAward *)self isEqualToPaymentTransactionAward:v5];
  }

  return v6;
}

- (BOOL)isEqualToPaymentTransactionAward:(id)award
{
  awardCopy = award;
  v5 = awardCopy[12];
  v6 = self->_typeString;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_45;
    }

    v10 = [(NSString *)v6 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_46;
    }
  }

  v11 = awardCopy[2];
  v6 = self->_identifier;
  v12 = v11;
  v8 = v12;
  if (v6 == v12)
  {
  }

  else
  {
    if (!v6 || !v12)
    {
      goto LABEL_45;
    }

    v13 = [(NSString *)v6 isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_46;
    }
  }

  v14 = awardCopy[8];
  v6 = self->_awardDescription;
  v15 = v14;
  v8 = v15;
  if (v6 == v15)
  {
  }

  else
  {
    if (!v6 || !v15)
    {
      goto LABEL_45;
    }

    v16 = [(NSString *)v6 isEqualToString:v15];

    if (!v16)
    {
      goto LABEL_46;
    }
  }

  if (self->_order != awardCopy[5] || self->_type != awardCopy[3])
  {
    goto LABEL_46;
  }

  v17 = awardCopy[4];
  v6 = self->_subtype;
  v18 = v17;
  v8 = v18;
  if (v6 == v18)
  {
  }

  else
  {
    if (!v6 || !v18)
    {
      goto LABEL_45;
    }

    v19 = [(NSString *)v6 isEqualToString:v18];

    if (!v19)
    {
      goto LABEL_46;
    }
  }

  amount = self->_amount;
  v21 = awardCopy[6];
  if (amount && v21)
  {
    if (![(PKTransactionAmount *)amount isEqual:?])
    {
      goto LABEL_46;
    }
  }

  else if (amount != v21)
  {
    goto LABEL_46;
  }

  v22 = awardCopy[7];
  v6 = self->_localizedAmount;
  v23 = v22;
  v8 = v23;
  if (v6 == v23)
  {
  }

  else
  {
    if (!v6 || !v23)
    {
      goto LABEL_45;
    }

    v24 = [(NSString *)v6 isEqualToString:v23];

    if (!v24)
    {
      goto LABEL_46;
    }
  }

  v25 = awardCopy[9];
  v6 = self->_relevantAccountName;
  v26 = v25;
  v8 = v26;
  if (v6 != v26)
  {
    if (v6 && v26)
    {
      v27 = [(NSString *)v6 isEqualToString:v26];

      if (!v27)
      {
        goto LABEL_46;
      }

      goto LABEL_49;
    }

LABEL_45:

    goto LABEL_46;
  }

LABEL_49:
  if (self->_hasDeepLink == *(awardCopy + 8))
  {
    claimExpiryDate = self->_claimExpiryDate;
    v31 = awardCopy[10];
    if (claimExpiryDate && v31)
    {
      if (([(NSDate *)claimExpiryDate isEqual:?]& 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if (claimExpiryDate != v31)
    {
      goto LABEL_46;
    }

    if (self->_claimExpired == *(awardCopy + 9))
    {
      redeemExpiryDate = self->_redeemExpiryDate;
      v33 = awardCopy[11];
      if (redeemExpiryDate && v33)
      {
        if (([(NSDate *)redeemExpiryDate isEqual:?]& 1) != 0)
        {
          goto LABEL_61;
        }
      }

      else if (redeemExpiryDate == v33)
      {
LABEL_61:
        v28 = self->_redeemExpired == *(awardCopy + 10);
        goto LABEL_47;
      }
    }
  }

LABEL_46:
  v28 = 0;
LABEL_47:

  return v28;
}

@end