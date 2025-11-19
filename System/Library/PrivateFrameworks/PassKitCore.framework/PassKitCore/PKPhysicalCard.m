@interface PKPhysicalCard
+ (BOOL)physicalCard:(id)a3 matchesActivationCode:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExpiredInCalendar:(id)a3;
- (PKPhysicalCard)initWithCoder:(id)a3;
- (PKPhysicalCard)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)expirationDateInCalendar:(id)a3;
- (id)formattedExpiration;
- (id)jsonDictionaryRepresentation;
- (id)latestOrderActivity;
- (id)latestShippingActivity;
- (id)shipmentTrackingURL;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPhysicalCard

- (PKPhysicalCard)initWithDictionary:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = PKPhysicalCard;
  v5 = [(PKPhysicalCard *)&v32 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 PKStringForKey:@"accountUserAltDSID"];
    accountUserAltDSID = v5->_accountUserAltDSID;
    v5->_accountUserAltDSID = v8;

    v10 = [v4 PKStringForKey:@"state"];
    v5->_state = PKPhysicalCardStateFromString(v10);

    v11 = [v4 PKStringForKey:@"FPANSuffix"];
    FPANSuffix = v5->_FPANSuffix;
    v5->_FPANSuffix = v11;

    v13 = [v4 PKStringForKey:@"trackingNumber"];
    trackingNumber = v5->_trackingNumber;
    v5->_trackingNumber = v13;

    v15 = [v4 PKStringForKey:@"shippingCompany"];
    shippingCompany = v5->_shippingCompany;
    v5->_shippingCompany = v15;

    v17 = [v4 PKDictionaryForKey:@"customizationOptions"];
    v18 = [v17 PKURLForKey:@"frontFaceImageURL"];
    frontFaceImageURL = v5->_frontFaceImageURL;
    v5->_frontFaceImageURL = v18;

    v20 = [v17 PKStringForKey:@"name"];
    nameOnCard = v5->_nameOnCard;
    v5->_nameOnCard = v20;

    v22 = [v4 PKDateForKey:@"lastUpdatedDate"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v22;

    v24 = MEMORY[0x1E695DFD8];
    v25 = [v4 PKArrayContaining:objc_opt_class() forKey:@"orderActivity"];
    v26 = [v25 pk_arrayByApplyingBlock:&__block_literal_global_56];
    v27 = [v24 setWithArray:v26];

    if ([v27 count])
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    objc_storeStrong(&v5->_orderActivity, v28);
    v29 = [v4 PKStringForKey:@"activationCodeHash"];
    activationCodeHash = v5->_activationCodeHash;
    v5->_activationCodeHash = v29;

    v5->_expirationMonth = [v4 PKIntegerForKey:@"expirationMonth"];
    v5->_expirationYear = [v4 PKIntegerForKey:@"expirationYear"];
  }

  return v5;
}

PKPhysicalCardOrderActivityEvent *__37__PKPhysicalCard_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKPhysicalCardOrderActivityEvent alloc] initWithDictionary:v2];

  return v3;
}

- (id)latestOrderActivity
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_orderActivity;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if (v5)
        {
          v9 = [*(*(&v14 + 1) + 8 * i) date];
          v10 = [v5 date];
          v11 = [v9 compare:v10];

          if (v11 != 1)
          {
            continue;
          }
        }

        v12 = v8;

        v5 = v12;
      }

      v4 = [(NSSet *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)latestShippingActivity
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_shippingActivity;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if (v5)
        {
          v9 = [*(*(&v14 + 1) + 8 * i) timestamp];
          v10 = [v5 timestamp];
          v11 = [v9 compare:v10];

          if (v11 != 1)
          {
            continue;
          }
        }

        v12 = v8;

        v5 = v12;
      }

      v4 = [(NSSet *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)physicalCard:(id)a3 matchesActivationCode:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 identifier];
  v8 = v7;
  LOBYTE(v9) = 0;
  if (v5 && v6 && v7)
  {
    v10 = [v5 activationCodeHash];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v6, v8];
    v12 = [v11 dataUsingEncoding:4];
    v9 = v12;
    if (v12)
    {
      v13 = [v12 SHA256Hash];

      v14 = [v13 hexEncoding];
      v15 = v10;
      v16 = v14;
      v17 = v16;
      if (v15 == v16)
      {
        LOBYTE(v9) = 1;
      }

      else
      {
        LOBYTE(v9) = 0;
        if (v15 && v16)
        {
          LOBYTE(v9) = [v15 isEqualToString:v16];
        }
      }
    }
  }

  return v9;
}

