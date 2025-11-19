@interface PKDiscoveryObject
+ (id)convertEngagementRequestToDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)updateWithDiscoveryObject:(id)a3;
- (PKDiscoveryObject)initWithCoder:(id)a3;
- (PKDiscoveryObject)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updatedStatusForAction:(int64_t)a3;
@end

@implementation PKDiscoveryObject

+ (id)convertEngagementRequestToDictionary:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [a3 clientData];
  v4 = [v3 objectForKeyedSubscript:@"identifier"];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E695DF90]);
    v13 = @"identifier";
    v6 = [v3 objectForKeyedSubscript:@"identifier"];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = [v5 initWithDictionary:v7];

    v9 = [v3 objectForKeyedSubscript:@"maxViewCount"];
    [v8 setObject:v9 forKeyedSubscript:@"maxViewCount"];

    v10 = [v3 objectForKeyedSubscript:@"maxViewCountLarge"];
    [v8 setObject:v10 forKeyedSubscript:@"maxViewCountLargeCard"];

    v11 = [v8 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (PKDiscoveryObject)initWithDictionary:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = PKDiscoveryObject;
  v5 = [(PKDiscoveryObject *)&v26 init];
  if (!v5)
  {
LABEL_12:
    v22 = v5;
    goto LABEL_16;
  }

  v6 = [v4 PKStringForKey:@"identifier"];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  if ([(NSString *)v5->_identifier length])
  {
    v5->_version = [v4 PKIntegerForKey:@"version"];
    v8 = [v4 PKStringForKey:@"ruleIdentifier"];
    ruleIdentifier = v5->_ruleIdentifier;
    v5->_ruleIdentifier = v8;

    v10 = [v4 PKStringForKey:@"trigger"];
    triggerRuleIdentifier = v5->_triggerRuleIdentifier;
    v5->_triggerRuleIdentifier = v10;

    v12 = 5;
    if (!v5->_triggerRuleIdentifier)
    {
      v12 = 1;
    }

    v5->_status = v12;
    v13 = [v4 PKDictionaryForKey:@"osVersionRange"];
    if (v13)
    {
      v14 = [[PKOSVersionRequirementRange alloc] initWithDictionary:v13];
      osVersionRange = v5->_osVersionRange;
      v5->_osVersionRange = v14;
    }

    v16 = [v4 PKDictionaryForKey:@"hardwareVersionRange"];
    if (v16)
    {
      v17 = [[PKHardwareVersionRange alloc] initWithDictionary:v16];
      hardwareVersionRange = v5->_hardwareVersionRange;
      v5->_hardwareVersionRange = v17;
    }

    v19 = [v4 PKDictionaryForKey:@"relevantDateRange"];
    if (v19)
    {
      v20 = [[PKDiscoveryRelevantDateRange alloc] initWithDictionary:v19];
      relevantDateRange = v5->_relevantDateRange;
      v5->_relevantDateRange = v20;
    }

    v5->_maxViewCount = [v4 PKIntegerForKey:@"maxViewCount"];
    v5->_maxViewCountLargeCard = [v4 PKIntegerForKey:@"maxViewCountLargeCard"];

    goto LABEL_12;
  }

  v23 = PKLogFacilityTypeGetObject(0x11uLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "Malformed Discovery Item in manifest: nil or empty identifier.", v25, 2u);
  }

  v22 = 0;
LABEL_16:

  return v22;
}

- (BOOL)updateWithDiscoveryObject:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:self->_identifier];

  if (v6)
  {
    self->_version = [v4 version];
    v7 = [v4 ruleIdentifier];
    ruleIdentifier = self->_ruleIdentifier;
    self->_ruleIdentifier = v7;

    v9 = [v4 osVersionRange];
    osVersionRange = self->_osVersionRange;
    self->_osVersionRange = v9;

    v11 = [v4 hardwareVersionRange];
    hardwareVersionRange = self->_hardwareVersionRange;
    self->_hardwareVersionRange = v11;

    v13 = [v4 triggerRuleIdentifier];
    triggerRuleIdentifier = self->_triggerRuleIdentifier;
    self->_triggerRuleIdentifier = v13;

    v15 = [v4 relevantDateRange];
    relevantDateRange = self->_relevantDateRange;
    self->_relevantDateRange = v15;

    self->_maxViewCount = [v4 maxViewCount];
    self->_maxViewCountLargeCard = [v4 maxViewCountLargeCard];
  }

  else
  {
    v17 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v4 identifier];
      identifier = self->_identifier;
      v21 = 138412546;
      v22 = v18;
      v23 = 2112;
      v24 = identifier;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Cannot merge DiscoveryItem with identifier: %@ into identifier: %@", &v21, 0x16u);
    }
  }

  return v6;
}

