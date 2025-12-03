@interface PKDiscoveryObject
+ (id)convertEngagementRequestToDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (BOOL)updateWithDiscoveryObject:(id)object;
- (PKDiscoveryObject)initWithCoder:(id)coder;
- (PKDiscoveryObject)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updatedStatusForAction:(int64_t)action;
@end

@implementation PKDiscoveryObject

+ (id)convertEngagementRequestToDictionary:(id)dictionary
{
  v14[1] = *MEMORY[0x1E69E9840];
  clientData = [dictionary clientData];
  v4 = [clientData objectForKeyedSubscript:@"identifier"];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E695DF90]);
    v13 = @"identifier";
    v6 = [clientData objectForKeyedSubscript:@"identifier"];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = [v5 initWithDictionary:v7];

    v9 = [clientData objectForKeyedSubscript:@"maxViewCount"];
    [v8 setObject:v9 forKeyedSubscript:@"maxViewCount"];

    v10 = [clientData objectForKeyedSubscript:@"maxViewCountLarge"];
    [v8 setObject:v10 forKeyedSubscript:@"maxViewCountLargeCard"];

    v11 = [v8 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (PKDiscoveryObject)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = PKDiscoveryObject;
  v5 = [(PKDiscoveryObject *)&v26 init];
  if (!v5)
  {
LABEL_12:
    v22 = v5;
    goto LABEL_16;
  }

  v6 = [dictionaryCopy PKStringForKey:@"identifier"];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  if ([(NSString *)v5->_identifier length])
  {
    v5->_version = [dictionaryCopy PKIntegerForKey:@"version"];
    v8 = [dictionaryCopy PKStringForKey:@"ruleIdentifier"];
    ruleIdentifier = v5->_ruleIdentifier;
    v5->_ruleIdentifier = v8;

    v10 = [dictionaryCopy PKStringForKey:@"trigger"];
    triggerRuleIdentifier = v5->_triggerRuleIdentifier;
    v5->_triggerRuleIdentifier = v10;

    v12 = 5;
    if (!v5->_triggerRuleIdentifier)
    {
      v12 = 1;
    }

    v5->_status = v12;
    v13 = [dictionaryCopy PKDictionaryForKey:@"osVersionRange"];
    if (v13)
    {
      v14 = [[PKOSVersionRequirementRange alloc] initWithDictionary:v13];
      osVersionRange = v5->_osVersionRange;
      v5->_osVersionRange = v14;
    }

    v16 = [dictionaryCopy PKDictionaryForKey:@"hardwareVersionRange"];
    if (v16)
    {
      v17 = [[PKHardwareVersionRange alloc] initWithDictionary:v16];
      hardwareVersionRange = v5->_hardwareVersionRange;
      v5->_hardwareVersionRange = v17;
    }

    v19 = [dictionaryCopy PKDictionaryForKey:@"relevantDateRange"];
    if (v19)
    {
      v20 = [[PKDiscoveryRelevantDateRange alloc] initWithDictionary:v19];
      relevantDateRange = v5->_relevantDateRange;
      v5->_relevantDateRange = v20;
    }

    v5->_maxViewCount = [dictionaryCopy PKIntegerForKey:@"maxViewCount"];
    v5->_maxViewCountLargeCard = [dictionaryCopy PKIntegerForKey:@"maxViewCountLargeCard"];

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

- (BOOL)updateWithDiscoveryObject:(id)object
{
  v25 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  identifier = [objectCopy identifier];
  v6 = [identifier isEqualToString:self->_identifier];

  if (v6)
  {
    self->_version = [objectCopy version];
    ruleIdentifier = [objectCopy ruleIdentifier];
    ruleIdentifier = self->_ruleIdentifier;
    self->_ruleIdentifier = ruleIdentifier;

    osVersionRange = [objectCopy osVersionRange];
    osVersionRange = self->_osVersionRange;
    self->_osVersionRange = osVersionRange;

    hardwareVersionRange = [objectCopy hardwareVersionRange];
    hardwareVersionRange = self->_hardwareVersionRange;
    self->_hardwareVersionRange = hardwareVersionRange;

    triggerRuleIdentifier = [objectCopy triggerRuleIdentifier];
    triggerRuleIdentifier = self->_triggerRuleIdentifier;
    self->_triggerRuleIdentifier = triggerRuleIdentifier;

    relevantDateRange = [objectCopy relevantDateRange];
    relevantDateRange = self->_relevantDateRange;
    self->_relevantDateRange = relevantDateRange;

    self->_maxViewCount = [objectCopy maxViewCount];
    self->_maxViewCountLargeCard = [objectCopy maxViewCountLargeCard];
  }

  else
  {
    v17 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [objectCopy identifier];
      identifier = self->_identifier;
      v21 = 138412546;
      v22 = identifier2;
      v23 = 2112;
      v24 = identifier;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Cannot merge DiscoveryItem with identifier: %@ into identifier: %@", &v21, 0x16u);
    }
  }

  return v6;
}

- (void)updatedStatusForAction:(int64_t)action
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(PKDiscoveryObject *)self isTerminalStatus])
  {
    v5 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      status = self->_status;
      v9 = 138412802;
      selfCopy2 = self;
      v11 = 2048;
      actionCopy = action;
      v13 = 2048;
      v14 = status;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "%@: should not have received action: %ld because it is in terminal status: %ld", &v9, 0x20u);
    }
  }

  if (action == 2)
  {
    v7 = 3;
    goto LABEL_9;
  }

  if (action == 1)
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
    selfCopy2 = self;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "%@: received updateStatusForAction: with unknown action", &v9, 0xCu);
  }
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_version forKey:@"version"];
  [coderCopy encodeObject:self->_ruleIdentifier forKey:@"ruleIdentifier"];
  [coderCopy encodeObject:self->_triggerRuleIdentifier forKey:@"trigger"];
  [coderCopy encodeObject:self->_osVersionRange forKey:@"osVersionRange"];
  [coderCopy encodeObject:self->_hardwareVersionRange forKey:@"hardwareVersionRange"];
  [coderCopy encodeInteger:self->_status forKey:@"status"];
  [coderCopy encodeObject:self->_relevantDateRange forKey:@"relevantDateRange"];
  [coderCopy encodeInteger:self->_viewCount forKey:@"viewCount"];
  [coderCopy encodeInteger:self->_maxViewCount forKey:@"maxViewCount"];
  [coderCopy encodeInteger:self->_maxViewCountLargeCard forKey:@"maxViewCountLargeCard"];
}

