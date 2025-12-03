@interface PKAccountEnhancedMerchant
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAccountEnhancedMerchant:(id)merchant;
- (NSString)description;
- (PKAccountEnhancedMerchant)init;
- (PKAccountEnhancedMerchant)initWithCoder:(id)coder;
- (PKAccountEnhancedMerchant)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)hashedPaymentIdentifiers;
- (unint64_t)hash;
- (void)_initWithMerchantDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
- (void)setBrandMUIDsFromJSONString:(id)string;
- (void)setEnhancedRewardsProgramIdentifiersFromJSONString:(id)string;
- (void)setExcludedMUIDsFromJSONString:(id)string;
- (void)setMapsSearchStringsFromJSONString:(id)string;
- (void)setPaymentIdentifiersFromJSONString:(id)string;
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

- (PKAccountEnhancedMerchant)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v9.receiver = self;
    v9.super_class = PKAccountEnhancedMerchant;
    v5 = [(PKAccountEnhancedMerchant *)&v9 init];
    v6 = v5;
    if (v5)
    {
      [(PKAccountEnhancedMerchant *)v5 _initWithMerchantDictionary:dictionaryCopy];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_initWithMerchantDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy PKStringForKey:@"privateIdentifier"];
  privateIdentifier = self->_privateIdentifier;
  self->_privateIdentifier = v4;

  v6 = [dictionaryCopy PKStringForKey:@"name"];
  name = self->_name;
  self->_name = v6;

  v8 = [dictionaryCopy PKStringForKey:@"description"];
  detailedDescription = self->_detailedDescription;
  self->_detailedDescription = v8;

  v10 = [dictionaryCopy PKArrayForKey:@"logoImage"];
  v11 = [[PKRemoteImageSet alloc] initWithName:@"logoImage" dictionaries:v10];
  logoImage = self->_logoImage;
  self->_logoImage = v11;

  v13 = [dictionaryCopy PKArrayForKey:@"iconImage"];
  v14 = [[PKRemoteImageSet alloc] initWithName:@"iconImage" dictionaries:v13];
  iconImage = self->_iconImage;
  self->_iconImage = v14;

  v16 = [dictionaryCopy PKStringForKey:@"adamID"];
  nonZeroUnsignedLongLongNSNumberValue = [v16 nonZeroUnsignedLongLongNSNumberValue];
  adamID = self->_adamID;
  self->_adamID = nonZeroUnsignedLongLongNSNumberValue;

  v19 = [dictionaryCopy objectForKey:@"brandMUIDs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    nonZeroUnsignedLongLongSetValue = [v19 nonZeroUnsignedLongLongSetValue];
    brandMUIDs = self->_brandMUIDs;
    self->_brandMUIDs = nonZeroUnsignedLongLongSetValue;
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
  v22 = [dictionaryCopy objectForKey:@"excludedMUIDs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    nonZeroUnsignedLongLongSetValue2 = [v22 nonZeroUnsignedLongLongSetValue];
    excludedMUIDs = self->_excludedMUIDs;
    self->_excludedMUIDs = nonZeroUnsignedLongLongSetValue2;
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
  v25 = [dictionaryCopy PKURLForKey:@"website"];
  website = self->_website;
  self->_website = v25;

  v27 = [dictionaryCopy PKURLForKey:@"loyaltyPassURL"];
  loyaltyPassURL = self->_loyaltyPassURL;
  self->_loyaltyPassURL = v27;

  v29 = [dictionaryCopy objectForKey:@"paymentIdentifiers"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringSetValue = [v29 stringSetValue];
    paymentIdentifiers = self->_paymentIdentifiers;
    self->_paymentIdentifiers = stringSetValue;
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
  v32 = [dictionaryCopy objectForKey:@"mapsSearchStrings"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringSetValue2 = [v32 stringSetValue];
    mapsSearchStrings = self->_mapsSearchStrings;
    self->_mapsSearchStrings = stringSetValue2;
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
  v35 = [dictionaryCopy PKStringForKey:@"disclosures"];
  disclosures = self->_disclosures;
  self->_disclosures = v35;

  v37 = [dictionaryCopy PKStringForKey:@"mapsSearchText"];
  mapsSearchText = self->_mapsSearchText;
  self->_mapsSearchText = v37;

  v39 = [dictionaryCopy PKStringForKey:@"paymentSheetRewardsText"];
  paymentSheetRewardsText = self->_paymentSheetRewardsText;
  self->_paymentSheetRewardsText = v39;

  v41 = [dictionaryCopy PKStringForKey:@"paymentSheetMerchantRewardsText"];
  paymentSheetMerchantRewardsText = self->_paymentSheetMerchantRewardsText;
  self->_paymentSheetMerchantRewardsText = v41;

  self->_suppressPaymentSheetRewardsHint = [dictionaryCopy PKBoolForKey:@"suppressPaymentSheetRewardsHint"];
  v43 = [dictionaryCopy PKDateForKey:@"paymentSheetOverrideStart"];
  paymentSheetOverrideStart = self->_paymentSheetOverrideStart;
  self->_paymentSheetOverrideStart = v43;

  v45 = [dictionaryCopy PKDateForKey:@"paymentSheetOverrideEnd"];
  paymentSheetOverrideEnd = self->_paymentSheetOverrideEnd;
  self->_paymentSheetOverrideEnd = v45;

  v47 = [dictionaryCopy objectForKey:@"enhancedRewardsProgramIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringSetValue3 = [v47 stringSetValue];
    enhancedRewardsProgramIdentifiers = self->_enhancedRewardsProgramIdentifiers;
    self->_enhancedRewardsProgramIdentifiers = stringSetValue3;
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

- (void)setBrandMUIDsFromJSONString:(id)string
{
  if (string)
  {
    jsonNonZeroUnsignedLongLongNSNumberSetValue = [string jsonNonZeroUnsignedLongLongNSNumberSetValue];
  }

  else
  {
    jsonNonZeroUnsignedLongLongNSNumberSetValue = 0;
  }

  brandMUIDs = self->_brandMUIDs;
  self->_brandMUIDs = jsonNonZeroUnsignedLongLongNSNumberSetValue;
}

- (void)setExcludedMUIDsFromJSONString:(id)string
{
  if (string)
  {
    jsonNonZeroUnsignedLongLongNSNumberSetValue = [string jsonNonZeroUnsignedLongLongNSNumberSetValue];
  }

  else
  {
    jsonNonZeroUnsignedLongLongNSNumberSetValue = 0;
  }

  excludedMUIDs = self->_excludedMUIDs;
  self->_excludedMUIDs = jsonNonZeroUnsignedLongLongNSNumberSetValue;
}

- (void)setPaymentIdentifiersFromJSONString:(id)string
{
  if (string)
  {
    jsonStringSetValue = [string jsonStringSetValue];
  }

  else
  {
    jsonStringSetValue = 0;
  }

  paymentIdentifiers = self->_paymentIdentifiers;
  self->_paymentIdentifiers = jsonStringSetValue;
}

- (void)setEnhancedRewardsProgramIdentifiersFromJSONString:(id)string
{
  if (string)
  {
    jsonStringSetValue = [string jsonStringSetValue];
  }

  else
  {
    jsonStringSetValue = 0;
  }

  enhancedRewardsProgramIdentifiers = self->_enhancedRewardsProgramIdentifiers;
  self->_enhancedRewardsProgramIdentifiers = jsonStringSetValue;
}

- (void)setMapsSearchStringsFromJSONString:(id)string
{
  if (string)
  {
    jsonStringSetValue = [string jsonStringSetValue];
  }

  else
  {
    jsonStringSetValue = 0;
  }

  mapsSearchStrings = self->_mapsSearchStrings;
  self->_mapsSearchStrings = jsonStringSetValue;
}

- (id)hashedPaymentIdentifiers
{
  allObjects = [(NSSet *)self->_paymentIdentifiers allObjects];
  v3 = [allObjects pk_arrayBySafelyApplyingBlock:&__block_literal_global_225];

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
  truncatedStringWithEllipsis = [(NSString *)self->_detailedDescription truncatedStringWithEllipsis];
  [v3 appendFormat:@"description: '%@'; ", truncatedStringWithEllipsis];

  [v3 appendFormat:@"logoImage: '%@'; ", self->_logoImage];
  [v3 appendFormat:@"iconImage: '%@'; ", self->_iconImage];
  [v3 appendFormat:@"adamID: '%@'; ", self->_adamID];
  jsonString = [(NSSet *)self->_brandMUIDs jsonString];
  [v3 appendFormat:@"brandMUIDs: '%@'; ", jsonString];

  jsonString2 = [(NSSet *)self->_excludedMUIDs jsonString];
  [v3 appendFormat:@"excludedMUIDs: '%@'; ", jsonString2];

  absoluteString = [(NSURL *)self->_website absoluteString];
  [v3 appendFormat:@"website: '%@'; ", absoluteString];

  absoluteString2 = [(NSURL *)self->_loyaltyPassURL absoluteString];
  [v3 appendFormat:@"loyaltyPassURL: '%@'; ", absoluteString2];

  jsonString3 = [(NSSet *)self->_paymentIdentifiers jsonString];
  [v3 appendFormat:@"paymentIdentifiers: '%@'", jsonString3];

  truncatedStringWithEllipsis2 = [(NSString *)self->_disclosures truncatedStringWithEllipsis];
  [v3 appendFormat:@"disclosures: '%@'", truncatedStringWithEllipsis2];

  [v3 appendFormat:@"mapsSearchText: '%@'", self->_mapsSearchText];
  jsonString4 = [(NSSet *)self->_mapsSearchStrings jsonString];
  [v3 appendFormat:@"mapsSearchStrings: '%@'", jsonString4];

  [v3 appendFormat:@"paymentSheetRewardsText: '%@'", self->_paymentSheetRewardsText];
  [v3 appendFormat:@"paymentSheetMerchantRewardsText: '%@'", self->_paymentSheetMerchantRewardsText];
  [v3 appendFormat:@"suppressPaymentSheetRewardsHint: '%d'", self->_suppressPaymentSheetRewardsHint];
  [v3 appendFormat:@"paymentSheetOverrideStart: '%@'", self->_paymentSheetOverrideStart];
  [v3 appendFormat:@"paymentSheetOverrideEnd: '%@'", self->_paymentSheetOverrideEnd];
  jsonString5 = [(NSSet *)self->_enhancedRewardsProgramIdentifiers jsonString];
  [v3 appendFormat:@"enhancedRewardsProgramIdentifiers: '%@'", jsonString5];

  [v3 appendFormat:@">"];

  return v3;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountEnhancedMerchant *)self isEqualToAccountEnhancedMerchant:v5];
  }

  return v6;
}

- (BOOL)isEqualToAccountEnhancedMerchant:(id)merchant
{
  merchantCopy = merchant;
  v5 = merchantCopy;
  if (!merchantCopy)
  {
    goto LABEL_89;
  }

  v6 = *(merchantCopy + 2);
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

- (PKAccountEnhancedMerchant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v53.receiver = self;
  v53.super_class = PKAccountEnhancedMerchant;
  v5 = [(PKAccountEnhancedMerchant *)&v53 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privateIdentifier"];
    privateIdentifier = v5->_privateIdentifier;
    v5->_privateIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"description"];
    detailedDescription = v5->_detailedDescription;
    v5->_detailedDescription = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"logoImage"];
    logoImage = v5->_logoImage;
    v5->_logoImage = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconImage"];
    iconImage = v5->_iconImage;
    v5->_iconImage = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"adamID"];
    adamID = v5->_adamID;
    v5->_adamID = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v18 setWithObjects:{v19, v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"brandMUIDs"];
    brandMUIDs = v5->_brandMUIDs;
    v5->_brandMUIDs = v22;

    v24 = [coderCopy decodeObjectOfClasses:v21 forKey:@"excludedMUIDs"];
    excludedMUIDs = v5->_excludedMUIDs;
    v5->_excludedMUIDs = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"website"];
    website = v5->_website;
    v5->_website = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"loyaltyPassURL"];
    loyaltyPassURL = v5->_loyaltyPassURL;
    v5->_loyaltyPassURL = v28;

    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = [v30 setWithObjects:{v31, v32, objc_opt_class(), 0}];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"paymentIdentifiers"];
    paymentIdentifiers = v5->_paymentIdentifiers;
    v5->_paymentIdentifiers = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"disclosures"];
    disclosures = v5->_disclosures;
    v5->_disclosures = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mapsSearchText"];
    mapsSearchText = v5->_mapsSearchText;
    v5->_mapsSearchText = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentSheetRewardsText"];
    paymentSheetRewardsText = v5->_paymentSheetRewardsText;
    v5->_paymentSheetRewardsText = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentSheetMerchantRewardsText"];
    paymentSheetMerchantRewardsText = v5->_paymentSheetMerchantRewardsText;
    v5->_paymentSheetMerchantRewardsText = v42;

    v5->_suppressPaymentSheetRewardsHint = [coderCopy decodeBoolForKey:@"suppressPaymentSheetRewardsHint"];
    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentSheetOverrideStart"];
    paymentSheetOverrideStart = v5->_paymentSheetOverrideStart;
    v5->_paymentSheetOverrideStart = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentSheetOverrideEnd"];
    paymentSheetOverrideEnd = v5->_paymentSheetOverrideEnd;
    v5->_paymentSheetOverrideEnd = v46;

    v48 = [coderCopy decodeObjectOfClasses:v33 forKey:@"enhancedRewardsProgramIdentifier"];
    enhancedRewardsProgramIdentifiers = v5->_enhancedRewardsProgramIdentifiers;
    v5->_enhancedRewardsProgramIdentifiers = v48;

    v50 = [coderCopy decodeObjectOfClasses:v33 forKey:@"mapsSearchStrings"];
    mapsSearchStrings = v5->_mapsSearchStrings;
    v5->_mapsSearchStrings = v50;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  privateIdentifier = self->_privateIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:privateIdentifier forKey:@"privateIdentifier"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_detailedDescription forKey:@"description"];
  [coderCopy encodeObject:self->_logoImage forKey:@"logoImage"];
  [coderCopy encodeObject:self->_iconImage forKey:@"iconImage"];
  [coderCopy encodeObject:self->_adamID forKey:@"adamID"];
  [coderCopy encodeObject:self->_brandMUIDs forKey:@"brandMUIDs"];
  [coderCopy encodeObject:self->_excludedMUIDs forKey:@"excludedMUIDs"];
  [coderCopy encodeObject:self->_website forKey:@"website"];
  [coderCopy encodeObject:self->_loyaltyPassURL forKey:@"loyaltyPassURL"];
  [coderCopy encodeObject:self->_paymentIdentifiers forKey:@"paymentIdentifiers"];
  [coderCopy encodeObject:self->_disclosures forKey:@"disclosures"];
  [coderCopy encodeObject:self->_mapsSearchText forKey:@"mapsSearchText"];
  [coderCopy encodeObject:self->_paymentSheetRewardsText forKey:@"paymentSheetRewardsText"];
  [coderCopy encodeObject:self->_paymentSheetMerchantRewardsText forKey:@"paymentSheetMerchantRewardsText"];
  [coderCopy encodeBool:self->_suppressPaymentSheetRewardsHint forKey:@"suppressPaymentSheetRewardsHint"];
  [coderCopy encodeObject:self->_paymentSheetOverrideStart forKey:@"paymentSheetOverrideStart"];
  [coderCopy encodeObject:self->_paymentSheetOverrideEnd forKey:@"paymentSheetOverrideEnd"];
  [coderCopy encodeObject:self->_enhancedRewardsProgramIdentifiers forKey:@"enhancedRewardsProgramIdentifier"];
  [coderCopy encodeObject:self->_mapsSearchStrings forKey:@"mapsSearchStrings"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_privateIdentifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_name copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_detailedDescription copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(PKRemoteImageSet *)self->_logoImage copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(PKRemoteImageSet *)self->_iconImage copyWithZone:zone];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  v16 = [(NSNumber *)self->_adamID copyWithZone:zone];
  v17 = *(v5 + 56);
  *(v5 + 56) = v16;

  v18 = [(NSSet *)self->_brandMUIDs deepCopyWithZone:zone];
  v19 = *(v5 + 64);
  *(v5 + 64) = v18;

  v20 = [(NSSet *)self->_excludedMUIDs deepCopyWithZone:zone];
  v21 = *(v5 + 72);
  *(v5 + 72) = v20;

  v22 = [(NSURL *)self->_website copyWithZone:zone];
  v23 = *(v5 + 80);
  *(v5 + 80) = v22;

  v24 = [(NSURL *)self->_loyaltyPassURL copyWithZone:zone];
  v25 = *(v5 + 88);
  *(v5 + 88) = v24;

  v26 = [(NSSet *)self->_paymentIdentifiers deepCopyWithZone:zone];
  v27 = *(v5 + 96);
  *(v5 + 96) = v26;

  v28 = [(NSString *)self->_disclosures copyWithZone:zone];
  v29 = *(v5 + 104);
  *(v5 + 104) = v28;

  v30 = [(NSString *)self->_mapsSearchText copyWithZone:zone];
  v31 = *(v5 + 112);
  *(v5 + 112) = v30;

  v32 = [(NSString *)self->_paymentSheetRewardsText copyWithZone:zone];
  v33 = *(v5 + 128);
  *(v5 + 128) = v32;

  v34 = [(NSString *)self->_paymentSheetMerchantRewardsText copyWithZone:zone];
  v35 = *(v5 + 136);
  *(v5 + 136) = v34;

  *(v5 + 8) = self->_suppressPaymentSheetRewardsHint;
  v36 = [(NSDate *)self->_paymentSheetOverrideStart copyWithZone:zone];
  v37 = *(v5 + 144);
  *(v5 + 144) = v36;

  v38 = [(NSDate *)self->_paymentSheetOverrideEnd copyWithZone:zone];
  v39 = *(v5 + 152);
  *(v5 + 152) = v38;

  v40 = [(NSSet *)self->_enhancedRewardsProgramIdentifiers deepCopyWithZone:zone];
  v41 = *(v5 + 160);
  *(v5 + 160) = v40;

  v42 = [(NSSet *)self->_mapsSearchStrings deepCopyWithZone:zone];
  v43 = *(v5 + 120);
  *(v5 + 120) = v42;

  return v5;
}

@end