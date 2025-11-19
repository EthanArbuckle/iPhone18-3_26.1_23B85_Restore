@interface PKAccountEnhancedMerchant
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAccountEnhancedMerchant:(id)a3;
- (NSString)description;
- (PKAccountEnhancedMerchant)init;
- (PKAccountEnhancedMerchant)initWithCoder:(id)a3;
- (PKAccountEnhancedMerchant)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)hashedPaymentIdentifiers;
- (unint64_t)hash;
- (void)_initWithMerchantDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setBrandMUIDsFromJSONString:(id)a3;
- (void)setEnhancedRewardsProgramIdentifiersFromJSONString:(id)a3;
- (void)setExcludedMUIDsFromJSONString:(id)a3;
- (void)setMapsSearchStringsFromJSONString:(id)a3;
- (void)setPaymentIdentifiersFromJSONString:(id)a3;
@end

@implementation PKAccountEnhancedMerchant

- (PKAccountEnhancedMerchant)init
{
  v10.receiver = self;
  v10.super_class = PKAccountEnhancedMerchant;
  v2 = [(PKAccountEnhancedMerchant *)&v10 init];
  if (v2)
  {
    v3 = [PKRemoteImageSet alloc];
    v4 = MEMORY[0x1E695E0F0];
    v5 = [(PKRemoteImageSet *)v3 initWithName:@"logoImage" dictionaries:MEMORY[0x1E695E0F0]];
    logoImage = v2->_logoImage;
    v2->_logoImage = v5;

    v7 = [[PKRemoteImageSet alloc] initWithName:@"iconImage" dictionaries:v4];
    iconImage = v2->_iconImage;
    v2->_iconImage = v7;
  }

  return v2;
}

- (PKAccountEnhancedMerchant)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9.receiver = self;
    v9.super_class = PKAccountEnhancedMerchant;
    v5 = [(PKAccountEnhancedMerchant *)&v9 init];
    v6 = v5;
    if (v5)
    {
      [(PKAccountEnhancedMerchant *)v5 _initWithMerchantDictionary:v4];
    }

    self = v6;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_initWithMerchantDictionary:(id)a3
{
  v50 = a3;
  v4 = [v50 PKStringForKey:@"privateIdentifier"];
  privateIdentifier = self->_privateIdentifier;
  self->_privateIdentifier = v4;

  v6 = [v50 PKStringForKey:@"name"];
  name = self->_name;
  self->_name = v6;

  v8 = [v50 PKStringForKey:@"description"];
  detailedDescription = self->_detailedDescription;
  self->_detailedDescription = v8;

  v10 = [v50 PKArrayForKey:@"logoImage"];
  v11 = [[PKRemoteImageSet alloc] initWithName:@"logoImage" dictionaries:v10];
  logoImage = self->_logoImage;
  self->_logoImage = v11;

  v13 = [v50 PKArrayForKey:@"iconImage"];
  v14 = [[PKRemoteImageSet alloc] initWithName:@"iconImage" dictionaries:v13];
  iconImage = self->_iconImage;
  self->_iconImage = v14;

  v16 = [v50 PKStringForKey:@"adamID"];
  v17 = [v16 nonZeroUnsignedLongLongNSNumberValue];
  adamID = self->_adamID;
  self->_adamID = v17;

  v19 = [v50 objectForKey:@"brandMUIDs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [v19 nonZeroUnsignedLongLongSetValue];
    brandMUIDs = self->_brandMUIDs;
    self->_brandMUIDs = v20;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PKAccountEnhancedMerchant *)self setBrandMUIDsFromJSONString:v19];
      goto LABEL_7;
    }

    brandMUIDs = self->_brandMUIDs;
    self->_brandMUIDs = 0;
  }

LABEL_7:
  v22 = [v50 objectForKey:@"excludedMUIDs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [v22 nonZeroUnsignedLongLongSetValue];
    excludedMUIDs = self->_excludedMUIDs;
    self->_excludedMUIDs = v23;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PKAccountEnhancedMerchant *)self setExcludedMUIDsFromJSONString:v22];
      goto LABEL_13;
    }

    excludedMUIDs = self->_excludedMUIDs;
    self->_excludedMUIDs = 0;
  }