- (PKDiscoveryObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PKDiscoveryObject;
  v5 = [(PKDiscoveryObject *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_version = [coderCopy decodeIntegerForKey:@"version"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ruleIdentifier"];
    ruleIdentifier = v5->_ruleIdentifier;
    v5->_ruleIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trigger"];
    triggerRuleIdentifier = v5->_triggerRuleIdentifier;
    v5->_triggerRuleIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"osVersionRange"];
    osVersionRange = v5->_osVersionRange;
    v5->_osVersionRange = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hardwareVersionRange"];
    hardwareVersionRange = v5->_hardwareVersionRange;
    v5->_hardwareVersionRange = v14;

    v5->_status = [coderCopy decodeIntegerForKey:@"status"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relevantDateRange"];
    relevantDateRange = v5->_relevantDateRange;
    v5->_relevantDateRange = v16;

    v5->_viewCount = [coderCopy decodeIntegerForKey:@"viewCount"];
    v5->_maxViewCount = [coderCopy decodeIntegerForKey:@"maxViewCount"];
    v5->_maxViewCountLargeCard = [coderCopy decodeIntegerForKey:@"maxViewCountLargeCard"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v5[2] = self->_version;
  v8 = [(NSString *)self->_ruleIdentifier copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_triggerRuleIdentifier copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(PKOSVersionRequirementRange *)self->_osVersionRange copyWithZone:zone];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(PKHardwareVersionRange *)self->_hardwareVersionRange copyWithZone:zone];
  v15 = v5[6];
  v5[6] = v14;

  v5[10] = self->_status;
  v16 = [(PKDiscoveryRelevantDateRange *)self->_relevantDateRange copyWithZone:zone];
  v17 = v5[7];
  v5[7] = v16;

  v5[11] = self->_viewCount;
  v5[8] = self->_maxViewCount;
  v5[9] = self->_maxViewCountLargeCard;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_37;
  }

  identifier = self->_identifier;
  v6 = equalCopy[1];
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

  if (self->_version != equalCopy[2])
  {
    goto LABEL_37;
  }

  ruleIdentifier = self->_ruleIdentifier;
  v8 = equalCopy[3];
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
  v10 = equalCopy[4];
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
  v12 = equalCopy[5];
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
  v14 = equalCopy[6];
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
  v16 = equalCopy[7];
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
  if (self->_status != equalCopy[10] || self->_viewCount != equalCopy[11] || self->_maxViewCount != equalCopy[8])
  {
    goto LABEL_37;
  }

  v17 = self->_maxViewCountLargeCard == equalCopy[9];
LABEL_38:

  return v17;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_ruleIdentifier];
  [array safelyAddObject:self->_triggerRuleIdentifier];
  [array safelyAddObject:self->_osVersionRange];
  [array safelyAddObject:self->_hardwareVersionRange];
  [array safelyAddObject:self->_relevantDateRange];
  v4 = PKCombinedHash(17, array);
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
  identifier = [(PKDiscoveryObject *)self identifier];
  [v3 appendFormat:@"%@: '%@'; ", @"identifier", identifier];

  [v3 appendFormat:@"%@: '%ld'; ", @"version", -[PKDiscoveryObject version](self, "version")];
  ruleIdentifier = [(PKDiscoveryObject *)self ruleIdentifier];
  [v3 appendFormat:@"%@: '%@'; ", @"ruleIdentifier", ruleIdentifier];

  triggerRuleIdentifier = [(PKDiscoveryObject *)self triggerRuleIdentifier];
  [v3 appendFormat:@"%@: '%@'; ", @"trigger", triggerRuleIdentifier];

  osVersionRange = [(PKDiscoveryObject *)self osVersionRange];
  [v3 appendFormat:@"%@: '%@'; ", @"osVersionRange", osVersionRange];

  hardwareVersionRange = [(PKDiscoveryObject *)self hardwareVersionRange];
  [v3 appendFormat:@"%@: '%@'; ", @"hardwareVersionRange", hardwareVersionRange];

  relevantDateRange = [(PKDiscoveryObject *)self relevantDateRange];
  [v3 appendFormat:@"%@: '%@'; ", @"relevantDateRange", relevantDateRange];

  [v3 appendFormat:@"%@: '%ld'; ", @"status", -[PKDiscoveryObject status](self, "status")];
  [v3 appendFormat:@"%@: '%ld'; ", @"viewCount", -[PKDiscoveryObject viewCount](self, "viewCount")];
  [v3 appendFormat:@"%@: '%ld'; ", @"maxViewCount", -[PKDiscoveryObject maxViewCount](self, "maxViewCount")];
  [v3 appendFormat:@"%@: '%ld'; ", @"maxViewCountLargeCard", -[PKDiscoveryObject maxViewCountLargeCard](self, "maxViewCountLargeCard")];
  [v3 appendFormat:@">"];
  v10 = [v3 copy];

  return v10;
}

@end