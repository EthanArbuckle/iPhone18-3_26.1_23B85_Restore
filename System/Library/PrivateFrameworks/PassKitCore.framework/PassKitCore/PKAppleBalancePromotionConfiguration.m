@interface PKAppleBalancePromotionConfiguration
- (BOOL)isEqual:(id)a3;
- (PKAppleBalancePromotionConfiguration)initWithAMSOfferDictionary:(id)a3;
- (PKAppleBalancePromotionConfiguration)initWithCoder:(id)a3;
- (PKAppleBalancePromotionConfiguration)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAppleBalancePromotionConfiguration

- (PKAppleBalancePromotionConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = PKAppleBalancePromotionConfiguration;
  v5 = [(PKAppleBalancePromotionConfiguration *)&v25 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  if (v4)
  {
    v6 = [v4 PKStringForKey:@"promotionType"];
    v5->_promotionType = PKAppleBalancePromotionTypeFromString(v6);

    v7 = [v4 PKStringForKey:@"programIdentifier"];
    programIdentifier = v5->_programIdentifier;
    v5->_programIdentifier = v7;

    v9 = [v4 PKStringForKey:@"versionIdentifier"];
    versionIdentifier = v5->_versionIdentifier;
    v5->_versionIdentifier = v9;

    v5->_generationIdentifier = [v4 PKIntegerForKey:@"generationIdentifier"];
    v5->_stamp = [v4 PKIntegerForKey:@"stamp"];
    v11 = [v4 PKDecimalNumberForKey:@"bonusMinAmount"];
    bonusMinAmount = v5->_bonusMinAmount;
    v5->_bonusMinAmount = v11;

    v13 = [v4 PKDecimalNumberForKey:@"bonusMaxAmount"];
    bonusMaxAmount = v5->_bonusMaxAmount;
    v5->_bonusMaxAmount = v13;

    v15 = [v4 PKStringForKey:@"offerText"];
    offerText = v5->_offerText;
    v5->_offerText = v15;

    v17 = [v4 PKStringForKey:@"conditionText"];
    conditionText = v5->_conditionText;
    v5->_conditionText = v17;

    v19 = [v4 PKDateForKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v19;

LABEL_4:
    v21 = v5;
    goto LABEL_8;
  }

  v22 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "Error: promotion configuration dictionary missing", v24, 2u);
  }

  v21 = 0;
LABEL_8:

  return v21;
}

- (PKAppleBalancePromotionConfiguration)initWithAMSOfferDictionary:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = PKAppleBalancePromotionConfiguration;
  v5 = [(PKAppleBalancePromotionConfiguration *)&v28 init];
  if (!v5)
  {
LABEL_6:
    v24 = v5;
    goto LABEL_10;
  }

  if (v4)
  {
    v6 = [v4 PKArrayForKey:@"details"];
    v7 = [v6 firstObject];
    v8 = [v7 PKStringForKey:@"bonus-type"];
    v5->_promotionType = PKAppleBalancePromotionTypeFromString(v8);

    v9 = [v7 PKStringForKey:@"program-id"];
    programIdentifier = v5->_programIdentifier;
    v5->_programIdentifier = v9;

    v11 = [v7 PKStringForKey:@"version-id"];
    versionIdentifier = v5->_versionIdentifier;
    v5->_versionIdentifier = v11;

    v5->_generationIdentifier = [v7 PKIntegerForKey:@"generation-id"];
    v5->_stamp = [v7 PKIntegerForKey:@"stamp"];
    v13 = [v7 PKDecimalNumberForKey:@"bonus-min-amount"];
    bonusMinAmount = v5->_bonusMinAmount;
    v5->_bonusMinAmount = v13;

    v15 = [v7 PKDecimalNumberForKey:@"bonus-max-amount"];
    bonusMaxAmount = v5->_bonusMaxAmount;
    v5->_bonusMaxAmount = v15;

    v17 = [v7 PKStringForKey:@"text"];
    offerText = v5->_offerText;
    v5->_offerText = v17;

    if ([v6 count] >= 2)
    {
      v19 = [v6 objectAtIndex:1];
      v20 = [v19 PKStringForKey:@"text"];
      conditionText = v5->_conditionText;
      v5->_conditionText = v20;
    }

    v22 = [MEMORY[0x1E695DF00] date];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v22;

    goto LABEL_6;
  }

  v25 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Error: ams promotion dictionary missing", v27, 2u);
  }

  v24 = 0;