LABEL_13:
  v25 = [v50 PKURLForKey:@"website"];
  website = self->_website;
  self->_website = v25;

  v27 = [v50 PKURLForKey:@"loyaltyPassURL"];
  loyaltyPassURL = self->_loyaltyPassURL;
  self->_loyaltyPassURL = v27;

  v29 = [v50 objectForKey:@"paymentIdentifiers"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = [v29 stringSetValue];
    paymentIdentifiers = self->_paymentIdentifiers;
    self->_paymentIdentifiers = v30;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PKAccountEnhancedMerchant *)self setPaymentIdentifiersFromJSONString:v29];
      goto LABEL_19;
    }

    paymentIdentifiers = self->_paymentIdentifiers;
    self->_paymentIdentifiers = 0;
  }

LABEL_19:
  v32 = [v50 objectForKey:@"mapsSearchStrings"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = [v32 stringSetValue];
    mapsSearchStrings = self->_mapsSearchStrings;
    self->_mapsSearchStrings = v33;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PKAccountEnhancedMerchant *)self setMapsSearchStringsFromJSONString:v32];
      goto LABEL_25;
    }

    mapsSearchStrings = self->_mapsSearchStrings;
    self->_mapsSearchStrings = 0;
  }

LABEL_25:
  v35 = [v50 PKStringForKey:@"disclosures"];
  disclosures = self->_disclosures;
  self->_disclosures = v35;

  v37 = [v50 PKStringForKey:@"mapsSearchText"];
  mapsSearchText = self->_mapsSearchText;
  self->_mapsSearchText = v37;

  v39 = [v50 PKStringForKey:@"paymentSheetRewardsText"];
  paymentSheetRewardsText = self->_paymentSheetRewardsText;
  self->_paymentSheetRewardsText = v39;

  v41 = [v50 PKStringForKey:@"paymentSheetMerchantRewardsText"];
  paymentSheetMerchantRewardsText = self->_paymentSheetMerchantRewardsText;
  self->_paymentSheetMerchantRewardsText = v41;

  self->_suppressPaymentSheetRewardsHint = [v50 PKBoolForKey:@"suppressPaymentSheetRewardsHint"];
  v43 = [v50 PKDateForKey:@"paymentSheetOverrideStart"];
  paymentSheetOverrideStart = self->_paymentSheetOverrideStart;
  self->_paymentSheetOverrideStart = v43;

  v45 = [v50 PKDateForKey:@"paymentSheetOverrideEnd"];
  paymentSheetOverrideEnd = self->_paymentSheetOverrideEnd;
  self->_paymentSheetOverrideEnd = v45;

  v47 = [v50 objectForKey:@"enhancedRewardsProgramIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v48 = [v47 stringSetValue];
    enhancedRewardsProgramIdentifiers = self->_enhancedRewardsProgramIdentifiers;
    self->_enhancedRewardsProgramIdentifiers = v48;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PKAccountEnhancedMerchant *)self setEnhancedRewardsProgramIdentifiersFromJSONString:v47];
      goto LABEL_31;
    }

    enhancedRewardsProgramIdentifiers = self->_enhancedRewardsProgramIdentifiers;
    self->_enhancedRewardsProgramIdentifiers = 0;
  }

LABEL_31:
}

- (void)setBrandMUIDsFromJSONString:(id)a3
{
  if (a3)
  {
    v4 = [a3 jsonNonZeroUnsignedLongLongNSNumberSetValue];
  }

  else
  {
    v4 = 0;
  }

  brandMUIDs = self->_brandMUIDs;
  self->_brandMUIDs = v4;
}

- (void)setExcludedMUIDsFromJSONString:(id)a3
{
  if (a3)
  {
    v4 = [a3 jsonNonZeroUnsignedLongLongNSNumberSetValue];
  }

  else
  {
    v4 = 0;
  }

  excludedMUIDs = self->_excludedMUIDs;
  self->_excludedMUIDs = v4;
}

