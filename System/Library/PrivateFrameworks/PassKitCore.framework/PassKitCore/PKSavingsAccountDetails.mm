@interface PKSavingsAccountDetails
- (BOOL)isEqual:(id)equal;
- (PKSavingsAccountDetails)initWithCoder:(id)coder;
- (PKSavingsAccountDetails)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSavingsAccountDetails

- (PKSavingsAccountDetails)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v40.receiver = self;
  v40.super_class = PKSavingsAccountDetails;
  v5 = [(PKSavingsAccountDetails *)&v40 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKDateForKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v6;

    v8 = [dictionaryCopy PKDateForKey:@"createdDate"];
    createdDate = v5->_createdDate;
    v5->_createdDate = v8;

    v10 = [dictionaryCopy PKStringForKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v10;

    v12 = [dictionaryCopy PKStringForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v12;

    v14 = [dictionaryCopy PKStringForKey:@"routingNumber"];
    routingNumber = v5->_routingNumber;
    v5->_routingNumber = v14;

    v16 = [dictionaryCopy PKStringForKey:@"accountNumber"];
    accountNumber = v5->_accountNumber;
    v5->_accountNumber = v16;

    v18 = [dictionaryCopy PKStringForKey:@"productTimeZone"];
    if (v18)
    {
      v19 = [MEMORY[0x1E695DFE8] timeZoneWithName:v18];
      productTimeZone = v5->_productTimeZone;
      v5->_productTimeZone = v19;
    }

    v5->_moreInfoRequired = [dictionaryCopy PKBoolForKey:@"moreInfoRequired"];
    v5->_fccStepUpRequired = [dictionaryCopy PKBoolForKey:@"fccStepUpRequired"];
    v21 = [PKSavingsAccountStepUpDetails alloc];
    v22 = [dictionaryCopy PKDictionaryForKey:@"fccStepUpDetails"];
    v23 = [(PKSavingsAccountStepUpDetails *)v21 initWithDictionary:v22];
    fccStepUpDetails = v5->_fccStepUpDetails;
    v5->_fccStepUpDetails = v23;

    v5->_termsAcceptanceRequired = [dictionaryCopy PKBoolForKey:@"termsAcceptanceRequired"];
    v25 = [dictionaryCopy PKStringForKey:@"termsIdentifier"];
    termsIdentifier = v5->_termsIdentifier;
    v5->_termsIdentifier = v25;

    v27 = [dictionaryCopy PKURLForKey:@"privacyPolicyURL"];
    privacyPolicyURL = v5->_privacyPolicyURL;
    v5->_privacyPolicyURL = v27;

    v29 = [dictionaryCopy PKStringForKey:@"businessChatIdentifier"];
    businessChatIdentifier = v5->_businessChatIdentifier;
    v5->_businessChatIdentifier = v29;

    v31 = [dictionaryCopy PKURLForKey:@"contactWebsite"];
    contactWebsite = v5->_contactWebsite;
    v5->_contactWebsite = v31;

    v33 = [dictionaryCopy PKStringForKey:@"contactNumber"];
    contactNumber = v5->_contactNumber;
    v5->_contactNumber = v33;

    v35 = [PKSavingsAccountSummary alloc];
    v36 = [dictionaryCopy PKDictionaryForKey:@"accountSummary"];
    v37 = [(PKSavingsAccountSummary *)v35 initWithDictionary:v36];
    accountSummary = v5->_accountSummary;
    v5->_accountSummary = v37;
  }

  return v5;
}

- (PKSavingsAccountDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = PKSavingsAccountDetails;
  v5 = [(PKSavingsAccountDetails *)&v35 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"createdDate"];
    createdDate = v5->_createdDate;
    v5->_createdDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"routingNumber"];
    routingNumber = v5->_routingNumber;
    v5->_routingNumber = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountNumber"];
    accountNumber = v5->_accountNumber;
    v5->_accountNumber = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productTimeZone"];
    productTimeZone = v5->_productTimeZone;
    v5->_productTimeZone = v18;

    v5->_moreInfoRequired = [coderCopy decodeBoolForKey:@"moreInfoRequired"];
    v5->_fccStepUpRequired = [coderCopy decodeBoolForKey:@"fccStepUpRequired"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fccStepUpDetails"];
    fccStepUpDetails = v5->_fccStepUpDetails;
    v5->_fccStepUpDetails = v20;

    v5->_termsAcceptanceRequired = [coderCopy decodeBoolForKey:@"termsAcceptanceRequired"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"termsIdentifier"];
    termsIdentifier = v5->_termsIdentifier;
    v5->_termsIdentifier = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privacyPolicyURL"];
    privacyPolicyURL = v5->_privacyPolicyURL;
    v5->_privacyPolicyURL = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"businessChatIdentifier"];
    businessChatIdentifier = v5->_businessChatIdentifier;
    v5->_businessChatIdentifier = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactWebsite"];
    contactWebsite = v5->_contactWebsite;
    v5->_contactWebsite = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactNumber"];
    contactNumber = v5->_contactNumber;
    v5->_contactNumber = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountSummary"];
    accountSummary = v5->_accountSummary;
    v5->_accountSummary = v32;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  createdDate = self->_createdDate;
  coderCopy = coder;
  [coderCopy encodeObject:createdDate forKey:@"createdDate"];
  [coderCopy encodeObject:self->_lastUpdatedDate forKey:@"lastUpdatedDate"];
  [coderCopy encodeObject:self->_countryCode forKey:@"countryCode"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeObject:self->_routingNumber forKey:@"routingNumber"];
  [coderCopy encodeObject:self->_accountNumber forKey:@"accountNumber"];
  [coderCopy encodeObject:self->_productTimeZone forKey:@"productTimeZone"];
  [coderCopy encodeBool:self->_moreInfoRequired forKey:@"moreInfoRequired"];
  [coderCopy encodeBool:self->_fccStepUpRequired forKey:@"fccStepUpRequired"];
  [coderCopy encodeObject:self->_fccStepUpDetails forKey:@"fccStepUpDetails"];
  [coderCopy encodeBool:self->_termsAcceptanceRequired forKey:@"termsAcceptanceRequired"];
  [coderCopy encodeObject:self->_termsIdentifier forKey:@"termsIdentifier"];
  [coderCopy encodeObject:self->_privacyPolicyURL forKey:@"privacyPolicyURL"];
  [coderCopy encodeObject:self->_businessChatIdentifier forKey:@"businessChatIdentifier"];
  [coderCopy encodeObject:self->_contactWebsite forKey:@"contactWebsite"];
  [coderCopy encodeObject:self->_contactNumber forKey:@"contactNumber"];
  [coderCopy encodeObject:self->_accountSummary forKey:@"accountSummary"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_74;
  }

  createdDate = self->_createdDate;
  v6 = equalCopy[3];
  if (createdDate && v6)
  {
    if (([(NSDate *)createdDate isEqual:?]& 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (createdDate != v6)
  {
    goto LABEL_74;
  }

  lastUpdatedDate = self->_lastUpdatedDate;
  v8 = equalCopy[2];
  if (lastUpdatedDate && v8)
  {
    if (([(NSDate *)lastUpdatedDate isEqual:?]& 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (lastUpdatedDate != v8)
  {
    goto LABEL_74;
  }

  v9 = equalCopy[4];
  v10 = self->_countryCode;
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {
  }

  else
  {
    if (!v10 || !v11)
    {

      goto LABEL_74;
    }

    v13 = [(NSString *)v10 isEqualToString:v11];

    if (!v13)
    {
      goto LABEL_74;
    }
  }

  currencyCode = self->_currencyCode;
  v15 = equalCopy[5];
  if (currencyCode && v15)
  {
    if (([(NSString *)currencyCode isEqual:?]& 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (currencyCode != v15)
  {
    goto LABEL_74;
  }

  routingNumber = self->_routingNumber;
  v17 = equalCopy[6];
  if (routingNumber && v17)
  {
    if (([(NSString *)routingNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (routingNumber != v17)
  {
    goto LABEL_74;
  }

  accountNumber = self->_accountNumber;
  v19 = equalCopy[7];
  if (accountNumber && v19)
  {
    if (([(NSString *)accountNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (accountNumber != v19)
  {
    goto LABEL_74;
  }

  productTimeZone = self->_productTimeZone;
  v21 = equalCopy[8];
  if (productTimeZone && v21)
  {
    if (([(NSTimeZone *)productTimeZone isEqual:?]& 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (productTimeZone != v21)
  {
    goto LABEL_74;
  }

  if (self->_moreInfoRequired != *(equalCopy + 8) || self->_fccStepUpRequired != *(equalCopy + 9) || self->_termsAcceptanceRequired != *(equalCopy + 10))
  {
    goto LABEL_74;
  }

  termsIdentifier = self->_termsIdentifier;
  v23 = equalCopy[10];
  if (termsIdentifier && v23)
  {
    if (([(NSString *)termsIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (termsIdentifier != v23)
  {
    goto LABEL_74;
  }

  privacyPolicyURL = self->_privacyPolicyURL;
  v25 = equalCopy[11];
  if (privacyPolicyURL && v25)
  {
    if (([(NSURL *)privacyPolicyURL isEqual:?]& 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (privacyPolicyURL != v25)
  {
    goto LABEL_74;
  }

  businessChatIdentifier = self->_businessChatIdentifier;
  v27 = equalCopy[12];
  if (businessChatIdentifier && v27)
  {
    if (([(NSString *)businessChatIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (businessChatIdentifier != v27)
  {
    goto LABEL_74;
  }

  contactWebsite = self->_contactWebsite;
  v29 = equalCopy[13];
  if (contactWebsite && v29)
  {
    if (([(NSURL *)contactWebsite isEqual:?]& 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (contactWebsite != v29)
  {
    goto LABEL_74;
  }

  contactNumber = self->_contactNumber;
  v31 = equalCopy[14];
  if (contactNumber && v31)
  {
    if (([(NSString *)contactNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (contactNumber != v31)
  {
    goto LABEL_74;
  }

  accountSummary = self->_accountSummary;
  v33 = equalCopy[15];
  if (!accountSummary || !v33)
  {
    if (accountSummary == v33)
    {
      goto LABEL_70;
    }

LABEL_74:
    v36 = 0;
    goto LABEL_75;
  }

  if (![(PKSavingsAccountSummary *)accountSummary isEqual:?])
  {
    goto LABEL_74;
  }

LABEL_70:
  fccStepUpDetails = self->_fccStepUpDetails;
  v35 = equalCopy[9];
  if (fccStepUpDetails && v35)
  {
    v36 = [(PKSavingsAccountStepUpDetails *)fccStepUpDetails isEqual:?];
  }

  else
  {
    v36 = fccStepUpDetails == v35;
  }

LABEL_75:

  return v36;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_createdDate];
  [array safelyAddObject:self->_lastUpdatedDate];
  [array safelyAddObject:self->_countryCode];
  [array safelyAddObject:self->_currencyCode];
  [array safelyAddObject:self->_accountNumber];
  [array safelyAddObject:self->_routingNumber];
  [array safelyAddObject:self->_productTimeZone];
  [array safelyAddObject:self->_termsIdentifier];
  [array safelyAddObject:self->_privacyPolicyURL];
  [array safelyAddObject:self->_businessChatIdentifier];
  [array safelyAddObject:self->_contactWebsite];
  [array safelyAddObject:self->_contactNumber];
  [array safelyAddObject:self->_accountSummary];
  [array safelyAddObject:self->_fccStepUpDetails];
  v4 = PKCombinedHash(17, array);
  v5 = self->_moreInfoRequired - v4 + 32 * v4;
  v6 = self->_fccStepUpRequired - v5 + 32 * v5;
  v7 = self->_termsAcceptanceRequired - v6 + 32 * v6;

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(NSDate *)self->_lastUpdatedDate description];
  [v3 appendFormat:@"lastUpdatedDate: '%@'; ", v4];

  v5 = [(NSDate *)self->_createdDate description];
  [v3 appendFormat:@"createdDate: '%@'; ", v5];

  [v3 appendFormat:@"countryCode: '%@'; ", self->_countryCode];
  [v3 appendFormat:@"currencyCode: '%@'; ", self->_currencyCode];
  [v3 appendFormat:@"routingNumber: '%@'; ", self->_routingNumber];
  [v3 appendFormat:@"accountNumber: '%@'; ", self->_accountNumber];
  [v3 appendFormat:@"productTimeZone: '%@'; ", self->_productTimeZone];
  if (self->_moreInfoRequired)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@"moreInfoRequired: '%@'; ", v6];
  if (self->_fccStepUpRequired)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"fccStepUpRequired: '%@'; ", v7];
  v8 = [(PKSavingsAccountStepUpDetails *)self->_fccStepUpDetails description];
  [v3 appendFormat:@"fccStepUpDetails: '%@'; ", v8];

  if (self->_termsAcceptanceRequired)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v3 appendFormat:@"termsAcceptanceRequired: '%@'; ", v9];
  [v3 appendFormat:@"termsIdentifier: '%@'; ", self->_termsIdentifier];
  [v3 appendFormat:@"privacyPolicyURL: '%@'; ", self->_privacyPolicyURL];
  [v3 appendFormat:@"businessChatIdentifier: '%@'; ", self->_businessChatIdentifier];
  [v3 appendFormat:@"contactWebsite: '%@'; ", self->_contactWebsite];
  [v3 appendFormat:@"contactNumber: '%@'; ", self->_contactNumber];
  v10 = [(PKSavingsAccountSummary *)self->_accountSummary description];
  [v3 appendFormat:@"summary: '%@'; ", v10];

  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKSavingsAccountDetails allocWithZone:](PKSavingsAccountDetails init];
  v6 = [(NSDate *)self->_lastUpdatedDate copyWithZone:zone];
  lastUpdatedDate = v5->_lastUpdatedDate;
  v5->_lastUpdatedDate = v6;

  v8 = [(NSDate *)self->_createdDate copyWithZone:zone];
  createdDate = v5->_createdDate;
  v5->_createdDate = v8;

  v10 = [(NSString *)self->_countryCode copyWithZone:zone];
  countryCode = v5->_countryCode;
  v5->_countryCode = v10;

  v12 = [(NSString *)self->_currencyCode copyWithZone:zone];
  currencyCode = v5->_currencyCode;
  v5->_currencyCode = v12;

  v14 = [(NSString *)self->_routingNumber copyWithZone:zone];
  routingNumber = v5->_routingNumber;
  v5->_routingNumber = v14;

  v16 = [(NSString *)self->_accountNumber copyWithZone:zone];
  accountNumber = v5->_accountNumber;
  v5->_accountNumber = v16;

  v18 = [(NSTimeZone *)self->_productTimeZone copyWithZone:zone];
  productTimeZone = v5->_productTimeZone;
  v5->_productTimeZone = v18;

  v5->_moreInfoRequired = self->_moreInfoRequired;
  v5->_fccStepUpRequired = self->_fccStepUpRequired;
  v20 = [(PKSavingsAccountStepUpDetails *)self->_fccStepUpDetails copyWithZone:zone];
  fccStepUpDetails = v5->_fccStepUpDetails;
  v5->_fccStepUpDetails = v20;

  v5->_termsAcceptanceRequired = self->_termsAcceptanceRequired;
  v22 = [(NSString *)self->_termsIdentifier copyWithZone:zone];
  termsIdentifier = v5->_termsIdentifier;
  v5->_termsIdentifier = v22;

  v24 = [(NSURL *)self->_privacyPolicyURL copyWithZone:zone];
  privacyPolicyURL = v5->_privacyPolicyURL;
  v5->_privacyPolicyURL = v24;

  v26 = [(NSString *)self->_businessChatIdentifier copyWithZone:zone];
  businessChatIdentifier = v5->_businessChatIdentifier;
  v5->_businessChatIdentifier = v26;

  v28 = [(NSURL *)self->_contactWebsite copyWithZone:zone];
  contactWebsite = v5->_contactWebsite;
  v5->_contactWebsite = v28;

  v30 = [(NSString *)self->_contactNumber copyWithZone:zone];
  contactNumber = v5->_contactNumber;
  v5->_contactNumber = v30;

  v32 = [(PKSavingsAccountSummary *)self->_accountSummary copyWithZone:zone];
  accountSummary = v5->_accountSummary;
  v5->_accountSummary = v32;

  return v5;
}

@end