LABEL_10:

  return v24;
}

- (PKAppleBalancePromotionConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKAppleBalancePromotionConfiguration *)self init];
  if (v5)
  {
    v5->_promotionType = [v4 decodeIntegerForKey:@"promotionType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"programIdentifier"];
    programIdentifier = v5->_programIdentifier;
    v5->_programIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"versionIdentifier"];
    versionIdentifier = v5->_versionIdentifier;
    v5->_versionIdentifier = v8;

    v5->_generationIdentifier = [v4 decodeIntegerForKey:@"generationIdentifier"];
    v5->_stamp = [v4 decodeIntegerForKey:@"stamp"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bonusMinAmount"];
    bonusMinAmount = v5->_bonusMinAmount;
    v5->_bonusMinAmount = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bonusMaxAmount"];
    bonusMaxAmount = v5->_bonusMaxAmount;
    v5->_bonusMaxAmount = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"offerText"];
    offerText = v5->_offerText;
    v5->_offerText = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"conditionText"];
    conditionText = v5->_conditionText;
    v5->_conditionText = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  promotionType = self->_promotionType;
  v5 = a3;
  [v5 encodeInteger:promotionType forKey:@"promotionType"];
  [v5 encodeObject:self->_programIdentifier forKey:@"programIdentifier"];
  [v5 encodeObject:self->_versionIdentifier forKey:@"versionIdentifier"];
  [v5 encodeInteger:self->_generationIdentifier forKey:@"generationIdentifier"];
  [v5 encodeInteger:self->_stamp forKey:@"stamp"];
  [v5 encodeObject:self->_bonusMinAmount forKey:@"bonusMinAmount"];
  [v5 encodeObject:self->_bonusMaxAmount forKey:@"bonusMaxAmount"];
  [v5 encodeObject:self->_offerText forKey:@"offerText"];
  [v5 encodeObject:self->_conditionText forKey:@"conditionText"];
  [v5 encodeObject:self->_lastUpdatedDate forKey:@"lastUpdatedDate"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_39;
  }

  programIdentifier = self->_programIdentifier;
  v6 = v4[2];
  if (programIdentifier && v6)
  {
    if (([(NSString *)programIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (programIdentifier != v6)
  {
    goto LABEL_39;
  }

  versionIdentifier = self->_versionIdentifier;
  v8 = v4[3];
  if (versionIdentifier && v8)
  {
    if (([(NSString *)versionIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (versionIdentifier != v8)
  {
    goto LABEL_39;
  }

  if (self->_generationIdentifier != v4[4] || self->_stamp != v4[5])
  {
    goto LABEL_39;
  }

  bonusMinAmount = self->_bonusMinAmount;
  v10 = v4[6];
  if (bonusMinAmount && v10)
  {
    if (([(NSDecimalNumber *)bonusMinAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (bonusMinAmount != v10)
  {
    goto LABEL_39;
  }

  bonusMaxAmount = self->_bonusMaxAmount;
  v12 = v4[7];
  if (bonusMaxAmount && v12)
  {
    if (([(NSDecimalNumber *)bonusMaxAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (bonusMaxAmount != v12)
  {
    goto LABEL_39;
  }

  offerText = self->_offerText;
  v14 = v4[8];
  if (offerText && v14)
  {
    if (([(NSString *)offerText isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (offerText != v14)
  {
    goto LABEL_39;
  }

  conditionText = self->_conditionText;
  v16 = v4[9];
  if (conditionText && v16)
  {
    if (([(NSString *)conditionText isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (conditionText != v16)
  {
    goto LABEL_39;
  }

  lastUpdatedDate = self->_lastUpdatedDate;
  v18 = v4[10];
  if (!lastUpdatedDate || !v18)
  {
    if (lastUpdatedDate == v18)
    {
      goto LABEL_37;
    }

LABEL_39:
    v19 = 0;
    goto LABEL_40;
  }

  if (([(NSDate *)lastUpdatedDate isEqual:?]& 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_37:
  v19 = self->_promotionType == v4[1];
LABEL_40:

  return v19;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_programIdentifier];
  [v3 safelyAddObject:self->_versionIdentifier];
  [v3 safelyAddObject:self->_bonusMinAmount];
  [v3 safelyAddObject:self->_bonusMaxAmount];
  [v3 safelyAddObject:self->_offerText];
  [v3 safelyAddObject:self->_conditionText];
  [v3 safelyAddObject:self->_lastUpdatedDate];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_promotionType - v4 + 32 * v4;
  v6 = self->_generationIdentifier - v5 + 32 * v5;
  v7 = self->_stamp - v6 + 32 * v6;

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_promotionType)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = @"content";
  }

  [v3 appendFormat:@"promotionType: '%@'; ", v5];
  [v4 appendFormat:@"programIdentifier: '%@'; ", self->_programIdentifier];
  [v4 appendFormat:@"versionIdentifier: '%@'; ", self->_versionIdentifier];
  [v4 appendFormat:@"generationIdentifier: '%ld'; ", self->_generationIdentifier];
  [v4 appendFormat:@"stamp: '%ld'; ", self->_stamp];
  [v4 appendFormat:@"bonusMinAmount: '%@'; ", self->_bonusMinAmount];
  [v4 appendFormat:@"bonusMaxAmount: '%@'; ", self->_bonusMaxAmount];
  [v4 appendFormat:@"offerText: '%@'; ", self->_offerText];
  [v4 appendFormat:@"conditionText: '%@'; ", self->_conditionText];
  [v4 appendFormat:@"lastUpdateDated: '%@'; ", self->_lastUpdatedDate];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKAppleBalancePromotionConfiguration allocWithZone:](PKAppleBalancePromotionConfiguration init];
  v5->_promotionType = self->_promotionType;
  v6 = [(NSString *)self->_programIdentifier copyWithZone:a3];
  programIdentifier = v5->_programIdentifier;
  v5->_programIdentifier = v6;

  v8 = [(NSString *)self->_versionIdentifier copyWithZone:a3];
  versionIdentifier = v5->_versionIdentifier;
  v5->_versionIdentifier = v8;

  v5->_generationIdentifier = self->_generationIdentifier;
  v5->_stamp = self->_stamp;
  v10 = [(NSDecimalNumber *)self->_bonusMinAmount copyWithZone:a3];
  bonusMinAmount = v5->_bonusMinAmount;
  v5->_bonusMinAmount = v10;

  v12 = [(NSDecimalNumber *)self->_bonusMaxAmount copyWithZone:a3];
  bonusMaxAmount = v5->_bonusMaxAmount;
  v5->_bonusMaxAmount = v12;

  v14 = [(NSString *)self->_offerText copyWithZone:a3];
  offerText = v5->_offerText;
  v5->_offerText = v14;

  v16 = [(NSString *)self->_conditionText copyWithZone:a3];
  conditionText = v5->_conditionText;
  v5->_conditionText = v16;

  v18 = [(NSDate *)self->_lastUpdatedDate copyWithZone:a3];
  lastUpdatedDate = v5->_lastUpdatedDate;
  v5->_lastUpdatedDate = v18;

  return v5;
}

@end