- (void)setPaymentIdentifiersFromJSONString:(id)a3
{
  if (a3)
  {
    v4 = [a3 jsonStringSetValue];
  }

  else
  {
    v4 = 0;
  }

  paymentIdentifiers = self->_paymentIdentifiers;
  self->_paymentIdentifiers = v4;
}

- (void)setEnhancedRewardsProgramIdentifiersFromJSONString:(id)a3
{
  if (a3)
  {
    v4 = [a3 jsonStringSetValue];
  }

  else
  {
    v4 = 0;
  }

  enhancedRewardsProgramIdentifiers = self->_enhancedRewardsProgramIdentifiers;
  self->_enhancedRewardsProgramIdentifiers = v4;
}

- (void)setMapsSearchStringsFromJSONString:(id)a3
{
  if (a3)
  {
    v4 = [a3 jsonStringSetValue];
  }

  else
  {
    v4 = 0;
  }

  mapsSearchStrings = self->_mapsSearchStrings;
  self->_mapsSearchStrings = v4;
}

- (id)hashedPaymentIdentifiers
{
  v2 = [(NSSet *)self->_paymentIdentifiers allObjects];
  v3 = [v2 pk_arrayBySafelyApplyingBlock:&__block_literal_global_225];

  v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];

  return v4;
}

id __53__PKAccountEnhancedMerchant_hashedPaymentIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 dataUsingEncoding:4];
  v3 = [v2 SHA256Hash];
  v4 = [v3 hexEncoding];
  v5 = [v4 lowercaseString];
  v6 = [v5 pk_stringIfNotEmpty];

  return v6;
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"privateIdentifier: '%@'; ", self->_privateIdentifier];
  [v3 appendFormat:@"name: '%@'; ", self->_name];
  v4 = [(NSString *)self->_detailedDescription truncatedStringWithEllipsis];
  [v3 appendFormat:@"description: '%@'; ", v4];

  [v3 appendFormat:@"logoImage: '%@'; ", self->_logoImage];
  [v3 appendFormat:@"iconImage: '%@'; ", self->_iconImage];
  [v3 appendFormat:@"adamID: '%@'; ", self->_adamID];
  v5 = [(NSSet *)self->_brandMUIDs jsonString];
  [v3 appendFormat:@"brandMUIDs: '%@'; ", v5];

  v6 = [(NSSet *)self->_excludedMUIDs jsonString];
  [v3 appendFormat:@"excludedMUIDs: '%@'; ", v6];

  v7 = [(NSURL *)self->_website absoluteString];
  [v3 appendFormat:@"website: '%@'; ", v7];

  v8 = [(NSURL *)self->_loyaltyPassURL absoluteString];
  [v3 appendFormat:@"loyaltyPassURL: '%@'; ", v8];

  v9 = [(NSSet *)self->_paymentIdentifiers jsonString];
  [v3 appendFormat:@"paymentIdentifiers: '%@'", v9];

  v10 = [(NSString *)self->_disclosures truncatedStringWithEllipsis];
  [v3 appendFormat:@"disclosures: '%@'", v10];

  [v3 appendFormat:@"mapsSearchText: '%@'", self->_mapsSearchText];
  v11 = [(NSSet *)self->_mapsSearchStrings jsonString];
  [v3 appendFormat:@"mapsSearchStrings: '%@'", v11];

  [v3 appendFormat:@"paymentSheetRewardsText: '%@'", self->_paymentSheetRewardsText];
  [v3 appendFormat:@"paymentSheetMerchantRewardsText: '%@'", self->_paymentSheetMerchantRewardsText];
  [v3 appendFormat:@"suppressPaymentSheetRewardsHint: '%d'", self->_suppressPaymentSheetRewardsHint];
  [v3 appendFormat:@"paymentSheetOverrideStart: '%@'", self->_paymentSheetOverrideStart];
  [v3 appendFormat:@"paymentSheetOverrideEnd: '%@'", self->_paymentSheetOverrideEnd];
  v12 = [(NSSet *)self->_enhancedRewardsProgramIdentifiers jsonString];
  [v3 appendFormat:@"enhancedRewardsProgramIdentifiers: '%@'", v12];

  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountEnhancedMerchant *)self isEqualToAccountEnhancedMerchant:v5];
  }

  return v6;
}