- (PKPhysicalCard)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = PKPhysicalCard;
  v5 = [(PKPhysicalCard *)&v35 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountUserAltDSID"];
    accountUserAltDSID = v5->_accountUserAltDSID;
    v5->_accountUserAltDSID = v8;

    v5->_state = [v4 decodeIntegerForKey:@"state"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FPANSuffix"];
    FPANSuffix = v5->_FPANSuffix;
    v5->_FPANSuffix = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"frontFaceImageURL"];
    frontFaceImageURL = v5->_frontFaceImageURL;
    v5->_frontFaceImageURL = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    nameOnCard = v5->_nameOnCard;
    v5->_nameOnCard = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedDate"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"orderActivity"];
    orderActivity = v5->_orderActivity;
    v5->_orderActivity = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"shippingActivity"];
    shippingActivity = v5->_shippingActivity;
    v5->_shippingActivity = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trackingNumber"];
    trackingNumber = v5->_trackingNumber;
    v5->_trackingNumber = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shippingCompany"];
    shippingCompany = v5->_shippingCompany;
    v5->_shippingCompany = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activationCodeHash"];
    activationCodeHash = v5->_activationCodeHash;
    v5->_activationCodeHash = v32;

    v5->_expirationMonth = [v4 decodeIntegerForKey:@"expirationMonth"];
    v5->_expirationYear = [v4 decodeIntegerForKey:@"expirationYear"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_accountUserAltDSID forKey:@"accountUserAltDSID"];
  [v5 encodeInteger:self->_state forKey:@"state"];
  [v5 encodeObject:self->_FPANSuffix forKey:@"FPANSuffix"];
  [v5 encodeObject:self->_frontFaceImageURL forKey:@"frontFaceImageURL"];
  [v5 encodeObject:self->_nameOnCard forKey:@"name"];
  [v5 encodeObject:self->_lastUpdated forKey:@"lastUpdatedDate"];
  [v5 encodeObject:self->_orderActivity forKey:@"orderActivity"];
  [v5 encodeObject:self->_shippingActivity forKey:@"shippingActivity"];
  [v5 encodeObject:self->_trackingNumber forKey:@"trackingNumber"];
  [v5 encodeObject:self->_shippingCompany forKey:@"shippingCompany"];
  [v5 encodeObject:self->_activationCodeHash forKey:@"activationCodeHash"];
  [v5 encodeInteger:self->_expirationMonth forKey:@"expirationMonth"];
  [v5 encodeInteger:self->_expirationYear forKey:@"expirationYear"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_60;
  }

  identifier = self->_identifier;
  v6 = v4[1];
  if (identifier && v6)
  {
    if (([(NSString *)identifier isEqual:?]& 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (identifier != v6)
  {
    goto LABEL_60;
  }

  accountUserAltDSID = self->_accountUserAltDSID;
  v8 = v4[2];
  if (accountUserAltDSID && v8)
  {
    if (([(NSString *)accountUserAltDSID isEqual:?]& 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (accountUserAltDSID != v8)
  {
    goto LABEL_60;
  }

  frontFaceImageURL = self->_frontFaceImageURL;
  v10 = v4[5];
  if (frontFaceImageURL && v10)
  {
    if (([(NSURL *)frontFaceImageURL isEqual:?]& 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (frontFaceImageURL != v10)
  {
    goto LABEL_60;
  }

  nameOnCard = self->_nameOnCard;
  v12 = v4[6];
  if (nameOnCard && v12)
  {
    if (([(NSString *)nameOnCard isEqual:?]& 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (nameOnCard != v12)
  {
    goto LABEL_60;
  }

  lastUpdated = self->_lastUpdated;
  v14 = v4[7];
  if (lastUpdated && v14)
  {
    if (([(NSDate *)lastUpdated isEqual:?]& 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (lastUpdated != v14)
  {
    goto LABEL_60;
  }

  FPANSuffix = self->_FPANSuffix;
  v16 = v4[4];
  if (FPANSuffix && v16)
  {
    if (([(NSString *)FPANSuffix isEqual:?]& 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (FPANSuffix != v16)
  {
    goto LABEL_60;
  }

  trackingNumber = self->_trackingNumber;
  v18 = v4[8];
  if (trackingNumber && v18)
  {
    if (([(NSString *)trackingNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (trackingNumber != v18)
  {
    goto LABEL_60;
  }

  shippingCompany = self->_shippingCompany;
  v20 = v4[9];
  if (shippingCompany && v20)
  {
    if (([(NSString *)shippingCompany isEqual:?]& 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (shippingCompany != v20)
  {
    goto LABEL_60;
  }

  orderActivity = self->_orderActivity;
  v22 = v4[10];
  if (orderActivity && v22)
  {
    if (([(NSSet *)orderActivity isEqual:?]& 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (orderActivity != v22)
  {
    goto LABEL_60;
  }

  shippingActivity = self->_shippingActivity;
  v24 = v4[11];
  if (shippingActivity && v24)
  {
    if (([(NSSet *)shippingActivity isEqual:?]& 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (shippingActivity != v24)
  {
    goto LABEL_60;
  }

  if (self->_state != v4[3])
  {
    goto LABEL_60;
  }

  activationCodeHash = self->_activationCodeHash;
  v26 = v4[12];
  if (!activationCodeHash || !v26)
  {
    if (activationCodeHash == v26)
    {
      goto LABEL_58;
    }

LABEL_60:
    v27 = 0;
    goto LABEL_61;
  }

  if (([(NSString *)activationCodeHash isEqual:?]& 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_58:
  if (self->_expirationMonth != v4[13])
  {
    goto LABEL_60;
  }

  v27 = self->_expirationYear == v4[14];
LABEL_61:

  return v27;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_accountUserAltDSID];
  [v3 safelyAddObject:self->_frontFaceImageURL];
  [v3 safelyAddObject:self->_nameOnCard];
  [v3 safelyAddObject:self->_lastUpdated];
  [v3 safelyAddObject:self->_FPANSuffix];
  [v3 safelyAddObject:self->_orderActivity];
  [v3 safelyAddObject:self->_shippingActivity];
  [v3 safelyAddObject:self->_trackingNumber];
  [v3 safelyAddObject:self->_shippingCompany];
  [v3 safelyAddObject:self->_activationCodeHash];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_state - v4 + 32 * v4;
  v6 = self->_expirationMonth - v5 + 32 * v5;
  v7 = self->_expirationYear - v6 + 32 * v6;

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"accountUserAltDSID: '%@'; ", self->_accountUserAltDSID];
  v4 = self->_state - 1;
  if (v4 > 4)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E79CE920[v4];
  }

  [v3 appendFormat:@"state: '%@'; ", v5];
  v6 = [(NSURL *)self->_frontFaceImageURL description];
  [v3 appendFormat:@"frontFaceImageURL: '%@'; ", v6];

  v7 = [(NSString *)self->_nameOnCard description];
  [v3 appendFormat:@"nameOnCard: '%@'; ", v7];

  v8 = [(NSDate *)self->_lastUpdated description];
  [v3 appendFormat:@"lastUpdated: '%@'; ", v8];

  v9 = [(NSString *)self->_FPANSuffix description];
  [v3 appendFormat:@"FPANSuffix: '%@'; ", v9];

  v10 = [(NSSet *)self->_orderActivity description];
  [v3 appendFormat:@"orderActivity: '%@'; ", v10];

  v11 = [(NSSet *)self->_shippingActivity description];
  [v3 appendFormat:@"shippingActivity: '%@'; ", v11];

  v12 = [(NSString *)self->_activationCodeHash description];
  [v3 appendFormat:@"activationCodeHash: '%@'; ", v12];

  [v3 appendFormat:@"expirationMonth: %lu; ", self->_expirationMonth];
  [v3 appendFormat:@"expirationYear: %lu; ", self->_expirationYear];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPhysicalCard allocWithZone:](PKPhysicalCard init];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(NSString *)self->_accountUserAltDSID copyWithZone:a3];
  accountUserAltDSID = v5->_accountUserAltDSID;
  v5->_accountUserAltDSID = v8;

  v5->_state = self->_state;
  v10 = [(NSURL *)self->_frontFaceImageURL copyWithZone:a3];
  frontFaceImageURL = v5->_frontFaceImageURL;
  v5->_frontFaceImageURL = v10;

  v12 = [(NSString *)self->_nameOnCard copyWithZone:a3];
  nameOnCard = v5->_nameOnCard;
  v5->_nameOnCard = v12;

  v14 = [(NSDate *)self->_lastUpdated copyWithZone:a3];
  lastUpdated = v5->_lastUpdated;
  v5->_lastUpdated = v14;

  v16 = [(NSString *)self->_FPANSuffix copyWithZone:a3];
  FPANSuffix = v5->_FPANSuffix;
  v5->_FPANSuffix = v16;

  v18 = [(NSString *)self->_trackingNumber copyWithZone:a3];
  trackingNumber = v5->_trackingNumber;
  v5->_trackingNumber = v18;

  v20 = [(NSString *)self->_shippingCompany copyWithZone:a3];
  shippingCompany = v5->_shippingCompany;
  v5->_shippingCompany = v20;

  v22 = [(NSSet *)self->_orderActivity copyWithZone:a3];
  orderActivity = v5->_orderActivity;
  v5->_orderActivity = v22;

  v24 = [(NSSet *)self->_shippingActivity copyWithZone:a3];
  shippingActivity = v5->_shippingActivity;
  v5->_shippingActivity = v24;

  v26 = [(NSString *)self->_activationCodeHash copyWithZone:a3];
  activationCodeHash = v5->_activationCodeHash;
  v5->_activationCodeHash = v26;

  v5->_expirationMonth = self->_expirationMonth;
  v5->_expirationYear = self->_expirationYear;
  return v5;
}

- (id)jsonDictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKeyedSubscript:@"identifier"];
  }

  v6 = self->_state - 1;
  if (v6 > 4)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = off_1E79CE920[v6];
  }

  [v4 setObject:v7 forKeyedSubscript:@"state"];
  v8 = [MEMORY[0x1E695DF90] dictionary];
  frontFaceImageURL = self->_frontFaceImageURL;
  if (frontFaceImageURL)
  {
    v10 = [(NSURL *)frontFaceImageURL absoluteString];
    [v8 setObject:v10 forKeyedSubscript:@"frontFaceImageURL"];
  }

  nameOnCard = self->_nameOnCard;
  if (nameOnCard)
  {
    [v8 setObject:nameOnCard forKeyedSubscript:@"name"];
  }

  [v4 setObject:v8 forKeyedSubscript:@"customizationOptions"];
  v12 = [v4 copy];

  return v12;
}

- (id)shipmentTrackingURL
{
  if ([(NSString *)self->_shippingCompany length]&& [(NSString *)self->_trackingNumber length])
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://trackingshipment.apple.com/?Company=%@&TrackingNumber=%@", self->_shippingCompany, self->_trackingNumber];
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)formattedExpiration
{
  expirationYear = self->_expirationYear;
  if (expirationYear && (expirationMonth = self->_expirationMonth) != 0)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02lu/%lu", expirationMonth, expirationYear];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isExpiredInCalendar:(id)a3
{
  v4 = [(PKPhysicalCard *)self expirationDateInCalendar:a3];
  if (v4 && self->_state == 5)
  {
    v5 = [MEMORY[0x1E695DF00] now];
    [v5 timeIntervalSinceDate:v4];
    v7 = v6 > 0.0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)expirationDateInCalendar:(id)a3
{
  v4 = a3;
  if (self->_expirationYear && self->_expirationMonth)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v5 setYear:self->_expirationYear];
    [v5 setMonth:self->_expirationMonth + 1];
    [v5 setSecond:-1];
    v6 = [v4 dateFromComponents:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end