- (void)updatedStatusForAction:(int64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(PKDiscoveryObject *)self isTerminalStatus])
  {
    v5 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      status = self->_status;
      v9 = 138412802;
      v10 = self;
      v11 = 2048;
      v12 = a3;
      v13 = 2048;
      v14 = status;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "%@: should not have received action: %ld because it is in terminal status: %ld", &v9, 0x20u);
    }
  }

  if (a3 == 2)
  {
    v7 = 3;
    goto LABEL_9;
  }

  if (a3 == 1)
  {
    v7 = 4;
LABEL_9:
    self->_status = v7;
    return;
  }

  v8 = PKLogFacilityTypeGetObject(0x11uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = self;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "%@: received updateStatusForAction: with unknown action", &v9, 0xCu);
  }
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeInteger:self->_version forKey:@"version"];
  [v5 encodeObject:self->_ruleIdentifier forKey:@"ruleIdentifier"];
  [v5 encodeObject:self->_triggerRuleIdentifier forKey:@"trigger"];
  [v5 encodeObject:self->_osVersionRange forKey:@"osVersionRange"];
  [v5 encodeObject:self->_hardwareVersionRange forKey:@"hardwareVersionRange"];
  [v5 encodeInteger:self->_status forKey:@"status"];
  [v5 encodeObject:self->_relevantDateRange forKey:@"relevantDateRange"];
  [v5 encodeInteger:self->_viewCount forKey:@"viewCount"];
  [v5 encodeInteger:self->_maxViewCount forKey:@"maxViewCount"];
  [v5 encodeInteger:self->_maxViewCountLargeCard forKey:@"maxViewCountLargeCard"];
}