- (BOOL)isEqualToAccountEnhancedMerchant:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_89;
  }

  v6 = *(v4 + 2);
  v7 = self->_privateIdentifier;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {
      goto LABEL_88;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_89;
    }
  }

  v11 = *(v5 + 3);
  v7 = self->_name;
  v12 = v11;
  v9 = v12;
  if (v7 == v12)
  {
  }

  else
  {
    if (!v7 || !v12)
    {
      goto LABEL_88;
    }

    v13 = [(NSString *)v7 isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_89;
    }
  }

  v14 = *(v5 + 4);
  v7 = self->_detailedDescription;
  v15 = v14;
  v9 = v15;
  if (v7 == v15)
  {
  }

  else
  {
    if (!v7 || !v15)
    {
      goto LABEL_88;
    }

    v16 = [(NSString *)v7 isEqualToString:v15];

    if (!v16)
    {
      goto LABEL_89;
    }
  }

  logoImage = self->_logoImage;
  v18 = *(v5 + 5);
  if (logoImage && v18)
  {
    if (![(PKRemoteImageSet *)logoImage isEqual:?])
    {
      goto LABEL_89;
    }
  }

  else if (logoImage != v18)
  {
    goto LABEL_89;
  }

  iconImage = self->_iconImage;
  v20 = *(v5 + 6);
  if (iconImage && v20)
  {
    if (![(PKRemoteImageSet *)iconImage isEqual:?])
    {
      goto LABEL_89;
    }
  }

  else if (iconImage != v20)
  {
    goto LABEL_89;
  }

  adamID = self->_adamID;
  v22 = *(v5 + 7);
  if (adamID && v22)
  {
    if (([(NSNumber *)adamID isEqual:?]& 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (adamID != v22)
  {
    goto LABEL_89;
  }

  brandMUIDs = self->_brandMUIDs;
  v24 = *(v5 + 8);
  if (brandMUIDs && v24)
  {
    if (([(NSSet *)brandMUIDs isEqual:?]& 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (brandMUIDs != v24)
  {
    goto LABEL_89;
  }

  excludedMUIDs = self->_excludedMUIDs;
  v26 = *(v5 + 9);
  if (excludedMUIDs && v26)
  {
    if (([(NSSet *)excludedMUIDs isEqual:?]& 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (excludedMUIDs != v26)
  {
    goto LABEL_89;
  }

  website = self->_website;
  v28 = *(v5 + 10);
  if (website && v28)
  {
    if (([(NSURL *)website isEqual:?]& 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (website != v28)
  {
    goto LABEL_89;
  }

  loyaltyPassURL = self->_loyaltyPassURL;
  v30 = *(v5 + 11);
  if (loyaltyPassURL && v30)
  {
    if (([(NSURL *)loyaltyPassURL isEqual:?]& 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (loyaltyPassURL != v30)
  {
    goto LABEL_89;
  }

  paymentIdentifiers = self->_paymentIdentifiers;
  v32 = *(v5 + 12);
  if (paymentIdentifiers && v32)
  {
    if (([(NSSet *)paymentIdentifiers isEqual:?]& 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (paymentIdentifiers != v32)
  {
    goto LABEL_89;
  }

  v33 = *(v5 + 13);
  v7 = self->_disclosures;
  v34 = v33;
  v9 = v34;
  if (v7 == v34)
  {
  }

  else
  {
    if (!v7 || !v34)
    {
      goto LABEL_88;
    }

    v35 = [(NSString *)v7 isEqualToString:v34];

    if (!v35)
    {
      goto LABEL_89;
    }
  }

  v36 = *(v5 + 14);
  v7 = self->_mapsSearchText;
  v37 = v36;
  v9 = v37;
  if (v7 == v37)
  {
  }

  else
  {
    if (!v7 || !v37)
    {
      goto LABEL_88;
    }

    v38 = [(NSString *)v7 isEqualToString:v37];

    if (!v38)
    {
      goto LABEL_89;
    }
  }

  mapsSearchStrings = self->_mapsSearchStrings;
  v40 = *(v5 + 15);
  if (mapsSearchStrings && v40)
  {
    if (([(NSSet *)mapsSearchStrings isEqual:?]& 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (mapsSearchStrings != v40)
  {
    goto LABEL_89;
  }

  v41 = *(v5 + 16);
  v7 = self->_paymentSheetRewardsText;
  v42 = v41;
  v9 = v42;
  if (v7 == v42)
  {
  }

  else
  {
    if (!v7 || !v42)
    {
      goto LABEL_88;
    }

    v43 = [(NSString *)v7 isEqualToString:v42];

    if (!v43)
    {
      goto LABEL_89;
    }
  }

  v44 = *(v5 + 17);
  v7 = self->_paymentSheetMerchantRewardsText;
  v45 = v44;
  v9 = v45;
  if (v7 == v45)
  {

    goto LABEL_92;
  }

  if (!v7 || !v45)
  {
LABEL_88:

    goto LABEL_89;
  }

  v46 = [(NSString *)v7 isEqualToString:v45];

  if (!v46)
  {
    goto LABEL_89;
  }

LABEL_92:
  paymentSheetOverrideStart = self->_paymentSheetOverrideStart;
  v50 = *(v5 + 18);
  if (paymentSheetOverrideStart && v50)
  {
    if (([(NSDate *)paymentSheetOverrideStart isEqual:?]& 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (paymentSheetOverrideStart != v50)
  {
    goto LABEL_89;
  }

  paymentSheetOverrideEnd = self->_paymentSheetOverrideEnd;
  v52 = *(v5 + 19);
  if (!paymentSheetOverrideEnd || !v52)
  {
    if (paymentSheetOverrideEnd == v52)
    {
      goto LABEL_102;
    }

LABEL_89:
    v47 = 0;
    goto LABEL_90;
  }

  if (([(NSDate *)paymentSheetOverrideEnd isEqual:?]& 1) == 0)
  {
    goto LABEL_89;
  }

LABEL_102:
  if (self->_suppressPaymentSheetRewardsHint != v5[8])
  {
    goto LABEL_89;
  }

  enhancedRewardsProgramIdentifiers = self->_enhancedRewardsProgramIdentifiers;
  v54 = *(v5 + 20);
  if (enhancedRewardsProgramIdentifiers && v54)
  {
    v47 = [(NSSet *)enhancedRewardsProgramIdentifiers isEqual:?];
  }

  else
  {
    v47 = enhancedRewardsProgramIdentifiers == v54;
  }

LABEL_90:

  return v47;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_privateIdentifier];
  [v3 safelyAddObject:self->_name];
  [v3 safelyAddObject:self->_detailedDescription];
  [v3 safelyAddObject:self->_logoImage];
  [v3 safelyAddObject:self->_iconImage];
  [v3 safelyAddObject:self->_adamID];
  [v3 safelyAddObject:self->_brandMUIDs];
  [v3 safelyAddObject:self->_excludedMUIDs];
  [v3 safelyAddObject:self->_website];
  [v3 safelyAddObject:self->_loyaltyPassURL];
  [v3 safelyAddObject:self->_paymentIdentifiers];
  [v3 safelyAddObject:self->_disclosures];
  [v3 safelyAddObject:self->_mapsSearchText];
  [v3 safelyAddObject:self->_paymentSheetRewardsText];
  [v3 safelyAddObject:self->_paymentSheetMerchantRewardsText];
  [v3 safelyAddObject:self->_paymentSheetOverrideStart];
  [v3 safelyAddObject:self->_paymentSheetOverrideEnd];
  [v3 safelyAddObject:self->_enhancedRewardsProgramIdentifiers];
  [v3 safelyAddObject:self->_mapsSearchStrings];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_suppressPaymentSheetRewardsHint - v4 + 32 * v4;

  return v5;
}

- (PKAccountEnhancedMerchant)initWithCoder:(id)a3
{
  v4 = a3;
  v53.receiver = self;
  v53.super_class = PKAccountEnhancedMerchant;
  v5 = [(PKAccountEnhancedMerchant *)&v53 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privateIdentifier"];
    privateIdentifier = v5->_privateIdentifier;
    v5->_privateIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"description"];
    detailedDescription = v5->_detailedDescription;
    v5->_detailedDescription = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"logoImage"];
    logoImage = v5->_logoImage;
    v5->_logoImage = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconImage"];
    iconImage = v5->_iconImage;
    v5->_iconImage = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"adamID"];
    adamID = v5->_adamID;
    v5->_adamID = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v18 setWithObjects:{v19, v20, objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"brandMUIDs"];
    brandMUIDs = v5->_brandMUIDs;
    v5->_brandMUIDs = v22;

    v24 = [v4 decodeObjectOfClasses:v21 forKey:@"excludedMUIDs"];
    excludedMUIDs = v5->_excludedMUIDs;
    v5->_excludedMUIDs = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"website"];
    website = v5->_website;
    v5->_website = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"loyaltyPassURL"];
    loyaltyPassURL = v5->_loyaltyPassURL;
    v5->_loyaltyPassURL = v28;

    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = [v30 setWithObjects:{v31, v32, objc_opt_class(), 0}];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"paymentIdentifiers"];
    paymentIdentifiers = v5->_paymentIdentifiers;
    v5->_paymentIdentifiers = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"disclosures"];
    disclosures = v5->_disclosures;
    v5->_disclosures = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mapsSearchText"];
    mapsSearchText = v5->_mapsSearchText;
    v5->_mapsSearchText = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentSheetRewardsText"];
    paymentSheetRewardsText = v5->_paymentSheetRewardsText;
    v5->_paymentSheetRewardsText = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentSheetMerchantRewardsText"];
    paymentSheetMerchantRewardsText = v5->_paymentSheetMerchantRewardsText;
    v5->_paymentSheetMerchantRewardsText = v42;

    v5->_suppressPaymentSheetRewardsHint = [v4 decodeBoolForKey:@"suppressPaymentSheetRewardsHint"];
    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentSheetOverrideStart"];
    paymentSheetOverrideStart = v5->_paymentSheetOverrideStart;
    v5->_paymentSheetOverrideStart = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentSheetOverrideEnd"];
    paymentSheetOverrideEnd = v5->_paymentSheetOverrideEnd;
    v5->_paymentSheetOverrideEnd = v46;

    v48 = [v4 decodeObjectOfClasses:v33 forKey:@"enhancedRewardsProgramIdentifier"];
    enhancedRewardsProgramIdentifiers = v5->_enhancedRewardsProgramIdentifiers;
    v5->_enhancedRewardsProgramIdentifiers = v48;

    v50 = [v4 decodeObjectOfClasses:v33 forKey:@"mapsSearchStrings"];
    mapsSearchStrings = v5->_mapsSearchStrings;
    v5->_mapsSearchStrings = v50;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  privateIdentifier = self->_privateIdentifier;
  v5 = a3;
  [v5 encodeObject:privateIdentifier forKey:@"privateIdentifier"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_detailedDescription forKey:@"description"];
  [v5 encodeObject:self->_logoImage forKey:@"logoImage"];
  [v5 encodeObject:self->_iconImage forKey:@"iconImage"];
  [v5 encodeObject:self->_adamID forKey:@"adamID"];
  [v5 encodeObject:self->_brandMUIDs forKey:@"brandMUIDs"];
  [v5 encodeObject:self->_excludedMUIDs forKey:@"excludedMUIDs"];
  [v5 encodeObject:self->_website forKey:@"website"];
  [v5 encodeObject:self->_loyaltyPassURL forKey:@"loyaltyPassURL"];
  [v5 encodeObject:self->_paymentIdentifiers forKey:@"paymentIdentifiers"];
  [v5 encodeObject:self->_disclosures forKey:@"disclosures"];
  [v5 encodeObject:self->_mapsSearchText forKey:@"mapsSearchText"];
  [v5 encodeObject:self->_paymentSheetRewardsText forKey:@"paymentSheetRewardsText"];
  [v5 encodeObject:self->_paymentSheetMerchantRewardsText forKey:@"paymentSheetMerchantRewardsText"];
  [v5 encodeBool:self->_suppressPaymentSheetRewardsHint forKey:@"suppressPaymentSheetRewardsHint"];
  [v5 encodeObject:self->_paymentSheetOverrideStart forKey:@"paymentSheetOverrideStart"];
  [v5 encodeObject:self->_paymentSheetOverrideEnd forKey:@"paymentSheetOverrideEnd"];
  [v5 encodeObject:self->_enhancedRewardsProgramIdentifiers forKey:@"enhancedRewardsProgramIdentifier"];
  [v5 encodeObject:self->_mapsSearchStrings forKey:@"mapsSearchStrings"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_privateIdentifier copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_name copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_detailedDescription copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(PKRemoteImageSet *)self->_logoImage copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(PKRemoteImageSet *)self->_iconImage copyWithZone:a3];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  v16 = [(NSNumber *)self->_adamID copyWithZone:a3];
  v17 = *(v5 + 56);
  *(v5 + 56) = v16;

  v18 = [(NSSet *)self->_brandMUIDs deepCopyWithZone:a3];
  v19 = *(v5 + 64);
  *(v5 + 64) = v18;

  v20 = [(NSSet *)self->_excludedMUIDs deepCopyWithZone:a3];
  v21 = *(v5 + 72);
  *(v5 + 72) = v20;

  v22 = [(NSURL *)self->_website copyWithZone:a3];
  v23 = *(v5 + 80);
  *(v5 + 80) = v22;

  v24 = [(NSURL *)self->_loyaltyPassURL copyWithZone:a3];
  v25 = *(v5 + 88);
  *(v5 + 88) = v24;

  v26 = [(NSSet *)self->_paymentIdentifiers deepCopyWithZone:a3];
  v27 = *(v5 + 96);
  *(v5 + 96) = v26;

  v28 = [(NSString *)self->_disclosures copyWithZone:a3];
  v29 = *(v5 + 104);
  *(v5 + 104) = v28;

  v30 = [(NSString *)self->_mapsSearchText copyWithZone:a3];
  v31 = *(v5 + 112);
  *(v5 + 112) = v30;

  v32 = [(NSString *)self->_paymentSheetRewardsText copyWithZone:a3];
  v33 = *(v5 + 128);
  *(v5 + 128) = v32;

  v34 = [(NSString *)self->_paymentSheetMerchantRewardsText copyWithZone:a3];
  v35 = *(v5 + 136);
  *(v5 + 136) = v34;

  *(v5 + 8) = self->_suppressPaymentSheetRewardsHint;
  v36 = [(NSDate *)self->_paymentSheetOverrideStart copyWithZone:a3];
  v37 = *(v5 + 144);
  *(v5 + 144) = v36;

  v38 = [(NSDate *)self->_paymentSheetOverrideEnd copyWithZone:a3];
  v39 = *(v5 + 152);
  *(v5 + 152) = v38;

  v40 = [(NSSet *)self->_enhancedRewardsProgramIdentifiers deepCopyWithZone:a3];
  v41 = *(v5 + 160);
  *(v5 + 160) = v40;

  v42 = [(NSSet *)self->_mapsSearchStrings deepCopyWithZone:a3];
  v43 = *(v5 + 120);
  *(v5 + 120) = v42;

  return v5;
}

@end