- (PKDiscoveryObject)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKDiscoveryObject;
  v5 = [(PKDiscoveryObject *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_version = [v4 decodeIntegerForKey:@"version"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ruleIdentifier"];
    ruleIdentifier = v5->_ruleIdentifier;
    v5->_ruleIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trigger"];
    triggerRuleIdentifier = v5->_triggerRuleIdentifier;
    v5->_triggerRuleIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"osVersionRange"];
    osVersionRange = v5->_osVersionRange;
    v5->_osVersionRange = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hardwareVersionRange"];
    hardwareVersionRange = v5->_hardwareVersionRange;
    v5->_hardwareVersionRange = v14;

    v5->_status = [v4 decodeIntegerForKey:@"status"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relevantDateRange"];
    relevantDateRange = v5->_relevantDateRange;
    v5->_relevantDateRange = v16;

    v5->_viewCount = [v4 decodeIntegerForKey:@"viewCount"];
    v5->_maxViewCount = [v4 decodeIntegerForKey:@"maxViewCount"];
    v5->_maxViewCountLargeCard = [v4 decodeIntegerForKey:@"maxViewCountLargeCard"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v5[2] = self->_version;
  v8 = [(NSString *)self->_ruleIdentifier copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_triggerRuleIdentifier copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(PKOSVersionRequirementRange *)self->_osVersionRange copyWithZone:a3];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(PKHardwareVersionRange *)self->_hardwareVersionRange copyWithZone:a3];
  v15 = v5[6];
  v5[6] = v14;

  v5[10] = self->_status;
  v16 = [(PKDiscoveryRelevantDateRange *)self->_relevantDateRange copyWithZone:a3];
  v17 = v5[7];
  v5[7] = v16;

  v5[11] = self->_viewCount;
  v5[8] = self->_maxViewCount;
  v5[9] = self->_maxViewCountLargeCard;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_37;
  }

  identifier = self->_identifier;
  v6 = v4[1];
  if (identifier && v6)
  {
    if (([(NSString *)identifier isEqual:?]& 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (identifier != v6)
  {
    goto LABEL_37;
  }

  if (self->_version != v4[2])
  {
    goto LABEL_37;
  }

  ruleIdentifier = self->_ruleIdentifier;
  v8 = v4[3];
  if (ruleIdentifier && v8)
  {
    if (([(NSString *)ruleIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (ruleIdentifier != v8)
  {
    goto LABEL_37;
  }

  triggerRuleIdentifier = self->_triggerRuleIdentifier;
  v10 = v4[4];
  if (triggerRuleIdentifier && v10)
  {
    if (([(NSString *)triggerRuleIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (triggerRuleIdentifier != v10)
  {
    goto LABEL_37;
  }

  osVersionRange = self->_osVersionRange;
  v12 = v4[5];
  if (osVersionRange && v12)
  {
    if (![(PKOSVersionRequirementRange *)osVersionRange isEqual:?])
    {
      goto LABEL_37;
    }
  }

  else if (osVersionRange != v12)
  {
    goto LABEL_37;
  }

  hardwareVersionRange = self->_hardwareVersionRange;
  v14 = v4[6];
  if (hardwareVersionRange && v14)
  {
    if (![(PKHardwareVersionRange *)hardwareVersionRange isEqual:?])
    {
      goto LABEL_37;
    }
  }

  else if (hardwareVersionRange != v14)
  {
    goto LABEL_37;
  }

  relevantDateRange = self->_relevantDateRange;
  v16 = v4[7];
  if (!relevantDateRange || !v16)
  {
    if (relevantDateRange == v16)
    {
      goto LABEL_33;
    }

LABEL_37:
    v17 = 0;
    goto LABEL_38;
  }

  if (([(PKDiscoveryRelevantDateRange *)relevantDateRange isEqual:?]& 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_33:
  if (self->_status != v4[10] || self->_viewCount != v4[11] || self->_maxViewCount != v4[8])
  {
    goto LABEL_37;
  }

  v17 = self->_maxViewCountLargeCard == v4[9];
LABEL_38:

  return v17;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_ruleIdentifier];
  [v3 safelyAddObject:self->_triggerRuleIdentifier];
  [v3 safelyAddObject:self->_osVersionRange];
  [v3 safelyAddObject:self->_hardwareVersionRange];
  [v3 safelyAddObject:self->_relevantDateRange];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_version - v4 + 32 * v4;
  v6 = self->_status - v5 + 32 * v5;
  v7 = self->_viewCount - v6 + 32 * v6;
  v8 = self->_maxViewCount - v7 + 32 * v7;
  v9 = self->_maxViewCountLargeCard - v8 + 32 * v8;

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PKDiscoveryObject *)self identifier];
  [v3 appendFormat:@"%@: '%@'; ", @"identifier", v4];

  [v3 appendFormat:@"%@: '%ld'; ", @"version", -[PKDiscoveryObject version](self, "version")];
  v5 = [(PKDiscoveryObject *)self ruleIdentifier];
  [v3 appendFormat:@"%@: '%@'; ", @"ruleIdentifier", v5];

  v6 = [(PKDiscoveryObject *)self triggerRuleIdentifier];
  [v3 appendFormat:@"%@: '%@'; ", @"trigger", v6];

  v7 = [(PKDiscoveryObject *)self osVersionRange];
  [v3 appendFormat:@"%@: '%@'; ", @"osVersionRange", v7];

  v8 = [(PKDiscoveryObject *)self hardwareVersionRange];
  [v3 appendFormat:@"%@: '%@'; ", @"hardwareVersionRange", v8];

  v9 = [(PKDiscoveryObject *)self relevantDateRange];
  [v3 appendFormat:@"%@: '%@'; ", @"relevantDateRange", v9];

  [v3 appendFormat:@"%@: '%ld'; ", @"status", -[PKDiscoveryObject status](self, "status")];
  [v3 appendFormat:@"%@: '%ld'; ", @"viewCount", -[PKDiscoveryObject viewCount](self, "viewCount")];
  [v3 appendFormat:@"%@: '%ld'; ", @"maxViewCount", -[PKDiscoveryObject maxViewCount](self, "maxViewCount")];
  [v3 appendFormat:@"%@: '%ld'; ", @"maxViewCountLargeCard", -[PKDiscoveryObject maxViewCountLargeCard](self, "maxViewCountLargeCard")];
  [v3 appendFormat:@">"];
  v10 = [v3 copy];

  return v10;
}

@end